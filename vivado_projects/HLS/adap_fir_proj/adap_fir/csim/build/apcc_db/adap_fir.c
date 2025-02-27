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

/* External Global Variable Declarations */
extern float coeffs[24];

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void adap_fir(float *llvm_cbe_y, float llvm_cbe_x, float llvm_cbe_d);


/* Global Variable Definitions and Initialization */
static float aesl_internal_adap_fir_OC_shift_reg[24];
float coeffs[24] = { 0x0p0, -0x1.4p3, -0x1.2p3, 0x1.7p4, 0x1.cp5, 0x1.f8p5, 0x1.cp5, 0x1.7p4, -0x1.2p3, -0x1.4p3, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0, 0x0p0 };


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

void adap_fir(float *llvm_cbe_y, float llvm_cbe_x, float llvm_cbe_d) {
  static  unsigned long long aesl_llvm_cbe_1_count = 0;
  static  unsigned long long aesl_llvm_cbe_2_count = 0;
  static  unsigned long long aesl_llvm_cbe_3_count = 0;
  static  unsigned long long aesl_llvm_cbe_4_count = 0;
  static  unsigned long long aesl_llvm_cbe_5_count = 0;
  static  unsigned long long aesl_llvm_cbe_6_count = 0;
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
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  float llvm_cbe_tmp__1;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  float llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge3_count = 0;
  unsigned int llvm_cbe_storemerge3;
  unsigned int llvm_cbe_storemerge3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  float llvm_cbe_tmp__3;
  float llvm_cbe_tmp__3__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  float llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  unsigned long long llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  float *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  float llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned long long llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  float *llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  float *llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  float llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;
  float llvm_cbe_tmp__13;
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  float llvm_cbe_tmp__14;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  unsigned int llvm_cbe_tmp__15;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  float llvm_cbe_tmp__16;
  float llvm_cbe_tmp__16__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
  float llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_52_count = 0;
  static  unsigned long long aesl_llvm_cbe_53_count = 0;
  static  unsigned long long aesl_llvm_cbe_54_count = 0;
  static  unsigned long long aesl_llvm_cbe_55_count = 0;
  static  unsigned long long aesl_llvm_cbe_56_count = 0;
  static  unsigned long long aesl_llvm_cbe_57_count = 0;
  static  unsigned long long aesl_llvm_cbe_58_count = 0;
  static  unsigned long long aesl_llvm_cbe_59_count = 0;
  static  unsigned long long aesl_llvm_cbe_60_count = 0;
  static  unsigned long long aesl_llvm_cbe_61_count = 0;
  static  unsigned long long aesl_llvm_cbe_62_count = 0;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge12_count = 0;
  unsigned int llvm_cbe_storemerge12;
  unsigned int llvm_cbe_storemerge12__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  unsigned long long llvm_cbe_tmp__18;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  float *llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  float llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  float llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  float llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  float *llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  float llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  float llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  unsigned int llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;
  static  unsigned long long aesl_llvm_cbe_87_count = 0;
  static  unsigned long long aesl_llvm_cbe_88_count = 0;
  static  unsigned long long aesl_llvm_cbe_exitcond_count = 0;
  static  unsigned long long aesl_llvm_cbe_89_count = 0;
  static  unsigned long long aesl_llvm_cbe_90_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @adap_fir\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = load float* getelementptr inbounds ([24 x float]* @coeffs, i64 0, i64 0), align 16, !dbg !4 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__1 = (float )*((&coeffs[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 24
#endif
]));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__1, *(int*)(&llvm_cbe_tmp__1));
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = fmul float %%1, %%x, !dbg !4 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__2 = (float )((float )(llvm_cbe_tmp__1 * llvm_cbe_x));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__2, *(int*)(&llvm_cbe_tmp__2));
  llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )23u;   /* for PHI node */
  llvm_cbe_tmp__3__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  goto llvm_cbe_tmp__27;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__27:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge3 = phi i32 [ 23, %%0 ], [ %%18, %%7  for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_storemerge3_count);
  llvm_cbe_storemerge3 = (unsigned int )llvm_cbe_storemerge3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge3 = 0x%X",llvm_cbe_storemerge3);
