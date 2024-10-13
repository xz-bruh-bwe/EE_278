/* Provide Declarations */
#include <stdarg.h>
#include <setjmp.h>
#include <limits.h>
#ifdef NEED_CBEAPINT
#include <autopilot_cbe.h>
#else
#define aesl_fopen fopen
#define aesl_freopen freopen
#define aesl_tmpfile tmpfile
#endif
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <math.h>
#ifdef __STRICT_ANSI__
#define inline __inline__
#define typeof __typeof__ 
#endif
#define __isoc99_fscanf fscanf
#define __isoc99_sscanf sscanf
#undef ferror
#undef feof
/* get a declaration for alloca */
#if defined(__CYGWIN__) || defined(__MINGW32__)
#define  alloca(x) __builtin_alloca((x))
#define _alloca(x) __builtin_alloca((x))
#elif defined(__APPLE__)
extern void *__builtin_alloca(unsigned long);
#define alloca(x) __builtin_alloca(x)
#define longjmp _longjmp
#define setjmp _setjmp
#elif defined(__sun__)
#if defined(__sparcv9)
extern void *__builtin_alloca(unsigned long);
#else
extern void *__builtin_alloca(unsigned int);
#endif
#define alloca(x) __builtin_alloca(x)
#elif defined(__FreeBSD__) || defined(__NetBSD__) || defined(__OpenBSD__) || defined(__DragonFly__) || defined(__arm__)
#define alloca(x) __builtin_alloca(x)
#elif defined(_MSC_VER)
#define inline _inline
#define alloca(x) _alloca(x)
#else
#include <alloca.h>
#endif

#ifndef __GNUC__  /* Can only support "linkonce" vars with GCC */
#define __attribute__(X)
#endif

#if defined(__GNUC__) && defined(__APPLE_CC__)
#define __EXTERNAL_WEAK__ __attribute__((weak_import))
#elif defined(__GNUC__)
#define __EXTERNAL_WEAK__ __attribute__((weak))
#else
#define __EXTERNAL_WEAK__
#endif

#if defined(__GNUC__) && (defined(__APPLE_CC__) || defined(__CYGWIN__) || defined(__MINGW32__))
#define __ATTRIBUTE_WEAK__
#elif defined(__GNUC__)
#define __ATTRIBUTE_WEAK__ __attribute__((weak))
#else
#define __ATTRIBUTE_WEAK__
#endif

#if defined(__GNUC__)
#define __HIDDEN__ __attribute__((visibility("hidden")))
#endif

#ifdef __GNUC__
#define LLVM_NAN(NanStr)   __builtin_nan(NanStr)   /* Double */
#define LLVM_NANF(NanStr)  __builtin_nanf(NanStr)  /* Float */
#define LLVM_NANS(NanStr)  __builtin_nans(NanStr)  /* Double */
#define LLVM_NANSF(NanStr) __builtin_nansf(NanStr) /* Float */
#define LLVM_INF           __builtin_inf()         /* Double */
#define LLVM_INFF          __builtin_inff()        /* Float */
#define LLVM_PREFETCH(addr,rw,locality) __builtin_prefetch(addr,rw,locality)
#define __ATTRIBUTE_CTOR__ __attribute__((constructor))
#define __ATTRIBUTE_DTOR__ __attribute__((destructor))
#define LLVM_ASM           __asm__
#else
#define LLVM_NAN(NanStr)   ((double)0.0)           /* Double */
#define LLVM_NANF(NanStr)  0.0F                    /* Float */
#define LLVM_NANS(NanStr)  ((double)0.0)           /* Double */
#define LLVM_NANSF(NanStr) 0.0F                    /* Float */
#define LLVM_INF           ((double)0.0)           /* Double */
#define LLVM_INFF          0.0F                    /* Float */
#define LLVM_PREFETCH(addr,rw,locality)            /* PREFETCH */
#define __ATTRIBUTE_CTOR__
#define __ATTRIBUTE_DTOR__
#define LLVM_ASM(X)
#endif

#if __GNUC__ < 4 /* Old GCC's, or compilers not GCC */ 
#define __builtin_stack_save() 0   /* not implemented */
#define __builtin_stack_restore(X) /* noop */
#endif

#if __GNUC__ && __LP64__ /* 128-bit integer types */
typedef int __attribute__((mode(TI))) llvmInt128;
typedef unsigned __attribute__((mode(TI))) llvmUInt128;
#endif

#define CODE_FOR_MAIN() /* Any target-specific code for main()*/

