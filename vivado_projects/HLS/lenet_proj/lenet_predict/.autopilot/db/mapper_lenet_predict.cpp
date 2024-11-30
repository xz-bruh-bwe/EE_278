#include "hls_signal_handler.h"
#include <algorithm>
#include <cassert>
#include <fstream>
#include <iostream>
#include <list>
#include <map>
#include <vector>
#include "ap_fixed.h"
#include "ap_int.h"
#include "hls_stream.h"
using namespace std;

namespace hls::sim
{
  template<size_t n>
  struct Byte {
    unsigned char a[n];

    Byte()
    {
      for (size_t i = 0; i < n; ++i) {
        a[i] = 0;
      }
    }

    template<typename T>
    Byte<n>& operator= (const T &val)
    {
      std::memcpy(a, &val, n);
      return *this;
    }
  };

  struct SimException : public std::exception {
    const std::string msg;
    const size_t line;
    SimException(const std::string &msg, const size_t line)
      : msg(msg), line(line)
    {
    }
  };

  void errExit(const size_t line, const std::string &msg)
  {
    std::string s;
    s += "ERROR";
//  s += '(';
//  s += __FILE__;
//  s += ":";
//  s += std::to_string(line);
//  s += ')';
    s += ": ";
    s += msg;
    s += "\n";
    fputs(s.c_str(), stderr);
    exit(1);
  }
}


namespace hls::sim
{
  template<size_t n>
  void move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    while (!f->empty()) {
      t->write(f->read());
    }
  }

  template<size_t n>
  void task_move(void* to, void* from)
  {
    auto t = (hls::stream<ap_uint<n>>*)to;
    auto f = (hls::stream<ap_uint<n>>*)from;
    std::thread(
      [=] () { while (true) { t->write(f->read()); } }
    ).detach();
  }

  template<typename A, typename K, typename S, typename U, typename L, typename I, typename E>
  struct MoveAXIS
  {
    struct ST { A data; K keep; S strb; U user; L last; I id; E dest; };

    static void toSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<ST>*)axis)->read(st);
      ((hls::stream<A>*)data)->write(st.data);
      ((hls::stream<K>*)keep)->write(st.keep);
      ((hls::stream<S>*)strb)->write(st.strb);
      ((hls::stream<U>*)user)->write(st.user);
      ((hls::stream<L>*)last)->write(st.last);
      ((hls::stream<I>*)id)->write(st.id);
      ((hls::stream<E>*)dest)->write(st.dest);
    }

    static void fromSC(void* data, void* keep, void* strb, void* user, void* last, void* id, void* dest, void* axis)
    {
      ST st;
      ((hls::stream<A>*)data)->read(st.data);
      ((hls::stream<K>*)keep)->read(st.keep);
      ((hls::stream<S>*)strb)->read(st.strb);
      ((hls::stream<U>*)user)->read(st.user);
      ((hls::stream<L>*)last)->read(st.last);
      ((hls::stream<I>*)id)->read(st.id);
      ((hls::stream<E>*)dest)->read(st.dest);
      ((hls::stream<ST>*)axis)->write(st);
    }
  };

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                  void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<typename M::ST>*)axis)->empty()) {
      M::toSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_to_SC(void* data, void* keep, void* strb, void* user, void* last,
                       void* id, void* dest, void* axis)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::toSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                    void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    while (!((hls::stream<ap_uint<sdata>>*)data)->empty()) {
      M::fromSC(data, keep, strb, user, last, id, dest, axis);
    }
  }

  template<size_t sdata, size_t skeep, size_t sstrb, size_t suser,
           size_t slast, size_t sid, size_t sdest>
  void task_move_from_SC(void* axis, void* data, void* keep, void* strb, void* user, void* last,
                         void* id, void* dest)
  {
    typedef MoveAXIS<ap_uint<sdata>, ap_uint<skeep>, ap_uint<sstrb>,
                     ap_uint<suser>, ap_uint<slast>, ap_uint<sid>,
                     ap_uint<sdest>> M;
    std::thread(
      [=] () { while (true) M::fromSC(data, keep, strb, user, last, id, dest, axis); }
    ).detach();
  }
}


