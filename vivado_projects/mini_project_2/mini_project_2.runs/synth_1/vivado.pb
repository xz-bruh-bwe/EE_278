
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2$
create_project: 2default:default2
00:00:072default:default2
00:00:072default:default2
455.7542default:default2
159.4342default:defaultZ17-268h px� 
�
Command: %s
1870*	planAhead2�
�read_checkpoint -auto_incremental -incremental C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/mini_project_2/mini_project_2.srcs/utils_1/imports/synth_1/bfloat16_adder_pipelined.dcp2default:defaultZ12-2866h px� 
�
;Read reference checkpoint from %s for incremental synthesis3154*	planAhead2�
�C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/mini_project_2/mini_project_2.srcs/utils_1/imports/synth_1/bfloat16_adder_pipelined.dcp2default:defaultZ12-5825h px� 
T
-Please ensure there are no constraint changes3725*	planAheadZ12-7989h px� 
�
Command: %s
53*	vivadotcl2a
Msynth_design -top bfloat16_matrix_multiplier_4x4 -part xczu7ev-ffvf1517-1LV-i2default:defaultZ4-113h px� 
:
Starting synth_design
149*	vivadotclZ4-321h px� 
�
@Attempting to get a license for feature '%s' and/or device '%s'
308*common2
	Synthesis2default:default2
xczu7ev2default:defaultZ17-347h px� 
�
0Got license for feature '%s' and/or device '%s'
310*common2
	Synthesis2default:default2
xczu7ev2default:defaultZ17-349h px� 

VNo compile time benefit to using incremental synthesis; A full resynthesis will be run2353*designutilsZ20-5440h px� 
�
�Flow is switching to default flow due to incremental criteria not met. If you would like to alter this behaviour and have the flow terminate instead, please set the following parameter config_implementation {autoIncr.Synth.RejectBehavior Terminate}2229*designutilsZ20-4379h px� 
�
HMultithreading enabled for synth_design using a maximum of %s processes.4828*oasys2
22default:defaultZ8-7079h px� 
a
?Launching helper process for spawning children vivado processes4827*oasysZ8-7078h px� 
_
#Helper process launched with PID %s4824*oasys2
35962default:defaultZ8-7075h px� 
�
%s*synth2�
sStarting Synthesize : Time (s): cpu = 00:00:07 ; elapsed = 00:00:07 . Memory (MB): peak = 897.805 ; gain = 410.332
2default:defaulth px� 
�
synthesizing module '%s'%s4497*oasys22
bfloat16_matrix_multiplier_4x42default:default2
 2default:default2t
^C:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_matrix_multiplier_4x4.sv2default:default2
12default:default8@Z8-6157h px� 
�
synthesizing module '%s'%s4497*oasys2,
bfloat16_partial_element2default:default2
 2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_partial_element.v2default:default2
12default:default8@Z8-6157h px� 
M
%s
*synth25
!	Parameter N bound to: 5'b10000 
2default:defaulth p
x
� 
�
synthesizing module '%s'%s4497*oasys2+
bfloat16_mult_pipelined2default:default2
 2default:default2l
VC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_mult_pipelined.v2default:default2
12default:default8@Z8-6157h px� 
M
%s
*synth25
!	Parameter N bound to: 5'b10000 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2+
bfloat16_mult_pipelined2default:default2
 2default:default2
02default:default2
12default:default2l
VC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_mult_pipelined.v2default:default2
12default:default8@Z8-6155h px� 
�
synthesizing module '%s'%s4497*oasys2,
bfloat16_adder_pipelined2default:default2
 2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
12default:default8@Z8-6157h px� 
M
%s
*synth25
!	Parameter N bound to: 5'b10000 
2default:defaulth p
x
� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
bfloat16_adder_pipelined2default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys2,
bfloat16_partial_element2default:default2
 2default:default2
02default:default2
12default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_partial_element.v2default:default2
12default:default8@Z8-6155h px� 
�
'done synthesizing module '%s'%s (%s#%s)4495*oasys22
bfloat16_matrix_multiplier_4x42default:default2
 2default:default2