printf("\n = 0x%X",23u);
printf("\n = 0x%X",llvm_cbe_tmp__15);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%4 = phi float [ 0.000000e+00, %%0 ], [ %%17, %%7  for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__3 = (float )llvm_cbe_tmp__3__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__3);
printf("\n = %f",0x0p0);
printf("\n = %f",llvm_cbe_tmp__14);
}
  if (((llvm_cbe_storemerge3&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_thread;
  } else {
    goto llvm_cbe_tmp__28;
  }

llvm_cbe_tmp__28:
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = add nsw i32 %%storemerge3, -1, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_35_count);
  llvm_cbe_tmp__5 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__5&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = sext i32 %%8 to i64, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_36_count);
  llvm_cbe_tmp__6 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [24 x float]* @aesl_internal_adap_fir.shift_reg, i64 0, i64 %%9, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_37_count);
  llvm_cbe_tmp__7 = (float *)(&aesl_internal_adap_fir_OC_shift_reg[(((signed long long )llvm_cbe_tmp__6))
#ifdef AESL_BC_SIM
 % 24
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__6));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__6) < 24)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_adap_fir.shift_reg' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = load float* %%10, align 4, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_38_count);
  llvm_cbe_tmp__8 = (float )*llvm_cbe_tmp__7;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__8, *(int*)(&llvm_cbe_tmp__8));
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = sext i32 %%storemerge3 to i64, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__9 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge3);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [24 x float]* @aesl_internal_adap_fir.shift_reg, i64 0, i64 %%12, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_40_count);
  llvm_cbe_tmp__10 = (float *)(&aesl_internal_adap_fir_OC_shift_reg[(((signed long long )llvm_cbe_tmp__9))
#ifdef AESL_BC_SIM
 % 24
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__9));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__9) < 24 && "Write access out of array 'aesl_internal_adap_fir.shift_reg' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%11, float* %%13, align 4, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_41_count);
  *llvm_cbe_tmp__10 = llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__8);
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = getelementptr inbounds [24 x float]* @coeffs, i64 0, i64 %%12, !dbg !5 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__11 = (float *)(&coeffs[(((signed long long )llvm_cbe_tmp__9))
#ifdef AESL_BC_SIM
 % 24
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__9));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__9) < 24)) fprintf(stderr, "%s:%d: warning: Read access out of array 'coeffs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = load float* %%14, align 4, !dbg !5 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_43_count);
  llvm_cbe_tmp__12 = (float )*llvm_cbe_tmp__11;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__12, *(int*)(&llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fmul float %%11, %%15, !dbg !5 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_44_count);
  llvm_cbe_tmp__13 = (float )((float )(llvm_cbe_tmp__8 * llvm_cbe_tmp__12));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__13, *(int*)(&llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = fadd float %%4, %%16, !dbg !4 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_45_count);
  llvm_cbe_tmp__14 = (float )((float )(llvm_cbe_tmp__3 + llvm_cbe_tmp__13));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__14, *(int*)(&llvm_cbe_tmp__14));
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = add nsw i32 %%storemerge3, -1, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_46_count);
  llvm_cbe_tmp__15 = (unsigned int )((unsigned int )(llvm_cbe_storemerge3&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__15&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge3) > ((signed int )0u))) {
    llvm_cbe_storemerge3__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__15;   /* for PHI node */
    llvm_cbe_tmp__3__PHI_TEMPORARY = (float )llvm_cbe_tmp__14;   /* for PHI node */
    goto llvm_cbe_tmp__27;
  } else {
    llvm_cbe_tmp__16__PHI_TEMPORARY = (float )llvm_cbe_tmp__14;   /* for PHI node */
    goto llvm_cbe_tmp__29;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  store float %%x, float* getelementptr inbounds ([24 x float]* @aesl_internal_adap_fir.shift_reg, i64 0, i64 0), align 16, !dbg !4 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_32_count);
  *((&aesl_internal_adap_fir_OC_shift_reg[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 24
#endif
])) = llvm_cbe_x;
if (AESL_DEBUG_TRACE)
printf("\nx = %f\n", llvm_cbe_x);
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = fadd float %%4, %%2, !dbg !4 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__4 = (float )((float )(llvm_cbe_tmp__3 + llvm_cbe_tmp__2));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__4, *(int*)(&llvm_cbe_tmp__4));
  llvm_cbe_tmp__16__PHI_TEMPORARY = (float )llvm_cbe_tmp__4;   /* for PHI node */
  goto llvm_cbe_tmp__29;

