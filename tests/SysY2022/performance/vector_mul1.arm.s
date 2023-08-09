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
	sub sp, sp, #12
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
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r1, #1065353216
	add r0, r4, r0, lsl #2
	vmov s0, r1
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	vstr s0, [r0, #16]
	vstr s0, [r0, #20]
	vstr s0, [r0, #24]
	vstr s0, [r0, #28]
	vstr s0, [r0, #32]
	vstr s0, [r0, #36]
	vstr s0, [r0, #40]
	vstr s0, [r0, #44]
	vstr s0, [r0, #48]
	vstr s0, [r0, #52]
	vstr s0, [r0, #56]
	vstr s0, [r0, #60]
	vstr s0, [r0, #64]
	vstr s0, [r0, #68]
	vstr s0, [r0, #72]
	vstr s0, [r0, #76]
	vstr s0, [r0, #80]
	vstr s0, [r0, #84]
	vstr s0, [r0, #88]
	vstr s0, [r0, #92]
	vstr s0, [r0, #96]
	vstr s0, [r0, #100]
	vstr s0, [r0, #104]
	vstr s0, [r0, #108]
	vstr s0, [r0, #112]
	vstr s0, [r0, #116]
	vstr s0, [r0, #120]
	vstr s0, [r0, #124]
	mov r0, #0
	str r0, [sp, #0]
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r0
	vmov s0, r0
	mov r1, r7
	mov r7, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label102
	mov r0, #0
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	mov r2, r0
	vmov s0, r0
	mov r1, r8
	mov r8, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label84
	b label20
.p2align 4
label713:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label879
.p2align 4
label84:
	add r0, r2, #1
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	bge label85
	add r3, r8, #4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label647
	add r3, r2, #2
	add r5, r2, #3
	add r6, r2, #4
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	add r4, r7, r8, lsl #2
	mov r7, r8
.p2align 4
label90:
	add r9, r2, r7
	add r8, r0, r7
	vldr s2, [r4, #0]
	add r10, r7, #1
	mul r9, r9, r8
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r9, r10
	add r10, r7, #2
	vmov s1, r9
	add r9, r3, r7
	mul r8, r8, r9
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r8, r10
	vldr s2, [r4, #4]
	add r10, r7, #3
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r5, r7
	mul r9, r9, r8
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r10
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r7
	mul r8, r8, r9
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r7, #4
	vldr s2, [r4, #12]
	add r7, r9, r8
	vadd.f32 s0, s0, s1
	vmov s1, r7
	movw r7, #34460
	movt r7, #1
	cmp r8, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label647
	add r4, r4, #16
	mov r7, r8
	b label90
.p2align 4
label118:
	add r3, r3, #4
.p2align 4
label114:
	add r4, r2, r7
	add r5, r0, r7
	vldr s2, [r3, #0]
	add r7, r7, #1
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r0, r4
	vmov s1, r4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label118
	movw r7, #34464
	movt r7, #1
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label881
.p2align 4
label102:
	add r0, r2, #1
	movw r3, #34464
	movt r3, #1
	cmp r7, r3
	bge label103
	add r3, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label727
	add r3, r2, #2
	add r5, r2, #3
	add r6, r2, #4
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r4, r4, r7, lsl #2
	b label108
.p2align 4
label113:
	add r4, r4, #16
.p2align 4
label108:
	add r8, r2, r7
	add r9, r0, r7
	vldr s2, [r4, #0]
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r0, r8
	vmov s1, r8
	add r8, r3, r7
	mul r9, r9, r8
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r0, r9
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r5, r7
	mul r8, r8, r9
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r0, r8
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r6, r7
	add r7, r7, #4
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r0, r8
	vldr s2, [r4, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	movw r8, #34460
	movt r8, #1
	cmp r7, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label113
.p2align 4
label727:
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	add r3, r4, r7, lsl #2
	b label114
.p2align 4
label647:
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r4, r8
	add r3, r7, r8, lsl #2
.p2align 4
label96:
	add r5, r2, r4
	add r6, r0, r4
	vldr s2, [r3, #0]
	add r4, r4, #1
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r5, r4
	vmov s1, r5
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label713
	add r3, r3, #4
	b label96
.p2align 4
label103:
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label102
	mov r0, #0
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	mov r2, r0
	vmov s0, r0
	mov r1, r8
	mov r8, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label84
	b label20
.p2align 4
label85:
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label84
	mov r0, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r0
	vmov s0, r0
	mov r1, r7
	mov r7, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label26
label247:
	mov r8, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	movw r0, #34464
	movt r0, #1
	mov r2, r8
	vmov s0, r8
	mov r1, r4
	cmp r8, r0
	blt label67
	b label49
.p2align 4
label274:
	movw r7, #34464
	movt r7, #1
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label875
.p2align 4
label26:
	add r0, r2, #1
	movw r3, #34464
	movt r3, #1
	cmp r7, r3
	bge label27
	add r6, r7, #4
	cmp r6, r3
	bge label31
	add r3, r2, #2
	add r4, r2, #3
	add r5, r2, #4
.p2align 4
label38:
	add r8, r2, r7
	add r9, r0, r7
	add r10, r3, r7
	mul r8, r8, r9
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	asr r9, r9, #1
	add r8, r0, r8
	add r9, r0, r9
	vmov s1, r8
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r4, r7
	add r7, r5, r7
	mul r10, r10, r9
	mul r7, r9, r7
	add r10, r10, r10, lsr #31
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	add r10, r0, r10
	vldr s2, [r8, #8]
	add r7, r0, r7
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	add r8, r6, #4
	vadd.f32 s0, s0, s1
	vmov s1, r7
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label321
	mov r7, r6
	mov r6, r8
	b label38
.p2align 4
label321:
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	add r3, r8, r6, lsl #2
.p2align 4
label32:
	add r4, r2, r6
	add r5, r0, r6
	vldr s2, [r3, #0]
	add r6, r6, #1
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r0, r4
	vmov s1, r4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label274
	add r3, r3, #4
	b label32
.p2align 4
label635:
	movw r8, #34464
	movt r8, #1
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label877
.p2align 4
label67:
	add r0, r2, #1
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	bge label68
	add r6, r8, #4
	cmp r6, r3
	bge label72
	add r3, r2, #2
	add r4, r2, #3
	add r5, r2, #4
	b label74
.p2align 4
label619:
	mov r8, r6
	mov r6, r7
.p2align 4
label74:
	add r7, r2, r8
	add r9, r0, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r7, r7, r9
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r7, r10
	add r10, r3, r8
	vmov s1, r7
	mul r9, r9, r10
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	add r7, r7, r8, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r7, #0]
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	add r9, r9, r11
	vdiv.f32 s1, s2, s1
	add r11, r8, #3
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r4, r8
	add r8, r5, r8
	mul r10, r10, r9
	mul r8, r9, r8
	add r10, r10, r10, lsr #31
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	add r10, r10, r11
	vldr s2, [r7, #8]
	add r8, r6, r8
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #12]
	add r7, r6, #4
	vadd.f32 s0, s0, s1
	vmov s1, r8
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label619
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r4, r6
	add r3, r7, r6, lsl #2
.p2align 4
label79:
	add r5, r2, r4
	add r6, r0, r4
	vldr s2, [r3, #0]
	add r4, r4, #1
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r5, r4
	vmov s1, r5
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label635
	add r3, r3, #4
	b label79
.p2align 4
label31:
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	mov r6, r7
	add r3, r8, r7, lsl #2
	b label32
.p2align 4
label72:
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r4, r8
	add r3, r7, r8, lsl #2
	b label79
.p2align 4
label27:
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label26
	mov r8, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r2, r8
	vmov s0, r8
	mov r1, r4
	cmp r8, r0
	blt label67
label49:
	ldr r0, [sp, #0]
	add r0, r0, #1
	cmp r0, #1000
	blt label336
label50:
	mov r0, #76
	bl _sysy_stoptime
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r1, #0
	mov r0, r4
	vmov s0, r1
.p2align 4
label51:
	vldr s1, [r0, #0]
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	add r2, r8, r1, lsl #2
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
	bge label438
	add r0, r0, #64
	b label51
label438:
	mov r0, #0
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	vmov s1, r0
.p2align 4
label57:
	vldr s2, [r8, #0]
	add r0, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label62
	add r8, r8, #64
	b label57
.p2align 4
label68:
	vstr s0, [r1, #0]
	mov r2, r0
	add r1, r1, #4
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label67
	ldr r0, [sp, #0]
	add r0, r0, #1
	cmp r0, #1000
	blt label336
	b label50
.p2align 4
label877:
	ldr r0, [sp, #0]
	add r0, r0, #1
	cmp r0, #1000
	bge label50
.p2align 4
label336:
	str r0, [sp, #0]
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r0, #0
	mov r1, r7
	mov r2, r0
	vmov s0, r0
	mov r7, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label102
	mov r0, #0
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	mov r2, r0
	vmov s0, r0
	mov r1, r8
	mov r8, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label84
label20:
	mov r0, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r0
	vmov s0, r0
	mov r1, r7
	mov r7, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label26
	b label247
.p2align 4
label875:
	mov r8, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	movw r0, #34464
	movt r0, #1
	mov r2, r8
	vmov s0, r8
	mov r1, r4
	cmp r8, r0
	blt label67
	ldr r0, [sp, #0]
	add r0, r0, #1
	cmp r0, #1000
	blt label336
	b label50
.p2align 4
label881:
	mov r0, #0
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	mov r2, r0
	vmov s0, r0
	mov r1, r8
	mov r8, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label84
	mov r0, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r0
	vmov s0, r0
	mov r1, r7
	mov r7, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label26
	b label247
.p2align 4
label879:
	mov r0, #0
	movw r7, #:lower16:Vectortm
	movt r7, #:upper16:Vectortm
	mov r2, r0
	vmov s0, r0
	mov r1, r7
	mov r7, r0
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	blt label26
	mov r8, #0
	movw r4, #:lower16:vectorA
	movt r4, #:upper16:vectorA
	mov r2, r8
	vmov s0, r8
	mov r1, r4
	cmp r8, r0
	blt label67
	b label49
label62:
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
	beq label524
	mov r0, #1065353216
	vmov s1, r0
.p2align 4
label63:
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
	bne label63
label65:
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
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label524:
	mov r0, #1065353216
	vmov s1, r0
	b label65
