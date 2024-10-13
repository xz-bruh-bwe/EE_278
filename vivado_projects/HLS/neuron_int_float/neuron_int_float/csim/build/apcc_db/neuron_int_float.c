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

/* Function Declarations */
double fmod(double, double);
float fmodf(float, float);
long double fmodl(long double, long double);
void fir_int(signed int *llvm_cbe_y, signed int llvm_cbe_x);
void fir_float(float *llvm_cbe_y, float llvm_cbe_x);


/* Global Variable Definitions and Initialization */
static signed int aesl_internal_fir_int_OC_c[11] = { 0u, 4294967286u, 4294967287u, 23u, 56u, 63u, 56u, 23u, 4294967287u, 4294967286u, 0u };
static signed int aesl_internal_fir_int_OC_shift_reg[11];
static float aesl_internal_fir_float_OC_c[11] = { 0x0p0, -0x1.4p3, -0x1.2p3, 0x1.7p4, 0x1.cp5, 0x1.f8p5, 0x1.cp5, 0x1.7p4, -0x1.2p3, -0x1.4p3, 0x0p0 };
static float aesl_internal_fir_float_OC_shift_reg[11];


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

void fir_int(signed int *llvm_cbe_y, signed int llvm_cbe_x) {
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
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_19_count = 0;
  unsigned int llvm_cbe_tmp__1;
  unsigned int llvm_cbe_tmp__1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_20_count = 0;
  static  unsigned long long aesl_llvm_cbe_21_count = 0;
  static  unsigned long long aesl_llvm_cbe_22_count = 0;
  static  unsigned long long aesl_llvm_cbe_23_count = 0;
  static  unsigned long long aesl_llvm_cbe_24_count = 0;
  unsigned int llvm_cbe_tmp__2;
  static  unsigned long long aesl_llvm_cbe_25_count = 0;
  unsigned long long llvm_cbe_tmp__3;
  static  unsigned long long aesl_llvm_cbe_26_count = 0;
  signed int *llvm_cbe_tmp__4;
  static  unsigned long long aesl_llvm_cbe_27_count = 0;
  unsigned int llvm_cbe_tmp__5;
  static  unsigned long long aesl_llvm_cbe_28_count = 0;
  unsigned long long llvm_cbe_tmp__6;
  static  unsigned long long aesl_llvm_cbe_29_count = 0;
  signed int *llvm_cbe_tmp__7;
  static  unsigned long long aesl_llvm_cbe_30_count = 0;
  static  unsigned long long aesl_llvm_cbe_31_count = 0;
  signed int *llvm_cbe_tmp__8;
  static  unsigned long long aesl_llvm_cbe_32_count = 0;
  unsigned int llvm_cbe_tmp__9;
  static  unsigned long long aesl_llvm_cbe_33_count = 0;
  unsigned int llvm_cbe_tmp__10;
  static  unsigned long long aesl_llvm_cbe_34_count = 0;
  unsigned int llvm_cbe_tmp__11;
  static  unsigned long long aesl_llvm_cbe_35_count = 0;
  static  unsigned long long aesl_llvm_cbe_36_count = 0;
  static  unsigned long long aesl_llvm_cbe_37_count = 0;
  static  unsigned long long aesl_llvm_cbe_38_count = 0;
  static  unsigned long long aesl_llvm_cbe_39_count = 0;
  unsigned int llvm_cbe_tmp__12;
  static  unsigned long long aesl_llvm_cbe_40_count = 0;
  static  unsigned long long aesl_llvm_cbe_41_count = 0;
  static  unsigned long long aesl_llvm_cbe_42_count = 0;
  unsigned int llvm_cbe_tmp__13;
  unsigned int llvm_cbe_tmp__13__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_43_count = 0;
  static  unsigned long long aesl_llvm_cbe_44_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @fir_int\n");
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )10u;   /* for PHI node */
  llvm_cbe_tmp__1__PHI_TEMPORARY = (unsigned int )0u;   /* for PHI node */
  goto llvm_cbe_tmp__14;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__14:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 10, %%0 ], [ %%15, %%4  for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",10u);
printf("\n = 0x%X",llvm_cbe_tmp__12);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%2 = phi i32 [ 0, %%0 ], [ %%14, %%4  for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_19_count);
  llvm_cbe_tmp__1 = (unsigned int )llvm_cbe_tmp__1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__1);