02default:default2
12default:default2t
^C:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_matrix_multiplier_4x4.sv2default:default2
12default:default8@Z8-6155h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
op_fin_reg[3]2default:default2,
bfloat16_adder_pipelined2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
1002default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2 
mant_sum_reg2default:default2,
bfloat16_adder_pipelined2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
1032default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
mant_diff_reg2default:default2,
bfloat16_adder_pipelined2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
1042default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
op_fin_reg[5]2default:default2,
bfloat16_adder_pipelined2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
1382default:default8@Z8-7137h px� 
�
�Register %s in module %s has both Set and reset with same priority. This may cause simulation mismatches. Consider rewriting code 
4878*oasys2!
op_fin_reg[4]2default:default2,
bfloat16_adder_pipelined2default:default2m
WC:/Users/Baron/Desktop/EE_278_Repo/EE_278/hdl/mini_project_2/bfloat16_adder_pipelined.v2default:default2
1382default:default8@Z8-7137h px� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OP_START[31]2default:default22
bfloat16_matrix_multiplier_4x42default:defaultZ8-7129h px� 
�
%s*synth2�
tFinished Synthesize : Time (s): cpu = 00:00:09 ; elapsed = 00:00:10 . Memory (MB): peak = 1004.520 ; gain = 517.047
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
Finished Constraint Validation : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1004.520 ; gain = 517.047
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
V
%s
*synth2>
*Start Loading Part and Timing Information
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Loading part: xczu7ev-ffvf1517-1LV-i
2default:defaulth p
x
� 
B
 Reading net delay rules and data4578*oasysZ8-6742h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Loading Part and Timing Information : Time (s): cpu = 00:00:10 ; elapsed = 00:00:10 . Memory (MB): peak = 1004.520 ; gain = 517.047
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
]
Loading part %s157*device2*
xczu7ev-ffvf1517-1LV-i2default:defaultZ21-403h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished RTL Optimization Phase 2 : Time (s): cpu = 00:00:13 ; elapsed = 00:00:12 . Memory (MB): peak = 1004.520 ; gain = 517.047
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Detailed RTL Component Info : 
2default:defaulth p
x
� 
:
%s
*synth2"
+---Adders : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    9 Bit       Adders := 512   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit       Adders := 256   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit       Adders := 512   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   3 Input    8 Bit       Adders := 256   
2default:defaulth p
x
� 
8
%s
*synth2 
+---XORs : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	   2 Input      1 Bit         XORs := 256   
2default:defaulth p
x
� 
=
%s
*synth2%
+---Registers : 
2default:defaulth p
x
� 
Z
%s
*synth2B
.	               16 Bit    Registers := 1792  
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                9 Bit    Registers := 1280  
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                8 Bit    Registers := 3840  
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                7 Bit    Registers := 256   
2default:defaulth p
x
� 
Z
%s
*synth2B
.	                1 Bit    Registers := 5120  
2default:defaulth p
x
� 
9
%s
*synth2!
+---Muxes : 
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input   16 Bit        Muxes := 1024  
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    9 Bit        Muxes := 512   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    8 Bit        Muxes := 1280  
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    7 Bit        Muxes := 512   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    2 Bit        Muxes := 256   
2default:defaulth p
x
� 
X
%s
*synth2@
,	   2 Input    1 Bit        Muxes := 256   
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Finished RTL Component Statistics 
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2n
ZPart Resources:
DSPs: 1728 (col length:144)
BRAMs: 624 (col length: RAMB18 144 RAMB36 72)
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Part Resource Summary
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
W
%s
*synth2?
+Start Cross Boundary and Area Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
9Port %s in module %s is either unconnected or has no load4866*oasys2 
OP_START[31]2default:default22
bfloat16_matrix_multiplier_4x42default:defaultZ8-7129h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[14].element/A_out_reg[15]2default:default2
FDC2default:default2^
Jrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[0]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[1]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[2]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[3]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[4]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[5]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[6]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[8]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[9]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[14].element/A_out_reg[10]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[14].element/A_out_reg[11]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[14].element/A_out_reg[12]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[14].element/A_out_reg[13]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[14].element/A_out_reg[14]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[14].element/A_out_reg[7]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[13].element/A_out_reg[15]2default:default2
FDC2default:default2^
Jrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[0]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[1]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[2]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[3]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[4]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[5]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[6]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[8]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[9]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[13].element/A_out_reg[10]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[13].element/A_out_reg[11]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[13].element/A_out_reg[12]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[13].element/A_out_reg[13]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[13].element/A_out_reg[14]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[13].element/A_out_reg[7]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[12].element/A_out_reg[15]2default:default2
FDC2default:default2^
Jrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[0]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[1]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[2]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[3]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[4]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[5]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[6]2default:default2
FDC2default:default2a
Mrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[8]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[9]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[12].element/A_out_reg[10]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[12].element/A_out_reg[11]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[12].element/A_out_reg[12]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[12].element/A_out_reg[13]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2C
/row_loop[10].col_loop[12].element/A_out_reg[14]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[10].col_loop[12].element/A_out_reg[7]2default:default2
FDC2default:default2`
Lrow_loop[10].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[14].element/A_out_reg[15]2default:default2
FDC2default:default2]
Irow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[0]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[1]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[2]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[3]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[4]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[5]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[6]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/mantA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[8]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[9]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[14].element/A_out_reg[10]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[14].element/A_out_reg[11]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[14].element/A_out_reg[12]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[14].element/A_out_reg[13]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[14].element/A_out_reg[14]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[14].element/A_out_reg[7]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[14].element/bfloat16_mult_pipelined/expA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[13].element/A_out_reg[15]2default:default2
FDC2default:default2]
Irow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[0]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[1]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[2]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[3]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[4]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[5]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[6]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/mantA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[8]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[9]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[13].element/A_out_reg[10]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[13].element/A_out_reg[11]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[13].element/A_out_reg[12]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[13].element/A_out_reg[13]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[13].element/A_out_reg[14]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[13].element/A_out_reg[7]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[13].element/bfloat16_mult_pipelined/expA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[12].element/A_out_reg[15]2default:default2
FDC2default:default2]
Irow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[0]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[1]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[2]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[3]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[4]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[5]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[6]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/mantA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[8]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[9]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[12].element/A_out_reg[10]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[3]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[12].element/A_out_reg[11]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[4]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[12].element/A_out_reg[12]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[5]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[12].element/A_out_reg[13]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[6]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[12].element/A_out_reg[14]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[7]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[12].element/A_out_reg[7]2default:default2
FDC2default:default2_
Krow_loop[9].col_loop[12].element/bfloat16_mult_pipelined/expA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2B
.row_loop[9].col_loop[11].element/A_out_reg[15]2default:default2
FDC2default:default2]
Irow_loop[9].col_loop[11].element/bfloat16_mult_pipelined/signA_stage1_reg2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[11].element/A_out_reg[0]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[11].element/bfloat16_mult_pipelined/mantA_stage1_reg[0]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[11].element/A_out_reg[1]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[11].element/bfloat16_mult_pipelined/mantA_stage1_reg[1]2default:defaultZ8-3886h px� 
�
"merging instance '%s' (%s) to '%s'3436*oasys2A
-row_loop[9].col_loop[11].element/A_out_reg[2]2default:default2
FDC2default:default2`
Lrow_loop[9].col_loop[11].element/bfloat16_mult_pipelined/mantA_stage1_reg[2]2default:defaultZ8-3886h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
�
�Message '%s' appears more than %s times and has been disabled. User can change this message limit to see more message instances.
14*common2 
Synth 8-38862default:default2
1002default:defaultZ17-14h px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Cross Boundary and Area Optimization : Time (s): cpu = 00:02:44 ; elapsed = 00:03:25 . Memory (MB): peak = 2212.152 ; gain = 1724.680
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
F
%s
*synth2.
Start Timing Optimization
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
~Finished Timing Optimization : Time (s): cpu = 00:02:48 ; elapsed = 00:03:29 . Memory (MB): peak = 2212.152 ; gain = 1724.680
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
E
%s
*synth2-
Start Technology Mapping
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
}Finished Technology Mapping : Time (s): cpu = 00:03:07 ; elapsed = 00:03:49 . Memory (MB): peak = 2212.152 ; gain = 1724.680
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
?
%s
*synth2'
Start IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
Q
%s
*synth29
%Start Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
T
%s
*synth2<
(Finished Flattening Before IO Insertion
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
H
%s
*synth20
Start Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Finished Final Netlist Cleanup
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
wFinished IO Insertion : Time (s): cpu = 00:03:27 ; elapsed = 00:04:10 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
O
%s
*synth27
#Start Renaming Generated Instances
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Instances : Time (s): cpu = 00:03:28 ; elapsed = 00:04:10 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
L
%s
*synth24
 Start Rebuilding User Hierarchy
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Rebuilding User Hierarchy : Time (s): cpu = 00:03:41 ; elapsed = 00:04:24 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Renaming Generated Ports
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Ports : Time (s): cpu = 00:03:41 ; elapsed = 00:04:24 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
M
%s
*synth25
!Start Handling Custom Attributes
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Handling Custom Attributes : Time (s): cpu = 00:03:43 ; elapsed = 00:04:26 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
J
%s
*synth22
Start Renaming Generated Nets
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Renaming Generated Nets : Time (s): cpu = 00:03:44 ; elapsed = 00:04:27 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Start ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23

Static Shift Register Report:
2default:defaulth p
x
� 
�
%s
*synth2�
�+-------------------------------+---------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|Module Name                    | RTL Name                                                                  | Length | Width | Reset Signal | Pull out first Reg | Pull out last Reg | SRL16E | SRLC32E | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+-------------------------------+---------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+
2default:defaulth p
x
� 
�
%s
*synth2�
�|bfloat16_matrix_multiplier_4x4 | row_loop[8].col_loop[5].element/bfloat16_adder_pipelined/op_fin_reg[5]    | 3      | 256   | NO           | NO                 | NO                | 256    | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|bfloat16_matrix_multiplier_4x4 | row_loop[8].col_loop[5].element/bfloat16_adder_pipelined/op_fin_reg[2]    | 7      | 256   | YES          | NO                 | YES               | 256    | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|bfloat16_matrix_multiplier_4x4 | row_loop[8].col_loop[5].element/bfloat16_adder_pipelined/signB_stage2_reg | 5      | 256   | YES          | NO                 | YES               | 256    | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�|bfloat16_matrix_multiplier_4x4 | row_loop[10].col_loop[15].C_reg[10][15][15]                               | 4      | 256   | YES          | NO                 | YES               | 256    | 0       | 
2default:defaulth p
x
� 
�
%s
*synth2�
�+-------------------------------+---------------------------------------------------------------------------+--------+-------+--------------+--------------------+-------------------+--------+---------+

2default:defaulth p
x
� 
�
%s
*synth2�
�---------------------------------------------------------------------------------
Finished ROM, RAM, DSP, Shift Register and Retiming Reporting
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
K
%s
*synth23
Start Writing Synthesis Report
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
A
%s
*synth2)