namespace hls::sim
{
  struct Buffer {
    char *first;
    Buffer(char *addr) : first(addr)
    {
    }
  };

  struct DBuffer : public Buffer {
    static const size_t total = 1<<10;
    size_t ufree;

    DBuffer(size_t usize) : Buffer(nullptr), ufree(total)
    {
      first = new char[usize*ufree];
    }

    ~DBuffer()
    {
      delete[] first;
    }
  };

  struct CStream {
    char *front;
    char *back;
    size_t num;
    size_t usize;
    std::list<Buffer*> bufs;
    bool dynamic;

    CStream() : front(nullptr), back(nullptr),
                num(0), usize(0), dynamic(true)
    {
    }

    ~CStream()
    {
      for (Buffer *p : bufs) {
        delete p;
      }
    }

    template<typename T>
    T* data()
    {
      return (T*)front;
    }

    template<typename T>
    void transfer(hls::stream<T> *param)
    {
      while (!empty()) {
        param->write(*(T*)nextRead());
      }
    }

    bool empty();
    char* nextRead();
    char* nextWrite();
  };

  bool CStream::empty()
  {
    return num == 0;
  }

  char* CStream::nextRead()
  {
    assert(num > 0);
    char *res = front;
    front += usize;
    if (dynamic) {
      if (++static_cast<DBuffer*>(bufs.front())->ufree == DBuffer::total) {
        if (bufs.size() > 1) {
          bufs.pop_front();
          front = bufs.front()->first;
        } else {
          front = back = bufs.front()->first;
        }
      }
    }
    --num;
    return res;
  }

  char* CStream::nextWrite()
  {
    if (dynamic) {
      if (static_cast<DBuffer*>(bufs.back())->ufree == 0) {
        bufs.push_back(new DBuffer(usize));
        back = bufs.back()->first;
      }
      --static_cast<DBuffer*>(bufs.back())->ufree;
    }
    char *res = back;
    back += usize;
    ++num;
    return res;
  }

  std::list<CStream> streams;
  std::map<char*, CStream*> prebuilt;

  CStream* createStream(size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = true;
      s.bufs.push_back(new DBuffer(usize));
      s.front = s.bufs.back()->first;
      s.back = s.front;
      s.num = 0;
      s.usize = usize;
    }
    return &s;
  }

  template<typename T>
  CStream* createStream(hls::stream<T> *param)
  {
    CStream *s = createStream(sizeof(T));
    {
      s->dynamic = true;
      while (!param->empty()) {
        T data = param->read();
        memcpy(s->nextWrite(), (char*)&data, sizeof(T));
      }
      prebuilt[s->front] = s;
    }
    return s;
  }

  template<typename T>
  CStream* createStream(T *param, size_t usize)
  {
    streams.emplace_front();
    CStream &s = streams.front();
    {
      s.dynamic = false;
      s.bufs.push_back(new Buffer((char*)param));
      s.front = s.back = s.bufs.back()->first;
      s.usize = usize;
      s.num = ~0UL;
    }
    prebuilt[s.front] = &s;
    return &s;
  }

  CStream* findStream(char *buf)
  {
    return prebuilt.at(buf);
  }
}
class AESL_RUNTIME_BC {
  public:
    AESL_RUNTIME_BC(const char* name) {
      file_token.open( name);
      if (!file_token.good()) {
        cout << "Failed to open tv file " << name << endl;
        exit (1);
      }
      file_token >> mName;//[[[runtime]]]
    }
    ~AESL_RUNTIME_BC() {
      file_token.close();
    }
    int read_size () {
      int size = 0;
      file_token >> mName;//[[transaction]]
      file_token >> mName;//transaction number
      file_token >> mName;//pop_size
      size = atoi(mName.c_str());
      file_token >> mName;//[[/transaction]]
      return size;
    }
  public:
    fstream file_token;
    string mName;
};
using hls::sim::Byte;
extern "C" void lenet_predict(Byte<4>*, int, volatile void *, int, int, int, int, int, int, int, int, int, int);
extern "C" void apatb_lenet_predict_hw(volatile void * __xlx_apatb_param_input_r, volatile void * __xlx_apatb_param_predicted_class, volatile void * __xlx_apatb_param_conv1_filters, volatile void * __xlx_apatb_param_conv1_bias, volatile void * __xlx_apatb_param_conv2_filters, volatile void * __xlx_apatb_param_conv2_bias, volatile void * __xlx_apatb_param_fc1_weights, volatile void * __xlx_apatb_param_fc1_bias, volatile void * __xlx_apatb_param_fc2_weights, volatile void * __xlx_apatb_param_fc2_bias, volatile void * __xlx_apatb_param_fc3_weights, volatile void * __xlx_apatb_param_fc3_bias) {
using hls::sim::createStream;
  // Collect __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec
std::vector<Byte<4>> __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec;
for (size_t i = 0; i < 1024; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_input_r)[i]);
}
  int __xlx_size_param_input_r = 1024;
  int __xlx_offset_param_input_r = 0;
  int __xlx_offset_byte_param_input_r = 0*4;