printf("\n = 0x%X",0u);
printf("\n = 0x%X",llvm_cbe_tmp__11);
}
  if (((llvm_cbe_storemerge1&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_thread;
  } else {
    goto llvm_cbe_tmp__15;
  }

llvm_cbe_tmp__15:
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = add nsw i32 %%storemerge1, -1, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_24_count);
  llvm_cbe_tmp__2 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__2&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%6 = sext i32 %%5 to i64, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_25_count);
  llvm_cbe_tmp__3 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__2);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__3);
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = getelementptr inbounds [11 x i32]* @aesl_internal_fir_int.shift_reg, i64 0, i64 %%6, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_26_count);
  llvm_cbe_tmp__4 = (signed int *)(&aesl_internal_fir_int_OC_shift_reg[(((signed long long )llvm_cbe_tmp__3))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__3));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__3) < 11)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_fir_int.shift_reg' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = load i32* %%7, align 4, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_27_count);
  llvm_cbe_tmp__5 = (unsigned int )*llvm_cbe_tmp__4;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = sext i32 %%storemerge1 to i64, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_28_count);
  llvm_cbe_tmp__6 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__6);
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = getelementptr inbounds [11 x i32]* @aesl_internal_fir_int.shift_reg, i64 0, i64 %%9, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_29_count);
  llvm_cbe_tmp__7 = (signed int *)(&aesl_internal_fir_int_OC_shift_reg[(((signed long long )llvm_cbe_tmp__6))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__6));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__6) < 11 && "Write access out of array 'aesl_internal_fir_int.shift_reg' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%8, i32* %%10, align 4, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_30_count);
  *llvm_cbe_tmp__7 = llvm_cbe_tmp__5;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__5);
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = getelementptr inbounds [11 x i32]* @aesl_internal_fir_int.c, i64 0, i64 %%9, !dbg !5 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_31_count);
  llvm_cbe_tmp__8 = (signed int *)(&aesl_internal_fir_int_OC_c[(((signed long long )llvm_cbe_tmp__6))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__6));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__6) < 11)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_fir_int.c' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = load i32* %%11, align 4, !dbg !5 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_32_count);
  llvm_cbe_tmp__9 = (unsigned int )*llvm_cbe_tmp__8;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__9);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = mul nsw i32 %%12, %%8, !dbg !5 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_33_count);
  llvm_cbe_tmp__10 = (unsigned int )((unsigned int )(llvm_cbe_tmp__9&4294967295ull)) * ((unsigned int )(llvm_cbe_tmp__5&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__10&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = add nsw i32 %%13, %%2, !dbg !5 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_34_count);
  llvm_cbe_tmp__11 = (unsigned int )((unsigned int )(llvm_cbe_tmp__10&4294967295ull)) + ((unsigned int )(llvm_cbe_tmp__1&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__11&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = add nsw i32 %%storemerge1, -1, !dbg !6 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_39_count);
  llvm_cbe_tmp__12 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__12&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge1) > ((signed int )0u))) {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__12;   /* for PHI node */
    llvm_cbe_tmp__1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe_tmp__14;
  } else {
    llvm_cbe_tmp__13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__11;   /* for PHI node */
    goto llvm_cbe_tmp__16;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%x, i32* getelementptr inbounds ([11 x i32]* @aesl_internal_fir_int.shift_reg, i64 0, i64 0), align 16, !dbg !5 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_22_count);
  *((&aesl_internal_fir_int_OC_shift_reg[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 11
#endif
])) = llvm_cbe_x;
if (AESL_DEBUG_TRACE)
printf("\nx = 0x%X\n", llvm_cbe_x);
  llvm_cbe_tmp__13__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__1;   /* for PHI node */
  goto llvm_cbe_tmp__16;

llvm_cbe_tmp__16:
if (AESL_DEBUG_TRACE)
printf("\n  %%18 = phi i32 [ %%2, %%.thread ], [ %%14, %%4  for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_42_count);
  llvm_cbe_tmp__13 = (unsigned int )llvm_cbe_tmp__13__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%X",llvm_cbe_tmp__13);
printf("\n = 0x%X",llvm_cbe_tmp__1);
printf("\n = 0x%X",llvm_cbe_tmp__11);
}
if (AESL_DEBUG_TRACE)
printf("\n  store i32 %%18, i32* %%y, align 4, !dbg !4 for 0x%I64xth hint within @fir_int  --> \n", ++aesl_llvm_cbe_43_count);
  *llvm_cbe_y = llvm_cbe_tmp__13;
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", llvm_cbe_tmp__13);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @fir_int}\n");
  return;
}