Report BlackBoxes: 
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
| |BlackBox name |Instances |
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
J
%s
*synth22
+-+--------------+----------+
2default:defaulth p
x
� 
A
%s*synth2)

Report Cell Usage: 
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|      |Cell   |Count |
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
D
%s*synth2,
|1     |BUFG   |     1|
2default:defaulth px� 
D
%s*synth2,
|2     |CARRY8 |  4352|
2default:defaulth px� 
D
%s*synth2,
|3     |LUT1   |   513|
2default:defaulth px� 
D
%s*synth2,
|4     |LUT2   | 14336|
2default:defaulth px� 
D
%s*synth2,
|5     |LUT3   | 11520|
2default:defaulth px� 
D
%s*synth2,
|6     |LUT4   | 17664|
2default:defaulth px� 
D
%s*synth2,
|7     |LUT5   |  7680|
2default:defaulth px� 
D
%s*synth2,
|8     |LUT6   | 18944|
2default:defaulth px� 
D
%s*synth2,
|9     |SRL16E |  1024|
2default:defaulth px� 
D
%s*synth2,
|10    |FDCE   | 53766|
2default:defaulth px� 
D
%s*synth2,
|11    |FDRE   |  5376|
2default:defaulth px� 
D
%s*synth2,
|12    |IBUF   |   545|
2default:defaulth px� 
D
%s*synth2,
|13    |OBUF   |  4352|
2default:defaulth px� 
D
%s*synth2,
+------+-------+------+
2default:defaulth px� 
E
%s
*synth2-