#ifndef __cplusplus
typedef unsigned char bool;
#endif


/* Support for floating point constants */
typedef unsigned long long ConstantDoubleTy;
typedef unsigned int        ConstantFloatTy;
typedef struct { unsigned long long f1; unsigned short f2; unsigned short pad[3]; } ConstantFP80Ty;
typedef struct { unsigned long long f1; unsigned long long f2; } ConstantFP128Ty;


/* Global Declarations */
/* Helper union for bitcasts */
typedef union {
  unsigned int Int32;
  unsigned long long Int64;
  float Float;
  double Double;
} llvmBitCastUnion;
/* Structure forward decls */
typedef struct l_struct_OC__iobuf l_struct_OC__iobuf;

/* Structure contents */
struct l_struct_OC__iobuf {
   char *field0;
  unsigned int field1;
   char *field2;
  unsigned int field3;
  unsigned int field4;
  unsigned int field5;
  unsigned int field6;
   char *field7;
};


/* External Global Variable Declarations */

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
signed int main(void);
void neuron(float *, float *);


/* Global Variable Definitions and Initialization */
static float aesl_internal_main_OC_inputs[9][6] = { { 0x1.3096bcp-1, 0x1.99999ap-4, 0x1.0624dep-10, -0x1.f212d8p-8, -0x1.573eacp-5, -0x1.52546p-5 }, { 0x1.a5119cp-5, 0x0p0, 0x1.3a92a4p-11, -0x1.35a858p-6, 0x1.5ab9f6p-3, 0x1.a8b43ap-1 }, { 0x1.a36e2ep-13, 0x1.333334p-2, 0x1.6f0068p-11, -0x1.41205cp-8, -0x1.096bbap-5, 0x1.66cf42p-6 }, { 0x0p0, 0x1p-1, 0x0p0, -0x1.a36e2ep-12, -0x1.2a3056p-7, 0x1.d9e83ep-4 }, { 0x1.a36e2ep-12, 0x1p-1, -0x1.3a92a4p-11, -0x1.205bcp-6, 0x1.a21966p-2, 0x1.4068dcp-2 }, { 0x0p0, 0x1.333334p-2, 0x1.a36e2ep-14, -0x1.54c986p-10, -0x1.0cb296p-6, 0x1.9de69ap-2 }, { 0x1.42c3cap-6, 0x0p0, -0x1.0624dep-11, -0x1.d7dbf4p-7, 0x1.05bc02p-3, 0x1.284b5ep-1 }, { 0x0p0, 0x1p-1, 0x1.a36e2ep-14, -0x1.205bcp-9, 0x1.096bbap-7, 0x1.4af4fp-3 }, { 0x0p0, 0x1.99999ap-4, -0x1.a36e2ep-13, 0x0p0, -0x1.47ae14p-9, 0x1.30be0ep-6 } };
static  char aesl_internal__OC_str[8] = "out.dat";
static  char aesl_internal__OC_str1[2] = "w";
static  char aesl_internal__OC_str2[15] = "Input set %i: ";
static  char aesl_internal__OC_str3[4] = "%f ";
static  char aesl_internal__OC_str4[13] = " Output: %f\n";
static  char aesl_internal__OC_str6[29] = "diff -w out.dat out_gold.dat";
static  char aesl_internal__OC_str7[45] = "*******************************************\n";
static  char aesl_internal__OC_str8[47] = "FAIL: Output DOES NOT match the golden output\n";
static  char aesl_internal__OC_str9[45] = "PASS: The output matches the golden output!\n";
static  char aesl_internal_str[31] = "Comparing against output data ";