void fir_float(float *llvm_cbe_y, float llvm_cbe_x) {
  static  unsigned long long aesl_llvm_cbe_45_count = 0;
  static  unsigned long long aesl_llvm_cbe_46_count = 0;
  static  unsigned long long aesl_llvm_cbe_47_count = 0;
  static  unsigned long long aesl_llvm_cbe_48_count = 0;
  static  unsigned long long aesl_llvm_cbe_49_count = 0;
  static  unsigned long long aesl_llvm_cbe_50_count = 0;
  static  unsigned long long aesl_llvm_cbe_51_count = 0;
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
  float llvm_cbe_tmp__17;
  static  unsigned long long aesl_llvm_cbe_63_count = 0;
  static  unsigned long long aesl_llvm_cbe_storemerge1_count = 0;
  unsigned int llvm_cbe_storemerge1;
  unsigned int llvm_cbe_storemerge1__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_64_count = 0;
  float llvm_cbe_tmp__18;
  float llvm_cbe_tmp__18__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_65_count = 0;
  static  unsigned long long aesl_llvm_cbe_66_count = 0;
  static  unsigned long long aesl_llvm_cbe_67_count = 0;
  static  unsigned long long aesl_llvm_cbe_68_count = 0;
  float llvm_cbe_tmp__19;
  static  unsigned long long aesl_llvm_cbe_69_count = 0;
  static  unsigned long long aesl_llvm_cbe_70_count = 0;
  unsigned int llvm_cbe_tmp__20;
  static  unsigned long long aesl_llvm_cbe_71_count = 0;
  unsigned long long llvm_cbe_tmp__21;
  static  unsigned long long aesl_llvm_cbe_72_count = 0;
  float *llvm_cbe_tmp__22;
  static  unsigned long long aesl_llvm_cbe_73_count = 0;
  float llvm_cbe_tmp__23;
  static  unsigned long long aesl_llvm_cbe_74_count = 0;
  unsigned long long llvm_cbe_tmp__24;
  static  unsigned long long aesl_llvm_cbe_75_count = 0;
  float *llvm_cbe_tmp__25;
  static  unsigned long long aesl_llvm_cbe_76_count = 0;
  static  unsigned long long aesl_llvm_cbe_77_count = 0;
  float *llvm_cbe_tmp__26;
  static  unsigned long long aesl_llvm_cbe_78_count = 0;
  float llvm_cbe_tmp__27;
  static  unsigned long long aesl_llvm_cbe_79_count = 0;
  float llvm_cbe_tmp__28;
  static  unsigned long long aesl_llvm_cbe_80_count = 0;
  float llvm_cbe_tmp__29;
  static  unsigned long long aesl_llvm_cbe_81_count = 0;
  unsigned int llvm_cbe_tmp__30;
  static  unsigned long long aesl_llvm_cbe_82_count = 0;
  static  unsigned long long aesl_llvm_cbe_83_count = 0;
  static  unsigned long long aesl_llvm_cbe_84_count = 0;
  float llvm_cbe_tmp__31;
  float llvm_cbe_tmp__31__PHI_TEMPORARY;
  static  unsigned long long aesl_llvm_cbe_85_count = 0;
  static  unsigned long long aesl_llvm_cbe_86_count = 0;

const char* AESL_DEBUG_TRACE = getenv("DEBUG_TRACE");
if (AESL_DEBUG_TRACE)
printf("\n\{ BEGIN @fir_float\n");
if (AESL_DEBUG_TRACE)
printf("\n  %%1 = fmul float %%x, 0.000000e+00, !dbg !4 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_62_count);
  llvm_cbe_tmp__17 = (float )((float )(llvm_cbe_x * 0x0p0));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__17, *(int*)(&llvm_cbe_tmp__17));
  llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )10u;   /* for PHI node */
  llvm_cbe_tmp__18__PHI_TEMPORARY = (float )0x0p0;   /* for PHI node */
  goto llvm_cbe_tmp__32;

  do {     /* Syntactic loop '' to make GCC happy */
llvm_cbe_tmp__32:
if (AESL_DEBUG_TRACE)
printf("\n  %%storemerge1 = phi i32 [ 10, %%0 ], [ %%17, %%6  for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_storemerge1_count);
  llvm_cbe_storemerge1 = (unsigned int )llvm_cbe_storemerge1__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\nstoremerge1 = 0x%X",llvm_cbe_storemerge1);
printf("\n = 0x%X",10u);
printf("\n = 0x%X",llvm_cbe_tmp__30);
}
if (AESL_DEBUG_TRACE)
printf("\n  %%3 = phi float [ 0.000000e+00, %%0 ], [ %%16, %%6  for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_64_count);
  llvm_cbe_tmp__18 = (float )llvm_cbe_tmp__18__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__18);
printf("\n = %f",0x0p0);
printf("\n = %f",llvm_cbe_tmp__29);
}
  if (((llvm_cbe_storemerge1&4294967295U) == (0u&4294967295U))) {
    goto llvm_cbe__2e_thread;
  } else {
    goto llvm_cbe_tmp__33;
  }