Report Instance Areas: 
2default:defaulth p
x
� 
�
%s
*synth2j
V+------+--------------------------------------+-----------------------------+-------+
2default:defaulth p
x
� 
�
%s
*synth2j
V|      |Instance                              |Module                       |Cells  |
2default:defaulth p
x
� 
�
%s
*synth2j
V+------+--------------------------------------+-----------------------------+-------+
2default:defaulth p
x
� 
�
%s
*synth2j
V|1     |top                                   |                             | 140073|
2default:defaulth p
x
� 
�
%s
*synth2j
V|2     |  \row_loop[0].col_loop[0].element    |bfloat16_partial_element     |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|3     |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_763 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|4     |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_764  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|5     |  \row_loop[0].col_loop[10].element   |bfloat16_partial_element_0   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|6     |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_761 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|7     |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_762  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|8     |  \row_loop[0].col_loop[11].element   |bfloat16_partial_element_1   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|9     |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_759 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|10    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_760  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|11    |  \row_loop[0].col_loop[12].element   |bfloat16_partial_element_2   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|12    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_757 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|13    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_758  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|14    |  \row_loop[0].col_loop[13].element   |bfloat16_partial_element_3   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|15    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_755 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|16    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_756  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|17    |  \row_loop[0].col_loop[14].element   |bfloat16_partial_element_4   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|18    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_753 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|19    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_754  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|20    |  \row_loop[0].col_loop[15].element   |bfloat16_partial_element_5   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|21    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_751 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|22    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_752  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|23    |  \row_loop[0].col_loop[1].element    |bfloat16_partial_element_6   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|24    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_749 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|25    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_750  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|26    |  \row_loop[0].col_loop[2].element    |bfloat16_partial_element_7   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|27    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_747 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|28    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_748  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|29    |  \row_loop[0].col_loop[3].element    |bfloat16_partial_element_8   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|30    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_745 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|31    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_746  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|32    |  \row_loop[0].col_loop[4].element    |bfloat16_partial_element_9   |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|33    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_743 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|34    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_744  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|35    |  \row_loop[0].col_loop[5].element    |bfloat16_partial_element_10  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|36    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_741 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|37    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_742  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|38    |  \row_loop[0].col_loop[6].element    |bfloat16_partial_element_11  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|39    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_739 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|40    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_740  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|41    |  \row_loop[0].col_loop[7].element    |bfloat16_partial_element_12  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|42    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_737 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|43    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_738  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|44    |  \row_loop[0].col_loop[8].element    |bfloat16_partial_element_13  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|45    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_735 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|46    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_736  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|47    |  \row_loop[0].col_loop[9].element    |bfloat16_partial_element_14  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|48    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_733 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|49    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_734  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|50    |  \row_loop[10].col_loop[0].element   |bfloat16_partial_element_15  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|51    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_731 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|52    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_732  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|53    |  \row_loop[10].col_loop[10].element  |bfloat16_partial_element_16  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|54    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_729 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|55    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_730  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|56    |  \row_loop[10].col_loop[11].element  |bfloat16_partial_element_17  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|57    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_727 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|58    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_728  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|59    |  \row_loop[10].col_loop[12].element  |bfloat16_partial_element_18  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|60    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_725 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|61    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_726  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|62    |  \row_loop[10].col_loop[13].element  |bfloat16_partial_element_19  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|63    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_723 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|64    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_724  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|65    |  \row_loop[10].col_loop[14].element  |bfloat16_partial_element_20  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|66    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_721 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|67    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_722  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|68    |  \row_loop[10].col_loop[15].element  |bfloat16_partial_element_21  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|69    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_719 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|70    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_720  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|71    |  \row_loop[10].col_loop[1].element   |bfloat16_partial_element_22  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|72    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_717 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|73    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_718  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|74    |  \row_loop[10].col_loop[2].element   |bfloat16_partial_element_23  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|75    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_715 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|76    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_716  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|77    |  \row_loop[10].col_loop[3].element   |bfloat16_partial_element_24  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|78    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_713 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|79    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_714  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|80    |  \row_loop[10].col_loop[4].element   |bfloat16_partial_element_25  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|81    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_711 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|82    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_712  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|83    |  \row_loop[10].col_loop[5].element   |bfloat16_partial_element_26  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|84    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_709 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|85    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_710  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|86    |  \row_loop[10].col_loop[6].element   |bfloat16_partial_element_27  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|87    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_707 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|88    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_708  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|89    |  \row_loop[10].col_loop[7].element   |bfloat16_partial_element_28  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|90    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_705 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|91    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_706  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|92    |  \row_loop[10].col_loop[8].element   |bfloat16_partial_element_29  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|93    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_703 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|94    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_704  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|95    |  \row_loop[10].col_loop[9].element   |bfloat16_partial_element_30  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|96    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_701 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|97    |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_702  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|98    |  \row_loop[11].col_loop[0].element   |bfloat16_partial_element_31  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|99    |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_699 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|100   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_700  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|101   |  \row_loop[11].col_loop[10].element  |bfloat16_partial_element_32  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|102   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_697 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|103   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_698  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|104   |  \row_loop[11].col_loop[11].element  |bfloat16_partial_element_33  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|105   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_695 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|106   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_696  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|107   |  \row_loop[11].col_loop[12].element  |bfloat16_partial_element_34  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|108   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_693 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|109   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_694  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|110   |  \row_loop[11].col_loop[13].element  |bfloat16_partial_element_35  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|111   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_691 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|112   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_692  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|113   |  \row_loop[11].col_loop[14].element  |bfloat16_partial_element_36  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|114   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_689 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|115   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_690  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|116   |  \row_loop[11].col_loop[15].element  |bfloat16_partial_element_37  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|117   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_687 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|118   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_688  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|119   |  \row_loop[11].col_loop[1].element   |bfloat16_partial_element_38  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|120   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_685 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|121   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_686  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|122   |  \row_loop[11].col_loop[2].element   |bfloat16_partial_element_39  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|123   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_683 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|124   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_684  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|125   |  \row_loop[11].col_loop[3].element   |bfloat16_partial_element_40  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|126   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_681 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|127   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_682  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|128   |  \row_loop[11].col_loop[4].element   |bfloat16_partial_element_41  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|129   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_679 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|130   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_680  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|131   |  \row_loop[11].col_loop[5].element   |bfloat16_partial_element_42  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|132   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_677 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|133   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_678  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|134   |  \row_loop[11].col_loop[6].element   |bfloat16_partial_element_43  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|135   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_675 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|136   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_676  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|137   |  \row_loop[11].col_loop[7].element   |bfloat16_partial_element_44  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|138   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_673 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|139   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_674  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|140   |  \row_loop[11].col_loop[8].element   |bfloat16_partial_element_45  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|141   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_671 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|142   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_672  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|143   |  \row_loop[11].col_loop[9].element   |bfloat16_partial_element_46  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|144   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_669 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|145   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_670  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|146   |  \row_loop[12].col_loop[0].element   |bfloat16_partial_element_47  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|147   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_667 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|148   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_668  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|149   |  \row_loop[12].col_loop[10].element  |bfloat16_partial_element_48  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|150   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_665 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|151   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_666  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|152   |  \row_loop[12].col_loop[11].element  |bfloat16_partial_element_49  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|153   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_663 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|154   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_664  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|155   |  \row_loop[12].col_loop[12].element  |bfloat16_partial_element_50  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|156   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_661 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|157   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_662  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|158   |  \row_loop[12].col_loop[13].element  |bfloat16_partial_element_51  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|159   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_659 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|160   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_660  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|161   |  \row_loop[12].col_loop[14].element  |bfloat16_partial_element_52  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|162   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_657 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|163   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_658  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|164   |  \row_loop[12].col_loop[15].element  |bfloat16_partial_element_53  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|165   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_655 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|166   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_656  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|167   |  \row_loop[12].col_loop[1].element   |bfloat16_partial_element_54  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|168   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_653 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|169   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_654  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|170   |  \row_loop[12].col_loop[2].element   |bfloat16_partial_element_55  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|171   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_651 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|172   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_652  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|173   |  \row_loop[12].col_loop[3].element   |bfloat16_partial_element_56  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|174   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_649 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|175   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_650  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|176   |  \row_loop[12].col_loop[4].element   |bfloat16_partial_element_57  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|177   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_647 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|178   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_648  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|179   |  \row_loop[12].col_loop[5].element   |bfloat16_partial_element_58  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|180   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_645 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|181   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_646  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|182   |  \row_loop[12].col_loop[6].element   |bfloat16_partial_element_59  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|183   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_643 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|184   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_644  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|185   |  \row_loop[12].col_loop[7].element   |bfloat16_partial_element_60  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|186   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_641 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|187   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_642  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|188   |  \row_loop[12].col_loop[8].element   |bfloat16_partial_element_61  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|189   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_639 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|190   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_640  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|191   |  \row_loop[12].col_loop[9].element   |bfloat16_partial_element_62  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|192   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_637 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|193   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_638  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|194   |  \row_loop[13].col_loop[0].element   |bfloat16_partial_element_63  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|195   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_635 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|196   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_636  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|197   |  \row_loop[13].col_loop[10].element  |bfloat16_partial_element_64  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|198   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_633 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|199   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_634  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|200   |  \row_loop[13].col_loop[11].element  |bfloat16_partial_element_65  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|201   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_631 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|202   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_632  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|203   |  \row_loop[13].col_loop[12].element  |bfloat16_partial_element_66  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|204   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_629 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|205   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_630  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|206   |  \row_loop[13].col_loop[13].element  |bfloat16_partial_element_67  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|207   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_627 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|208   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_628  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|209   |  \row_loop[13].col_loop[14].element  |bfloat16_partial_element_68  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|210   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_625 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|211   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_626  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|212   |  \row_loop[13].col_loop[15].element  |bfloat16_partial_element_69  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|213   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_623 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|214   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_624  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|215   |  \row_loop[13].col_loop[1].element   |bfloat16_partial_element_70  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|216   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_621 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|217   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_622  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|218   |  \row_loop[13].col_loop[2].element   |bfloat16_partial_element_71  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|219   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_619 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|220   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_620  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|221   |  \row_loop[13].col_loop[3].element   |bfloat16_partial_element_72  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|222   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_617 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|223   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_618  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|224   |  \row_loop[13].col_loop[4].element   |bfloat16_partial_element_73  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|225   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_615 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|226   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_616  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|227   |  \row_loop[13].col_loop[5].element   |bfloat16_partial_element_74  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|228   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_613 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|229   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_614  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|230   |  \row_loop[13].col_loop[6].element   |bfloat16_partial_element_75  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|231   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_611 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|232   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_612  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|233   |  \row_loop[13].col_loop[7].element   |bfloat16_partial_element_76  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|234   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_609 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|235   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_610  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|236   |  \row_loop[13].col_loop[8].element   |bfloat16_partial_element_77  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|237   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_607 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|238   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_608  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|239   |  \row_loop[13].col_loop[9].element   |bfloat16_partial_element_78  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|240   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_605 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|241   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_606  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|242   |  \row_loop[14].col_loop[0].element   |bfloat16_partial_element_79  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|243   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_603 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|244   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_604  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|245   |  \row_loop[14].col_loop[10].element  |bfloat16_partial_element_80  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|246   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_601 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|247   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_602  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|248   |  \row_loop[14].col_loop[11].element  |bfloat16_partial_element_81  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|249   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_599 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|250   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_600  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|251   |  \row_loop[14].col_loop[12].element  |bfloat16_partial_element_82  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|252   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_597 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|253   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_598  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|254   |  \row_loop[14].col_loop[13].element  |bfloat16_partial_element_83  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|255   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_595 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|256   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_596  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|257   |  \row_loop[14].col_loop[14].element  |bfloat16_partial_element_84  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|258   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_593 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|259   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_594  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|260   |  \row_loop[14].col_loop[15].element  |bfloat16_partial_element_85  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|261   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_591 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|262   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_592  |    229|
2default:defaulth p
x
� 
�
%s
*synth2j
V|263   |  \row_loop[14].col_loop[1].element   |bfloat16_partial_element_86  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|264   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_589 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|265   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_590  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|266   |  \row_loop[14].col_loop[2].element   |bfloat16_partial_element_87  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|267   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_587 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|268   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_588  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|269   |  \row_loop[14].col_loop[3].element   |bfloat16_partial_element_88  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|270   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_585 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|271   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_586  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|272   |  \row_loop[14].col_loop[4].element   |bfloat16_partial_element_89  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|273   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_583 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|274   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_584  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|275   |  \row_loop[14].col_loop[5].element   |bfloat16_partial_element_90  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|276   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_581 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|277   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_582  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|278   |  \row_loop[14].col_loop[6].element   |bfloat16_partial_element_91  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|279   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_579 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|280   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_580  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|281   |  \row_loop[14].col_loop[7].element   |bfloat16_partial_element_92  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|282   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_577 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|283   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_578  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|284   |  \row_loop[14].col_loop[8].element   |bfloat16_partial_element_93  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|285   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_575 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|286   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_576  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|287   |  \row_loop[14].col_loop[9].element   |bfloat16_partial_element_94  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|288   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_573 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|289   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_574  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|290   |  \row_loop[15].col_loop[0].element   |bfloat16_partial_element_95  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|291   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_571 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|292   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_572  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|293   |  \row_loop[15].col_loop[10].element  |bfloat16_partial_element_96  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|294   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_569 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|295   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_570  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|296   |  \row_loop[15].col_loop[11].element  |bfloat16_partial_element_97  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|297   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_567 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|298   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_568  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|299   |  \row_loop[15].col_loop[12].element  |bfloat16_partial_element_98  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|300   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_565 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|301   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_566  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|302   |  \row_loop[15].col_loop[13].element  |bfloat16_partial_element_99  |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|303   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_563 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|304   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_564  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|305   |  \row_loop[15].col_loop[14].element  |bfloat16_partial_element_100 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|306   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_561 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|307   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_562  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|308   |  \row_loop[15].col_loop[15].element  |bfloat16_partial_element_101 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|309   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_559 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|310   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_560  |    229|
2default:defaulth p
x
� 
�
%s
*synth2j
V|311   |  \row_loop[15].col_loop[1].element   |bfloat16_partial_element_102 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|312   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_557 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|313   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_558  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|314   |  \row_loop[15].col_loop[2].element   |bfloat16_partial_element_103 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|315   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_555 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|316   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_556  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|317   |  \row_loop[15].col_loop[3].element   |bfloat16_partial_element_104 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|318   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_553 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|319   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_554  |    229|
2default:defaulth p
x
� 
�
%s
*synth2j
V|320   |  \row_loop[15].col_loop[4].element   |bfloat16_partial_element_105 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|321   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_551 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|322   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_552  |    229|
2default:defaulth p
x
� 
�
%s
*synth2j
V|323   |  \row_loop[15].col_loop[5].element   |bfloat16_partial_element_106 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|324   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_549 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|325   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_550  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|326   |  \row_loop[15].col_loop[6].element   |bfloat16_partial_element_107 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|327   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_547 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|328   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_548  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|329   |  \row_loop[15].col_loop[7].element   |bfloat16_partial_element_108 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|330   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_545 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|331   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_546  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|332   |  \row_loop[15].col_loop[8].element   |bfloat16_partial_element_109 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|333   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_543 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|334   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_544  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|335   |  \row_loop[15].col_loop[9].element   |bfloat16_partial_element_110 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|336   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_541 |    269|
2default:defaulth p
x
� 
�
%s
*synth2j
V|337   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_542  |    210|
2default:defaulth p
x
� 
�
%s
*synth2j
V|338   |  \row_loop[1].col_loop[0].element    |bfloat16_partial_element_111 |    513|
2default:defaulth p
x
� 
�
%s
*synth2j
V|339   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_539 |    299|
2default:defaulth p
x
� 
�
%s
*synth2j
V|340   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_540  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|341   |  \row_loop[1].col_loop[10].element   |bfloat16_partial_element_112 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|342   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_537 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|343   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_538  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|344   |  \row_loop[1].col_loop[11].element   |bfloat16_partial_element_113 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|345   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_535 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|346   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_536  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|347   |  \row_loop[1].col_loop[12].element   |bfloat16_partial_element_114 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|348   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_533 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|349   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_534  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|350   |  \row_loop[1].col_loop[13].element   |bfloat16_partial_element_115 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|351   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_531 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|352   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_532  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|353   |  \row_loop[1].col_loop[14].element   |bfloat16_partial_element_116 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|354   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_529 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|355   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_530  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|356   |  \row_loop[1].col_loop[15].element   |bfloat16_partial_element_117 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|357   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_527 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|358   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_528  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|359   |  \row_loop[1].col_loop[1].element    |bfloat16_partial_element_118 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|360   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_525 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|361   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_526  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|362   |  \row_loop[1].col_loop[2].element    |bfloat16_partial_element_119 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|363   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_523 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|364   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_524  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|365   |  \row_loop[1].col_loop[3].element    |bfloat16_partial_element_120 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|366   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_521 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|367   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_522  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|368   |  \row_loop[1].col_loop[4].element    |bfloat16_partial_element_121 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|369   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_519 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|370   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_520  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|371   |  \row_loop[1].col_loop[5].element    |bfloat16_partial_element_122 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|372   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_517 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|373   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_518  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|374   |  \row_loop[1].col_loop[6].element    |bfloat16_partial_element_123 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|375   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_515 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|376   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_516  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|377   |  \row_loop[1].col_loop[7].element    |bfloat16_partial_element_124 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|378   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_513 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|379   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_514  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|380   |  \row_loop[1].col_loop[8].element    |bfloat16_partial_element_125 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|381   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_511 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|382   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_512  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|383   |  \row_loop[1].col_loop[9].element    |bfloat16_partial_element_126 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|384   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_509 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|385   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_510  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|386   |  \row_loop[2].col_loop[0].element    |bfloat16_partial_element_127 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|387   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_507 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|388   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_508  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|389   |  \row_loop[2].col_loop[10].element   |bfloat16_partial_element_128 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|390   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_505 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|391   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_506  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|392   |  \row_loop[2].col_loop[11].element   |bfloat16_partial_element_129 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|393   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_503 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|394   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_504  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|395   |  \row_loop[2].col_loop[12].element   |bfloat16_partial_element_130 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|396   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_501 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|397   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_502  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|398   |  \row_loop[2].col_loop[13].element   |bfloat16_partial_element_131 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|399   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_499 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|400   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_500  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|401   |  \row_loop[2].col_loop[14].element   |bfloat16_partial_element_132 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|402   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_497 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|403   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_498  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|404   |  \row_loop[2].col_loop[15].element   |bfloat16_partial_element_133 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|405   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_495 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|406   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_496  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|407   |  \row_loop[2].col_loop[1].element    |bfloat16_partial_element_134 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|408   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_493 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|409   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_494  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|410   |  \row_loop[2].col_loop[2].element    |bfloat16_partial_element_135 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|411   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_491 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|412   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_492  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|413   |  \row_loop[2].col_loop[3].element    |bfloat16_partial_element_136 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|414   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_489 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|415   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_490  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|416   |  \row_loop[2].col_loop[4].element    |bfloat16_partial_element_137 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|417   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_487 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|418   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_488  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|419   |  \row_loop[2].col_loop[5].element    |bfloat16_partial_element_138 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|420   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_485 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|421   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_486  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|422   |  \row_loop[2].col_loop[6].element    |bfloat16_partial_element_139 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|423   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_483 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|424   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_484  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|425   |  \row_loop[2].col_loop[7].element    |bfloat16_partial_element_140 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|426   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_481 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|427   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_482  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|428   |  \row_loop[2].col_loop[8].element    |bfloat16_partial_element_141 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|429   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_479 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|430   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_480  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|431   |  \row_loop[2].col_loop[9].element    |bfloat16_partial_element_142 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|432   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_477 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|433   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_478  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|434   |  \row_loop[3].col_loop[0].element    |bfloat16_partial_element_143 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|435   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_475 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|436   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_476  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|437   |  \row_loop[3].col_loop[10].element   |bfloat16_partial_element_144 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|438   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_473 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|439   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_474  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|440   |  \row_loop[3].col_loop[11].element   |bfloat16_partial_element_145 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|441   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_471 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|442   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_472  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|443   |  \row_loop[3].col_loop[12].element   |bfloat16_partial_element_146 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|444   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_469 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|445   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_470  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|446   |  \row_loop[3].col_loop[13].element   |bfloat16_partial_element_147 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|447   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_467 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|448   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_468  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|449   |  \row_loop[3].col_loop[14].element   |bfloat16_partial_element_148 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|450   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_465 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|451   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_466  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|452   |  \row_loop[3].col_loop[15].element   |bfloat16_partial_element_149 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|453   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_463 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|454   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_464  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|455   |  \row_loop[3].col_loop[1].element    |bfloat16_partial_element_150 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|456   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_461 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|457   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_462  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|458   |  \row_loop[3].col_loop[2].element    |bfloat16_partial_element_151 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|459   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_459 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|460   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_460  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|461   |  \row_loop[3].col_loop[3].element    |bfloat16_partial_element_152 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|462   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_457 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|463   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_458  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|464   |  \row_loop[3].col_loop[4].element    |bfloat16_partial_element_153 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|465   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_455 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|466   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_456  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|467   |  \row_loop[3].col_loop[5].element    |bfloat16_partial_element_154 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|468   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_453 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|469   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_454  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|470   |  \row_loop[3].col_loop[6].element    |bfloat16_partial_element_155 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|471   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_451 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|472   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_452  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|473   |  \row_loop[3].col_loop[7].element    |bfloat16_partial_element_156 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|474   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_449 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|475   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_450  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|476   |  \row_loop[3].col_loop[8].element    |bfloat16_partial_element_157 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|477   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_447 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|478   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_448  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|479   |  \row_loop[3].col_loop[9].element    |bfloat16_partial_element_158 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|480   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_445 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|481   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_446  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|482   |  \row_loop[4].col_loop[0].element    |bfloat16_partial_element_159 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|483   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_443 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|484   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_444  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|485   |  \row_loop[4].col_loop[10].element   |bfloat16_partial_element_160 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|486   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_441 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|487   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_442  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|488   |  \row_loop[4].col_loop[11].element   |bfloat16_partial_element_161 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|489   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_439 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|490   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_440  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|491   |  \row_loop[4].col_loop[12].element   |bfloat16_partial_element_162 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|492   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_437 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|493   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_438  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|494   |  \row_loop[4].col_loop[13].element   |bfloat16_partial_element_163 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|495   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_435 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|496   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_436  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|497   |  \row_loop[4].col_loop[14].element   |bfloat16_partial_element_164 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|498   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_433 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|499   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_434  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|500   |  \row_loop[4].col_loop[15].element   |bfloat16_partial_element_165 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|501   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_431 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|502   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_432  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|503   |  \row_loop[4].col_loop[1].element    |bfloat16_partial_element_166 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|504   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_429 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|505   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_430  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|506   |  \row_loop[4].col_loop[2].element    |bfloat16_partial_element_167 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|507   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_427 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|508   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_428  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|509   |  \row_loop[4].col_loop[3].element    |bfloat16_partial_element_168 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|510   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_425 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|511   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_426  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|512   |  \row_loop[4].col_loop[4].element    |bfloat16_partial_element_169 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|513   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_423 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|514   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_424  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|515   |  \row_loop[4].col_loop[5].element    |bfloat16_partial_element_170 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|516   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_421 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|517   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_422  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|518   |  \row_loop[4].col_loop[6].element    |bfloat16_partial_element_171 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|519   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_419 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|520   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_420  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|521   |  \row_loop[4].col_loop[7].element    |bfloat16_partial_element_172 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|522   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_417 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|523   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_418  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|524   |  \row_loop[4].col_loop[8].element    |bfloat16_partial_element_173 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|525   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_415 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|526   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_416  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|527   |  \row_loop[4].col_loop[9].element    |bfloat16_partial_element_174 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|528   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_413 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|529   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_414  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|530   |  \row_loop[5].col_loop[0].element    |bfloat16_partial_element_175 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|531   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_411 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|532   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_412  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|533   |  \row_loop[5].col_loop[10].element   |bfloat16_partial_element_176 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|534   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_409 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|535   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_410  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|536   |  \row_loop[5].col_loop[11].element   |bfloat16_partial_element_177 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|537   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_407 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|538   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_408  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|539   |  \row_loop[5].col_loop[12].element   |bfloat16_partial_element_178 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|540   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_405 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|541   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_406  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|542   |  \row_loop[5].col_loop[13].element   |bfloat16_partial_element_179 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|543   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_403 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|544   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_404  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|545   |  \row_loop[5].col_loop[14].element   |bfloat16_partial_element_180 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|546   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_401 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|547   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_402  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|548   |  \row_loop[5].col_loop[15].element   |bfloat16_partial_element_181 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|549   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_399 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|550   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_400  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|551   |  \row_loop[5].col_loop[1].element    |bfloat16_partial_element_182 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|552   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_397 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|553   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_398  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|554   |  \row_loop[5].col_loop[2].element    |bfloat16_partial_element_183 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|555   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_395 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|556   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_396  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|557   |  \row_loop[5].col_loop[3].element    |bfloat16_partial_element_184 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|558   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_393 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|559   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_394  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|560   |  \row_loop[5].col_loop[4].element    |bfloat16_partial_element_185 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|561   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_391 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|562   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_392  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|563   |  \row_loop[5].col_loop[5].element    |bfloat16_partial_element_186 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|564   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_389 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|565   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_390  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|566   |  \row_loop[5].col_loop[6].element    |bfloat16_partial_element_187 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|567   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_387 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|568   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_388  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|569   |  \row_loop[5].col_loop[7].element    |bfloat16_partial_element_188 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|570   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_385 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|571   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_386  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|572   |  \row_loop[5].col_loop[8].element    |bfloat16_partial_element_189 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|573   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_383 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|574   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_384  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|575   |  \row_loop[5].col_loop[9].element    |bfloat16_partial_element_190 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|576   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_381 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|577   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_382  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|578   |  \row_loop[6].col_loop[0].element    |bfloat16_partial_element_191 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|579   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_379 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|580   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_380  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|581   |  \row_loop[6].col_loop[10].element   |bfloat16_partial_element_192 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|582   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_377 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|583   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_378  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|584   |  \row_loop[6].col_loop[11].element   |bfloat16_partial_element_193 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|585   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_375 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|586   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_376  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|587   |  \row_loop[6].col_loop[12].element   |bfloat16_partial_element_194 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|588   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_373 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|589   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_374  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|590   |  \row_loop[6].col_loop[13].element   |bfloat16_partial_element_195 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|591   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_371 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|592   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_372  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|593   |  \row_loop[6].col_loop[14].element   |bfloat16_partial_element_196 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|594   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_369 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|595   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_370  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|596   |  \row_loop[6].col_loop[15].element   |bfloat16_partial_element_197 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|597   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_367 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|598   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_368  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|599   |  \row_loop[6].col_loop[1].element    |bfloat16_partial_element_198 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|600   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_365 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|601   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_366  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|602   |  \row_loop[6].col_loop[2].element    |bfloat16_partial_element_199 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|603   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_363 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|604   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_364  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|605   |  \row_loop[6].col_loop[3].element    |bfloat16_partial_element_200 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|606   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_361 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|607   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_362  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|608   |  \row_loop[6].col_loop[4].element    |bfloat16_partial_element_201 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|609   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_359 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|610   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_360  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|611   |  \row_loop[6].col_loop[5].element    |bfloat16_partial_element_202 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|612   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_357 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|613   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_358  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|614   |  \row_loop[6].col_loop[6].element    |bfloat16_partial_element_203 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|615   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_355 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|616   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_356  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|617   |  \row_loop[6].col_loop[7].element    |bfloat16_partial_element_204 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|618   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_353 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|619   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_354  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|620   |  \row_loop[6].col_loop[8].element    |bfloat16_partial_element_205 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|621   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_351 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|622   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_352  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|623   |  \row_loop[6].col_loop[9].element    |bfloat16_partial_element_206 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|624   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_349 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|625   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_350  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|626   |  \row_loop[7].col_loop[0].element    |bfloat16_partial_element_207 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|627   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_347 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|628   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_348  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|629   |  \row_loop[7].col_loop[10].element   |bfloat16_partial_element_208 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|630   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_345 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|631   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_346  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|632   |  \row_loop[7].col_loop[11].element   |bfloat16_partial_element_209 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|633   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_343 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|634   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_344  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|635   |  \row_loop[7].col_loop[12].element   |bfloat16_partial_element_210 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|636   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_341 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|637   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_342  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|638   |  \row_loop[7].col_loop[13].element   |bfloat16_partial_element_211 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|639   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_339 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|640   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_340  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|641   |  \row_loop[7].col_loop[14].element   |bfloat16_partial_element_212 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|642   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_337 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|643   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_338  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|644   |  \row_loop[7].col_loop[15].element   |bfloat16_partial_element_213 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|645   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_335 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|646   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_336  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|647   |  \row_loop[7].col_loop[1].element    |bfloat16_partial_element_214 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|648   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_333 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|649   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_334  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|650   |  \row_loop[7].col_loop[2].element    |bfloat16_partial_element_215 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|651   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_331 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|652   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_332  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|653   |  \row_loop[7].col_loop[3].element    |bfloat16_partial_element_216 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|654   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_329 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|655   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_330  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|656   |  \row_loop[7].col_loop[4].element    |bfloat16_partial_element_217 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|657   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_327 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|658   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_328  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|659   |  \row_loop[7].col_loop[5].element    |bfloat16_partial_element_218 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|660   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_325 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|661   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_326  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|662   |  \row_loop[7].col_loop[6].element    |bfloat16_partial_element_219 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|663   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_323 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|664   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_324  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|665   |  \row_loop[7].col_loop[7].element    |bfloat16_partial_element_220 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|666   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_321 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|667   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_322  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|668   |  \row_loop[7].col_loop[8].element    |bfloat16_partial_element_221 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|669   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_319 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|670   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_320  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|671   |  \row_loop[7].col_loop[9].element    |bfloat16_partial_element_222 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|672   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_317 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|673   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_318  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|674   |  \row_loop[8].col_loop[0].element    |bfloat16_partial_element_223 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|675   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_315 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|676   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_316  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|677   |  \row_loop[8].col_loop[10].element   |bfloat16_partial_element_224 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|678   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_313 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|679   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_314  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|680   |  \row_loop[8].col_loop[11].element   |bfloat16_partial_element_225 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|681   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_311 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|682   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_312  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|683   |  \row_loop[8].col_loop[12].element   |bfloat16_partial_element_226 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|684   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_309 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|685   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_310  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|686   |  \row_loop[8].col_loop[13].element   |bfloat16_partial_element_227 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|687   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_307 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|688   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_308  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|689   |  \row_loop[8].col_loop[14].element   |bfloat16_partial_element_228 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|690   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_305 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|691   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_306  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|692   |  \row_loop[8].col_loop[15].element   |bfloat16_partial_element_229 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|693   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_303 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|694   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_304  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|695   |  \row_loop[8].col_loop[1].element    |bfloat16_partial_element_230 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|696   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_301 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|697   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_302  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|698   |  \row_loop[8].col_loop[2].element    |bfloat16_partial_element_231 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|699   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_299 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|700   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_300  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|701   |  \row_loop[8].col_loop[3].element    |bfloat16_partial_element_232 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|702   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_297 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|703   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_298  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|704   |  \row_loop[8].col_loop[4].element    |bfloat16_partial_element_233 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|705   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_295 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|706   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_296  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|707   |  \row_loop[8].col_loop[5].element    |bfloat16_partial_element_234 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|708   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_293 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|709   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_294  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|710   |  \row_loop[8].col_loop[6].element    |bfloat16_partial_element_235 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|711   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_291 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|712   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_292  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|713   |  \row_loop[8].col_loop[7].element    |bfloat16_partial_element_236 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|714   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_289 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|715   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_290  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|716   |  \row_loop[8].col_loop[8].element    |bfloat16_partial_element_237 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|717   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_287 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|718   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_288  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|719   |  \row_loop[8].col_loop[9].element    |bfloat16_partial_element_238 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|720   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_285 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|721   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_286  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|722   |  \row_loop[9].col_loop[0].element    |bfloat16_partial_element_239 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|723   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_283 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|724   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_284  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|725   |  \row_loop[9].col_loop[10].element   |bfloat16_partial_element_240 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|726   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_281 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|727   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_282  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|728   |  \row_loop[9].col_loop[11].element   |bfloat16_partial_element_241 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|729   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_279 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|730   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_280  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|731   |  \row_loop[9].col_loop[12].element   |bfloat16_partial_element_242 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|732   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_277 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|733   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_278  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|734   |  \row_loop[9].col_loop[13].element   |bfloat16_partial_element_243 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|735   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_275 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|736   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_276  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|737   |  \row_loop[9].col_loop[14].element   |bfloat16_partial_element_244 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|738   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_273 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|739   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_274  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|740   |  \row_loop[9].col_loop[15].element   |bfloat16_partial_element_245 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|741   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_271 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|742   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_272  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|743   |  \row_loop[9].col_loop[1].element    |bfloat16_partial_element_246 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|744   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_269 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|745   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_270  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|746   |  \row_loop[9].col_loop[2].element    |bfloat16_partial_element_247 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|747   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_267 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|748   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_268  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|749   |  \row_loop[9].col_loop[3].element    |bfloat16_partial_element_248 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|750   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_265 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|751   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_266  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|752   |  \row_loop[9].col_loop[4].element    |bfloat16_partial_element_249 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|753   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_263 |    298|
2default:defaulth p
x
� 
�
%s
*synth2j
V|754   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_264  |    165|
2default:defaulth p
x
� 
�
%s
*synth2j
V|755   |  \row_loop[9].col_loop[5].element    |bfloat16_partial_element_250 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|756   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_261 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|757   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_262  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|758   |  \row_loop[9].col_loop[6].element    |bfloat16_partial_element_251 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|759   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_259 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|760   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_260  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|761   |  \row_loop[9].col_loop[7].element    |bfloat16_partial_element_252 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|762   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_257 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|763   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_258  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|764   |  \row_loop[9].col_loop[8].element    |bfloat16_partial_element_253 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|765   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined_255 |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|766   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined_256  |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V|767   |  \row_loop[9].col_loop[9].element    |bfloat16_partial_element_254 |    512|
2default:defaulth p
x
� 
�
%s
*synth2j
V|768   |    bfloat16_adder_pipelined          |bfloat16_adder_pipelined     |    266|
2default:defaulth p
x
� 
�
%s
*synth2j
V|769   |    bfloat16_mult_pipelined           |bfloat16_mult_pipelined      |    213|
2default:defaulth p
x
� 
�
%s
*synth2j
V+------+--------------------------------------+-----------------------------+-------+
2default:defaulth p
x
� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
�
%s*synth2�
�Finished Writing Synthesis Report : Time (s): cpu = 00:03:44 ; elapsed = 00:04:27 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth px� 
~
%s
*synth2f
R---------------------------------------------------------------------------------
2default:defaulth p
x
� 
r
%s
*synth2Z
FSynthesis finished with 0 errors, 0 critical warnings and 7 warnings.
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Runtime : Time (s): cpu = 00:03:44 ; elapsed = 00:04:28 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth p
x
� 
�
%s
*synth2�
�Synthesis Optimization Complete : Time (s): cpu = 00:03:44 ; elapsed = 00:04:28 . Memory (MB): peak = 2292.742 ; gain = 1805.270
2default:defaulth p
x
� 
B
 Translating synthesized netlist