/* Function Bodies */
static inline int llvm_fcmp_ord(double X, double Y) { return X == X && Y == Y; }
static inline int llvm_fcmp_uno(double X, double Y) { return X != X || Y != Y; }
static inline int llvm_fcmp_ueq(double X, double Y) { return X == Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_une(double X, double Y) { return X != Y; }
static inline int llvm_fcmp_ult(double X, double Y) { return X <  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ugt(double X, double Y) { return X >  Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_ule(double X, double Y) { return X <= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_uge(double X, double Y) { return X >= Y || llvm_fcmp_uno(X, Y); }
static inline int llvm_fcmp_oeq(double X, double Y) { return X == Y ; }
static inline int llvm_fcmp_one(double X, double Y) { return X != Y && llvm_fcmp_ord(X, Y); }
static inline int llvm_fcmp_olt(double X, double Y) { return X <  Y ; }
static inline int llvm_fcmp_ogt(double X, double Y) { return X >  Y ; }
static inline int llvm_fcmp_ole(double X, double Y) { return X <= Y ; }
static inline int llvm_fcmp_oge(double X, double Y) { return X >= Y ; }

signed int main(void) {
  static  unsigned long long aesl_llvm_cbe_inputs_count = 0;
  float llvm_cbe_inputs[9][6];    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_output_count = 0;
  float llvm_cbe_output;    /* Address-exposed local */
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
   char *llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
   char *llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_7_count = 0;
  static  unsigned long long aesl_llvm_cbe_8_count = 0;
  static  unsigned long long aesl_llvm_cbe_9_count = 0;
  static  unsigned long long aesl_llvm_cbe_10_count = 0;
  static  unsigned long long aesl_llvm_cbe_11_count = 0;
  static  unsigned long long aesl_llvm_cbe_12_count = 0;
  static  unsigned long long aesl_llvm_cbe_13_count = 0;
  static  unsigned long long aesl_llvm_cbe_14_count = 0;
  static  unsigned long long aesl_llvm_cbe_15_count = 0;
  static  unsigned long long aesl_llvm_cbe_16_count = 0;
  static  unsigned long long aesl_llvm_cbe_17_count = 0;
  static  unsigned long long aesl_llvm_cbe_18_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge4_count = 0;
  unsigned int llvm_cbe_storemerge4;
  unsigned int llvm_cbe_storemerge4__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned long long llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  float *llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  unsigned int llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  unsigned int llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  float llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  double llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  float *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  float llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  double llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  unsigned int llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  float *llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  float llvm_cbe_tmp__16;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  double llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned int llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  float *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  double llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  unsigned int llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  float *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  float llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  double llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  float *llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  float llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  double llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  float llvm_cbe_tmp__31;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  double llvm_cbe_tmp__32;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  unsigned int llvm_cbe_tmp__33;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond5_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;
  static  unsigned long long aesl_llvm_cbe_91_count = 0;
  unsigned int llvm_cbe_tmp__34;
  static  unsigned long long aesl_llvm_cbe_puts_count = 0;
  unsigned int llvm_cbe_puts;
  static  unsigned long long aesl_llvm_cbe_92_count = 0;
  unsigned int llvm_cbe_tmp__35;
  static  unsigned long long aesl_llvm_cbe_93_count = 0;
  static  unsigned long long aesl_llvm_cbe_94_count = 0;
  static  unsigned long long aesl_llvm_cbe_95_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__36;
  static  unsigned long long aesl_llvm_cbe_96_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__37;
  static  unsigned long long aesl_llvm_cbe_97_count = 0;
  unsigned long long llvm_cbe_tmp__38;
  static  unsigned long long aesl_llvm_cbe_98_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__39;
  static  unsigned long long aesl_llvm_cbe_99_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__40;
  static  unsigned long long aesl_llvm_cbe_100_count = 0;
  unsigned long long llvm_cbe_tmp__41;
  static  unsigned long long aesl_llvm_cbe_101_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__42;
  static  unsigned long long aesl_llvm_cbe_102_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__43;
  static  unsigned long long aesl_llvm_cbe_103_count = 0;
  unsigned long long llvm_cbe_tmp__44;
  static  unsigned long long aesl_llvm_cbe_104_count = 0;
  static  unsigned long long aesl_llvm_cbe_105_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__45;
  static  unsigned long long aesl_llvm_cbe_106_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__46;
  static  unsigned long long aesl_llvm_cbe_107_count = 0;
  unsigned long long llvm_cbe_tmp__47;
  static  unsigned long long aesl_llvm_cbe_108_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__48;
  static  unsigned long long aesl_llvm_cbe_109_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__49;
  static  unsigned long long aesl_llvm_cbe_110_count = 0;
  unsigned long long llvm_cbe_tmp__50;
  static  unsigned long long aesl_llvm_cbe_111_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__51;
  static  unsigned long long aesl_llvm_cbe_112_count = 0;
  l_struct_OC__iobuf *llvm_cbe_tmp__52;
  static  unsigned long long aesl_llvm_cbe_113_count = 0;
  unsigned long long llvm_cbe_tmp__53;
  static  unsigned long long aesl_llvm_cbe_114_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_115_count = 0;

  CODE_FOR_MAIN();
const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @main\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = bitcast [9 x [6 x float]]* %%inputs to i8*, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_3_count);
  llvm_cbe_tmp__1 = ( char *)(( char *)(&llvm_cbe_inputs));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = call i8* @memcpy(i8* %%1, i8* bitcast ([9 x [6 x float]]* @aesl_internal_main.inputs to i8*), i64 216 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_4_count);
  ( char *)memcpy(( char *)llvm_cbe_tmp__1, ( char *)(( char *)(&aesl_internal_main_OC_inputs)), 216ull);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",216ull);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__2);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = call %%struct._iobuf* @fopen(i8* getelementptr inbounds ([8 x i8]* @aesl_internal_.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8]* @aesl_internal_.str1, i64 0, i64 0)) nounwind, !dbg !3 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_6_count);
  llvm_cbe_tmp__3 = (l_struct_OC__iobuf *)aesl_fopen(( char *)((&aesl_internal__OC_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 8
#endif
])), ( char *)((&aesl_internal__OC_str1[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 2
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__3);
}
  llvm_cbe_storemerge4__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__54;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__54:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge4 = phi i32 [ 0, %%0 ], [ %%7, %%4  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge4_count);
  llvm_cbe_storemerge4 = (unsigned int )llvm_cbe_storemerge4__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge4 = 0x%X",llvm_cbe_storemerge4);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__6);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = sext i32 %%storemerge4 to i64, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__4 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge4);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__4);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = getelementptr inbounds [9 x [6 x float]]* %%inputs, i64 0, i64 %%5, i64 0, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_20_count);
  llvm_cbe_tmp__5 = (float *)(&llvm_cbe_inputs[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 9
#endif
][(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}
if (AESL_DEBUG_TRACE)
printf("\n  call void @neuron(float* %%output, float* %%6) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_21_count);
  neuron((float *)(&llvm_cbe_output), (float *)llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add nsw i32 %%storemerge4, 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_22_count);
  llvm_cbe_tmp__6 = (unsigned int )((unsigned int )(llvm_cbe_storemerge4&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__6&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([15 x i8]* @aesl_internal_.str2, i64 0, i64 0), i32 %%7) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_23_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str2[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 15
#endif
])), llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%X",llvm_cbe_tmp__6);
printf("\nReturn  = 0x%X",llvm_cbe_tmp__7);
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__4) < 9)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )0ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = load float* %%6, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__8 = (float )*llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__8, *(int*)(&llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = fpext float %%9 to double, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__9 = (double )((double )llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__9, *(long long*)(&llvm_cbe_tmp__9));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([4 x i8]* @aesl_internal_.str3, i64 0, i64 0), double %%10) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_30_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4
#endif
])), llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__9, *(long long*)(&llvm_cbe_tmp__9));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__10);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [9 x [6 x float]]* %%inputs, i64 0, i64 %%5, i64 1, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__11 = (float *)(&llvm_cbe_inputs[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 9
#endif
][(((signed long long )1ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__4) < 9)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )1ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = load float* %%12, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__12 = (float )*llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__12, *(int*)(&llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = fpext float %%13 to double, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__13 = (double )((double )llvm_cbe_tmp__12);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__13, *(long long*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([4 x i8]* @aesl_internal_.str3, i64 0, i64 0), double %%14) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_38_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4
#endif
])), llvm_cbe_tmp__13);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__13, *(long long*)(&llvm_cbe_tmp__13));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__14);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = getelementptr inbounds [9 x [6 x float]]* %%inputs, i64 0, i64 %%5, i64 2, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__15 = (float *)(&llvm_cbe_inputs[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 9
#endif
][(((signed long long )2ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__4) < 9)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )2ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = load float* %%16, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__16 = (float )*llvm_cbe_tmp__15;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__16, *(int*)(&llvm_cbe_tmp__16));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = fpext float %%17 to double, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__17 = (double )((double )llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__17, *(long long*)(&llvm_cbe_tmp__17));
if (AESL_DEBUG_TRACE)
printf("\n  %%19 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([4 x i8]* @aesl_internal_.str3, i64 0, i64 0), double %%18) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_46_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4
#endif
])), llvm_cbe_tmp__17);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__17, *(long long*)(&llvm_cbe_tmp__17));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__18);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = getelementptr inbounds [9 x [6 x float]]* %%inputs, i64 0, i64 %%5, i64 3, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__19 = (float *)(&llvm_cbe_inputs[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 9
#endif
][(((signed long long )3ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__4) < 9)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )3ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = load float* %%20, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_52_count);
  llvm_cbe_tmp__20 = (float )*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fpext float %%21 to double, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_53_count);
  llvm_cbe_tmp__21 = (double )((double )llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__21, *(long long*)(&llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n  %%23 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([4 x i8]* @aesl_internal_.str3, i64 0, i64 0), double %%22) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_54_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4
#endif
])), llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__21, *(long long*)(&llvm_cbe_tmp__21));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__22);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = getelementptr inbounds [9 x [6 x float]]* %%inputs, i64 0, i64 %%5, i64 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_59_count);
  llvm_cbe_tmp__23 = (float *)(&llvm_cbe_inputs[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 9
#endif
][(((signed long long )4ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__4) < 9)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )4ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = load float* %%24, align 8, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_60_count);
  llvm_cbe_tmp__24 = (float )*llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__24, *(int*)(&llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = fpext float %%25 to double, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_61_count);
  llvm_cbe_tmp__25 = (double )((double )llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__25, *(long long*)(&llvm_cbe_tmp__25));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([4 x i8]* @aesl_internal_.str3, i64 0, i64 0), double %%26) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_62_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4
