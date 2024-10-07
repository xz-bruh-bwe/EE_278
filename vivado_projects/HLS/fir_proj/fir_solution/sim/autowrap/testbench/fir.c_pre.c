# 1 "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/HLS_Code/fir.c"
# 1 "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/HLS_Code/fir.c" 1
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 148 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/HLS_Code/fir.c" 2
# 1 "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/HLS_Code/fir.h" 1
# 11 "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/HLS_Code/fir.h"
typedef int coef_t;
typedef int data_t;
typedef int acc_t;


void fir (
  data_t *y,
  data_t x
  );
# 2 "C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/HLS_Code/fir.c" 2

void fir_TOP (
  data_t *y,
  data_t x
  ) {
#pragma HLS INTERFACE s_axilite bundle=fir_io port=return

 const coef_t c[11] = {0,-10,-9,23,56,63,56,23,-9,-10,0};
  static data_t shift_reg[11];
  acc_t acc;
  int i;

  acc=0;
  Shift_Accum_Loop: for (i=11 -1;i>=0;i--) {
     if (i==0) {
       acc+=x*c[0];
       shift_reg[0]=x;
     } else {
   shift_reg[i]=shift_reg[i-1];
   acc+=shift_reg[i]*c[i];
     }
  }
  *y=acc;
}
