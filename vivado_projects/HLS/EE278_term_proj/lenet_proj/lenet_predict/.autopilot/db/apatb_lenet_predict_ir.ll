; ModuleID = 'C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/HLS/EE278_term_proj/lenet_proj/lenet_predict/.autopilot/db/a.g.ld.5.gdce.bc'
source_filename = "llvm-link"
target datalayout = "e-m:e-i64:64-i128:128-i256:256-i512:512-i1024:1024-i2048:2048-i4096:4096-n8:16:32:64-S128-v16:16-v24:32-v32:32-v48:64-v96:128-v192:256-v256:256-v512:512-v1024:1024"
target triple = "fpga64-xilinx-none"

; Function Attrs: noinline
define void @apatb_lenet_predict_ir(float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="1024" "maxi" %input_74, i32* noalias nocapture nonnull %predicted_class_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="150" "maxi" %conv1_filters_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="6" "maxi" %conv1_bias_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="2400" "maxi" %conv2_filters_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="16" "maxi" %conv2_bias_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="48000" "maxi" %fc1_weights_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="120" "maxi" %fc1_bias_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10080" "maxi" %fc2_weights_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="84" "maxi" %fc2_bias_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="840" "maxi" %fc3_weights_74, float* noalias nocapture nonnull readonly "fpga.decayed.dim.hint"="10" "maxi" %fc3_bias_74) local_unnamed_addr #0 {
entry:
  %malloccall = tail call i8* @malloc(i64 4096)
  %input_74_copy = bitcast i8* %malloccall to [1024 x float]*
  %predicted_class_74_copy = alloca i32, align 512
  %conv1_filters_74_copy = alloca [150 x float], align 512
  %conv1_bias_74_copy = alloca [6 x float], align 512
  %malloccall1 = tail call i8* @malloc(i64 9600)
  %conv2_filters_74_copy = bitcast i8* %malloccall1 to [2400 x float]*
  %conv2_bias_74_copy = alloca [16 x float], align 512
  %malloccall2 = tail call i8* @malloc(i64 192000)
  %fc1_weights_74_copy = bitcast i8* %malloccall2 to [48000 x float]*
  %fc1_bias_74_copy = alloca [120 x float], align 512
  %malloccall3 = tail call i8* @malloc(i64 40320)
  %fc2_weights_74_copy = bitcast i8* %malloccall3 to [10080 x float]*
  %fc2_bias_74_copy = alloca [84 x float], align 512
  %fc3_weights_74_copy = alloca [840 x float], align 512
  %fc3_bias_74_copy = alloca [10 x float], align 512
  %0 = bitcast float* %input_74 to [1024 x float]*
  %1 = bitcast float* %conv1_filters_74 to [150 x float]*
  %2 = bitcast float* %conv1_bias_74 to [6 x float]*
  %3 = bitcast float* %conv2_filters_74 to [2400 x float]*
  %4 = bitcast float* %conv2_bias_74 to [16 x float]*
  %5 = bitcast float* %fc1_weights_74 to [48000 x float]*
  %6 = bitcast float* %fc1_bias_74 to [120 x float]*
  %7 = bitcast float* %fc2_weights_74 to [10080 x float]*
  %8 = bitcast float* %fc2_bias_74 to [84 x float]*
  %9 = bitcast float* %fc3_weights_74 to [840 x float]*
  %10 = bitcast float* %fc3_bias_74 to [10 x float]*
  call fastcc void @copy_in([1024 x float]* nonnull %0, [1024 x float]* %input_74_copy, i32* nonnull %predicted_class_74, i32* nonnull align 512 %predicted_class_74_copy, [150 x float]* nonnull %1, [150 x float]* nonnull align 512 %conv1_filters_74_copy, [6 x float]* nonnull %2, [6 x float]* nonnull align 512 %conv1_bias_74_copy, [2400 x float]* nonnull %3, [2400 x float]* %conv2_filters_74_copy, [16 x float]* nonnull %4, [16 x float]* nonnull align 512 %conv2_bias_74_copy, [48000 x float]* nonnull %5, [48000 x float]* %fc1_weights_74_copy, [120 x float]* nonnull %6, [120 x float]* nonnull align 512 %fc1_bias_74_copy, [10080 x float]* nonnull %7, [10080 x float]* %fc2_weights_74_copy, [84 x float]* nonnull %8, [84 x float]* nonnull align 512 %fc2_bias_74_copy, [840 x float]* nonnull %9, [840 x float]* nonnull align 512 %fc3_weights_74_copy, [10 x float]* nonnull %10, [10 x float]* nonnull align 512 %fc3_bias_74_copy)
  call void @apatb_lenet_predict_hw([1024 x float]* %input_74_copy, i32* %predicted_class_74_copy, [150 x float]* %conv1_filters_74_copy, [6 x float]* %conv1_bias_74_copy, [2400 x float]* %conv2_filters_74_copy, [16 x float]* %conv2_bias_74_copy, [48000 x float]* %fc1_weights_74_copy, [120 x float]* %fc1_bias_74_copy, [10080 x float]* %fc2_weights_74_copy, [84 x float]* %fc2_bias_74_copy, [840 x float]* %fc3_weights_74_copy, [10 x float]* %fc3_bias_74_copy)
  call void @copy_back([1024 x float]* %0, [1024 x float]* %input_74_copy, i32* %predicted_class_74, i32* %predicted_class_74_copy, [150 x float]* %1, [150 x float]* %conv1_filters_74_copy, [6 x float]* %2, [6 x float]* %conv1_bias_74_copy, [2400 x float]* %3, [2400 x float]* %conv2_filters_74_copy, [16 x float]* %4, [16 x float]* %conv2_bias_74_copy, [48000 x float]* %5, [48000 x float]* %fc1_weights_74_copy, [120 x float]* %6, [120 x float]* %fc1_bias_74_copy, [10080 x float]* %7, [10080 x float]* %fc2_weights_74_copy, [84 x float]* %8, [84 x float]* %fc2_bias_74_copy, [840 x float]* %9, [840 x float]* %fc3_weights_74_copy, [10 x float]* %10, [10 x float]* %fc3_bias_74_copy)
  tail call void @free(i8* %malloccall)
  tail call void @free(i8* %malloccall1)
  tail call void @free(i8* %malloccall2)
  tail call void @free(i8* %malloccall3)
  ret void
}