llvm_cbe_tmp__33:
if (AESL_DEBUG_TRACE)
printf("\n  %%7 = add nsw i32 %%storemerge1, -1, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_70_count);
  llvm_cbe_tmp__20 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__20&4294967295ull)));
if (AESL_DEBUG_TRACE)
printf("\n  %%8 = sext i32 %%7 to i64, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_71_count);
  llvm_cbe_tmp__21 = (unsigned long long )((signed long long )(signed int )llvm_cbe_tmp__20);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__21);
if (AESL_DEBUG_TRACE)
printf("\n  %%9 = getelementptr inbounds [11 x float]* @aesl_internal_fir_float.shift_reg, i64 0, i64 %%8, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_72_count);
  llvm_cbe_tmp__22 = (float *)(&aesl_internal_fir_float_OC_shift_reg[(((signed long long )llvm_cbe_tmp__21))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__21));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__21) < 11)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_fir_float.shift_reg' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%10 = load float* %%9, align 4, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_73_count);
  llvm_cbe_tmp__23 = (float )*llvm_cbe_tmp__22;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__23, *(int*)(&llvm_cbe_tmp__23));
if (AESL_DEBUG_TRACE)
printf("\n  %%11 = sext i32 %%storemerge1 to i64, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_74_count);
  llvm_cbe_tmp__24 = (unsigned long long )((signed long long )(signed int )llvm_cbe_storemerge1);
if (AESL_DEBUG_TRACE)
printf("\n = 0x%I64X\n", llvm_cbe_tmp__24);
if (AESL_DEBUG_TRACE)
printf("\n  %%12 = getelementptr inbounds [11 x float]* @aesl_internal_fir_float.shift_reg, i64 0, i64 %%11, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_75_count);
  llvm_cbe_tmp__25 = (float *)(&aesl_internal_fir_float_OC_shift_reg[(((signed long long )llvm_cbe_tmp__24))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__24));
}

#ifdef AESL_BC_SIM
  assert(((signed long long )llvm_cbe_tmp__24) < 11 && "Write access out of array 'aesl_internal_fir_float.shift_reg' bound?");

#endif
if (AESL_DEBUG_TRACE)
printf("\n  store float %%10, float* %%12, align 4, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_76_count);
  *llvm_cbe_tmp__25 = llvm_cbe_tmp__23;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__23);
if (AESL_DEBUG_TRACE)
printf("\n  %%13 = getelementptr inbounds [11 x float]* @aesl_internal_fir_float.c, i64 0, i64 %%11, !dbg !5 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_77_count);
  llvm_cbe_tmp__26 = (float *)(&aesl_internal_fir_float_OC_c[(((signed long long )llvm_cbe_tmp__24))
#ifdef AESL_BC_SIM
 % 11
#endif
]);
if (AESL_DEBUG_TRACE) {
printf("\n = 0x%I64X",((signed long long )llvm_cbe_tmp__24));
}

#ifdef AESL_BC_SIM
  if (!(((signed long long )llvm_cbe_tmp__24) < 11)) fprintf(stderr, "%s:%d: warning: Read access out of array 'aesl_internal_fir_float.c' bound?\n", __FILE__, __LINE__);

#endif
if (AESL_DEBUG_TRACE)
printf("\n  %%14 = load float* %%13, align 4, !dbg !5 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_78_count);
  llvm_cbe_tmp__27 = (float )*llvm_cbe_tmp__26;
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__27, *(int*)(&llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n  %%15 = fmul float %%10, %%14, !dbg !5 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_79_count);
  llvm_cbe_tmp__28 = (float )((float )(llvm_cbe_tmp__23 * llvm_cbe_tmp__27));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__28, *(int*)(&llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n  %%16 = fadd float %%3, %%15, !dbg !4 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_80_count);
  llvm_cbe_tmp__29 = (float )((float )(llvm_cbe_tmp__18 + llvm_cbe_tmp__28));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__29, *(int*)(&llvm_cbe_tmp__29));
if (AESL_DEBUG_TRACE)
printf("\n  %%17 = add nsw i32 %%storemerge1, -1, !dbg !6 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_81_count);
  llvm_cbe_tmp__30 = (unsigned int )((unsigned int )(llvm_cbe_storemerge1&4294967295ull)) + ((unsigned int )(4294967295u&4294967295ull));
if (AESL_DEBUG_TRACE)
printf("\n = 0x%X\n", ((unsigned int )(llvm_cbe_tmp__30&4294967295ull)));
  if ((((signed int )llvm_cbe_storemerge1) > ((signed int )0u))) {
    llvm_cbe_storemerge1__PHI_TEMPORARY = (unsigned int )llvm_cbe_tmp__30;   /* for PHI node */
    llvm_cbe_tmp__18__PHI_TEMPORARY = (float )llvm_cbe_tmp__29;   /* for PHI node */
    goto llvm_cbe_tmp__32;
  } else {
    llvm_cbe_tmp__31__PHI_TEMPORARY = (float )llvm_cbe_tmp__29;   /* for PHI node */
    goto llvm_cbe_tmp__34;
  }

  } while (1); /* end of syntactic loop '' */
llvm_cbe__2e_thread:
if (AESL_DEBUG_TRACE)
printf("\n  store float %%x, float* getelementptr inbounds ([11 x float]* @aesl_internal_fir_float.shift_reg, i64 0, i64 0), align 16, !dbg !5 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_67_count);
  *((&aesl_internal_fir_float_OC_shift_reg[(((signed long long )0ull))
#ifdef AESL_BC_SIM
 % 11
#endif
])) = llvm_cbe_x;
if (AESL_DEBUG_TRACE)
printf("\nx = %f\n", llvm_cbe_x);
if (AESL_DEBUG_TRACE)
printf("\n  %%5 = fadd float %%3, %%1, !dbg !4 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_68_count);
  llvm_cbe_tmp__19 = (float )((float )(llvm_cbe_tmp__18 + llvm_cbe_tmp__17));
if (AESL_DEBUG_TRACE)
printf("\n = %f,  0x%x\n", llvm_cbe_tmp__19, *(int*)(&llvm_cbe_tmp__19));
  llvm_cbe_tmp__31__PHI_TEMPORARY = (float )llvm_cbe_tmp__19;   /* for PHI node */
  goto llvm_cbe_tmp__34;

llvm_cbe_tmp__34:
if (AESL_DEBUG_TRACE)
printf("\n  %%20 = phi float [ %%5, %%.thread ], [ %%16, %%6  for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_84_count);
  llvm_cbe_tmp__31 = (float )llvm_cbe_tmp__31__PHI_TEMPORARY;
if (AESL_DEBUG_TRACE) {
printf("\n = %f",llvm_cbe_tmp__31);
printf("\n = %f",llvm_cbe_tmp__19);
printf("\n = %f",llvm_cbe_tmp__29);
}
if (AESL_DEBUG_TRACE)
printf("\n  store float %%20, float* %%y, align 4, !dbg !4 for 0x%I64xth hint within @fir_float  --> \n", ++aesl_llvm_cbe_85_count);
  *llvm_cbe_y = llvm_cbe_tmp__31;
if (AESL_DEBUG_TRACE)
printf("\n = %f\n", llvm_cbe_tmp__31);
  if (AESL_DEBUG_TRACE)
      printf("\nEND @fir_float}\n");
  return;
}