350*projectZ1-571h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:032default:default2
00:00:032default:default2
2309.0202default:default2
0.0002default:defaultZ17-268h px� 
h
-Analyzing %s Unisim elements for replacement
17*netlist2
48982default:defaultZ29-17h px� 
j
2Unisim Transformation completed in %s CPU seconds
28*netlist2
12default:defaultZ29-28h px� 
K
)Preparing netlist for logic optimization
349*projectZ1-570h px� 
u
)Pushed %s inverter(s) to %s load pin(s).
98*opt2
02default:default2
02default:defaultZ31-138h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2.
Netlist sorting complete. 2default:default2
00:00:002default:default2 
00:00:00.0542default:default2
2479.3752default:default2
0.0002default:defaultZ17-268h px� 
�
!Unisim Transformation Summary:
%s111*project2�
{  A total of 546 instances were transformed.
  BUFG => BUFGCE: 1 instance 
  IBUF => IBUF (IBUFCTRL, INBUF): 545 instances
2default:defaultZ1-111h px� 
h
%Synth Design complete | Checksum: %s
562*	vivadotcl2
6c015d762default:defaultZ4-1430h px� 
U
Releasing license: %s
83*common2
	Synthesis2default:defaultZ17-83h px� 
�
G%s Infos, %s Warnings, %s Critical Warnings and %s Errors encountered.
28*	vivadotcl2
1282default:default2
72default:default2
02default:default2
02default:defaultZ4-41h px� 
^
%s completed successfully
29*	vivadotcl2 
synth_design2default:defaultZ4-42h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2"
synth_design: 2default:default2
00:04:232default:default2
00:05:072default:default2
2479.3752default:default2
1998.7542default:defaultZ17-268h px� 
�
 The %s '%s' has been generated.
621*common2

checkpoint2default:default2�
�C:/Users/Baron/Desktop/EE_278_Repo/EE_278/vivado_projects/mini_project_2/mini_project_2.runs/synth_1/bfloat16_matrix_multiplier_4x4.dcp2default:defaultZ17-1381h px� 
�
I%sTime (s): cpu = %s ; elapsed = %s . Memory (MB): peak = %s ; gain = %s
268*common2&
write_checkpoint: 2default:default2
00:00:212default:default2
00:00:162default:default2
2479.3752default:default2
0.0002default:defaultZ17-268h px� 
�
%s4*runtcl2�
�Executing : report_utilization -file bfloat16_matrix_multiplier_4x4_utilization_synth.rpt -pb bfloat16_matrix_multiplier_4x4_utilization_synth.pb
2default:defaulth px� 
�
Exiting %s at %s...
206*common2
Vivado2default:default2,
Thu Oct 31 19:44:12 20242default:defaultZ17-206h px� 


End Record