#endif
])), llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__25, *(long long*)(&llvm_cbe_tmp__25));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__26);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = getelementptr inbounds [9 x [6 x float]]* %%inputs, i64 0, i64 %%5, i64 5, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__27 = (float *)(&llvm_cbe_inputs[(((signed long long )llvm_cbe_tmp__4))
#ifdef AESL_BC_SIM
 % 9
#endif
][(((signed long long )5ull))
#ifdef AESL_BC_SIM
 % 6
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__4));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__4) < 9)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);
  if (!(((signed long long )5ull) < 6)) fprintf(stderr, "%s:%d: warning: Read access out of array 'inputs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = load float* %%28, align 4, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__28 = (float )*llvm_cbe_tmp__27;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__28, *(int*)(&llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = fpext float %%29 to double, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_69_count);
  llvm_cbe_tmp__29 = (double )((double )llvm_cbe_tmp__28);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__29, *(long long*)(&llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([4 x i8]* @aesl_internal_.str3, i64 0, i64 0), double %%30) nounwind, !dbg !5 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_70_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str3[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 4
#endif
])), llvm_cbe_tmp__29);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__29, *(long long*)(&llvm_cbe_tmp__29));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__30);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = load float* %%output, align 4, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__31 = (float )*(&llvm_cbe_output);
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__31, *(int*)(&llvm_cbe_tmp__31));
if (AESL_DEBUG_TRACE)
printf("\n  %%33 = fpext float %%32 to double, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_82_count);
  llvm_cbe_tmp__32 = (double )((double )llvm_cbe_tmp__31);
if (AESL_DEBUG_TRACE)
printf("\n = %lf,  0x%llx\n", llvm_cbe_tmp__32, *(long long*)(&llvm_cbe_tmp__32));
if (AESL_DEBUG_TRACE)
printf("\n  %%34 = call i32 (%%struct._iobuf*, i8*, ...)* @fprintf(%%struct._iobuf* %%3, i8* getelementptr inbounds ([13 x i8]* @aesl_internal_.str4, i64 0, i64 0), double %%33) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_83_count);
  fprintf((l_struct_OC__iobuf *)llvm_cbe_tmp__3, ( char *)((&aesl_internal__OC_str4[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 13
#endif
])), llvm_cbe_tmp__32);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = %lf,  0x%llx",llvm_cbe_tmp__32, *(long long*)(&llvm_cbe_tmp__32));
printf("\nReturn  = 0x%X",llvm_cbe_tmp__33);
}
  if (((llvm_cbe_tmp__6&4294967295U) == (9u&4294967295U))) {
    goto llvm_cbe_tmp__55;
  } else {
    llvm_cbe_storemerge4__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__6;   /* for PHI node */
    goto llvm_cbe_tmp__54;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__55:
if (AESL_DEBUG_TRACE)
printf("\n  %%36 = call i32 @fclose(%%struct._iobuf* %%3) nounwind, !dbg !6 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_91_count);
  fclose((l_struct_OC__iobuf *)llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__34);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%puts = call i32 @puts(i8* getelementptr inbounds ([31 x i8]* @aesl_internal_str, i64 0, i64 0)), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_puts_count);
  puts(( char *)((&aesl_internal_str[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 31
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn puts = 0x%X",llvm_cbe_puts);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%37 = call i32 bitcast (i32 (...)* @system to i32 (i8*)*)(i8* getelementptr inbounds ([29 x i8]* @aesl_internal_.str6, i64 0, i64 0)) nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_92_count);
  llvm_cbe_tmp__35 = (unsigned int )system(( char *)((&aesl_internal__OC_str6[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 29
#endif
])));
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__35);
}
  if (((llvm_cbe_tmp__35&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe_tmp__56;
  } else {
    goto llvm_cbe_tmp__57;
  }

llvm_cbe_tmp__57:
if (AESL_DEBUG_TRACE)
printf("\n  %%40 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_95_count);
  llvm_cbe_tmp__36 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__36);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%41 = getelementptr inbounds %%struct._iobuf* %%40, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_96_count);
  llvm_cbe_tmp__37 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__36[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%42 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str7, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%41), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_97_count);
  fwrite(( char *)((&aesl_internal__OC_str7[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__37);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__38);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%43 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_98_count);
  llvm_cbe_tmp__39 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__39);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%44 = getelementptr inbounds %%struct._iobuf* %%43, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_99_count);
  llvm_cbe_tmp__40 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__39[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%45 = call i64 @fwrite(i8* getelementptr inbounds ([47 x i8]* @aesl_internal_.str8, i64 0, i64 0), i64 46, i64 1, %%struct._iobuf* %%44), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_100_count);
  fwrite(( char *)((&aesl_internal__OC_str8[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 47
#endif
])), 46ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__40);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",46ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__41);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%46 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_101_count);
  llvm_cbe_tmp__42 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__42);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%47 = getelementptr inbounds %%struct._iobuf* %%46, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_102_count);
  llvm_cbe_tmp__43 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__42[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%48 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str7, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%47), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_103_count);
  fwrite(( char *)((&aesl_internal__OC_str7[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__43);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__44);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )1u;   /* for PHI node */
  goto llvm_cbe_tmp__58;

llvm_cbe_tmp__56:
if (AESL_DEBUG_TRACE)
printf("\n  %%50 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_105_count);
  llvm_cbe_tmp__45 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__45);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%51 = getelementptr inbounds %%struct._iobuf* %%50, i64 1, !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_106_count);
  llvm_cbe_tmp__46 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__45[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%52 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str7, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%51), !dbg !7 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_107_count);
  fwrite(( char *)((&aesl_internal__OC_str7[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__46);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__47);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%53 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_108_count);
  llvm_cbe_tmp__48 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__48);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%54 = getelementptr inbounds %%struct._iobuf* %%53, i64 1, !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_109_count);
  llvm_cbe_tmp__49 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__48[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%55 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str9, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%54), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_110_count);
  fwrite(( char *)((&aesl_internal__OC_str9[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__49);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__50);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%56 = call %%struct._iobuf* @__iob_func() nounwind, !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_111_count);
  llvm_cbe_tmp__51 = (l_struct_OC__iobuf *)__iob_func();
if (AESL_DEBUG_TRACE) {
printf("\nReturn  = 0x%X",llvm_cbe_tmp__51);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%57 = getelementptr inbounds %%struct._iobuf* %%56, i64 1, !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_112_count);
  llvm_cbe_tmp__52 = (l_struct_OC__iobuf *)(&llvm_cbe_tmp__51[(((signed long long )1ull))]);
if (AESL_DEBUG_TRACE) {
}
if (AESL_DEBUG_TRACE)
printf("\n  %%58 = call i64 @fwrite(i8* getelementptr inbounds ([45 x i8]* @aesl_internal_.str7, i64 0, i64 0), i64 44, i64 1, %%struct._iobuf* %%57), !dbg !8 for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_113_count);
  fwrite(( char *)((&aesl_internal__OC_str7[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 45
#endif
])), 44ull, 1ull, (l_struct_OC__iobuf *)llvm_cbe_tmp__52);
if (AESL_DEBUG_TRACE) {
printf("\nArgument  = 0x%I64X",44ull);
printf("\nArgument  = 0x%I64X",1ull);
printf("\nReturn  = 0x%I64X",llvm_cbe_tmp__53);
}
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__58;

llvm_cbe_tmp__58:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 1, %%39 ], [ 0, %%49  for 0x%I64xth hint within @main  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",1u);
printf("\n = 0x%X",0u);
}
  if (AESL_DEBUG_TRACE)
      printf("\nEND @main}\n");
  return llvm_cbe_storemerge1;
}