for (size_t i = 0; i < 150; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_conv1_filters)[i]);
}
  int __xlx_size_param_conv1_filters = 150;
  int __xlx_offset_param_conv1_filters = 1024;
  int __xlx_offset_byte_param_conv1_filters = 1024*4;
for (size_t i = 0; i < 6; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_conv1_bias)[i]);
}
  int __xlx_size_param_conv1_bias = 6;
  int __xlx_offset_param_conv1_bias = 1174;
  int __xlx_offset_byte_param_conv1_bias = 1174*4;
for (size_t i = 0; i < 2400; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_conv2_filters)[i]);
}
  int __xlx_size_param_conv2_filters = 2400;
  int __xlx_offset_param_conv2_filters = 1180;
  int __xlx_offset_byte_param_conv2_filters = 1180*4;
for (size_t i = 0; i < 16; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_conv2_bias)[i]);
}
  int __xlx_size_param_conv2_bias = 16;
  int __xlx_offset_param_conv2_bias = 3580;
  int __xlx_offset_byte_param_conv2_bias = 3580*4;
for (size_t i = 0; i < 48000; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fc1_weights)[i]);
}
  int __xlx_size_param_fc1_weights = 48000;
  int __xlx_offset_param_fc1_weights = 3596;
  int __xlx_offset_byte_param_fc1_weights = 3596*4;
for (size_t i = 0; i < 120; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fc1_bias)[i]);
}
  int __xlx_size_param_fc1_bias = 120;
  int __xlx_offset_param_fc1_bias = 51596;
  int __xlx_offset_byte_param_fc1_bias = 51596*4;
for (size_t i = 0; i < 10080; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fc2_weights)[i]);
}
  int __xlx_size_param_fc2_weights = 10080;
  int __xlx_offset_param_fc2_weights = 51716;
  int __xlx_offset_byte_param_fc2_weights = 51716*4;
for (size_t i = 0; i < 84; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fc2_bias)[i]);
}
  int __xlx_size_param_fc2_bias = 84;
  int __xlx_offset_param_fc2_bias = 61796;
  int __xlx_offset_byte_param_fc2_bias = 61796*4;
for (size_t i = 0; i < 840; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fc3_weights)[i]);
}
  int __xlx_size_param_fc3_weights = 840;
  int __xlx_offset_param_fc3_weights = 61880;
  int __xlx_offset_byte_param_fc3_weights = 61880*4;
