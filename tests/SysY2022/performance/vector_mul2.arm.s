.arch armv7ve
.data
.bss
.align 8
Vectortm:
	.zero	400000
.align 8
vectorB:
	.zero	400000
.align 8
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #4
	bl _sysy_starttime
	mov r0, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
.p2align 4
label2:
	mov r1, #1065353216
	add r0, r0, #64
	vmov s0, r1
	movw r1, #34432
	movt r1, #1
	cmp r0, r1
	vstr s0, [r4, #0]
	vstr s0, [r4, #4]
	vstr s0, [r4, #8]
	vstr s0, [r4, #12]
	vstr s0, [r4, #16]
	vstr s0, [r4, #20]
	vstr s0, [r4, #24]
	vstr s0, [r4, #28]
	vstr s0, [r4, #32]
	vstr s0, [r4, #36]
	vstr s0, [r4, #40]
	vstr s0, [r4, #44]
	vstr s0, [r4, #48]
	vstr s0, [r4, #52]
	vstr s0, [r4, #56]
	vstr s0, [r4, #60]
	vstr s0, [r4, #64]
	vstr s0, [r4, #68]
	vstr s0, [r4, #72]
	vstr s0, [r4, #76]
	vstr s0, [r4, #80]
	vstr s0, [r4, #84]
	vstr s0, [r4, #88]
	vstr s0, [r4, #92]
	vstr s0, [r4, #96]
	vstr s0, [r4, #100]
	vstr s0, [r4, #104]
	vstr s0, [r4, #108]
	vstr s0, [r4, #112]
	vstr s0, [r4, #116]
	vstr s0, [r4, #120]
	vstr s0, [r4, #124]
	vstr s0, [r4, #128]
	vstr s0, [r4, #132]
	vstr s0, [r4, #136]
	vstr s0, [r4, #140]
	vstr s0, [r4, #144]
	vstr s0, [r4, #148]
	vstr s0, [r4, #152]
	vstr s0, [r4, #156]
	vstr s0, [r4, #160]
	vstr s0, [r4, #164]
	vstr s0, [r4, #168]
	vstr s0, [r4, #172]
	vstr s0, [r4, #176]
	vstr s0, [r4, #180]
	vstr s0, [r4, #184]
	vstr s0, [r4, #188]
	vstr s0, [r4, #192]
	vstr s0, [r4, #196]
	vstr s0, [r4, #200]
	vstr s0, [r4, #204]
	vstr s0, [r4, #208]
	vstr s0, [r4, #212]
	vstr s0, [r4, #216]
	vstr s0, [r4, #220]
	vstr s0, [r4, #224]
	vstr s0, [r4, #228]
	vstr s0, [r4, #232]
	vstr s0, [r4, #236]
	vstr s0, [r4, #240]
	vstr s0, [r4, #244]
	vstr s0, [r4, #248]
	vstr s0, [r4, #252]
	bge label6
	add r4, r4, #256
	b label2
label6:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #0
	vstr s0, [r4, #256]
	vstr s0, [r4, #260]
	vstr s0, [r4, #264]
	vstr s0, [r4, #268]
	vstr s0, [r4, #272]
	vstr s0, [r4, #276]
	vstr s0, [r4, #280]
	vstr s0, [r4, #284]
	vstr s0, [r4, #288]
	vstr s0, [r4, #292]
	vstr s0, [r4, #296]
	vstr s0, [r4, #300]
	vstr s0, [r4, #304]
	vstr s0, [r4, #308]
	vstr s0, [r4, #312]
	vstr s0, [r4, #316]
	vstr s0, [r4, #320]
	vstr s0, [r4, #324]
	vstr s0, [r4, #328]
	vstr s0, [r4, #332]
	vstr s0, [r4, #336]
	vstr s0, [r4, #340]
	vstr s0, [r4, #344]
	vstr s0, [r4, #348]
	vstr s0, [r4, #352]
	vstr s0, [r4, #356]
	vstr s0, [r4, #360]
	vstr s0, [r4, #364]
	vstr s0, [r4, #368]
	vstr s0, [r4, #372]
	vstr s0, [r4, #376]
	vstr s0, [r4, #380]
	b label7
.p2align 4
label907:
	add r0, r0, #1
	cmp r0, #1000
	bge label55
.p2align 4
label7:
	mov r8, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r3, r8
	vmov s0, r8
	mov r2, r4
	movw r1, #34464
	movt r1, #1
	cmp r8, r1
	blt label115
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r2, r4
label20:
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	blt label72
	b label26
.p2align 4
label83:
	add r4, r4, #4
.p2align 4
label79:
	add r6, r2, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label83
	movw r7, #34464
	movt r7, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label924
.p2align 4
label72:
	add r1, r2, #1
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label583
	add r8, r7, #3
	cmp r8, r4
	bge label588
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	add r5, r2, #2
	add r6, r2, #3
	add r4, r4, r7, lsl #2
.p2align 4
label85:
	add r9, r2, r7
	add r10, r1, r7
	vldr s2, [r4, #0]
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	add r9, r5, r7
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r2, r8
	add r8, r1, r8
	mul r8, r9, r8
	add r9, r7, #4
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r4, #12]
	add r8, r1, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r7, #7
	movw r7, #34461
	movt r7, #1
	cmp r9, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label658
	add r4, r4, #16
	mov r7, r9
	b label85
.p2align 4
label126:
	add r4, r4, #4
.p2align 4
label122:
	add r6, r3, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label126
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label930
.p2align 4
label115:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label749
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label754
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r5, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	add r4, r4, r8, lsl #2
	b label128
.p2align 4
label132:
	add r4, r4, #16
.p2align 4
label128:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r4, #0]
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r1, r10
	vmov s1, r10
	add r10, r5, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r1, r10
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label132
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label916
.p2align 4
label121:
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r5, r8
	vmov.f32 s0, s1
	add r4, r4, r8, lsl #2
	b label122
.p2align 4
label114:
	add r4, r4, #4
.p2align 4
label110:
	add r6, r3, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r6, r5
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label114
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label915
.p2align 4
label94:
	add r1, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label95
	add r4, r8, #3
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label671
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r5, r3, #2
	add r6, r3, #3
	add r7, r3, #4
	add r4, r4, r8, lsl #2
	b label100
.p2align 4
label104:
	add r4, r4, #16
.p2align 4
label100:
	add r10, r3, r8
	add r9, r1, r8
	vldr s2, [r4, #0]
	add r11, r8, #1
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r10, r10, r11
	add r11, r8, #2
	vmov s1, r10
	add r10, r5, r8
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r11
	vldr s2, [r4, #4]
	add r11, r8, #3
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r8
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	movw r9, #34461
	movt r9, #1
	cmp r8, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label104
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label913
.p2align 4
label109:
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r5, r8
	vmov.f32 s0, s1
	add r4, r4, r8, lsl #2
	b label110
.p2align 4
label658:
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	bge label909
.p2align 4
label78:
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r5, r9
	vmov.f32 s0, s1
	add r4, r4, r9, lsl #2
	b label79
.p2align 4
label588:
	mov r4, #0
	vmov.f32 s1, s0
	mov r9, r7
	vmov s2, r4
	vmov.f32 s0, s2
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	blt label78
	movw r7, #34464
	movt r7, #1
	vstr s2, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label72
	mov r7, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label32
	b label268
.p2align 4
label46:
	add r4, r4, #4
.p2align 4
label42:
	add r6, r2, r5
	add r7, r1, r5
	vldr s2, [r4, #0]
	add r5, r5, #1
	mul r6, r6, r7
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r6, r5
	vmov s1, r6
	movw r6, #34464
	movt r6, #1
	cmp r5, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label46
	movw r7, #34464
	movt r7, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label907
.p2align 4
label32:
	add r1, r2, #1
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label33
	add r8, r7, #3
	cmp r8, r4
	bge label279
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r5, r2, #2
	add r6, r2, #3
	add r4, r4, r7, lsl #2
	b label48
.p2align 4
label53:
	add r4, r4, #16
	mov r7, r9
.p2align 4
label48:
	add r9, r2, r7
	add r10, r1, r7
	vldr s2, [r4, #0]
	add r11, r7, #1
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r9, r11
	add r11, r7, #2
	vmov s1, r9
	add r9, r5, r7
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r6, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r8, r9
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r2, r8
	add r8, r1, r8
	mul r8, r9, r8
	add r9, r7, #4
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r4, #12]
	add r8, r8, r9
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r7, #7
	movw r7, #34461
	movt r7, #1
	cmp r9, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label53
	vmov.f32 s1, s0
	movw r4, #34464
	movt r4, #1
	cmp r9, r4
	bge label908
.p2align 4
label41:
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r5, r9
	vmov.f32 s0, s1
	add r4, r4, r9, lsl #2
	b label42
.p2align 4
label279:
	mov r4, #0
	vmov.f32 s1, s0
	mov r9, r7
	vmov s2, r4
	vmov.f32 s0, s2
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	blt label41
	movw r7, #34464
	movt r7, #1
	vstr s2, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label32
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label55
.p2align 4
label754:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	vmov.f32 s0, s2
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	blt label121
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label115
	mov r8, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r8
	vmov s0, r8
	mov r2, r4
	cmp r8, r1
	blt label94
	b label20
.p2align 4
label33:
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label32
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label55
.p2align 4
label95:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label94
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label72
label26:
	mov r7, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	blt label32
	b label268
.p2align 4
label671:
	mov r4, #0
	vmov.f32 s1, s0
	vmov s2, r4
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	vmov.f32 s0, s2
	blt label109
	movw r8, #34464
	movt r8, #1
	vstr s2, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label94
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label72
	b label26
.p2align 4
label908:
	movw r7, #34464
	movt r7, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label32
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label55
.p2align 4
label909:
	movw r7, #34464
	movt r7, #1
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label72
	mov r7, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label32
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label55
.p2align 4
label916:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label115
	mov r8, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r8
	vmov s0, r8
	mov r2, r4
	cmp r8, r1
	blt label94
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label72
	b label26
.p2align 4
label913:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label94
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label72
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r3, r4
	b label268
.p2align 4
label583:
	vstr s0, [r3, #0]
	mov r2, r1
	add r3, r3, #4
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label72
	mov r7, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label32
label268:
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label55
.p2align 4
label749:
	vstr s0, [r2, #0]
	mov r3, r1
	add r2, r2, #4
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	blt label115
	mov r8, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	mov r3, r8
	vmov s0, r8
	mov r2, r4
	cmp r8, r1
	blt label94
	b label20
.p2align 4
label924:
	mov r7, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	movw r1, #34464
	movt r1, #1
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label32
	add r0, r0, #1
	cmp r0, #1000
	blt label7
	b label55
.p2align 4
label930:
	mov r8, #0
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	movw r1, #34464
	movt r1, #1
	mov r3, r8
	vmov s0, r8
	mov r2, r4
	cmp r8, r1
	blt label94
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label72
	b label26
.p2align 4
label915:
	mov r7, #0
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	movw r1, #34464
	movt r1, #1
	mov r2, r7
	vmov s0, r7
	mov r3, r4
	cmp r7, r1
	blt label72
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r3, r4
	b label268
label55:
	mov r0, #76
	bl _sysy_stoptime
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r1, #0
	mov r0, r4
	vmov s0, r1
	b label56
.p2align 4
label71:
	add r0, r0, #64
.p2align 4
label56:
	movw r4, #:lower16:vectorB
	movt r4, #:upper16:vectorB
	vldr s1, [r0, #0]
	add r2, r4, r1, lsl #2
	add r1, r1, #16
	vldr s2, [r2, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #4]
	vldr s2, [r2, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #8]
	vldr s2, [r2, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #12]
	vldr s2, [r2, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #16]
	vldr s2, [r2, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #20]
	vldr s2, [r2, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #24]
	vldr s2, [r2, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #28]
	vldr s2, [r2, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #32]
	vldr s2, [r2, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #36]
	vldr s2, [r2, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #40]
	vldr s2, [r2, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #44]
	vldr s2, [r2, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #48]
	vldr s2, [r2, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #52]
	vldr s2, [r2, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #56]
	vldr s2, [r2, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r0, #60]
	vldr s2, [r2, #60]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	blt label71
	mov r1, #0
	vmov s1, r1
	mov r0, r4
	b label61
.p2align 4
label70:
	add r0, r0, #64
.p2align 4
label61:
	vldr s2, [r0, #0]
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	blt label70
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	mov r0, #0
	vsub.f32 s1, s1, s0
	vcmp.f32 s1, s2
	vmov s2, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label544
	mov r0, #1065353216
	vmov s1, r0
.p2align 4
label68:
	vdiv.f32 s2, s0, s1
	mov r0, #1056964608
	movw r1, #14269
	movt r1, #46470
	vadd.f32 s1, s1, s2
	vmov s2, r0
	movw r0, #14269
	movt r0, #13702
	vmov s3, r0
	mov r0, #0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s2, s1, s2
	vcmp.f32 s2, s3
	vmov s3, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s2, s3
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label68
label66:
	mov r0, #1065353216
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s0, s1, s0
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label544:
	mov r0, #1065353216
	vmov s1, r0
	b label66