declare noalias i8* @malloc(i64) local_unnamed_addr

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_in([1024 x float]* noalias readonly, [1024 x float]* noalias, i32* noalias readonly, i32* noalias align 512, [150 x float]* noalias readonly, [150 x float]* noalias align 512, [6 x float]* noalias readonly, [6 x float]* noalias align 512, [2400 x float]* noalias readonly, [2400 x float]* noalias, [16 x float]* noalias readonly, [16 x float]* noalias align 512, [48000 x float]* noalias readonly, [48000 x float]* noalias, [120 x float]* noalias readonly, [120 x float]* noalias align 512, [10080 x float]* noalias readonly, [10080 x float]* noalias, [84 x float]* noalias readonly, [84 x float]* noalias align 512, [840 x float]* noalias readonly, [840 x float]* noalias align 512, [10 x float]* noalias readonly, [10 x float]* noalias align 512) unnamed_addr #1 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %1, [1024 x float]* %0)
  call fastcc void @onebyonecpy_hls.p0i32(i32* align 512 %3, i32* %2)
  call fastcc void @onebyonecpy_hls.p0a150f32([150 x float]* align 512 %5, [150 x float]* %4)
  call fastcc void @onebyonecpy_hls.p0a6f32([6 x float]* align 512 %7, [6 x float]* %6)
  call fastcc void @onebyonecpy_hls.p0a2400f32([2400 x float]* %9, [2400 x float]* %8)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* align 512 %11, [16 x float]* %10)
  call fastcc void @onebyonecpy_hls.p0a48000f32([48000 x float]* %13, [48000 x float]* %12)
  call fastcc void @onebyonecpy_hls.p0a120f32([120 x float]* align 512 %15, [120 x float]* %14)
  call fastcc void @onebyonecpy_hls.p0a10080f32([10080 x float]* %17, [10080 x float]* %16)
  call fastcc void @onebyonecpy_hls.p0a84f32([84 x float]* align 512 %19, [84 x float]* %18)
  call fastcc void @onebyonecpy_hls.p0a840f32([840 x float]* align 512 %21, [840 x float]* %20)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* align 512 %23, [10 x float]* %22)
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* noalias %dst, [1024 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [1024 x float]* %dst, null
  %1 = icmp eq [1024 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a1024f32([1024 x float]* nonnull %dst, [1024 x float]* nonnull %src, i64 1024)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a1024f32([1024 x float]* %dst, [1024 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [1024 x float]* %src, null
  %1 = icmp eq [1024 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [1024 x float], [1024 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [1024 x float], [1024 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0i32(i32* noalias align 512 %dst, i32* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq i32* %dst, null
  %1 = icmp eq i32* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %3 = load i32, i32* %src, align 4
  store i32 %3, i32* %dst, align 512
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a150f32([150 x float]* noalias align 512 %dst, [150 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [150 x float]* %dst, null
  %1 = icmp eq [150 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a150f32([150 x float]* nonnull %dst, [150 x float]* nonnull %src, i64 150)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a150f32([150 x float]* %dst, [150 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [150 x float]* %src, null
  %1 = icmp eq [150 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [150 x float], [150 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [150 x float], [150 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a6f32([6 x float]* noalias align 512 %dst, [6 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [6 x float]* %dst, null
  %1 = icmp eq [6 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a6f32([6 x float]* nonnull %dst, [6 x float]* nonnull %src, i64 6)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a6f32([6 x float]* %dst, [6 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [6 x float]* %src, null
  %1 = icmp eq [6 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [6 x float], [6 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [6 x float], [6 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a2400f32([2400 x float]* noalias %dst, [2400 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [2400 x float]* %dst, null
  %1 = icmp eq [2400 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a2400f32([2400 x float]* nonnull %dst, [2400 x float]* nonnull %src, i64 2400)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a2400f32([2400 x float]* %dst, [2400 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [2400 x float]* %src, null
  %1 = icmp eq [2400 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [2400 x float], [2400 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [2400 x float], [2400 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* noalias align 512 %dst, [16 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [16 x float]* %dst, null
  %1 = icmp eq [16 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a16f32([16 x float]* nonnull %dst, [16 x float]* nonnull %src, i64 16)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a16f32([16 x float]* %dst, [16 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [16 x float]* %src, null
  %1 = icmp eq [16 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [16 x float], [16 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [16 x float], [16 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a48000f32([48000 x float]* noalias %dst, [48000 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [48000 x float]* %dst, null
  %1 = icmp eq [48000 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a48000f32([48000 x float]* nonnull %dst, [48000 x float]* nonnull %src, i64 48000)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a48000f32([48000 x float]* %dst, [48000 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [48000 x float]* %src, null
  %1 = icmp eq [48000 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [48000 x float], [48000 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [48000 x float], [48000 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a120f32([120 x float]* noalias align 512 %dst, [120 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [120 x float]* %dst, null
  %1 = icmp eq [120 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a120f32([120 x float]* nonnull %dst, [120 x float]* nonnull %src, i64 120)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a120f32([120 x float]* %dst, [120 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [120 x float]* %src, null
  %1 = icmp eq [120 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [120 x float], [120 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [120 x float], [120 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10080f32([10080 x float]* noalias %dst, [10080 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [10080 x float]* %dst, null
  %1 = icmp eq [10080 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a10080f32([10080 x float]* nonnull %dst, [10080 x float]* nonnull %src, i64 10080)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a10080f32([10080 x float]* %dst, [10080 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10080 x float]* %src, null
  %1 = icmp eq [10080 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10080 x float], [10080 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [10080 x float], [10080 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a84f32([84 x float]* noalias align 512 %dst, [84 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [84 x float]* %dst, null
  %1 = icmp eq [84 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a84f32([84 x float]* nonnull %dst, [84 x float]* nonnull %src, i64 84)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a84f32([84 x float]* %dst, [84 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [84 x float]* %src, null
  %1 = icmp eq [84 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [84 x float], [84 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [84 x float], [84 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a840f32([840 x float]* noalias align 512 %dst, [840 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [840 x float]* %dst, null
  %1 = icmp eq [840 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a840f32([840 x float]* nonnull %dst, [840 x float]* nonnull %src, i64 840)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a840f32([840 x float]* %dst, [840 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [840 x float]* %src, null
  %1 = icmp eq [840 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [840 x float], [840 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [840 x float], [840 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* noalias align 512 %dst, [10 x float]* noalias readonly %src) unnamed_addr #2 {
entry:
  %0 = icmp eq [10 x float]* %dst, null
  %1 = icmp eq [10 x float]* %src, null
  %2 = or i1 %0, %1
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  call void @arraycpy_hls.p0a10f32([10 x float]* nonnull %dst, [10 x float]* nonnull %src, i64 10)
  br label %ret

ret:                                              ; preds = %copy, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define void @arraycpy_hls.p0a10f32([10 x float]* %dst, [10 x float]* readonly %src, i64 %num) local_unnamed_addr #3 {
entry:
  %0 = icmp eq [10 x float]* %src, null
  %1 = icmp eq [10 x float]* %dst, null
  %2 = or i1 %1, %0
  br i1 %2, label %ret, label %copy

copy:                                             ; preds = %entry
  %for.loop.cond1 = icmp sgt i64 %num, 0
  br i1 %for.loop.cond1, label %for.loop.lr.ph, label %copy.split

for.loop.lr.ph:                                   ; preds = %copy
  br label %for.loop

for.loop:                                         ; preds = %for.loop, %for.loop.lr.ph
  %for.loop.idx2 = phi i64 [ 0, %for.loop.lr.ph ], [ %for.loop.idx.next, %for.loop ]
  %dst.addr = getelementptr [10 x float], [10 x float]* %dst, i64 0, i64 %for.loop.idx2
  %src.addr = getelementptr [10 x float], [10 x float]* %src, i64 0, i64 %for.loop.idx2
  %3 = load float, float* %src.addr, align 4
  store float %3, float* %dst.addr, align 4
  %for.loop.idx.next = add nuw nsw i64 %for.loop.idx2, 1
  %exitcond = icmp ne i64 %for.loop.idx.next, %num
  br i1 %exitcond, label %for.loop, label %copy.split

copy.split:                                       ; preds = %for.loop, %copy
  br label %ret

ret:                                              ; preds = %copy.split, %entry
  ret void
}

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_out([1024 x float]* noalias, [1024 x float]* noalias readonly, i32* noalias, i32* noalias readonly align 512, [150 x float]* noalias, [150 x float]* noalias readonly align 512, [6 x float]* noalias, [6 x float]* noalias readonly align 512, [2400 x float]* noalias, [2400 x float]* noalias readonly, [16 x float]* noalias, [16 x float]* noalias readonly align 512, [48000 x float]* noalias, [48000 x float]* noalias readonly, [120 x float]* noalias, [120 x float]* noalias readonly align 512, [10080 x float]* noalias, [10080 x float]* noalias readonly, [84 x float]* noalias, [84 x float]* noalias readonly align 512, [840 x float]* noalias, [840 x float]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0a1024f32([1024 x float]* %0, [1024 x float]* %1)
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  call fastcc void @onebyonecpy_hls.p0a150f32([150 x float]* %4, [150 x float]* align 512 %5)
  call fastcc void @onebyonecpy_hls.p0a6f32([6 x float]* %6, [6 x float]* align 512 %7)
  call fastcc void @onebyonecpy_hls.p0a2400f32([2400 x float]* %8, [2400 x float]* %9)
  call fastcc void @onebyonecpy_hls.p0a16f32([16 x float]* %10, [16 x float]* align 512 %11)
  call fastcc void @onebyonecpy_hls.p0a48000f32([48000 x float]* %12, [48000 x float]* %13)
  call fastcc void @onebyonecpy_hls.p0a120f32([120 x float]* %14, [120 x float]* align 512 %15)
  call fastcc void @onebyonecpy_hls.p0a10080f32([10080 x float]* %16, [10080 x float]* %17)
  call fastcc void @onebyonecpy_hls.p0a84f32([84 x float]* %18, [84 x float]* align 512 %19)
  call fastcc void @onebyonecpy_hls.p0a840f32([840 x float]* %20, [840 x float]* align 512 %21)
  call fastcc void @onebyonecpy_hls.p0a10f32([10 x float]* %22, [10 x float]* align 512 %23)
  ret void
}

declare void @free(i8*) local_unnamed_addr

declare void @apatb_lenet_predict_hw([1024 x float]*, i32*, [150 x float]*, [6 x float]*, [2400 x float]*, [16 x float]*, [48000 x float]*, [120 x float]*, [10080 x float]*, [84 x float]*, [840 x float]*, [10 x float]*)

; Function Attrs: argmemonly noinline norecurse
define internal fastcc void @copy_back([1024 x float]* noalias, [1024 x float]* noalias readonly, i32* noalias, i32* noalias readonly align 512, [150 x float]* noalias, [150 x float]* noalias readonly align 512, [6 x float]* noalias, [6 x float]* noalias readonly align 512, [2400 x float]* noalias, [2400 x float]* noalias readonly, [16 x float]* noalias, [16 x float]* noalias readonly align 512, [48000 x float]* noalias, [48000 x float]* noalias readonly, [120 x float]* noalias, [120 x float]* noalias readonly align 512, [10080 x float]* noalias, [10080 x float]* noalias readonly, [84 x float]* noalias, [84 x float]* noalias readonly align 512, [840 x float]* noalias, [840 x float]* noalias readonly align 512, [10 x float]* noalias, [10 x float]* noalias readonly align 512) unnamed_addr #4 {
entry:
  call fastcc void @onebyonecpy_hls.p0i32(i32* %2, i32* align 512 %3)
  ret void
}

define void @lenet_predict_hw_stub_wrapper([1024 x float]*, i32*, [150 x float]*, [6 x float]*, [2400 x float]*, [16 x float]*, [48000 x float]*, [120 x float]*, [10080 x float]*, [84 x float]*, [840 x float]*, [10 x float]*) #5 {
entry:
  call void @copy_out([1024 x float]* null, [1024 x float]* %0, i32* null, i32* %1, [150 x float]* null, [150 x float]* %2, [6 x float]* null, [6 x float]* %3, [2400 x float]* null, [2400 x float]* %4, [16 x float]* null, [16 x float]* %5, [48000 x float]* null, [48000 x float]* %6, [120 x float]* null, [120 x float]* %7, [10080 x float]* null, [10080 x float]* %8, [84 x float]* null, [84 x float]* %9, [840 x float]* null, [840 x float]* %10, [10 x float]* null, [10 x float]* %11)
  %12 = bitcast [1024 x float]* %0 to float*
  %13 = bitcast [150 x float]* %2 to float*
  %14 = bitcast [6 x float]* %3 to float*
  %15 = bitcast [2400 x float]* %4 to float*
  %16 = bitcast [16 x float]* %5 to float*
  %17 = bitcast [48000 x float]* %6 to float*
  %18 = bitcast [120 x float]* %7 to float*
  %19 = bitcast [10080 x float]* %8 to float*
  %20 = bitcast [84 x float]* %9 to float*
  %21 = bitcast [840 x float]* %10 to float*
  %22 = bitcast [10 x float]* %11 to float*
  call void @lenet_predict_hw_stub(float* %12, i32* %1, float* %13, float* %14, float* %15, float* %16, float* %17, float* %18, float* %19, float* %20, float* %21, float* %22)
  call void @copy_in([1024 x float]* null, [1024 x float]* %0, i32* null, i32* %1, [150 x float]* null, [150 x float]* %2, [6 x float]* null, [6 x float]* %3, [2400 x float]* null, [2400 x float]* %4, [16 x float]* null, [16 x float]* %5, [48000 x float]* null, [48000 x float]* %6, [120 x float]* null, [120 x float]* %7, [10080 x float]* null, [10080 x float]* %8, [84 x float]* null, [84 x float]* %9, [840 x float]* null, [840 x float]* %10, [10 x float]* null, [10 x float]* %11)
  ret void
}

declare void @lenet_predict_hw_stub(float*, i32*, float*, float*, float*, float*, float*, float*, float*, float*, float*, float*)

attributes #0 = { noinline "fpga.wrapper.func"="wrapper" }
attributes #1 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyin" }
attributes #2 = { argmemonly noinline norecurse "fpga.wrapper.func"="onebyonecpy_hls" }
attributes #3 = { argmemonly noinline norecurse "fpga.wrapper.func"="arraycpy_hls" }
attributes #4 = { argmemonly noinline norecurse "fpga.wrapper.func"="copyout" }
attributes #5 = { "fpga.wrapper.func"="stub" }

!llvm.dbg.cu = !{}
!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3}
!blackbox_cfg = !{!4}

!0 = !{!"clang version 7.0.0 "}
!1 = !{i32 2, !"Dwarf Version", i32 4}
!2 = !{i32 2, !"Debug Info Version", i32 3}
!3 = !{i32 1, !"wchar_size", i32 4}
!4 = !{}