for (size_t i = 0; i < 10; ++i){
__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.push_back(((Byte<4>*)__xlx_apatb_param_fc3_bias)[i]);
}
  int __xlx_size_param_fc3_bias = 10;
  int __xlx_offset_param_fc3_bias = 62720;
  int __xlx_offset_byte_param_fc3_bias = 62720*4;
  // DUT call
  lenet_predict(__xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec.data(), __xlx_offset_byte_param_input_r, __xlx_apatb_param_predicted_class, __xlx_offset_byte_param_conv1_filters, __xlx_offset_byte_param_conv1_bias, __xlx_offset_byte_param_conv2_filters, __xlx_offset_byte_param_conv2_bias, __xlx_offset_byte_param_fc1_weights, __xlx_offset_byte_param_fc1_bias, __xlx_offset_byte_param_fc2_weights, __xlx_offset_byte_param_fc2_bias, __xlx_offset_byte_param_fc3_weights, __xlx_offset_byte_param_fc3_bias);
// print __xlx_apatb_param_input_r
for (size_t i = 0; i < __xlx_size_param_input_r; ++i) {
((Byte<4>*)__xlx_apatb_param_input_r)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_input_r+i];
}
// print __xlx_apatb_param_conv1_filters
for (size_t i = 0; i < __xlx_size_param_conv1_filters; ++i) {
((Byte<4>*)__xlx_apatb_param_conv1_filters)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_conv1_filters+i];
}
// print __xlx_apatb_param_conv1_bias
for (size_t i = 0; i < __xlx_size_param_conv1_bias; ++i) {
((Byte<4>*)__xlx_apatb_param_conv1_bias)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_conv1_bias+i];
}
// print __xlx_apatb_param_conv2_filters
for (size_t i = 0; i < __xlx_size_param_conv2_filters; ++i) {
((Byte<4>*)__xlx_apatb_param_conv2_filters)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_conv2_filters+i];
}
// print __xlx_apatb_param_conv2_bias
for (size_t i = 0; i < __xlx_size_param_conv2_bias; ++i) {
((Byte<4>*)__xlx_apatb_param_conv2_bias)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_conv2_bias+i];
}
// print __xlx_apatb_param_fc1_weights
for (size_t i = 0; i < __xlx_size_param_fc1_weights; ++i) {
((Byte<4>*)__xlx_apatb_param_fc1_weights)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_fc1_weights+i];
}
// print __xlx_apatb_param_fc1_bias
for (size_t i = 0; i < __xlx_size_param_fc1_bias; ++i) {
((Byte<4>*)__xlx_apatb_param_fc1_bias)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_fc1_bias+i];
}
// print __xlx_apatb_param_fc2_weights
for (size_t i = 0; i < __xlx_size_param_fc2_weights; ++i) {
((Byte<4>*)__xlx_apatb_param_fc2_weights)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_fc2_weights+i];
}
// print __xlx_apatb_param_fc2_bias
for (size_t i = 0; i < __xlx_size_param_fc2_bias; ++i) {
((Byte<4>*)__xlx_apatb_param_fc2_bias)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_fc2_bias+i];
}
// print __xlx_apatb_param_fc3_weights
for (size_t i = 0; i < __xlx_size_param_fc3_weights; ++i) {
((Byte<4>*)__xlx_apatb_param_fc3_weights)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_fc3_weights+i];
}
// print __xlx_apatb_param_fc3_bias
for (size_t i = 0; i < __xlx_size_param_fc3_bias; ++i) {
((Byte<4>*)__xlx_apatb_param_fc3_bias)[i] = __xlx_input_r_conv1_filters_conv1_bias_conv2_filters_conv2_bias_fc1_weights_fc1_bias_fc2_weights_fc2_bias_fc3_weights_fc3_bias__tmp_vec[__xlx_offset_param_fc3_bias+i];
}
}