llvm_cbe_tmp__29:
if (AESL_DEBUG_TRACE)
printf("\n  %%21 = phi float [ %%6, %%.thread ], [ %%17, %%7  for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_49_count);
  llvm_cbe_tmp__16 = (float )llvm_cbe_tmp__16__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__16);
printf("\n = %f",llvm_cbe_tmp__4);
printf("\n = %f",llvm_cbe_tmp__14);
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%21, float* %%y, align 4, !dbg !3 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_50_count);
  *llvm_cbe_y = llvm_cbe_tmp__16;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__16);
if (AESL_DEBUG_TRACE)
printf("\n  %%22 = fsub float %%d, %%21, !dbg !4 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_51_count);
  llvm_cbe_tmp__17 = (float )((float )(llvm_cbe_d - llvm_cbe_tmp__16));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__17, *(int*)(&llvm_cbe_tmp__17));
  llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__30;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__30:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge12 = phi i32 [ 0, %%20 ], [ %%32, %%23  for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_storemerge12_count);
  llvm_cbe_storemerge12 = (unsigned int )llvm_cbe_storemerge12__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge12 = 0x%X",llvm_cbe_storemerge12);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__26);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%24 = sext i32 %%storemerge12 to i64, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_67_count);
  llvm_cbe_tmp__18 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge12);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__18);
if (AESL_DEBUG_TRACE)
printf("\n  %%25 = getelementptr inbounds [24 x float]* @aesl_internal_adap_fir.shift_reg, i64 0, i64 %%24, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__19 = (float *)(&aesl_internal_adap_fir_OC_shift_reg[(((signed long long )llvm_cbe_tmp__18))
#ifdef AESL_BC_SIM
 % 24
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__18) < 24)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_adap_fir.shift_reg' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%26 = load float* %%25, align 4, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_69_count);
  llvm_cbe_tmp__20 = (float )*llvm_cbe_tmp__19;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__20, *(int*)(&llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n  %%27 = fmul float %%22, %%26, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__21 = (float )((float )(llvm_cbe_tmp__17 * llvm_cbe_tmp__20));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__21, *(int*)(&llvm_cbe_tmp__21));
if (AESL_DEBUG_TRACE)
printf("\n  %%28 = fmul float %%27, 3.906250e-03, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__22 = (float )((float )(llvm_cbe_tmp__21 * 0x1p-8));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__22, *(int*)(&llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n  %%29 = getelementptr inbounds [24 x float]* @coeffs, i64 0, i64 %%24, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__23 = (float *)(&coeffs[(((signed long long )llvm_cbe_tmp__18))
#ifdef AESL_BC_SIM
 % 24
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__18));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__18) < 24)) fprintf(stderr, "%s:%d: warning: Read access out of array 'coeffs' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%30 = load float* %%29, align 4, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__24 = (float )*llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__24, *(int*)(&llvm_cbe_tmp__24));
if (AESL_DEBUG_TRACE)
printf("\n  %%31 = fadd float %%30, %%28, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__25 = (float )((float )(llvm_cbe_tmp__24 + llvm_cbe_tmp__22));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__25, *(int*)(&llvm_cbe_tmp__25));

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__18) < 24 && "Write access out of array 'coeffs' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%31, float* %%29, align 4, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_75_count);
  *llvm_cbe_tmp__23 = llvm_cbe_tmp__25;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__25);
if (AESL_DEBUG_TRACE)
printf("\n  %%32 = add nsw i32 %%storemerge12, 1, !dbg !6 for 0x%I64xth hint within @adap_fir  --> \n", ++aesl_llvm_cbe_76_count);
  llvm_cbe_tmp__26 = (unsigned int )((unsigned int )(llvm_cbe_storemerge12&4294967295ull)) + ((unsigned int )(1u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__26&4294967295ull)));
  if (((llvm_cbe_tmp__26&4294967295U) == (24u&4294967295U))) {
    goto llvm_cbe_tmp__31;
  } else {
    llvm_cbe_storemerge12__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__26;   /* for PHI node */
    goto llvm_cbe_tmp__30;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe_tmp__31:
  if (AESL_DEBUG_TRACE)
      printf("\nEND @adap_fir}\n");
  return;
}

