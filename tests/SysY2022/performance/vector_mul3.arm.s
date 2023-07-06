.arch armv7ve
.data
.bss
.align 4
Vectortm:
	.zero	400000
.align 4
vectorB:
	.zero	400000
.align 4
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #12
	bl _sysy_starttime
	movw r0, #:lower16:Vectortm
	mov r1, #0
	movw r7, #:lower16:vectorA
	movt r0, #:upper16:Vectortm
	movt r7, #:upper16:vectorA
	str r7, [sp, #4]
	movw r7, #:lower16:vectorB
	movt r7, #:upper16:vectorB
	str r7, [sp, #0]
label2:
	ldr r7, [sp, #4]
	mov r3, #1065353216
	vmov s0, r3
	add r2, r7, r1, lsl #2
	add r1, r1, #16
	vstr s0, [r2, #0]
	vstr s0, [r2, #4]
	vstr s0, [r2, #8]
	vstr s0, [r2, #12]
	vstr s0, [r2, #16]
	vstr s0, [r2, #20]
	vstr s0, [r2, #24]
	vstr s0, [r2, #28]
	vstr s0, [r2, #32]
	vstr s0, [r2, #36]
	vstr s0, [r2, #40]
	vstr s0, [r2, #44]
	vstr s0, [r2, #48]
	vstr s0, [r2, #52]
	vstr s0, [r2, #56]
	vstr s0, [r2, #60]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label206
	b label2
label206:
	mov r1, #0
	mov r8, #0
	mov r3, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	bge label212
	add r4, r8, #3
	add r5, r8, #2
	add r2, r8, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label31
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label15
	b label14
label212:
	mov r6, #0
	mov r3, r6
	vmov s0, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	bge label438
	add r4, r6, #3
	add r5, r6, #2
	add r2, r6, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label37
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label42
	b label41
label14:
	add r7, r3, r8
	add r9, r2, r8
	add r10, r8, #1
	mul r7, r7, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r7, r7, r7, lsr #31
	add r10, r5, r8
	add r9, r9, r9, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	asr r9, r9, #1
	vmov s1, r7
	add r9, r2, r9
	ldr r7, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r7, r7, r8, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #3
	add r8, r4, r8
	add r9, r2, r9
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r7, #12]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label15
	b label14
label15:
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label18
	b label30
label31:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label212
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label31
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label15
	b label14
label18:
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label279
	b label21
label279:
	mov r6, r8
	add r8, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label327
label25:
	add r7, r3, r6
	add r9, r2, r6
	add r10, r2, r6
	mul r7, r7, r9
	add r9, r6, #1
	add r9, r2, r9
	add r7, r7, r7, lsr #31
	mul r9, r9, r10
	asr r7, r7, #1
	add r10, r5, r6
	add r7, r2, r7
	add r9, r9, r9, lsr #31
	vmov s1, r7
	ldr r7, [sp, #4]
	asr r9, r9, #1
	add r9, r2, r9
	add r7, r7, r6, lsl #2
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, #3
	add r6, r4, r6
	add r9, r2, r9
	mul r6, r9, r6
	vcvt.f32.s32 s1, s1
	add r6, r6, r6, lsr #31
	vdiv.f32 s1, s2, s1
	asr r6, r6, #1
	vldr s2, [r7, #12]
	add r6, r2, r6
	vadd.f32 s0, s0, s1
	vmov s1, r6
	mov r6, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label327
	b label25
label30:
	add r7, r3, r8
	add r9, r2, r8
	add r10, r8, #1
	mul r7, r7, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r7, r7, r7, lsr #31
	add r10, r5, r8
	add r9, r9, r9, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	asr r9, r9, #1
	vmov s1, r7
	add r9, r2, r9
	ldr r7, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r7, r7, r8, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #3
	add r8, r4, r8
	add r9, r2, r9
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r7, #12]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label18
	b label30
label438:
	mov r8, #0
	mov r3, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	bge label662
	add r4, r8, #3
	add r5, r8, #2
	add r2, r8, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label63
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label67
	b label83
label662:
	mov r6, #0
	mov r3, r6
	vmov s0, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	bge label88
	add r4, r6, #3
	add r5, r6, #2
	add r2, r6, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label127
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label132
	b label131
label88:
	add r1, r1, #1
	cmp r1, #1000
	bge label89
	mov r8, #0
	mov r3, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	bge label212
	add r4, r8, #3
	add r5, r8, #2
	add r2, r8, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label31
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label15
	b label14
label89:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label94
label93:
	ldr r7, [sp, #4]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label94
	b label93
label94:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label98
	b label97
label98:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label962
	b label125
label962:
	mov r0, r1
label101:
	ldr r7, [sp, #4]
	add r1, r7, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r7, [sp, #0]
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label975
	b label101
label975:
	mov r1, #0
	vmov s1, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label107
label124:
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label107
	b label124
label127:
	ldr r7, [sp, #4]
	add r3, r7, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label88
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label127
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label132
	b label131
label142:
	add r4, r3, r6
	add r5, r2, r6
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r5, r4, #1
	add r4, r6, #1
	add r5, r5, r4
	vmov s1, r5
	add r5, r0, r6, lsl #2
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label145
	mov r6, r4
	b label142
label145:
	ldr r7, [sp, #4]
	mov r6, r4
	add r3, r7, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label88
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label127
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label132
	b label131
label132:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label136
	b label135
label136:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label1232
	b label147
label1232:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label142
label146:
	add r8, r3, r6
	add r9, r2, r6
	add r10, r2, r6
	mul r8, r8, r9
	add r9, r6, #1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r9
	add r9, r2, r9
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r6, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r10, r9, #1
	add r9, r6, #2
	vdiv.f32 s1, s2, s1
	add r10, r10, r9
	vldr s2, [r8, #4]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r6
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r6, #3
	vldr s2, [r8, #8]
	add r6, r4, r6
	add r10, r10, r9
	add r9, r2, r9
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r6
	mov r6, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label142
	b label146
label67:
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label70
	b label82
label70:
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label688
	b label81
label688:
	mov r6, r8
	add r8, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label693
	b label80
label693:
	mov r4, r6
	b label76
label80:
	add r7, r3, r6
	add r9, r2, r6
	add r10, r2, r6
	mul r7, r7, r9
	add r9, r6, #1
	add r9, r2, r9
	add r7, r7, r7, lsr #31
	mul r9, r9, r10
	asr r7, r7, #1
	add r10, r5, r6
	add r7, r2, r7
	add r9, r9, r9, lsr #31
	vmov s1, r7
	ldr r7, [sp, #0]
	asr r9, r9, #1
	add r9, r2, r9
	add r7, r7, r6, lsl #2
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, #3
	add r6, r4, r6
	add r9, r2, r9
	mul r6, r9, r6
	vcvt.f32.s32 s1, s1
	add r6, r6, r6, lsr #31
	vdiv.f32 s1, s2, s1
	asr r6, r6, #1
	vldr s2, [r7, #12]
	add r6, r2, r6
	vadd.f32 s0, s0, s1
	vmov s1, r6
	mov r6, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label693
	b label80
label76:
	add r5, r3, r4
	add r6, r2, r4
	ldr r7, [sp, #0]
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	add r5, r7, r4, lsl #2
	add r4, r4, #1
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label79
	b label76
label327:
	mov r4, r6
label26:
	add r5, r3, r4
	add r6, r2, r4
	ldr r7, [sp, #4]
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	add r5, r7, r4, lsl #2
	add r4, r4, #1
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label29
	b label26
label29:
	add r3, r0, r3, lsl #2
	mov r8, r4
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label212
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label31
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label15
	b label14
label21:
	add r7, r3, r8
	add r9, r2, r8
	add r10, r8, #1
	mul r7, r7, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r7, r7, r7, lsr #31
	add r10, r5, r8
	add r9, r9, r9, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	asr r9, r9, #1
	vmov s1, r7
	add r9, r2, r9
	ldr r7, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r7, r7, r8, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #3
	add r8, r4, r8
	add r9, r2, r9
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r7, #12]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label279
	b label21
label37:
	ldr r7, [sp, #0]
	add r3, r7, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label438
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label37
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label42
	b label41
label42:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label46
label45:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r10
	add r10, r2, r10
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r7, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r10, r9, #1
	add r9, r7, #2
	vdiv.f32 s1, s2, s1
	add r10, r10, r9
	vldr s2, [r8, #4]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r7, #3
	vldr s2, [r8, #8]
	add r7, r4, r7
	add r10, r10, r9
	add r9, r2, r9
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label46
	b label45
label46:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label548
	b label49
label41:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	add r11, r7, #2
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r10
	add r10, r5, r7
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r7, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	add r9, r9, r11
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r4, r7
	add r7, r7, #3
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r7, r10, r7
	vldr s2, [r8, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	add r7, r3, r6
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	vdiv.f32 s1, s2, s1
	add r7, r6, r7
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label42
	b label41
label548:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label53
label57:
	add r8, r3, r6
	add r9, r2, r6
	add r10, r2, r6
	mul r8, r8, r9
	add r9, r6, #1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r9
	add r9, r2, r9
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r6, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r10, r9, #1
	add r9, r6, #2
	vdiv.f32 s1, s2, s1
	add r10, r10, r9
	vldr s2, [r8, #4]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r6
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r6, #3
	vldr s2, [r8, #8]
	add r6, r4, r6
	add r10, r10, r9
	add r9, r2, r9
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r6
	mov r6, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label53
	b label57
label53:
	add r4, r3, r6
	add r5, r2, r6
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r5, r4, #1
	add r4, r6, #1
	add r5, r5, r4
	vmov s1, r5
	add r5, r0, r6, lsl #2
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label56
	mov r6, r4
	b label53
label56:
	ldr r7, [sp, #0]
	mov r6, r4
	add r3, r7, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label438
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label37
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label42
	b label41
label49:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r10
	add r10, r2, r10
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r7, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r10, r9, #1
	add r9, r7, #2
	vdiv.f32 s1, s2, s1
	add r10, r10, r9
	vldr s2, [r8, #4]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r7, #3
	vldr s2, [r8, #8]
	add r7, r4, r7
	add r10, r10, r9
	add r9, r2, r9
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label548
	b label49
label135:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r10
	add r10, r2, r10
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r7, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r10, r9, #1
	add r9, r7, #2
	vdiv.f32 s1, s2, s1
	add r10, r10, r9
	vldr s2, [r8, #4]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r7, #3
	vldr s2, [r8, #8]
	add r7, r4, r7
	add r10, r10, r9
	add r9, r2, r9
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label136
	b label135
label131:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	add r11, r7, #2
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r10
	add r10, r5, r7
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r7, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	add r9, r9, r11
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r4, r7
	add r7, r7, #3
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r7, r10, r7
	vldr s2, [r8, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	add r7, r3, r6
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	vdiv.f32 s1, s2, s1
	add r7, r6, r7
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label132
	b label131
label147:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r10
	add r10, r2, r10
	vmov s1, r8
	mul r9, r9, r10
	add r8, r0, r7, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r8, #0]
	vcvt.f32.s32 s1, s1
	asr r10, r9, #1
	add r9, r7, #2
	vdiv.f32 s1, s2, s1
	add r10, r10, r9
	vldr s2, [r8, #4]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r7
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r7, #3
	vldr s2, [r8, #8]
	add r7, r4, r7
	add r10, r10, r9
	add r9, r2, r9
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vadd.f32 s0, s0, s1
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label1232
	b label147
label82:
	add r7, r3, r8
	add r9, r2, r8
	add r10, r8, #1
	mul r7, r7, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r7, r7, r7, lsr #31
	add r10, r5, r8
	add r9, r9, r9, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	asr r9, r9, #1
	vmov s1, r7
	add r9, r2, r9
	ldr r7, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r7, r7, r8, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #3
	add r8, r4, r8
	add r9, r2, r9
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r7, #12]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label70
	b label82
label79:
	add r3, r0, r3, lsl #2
	mov r8, r4
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label662
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label63
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label67
label83:
	add r7, r3, r8
	add r9, r2, r8
	add r10, r8, #1
	mul r7, r7, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r7, r7, r7, lsr #31
	add r10, r5, r8
	add r9, r9, r9, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	asr r9, r9, #1
	vmov s1, r7
	add r9, r2, r9
	ldr r7, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r7, r7, r8, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #3
	add r8, r4, r8
	add r9, r2, r9
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r7, #12]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label67
	b label83
label81:
	add r7, r3, r8
	add r9, r2, r8
	add r10, r8, #1
	mul r7, r7, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r7, r7, r7, lsr #31
	add r10, r5, r8
	add r9, r9, r9, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	asr r9, r9, #1
	vmov s1, r7
	add r9, r2, r9
	ldr r7, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r7, r7, r8, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r7, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r8, #3
	add r8, r4, r8
	add r9, r2, r9
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r7, #12]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label688
	b label81
label63:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label662
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r8, r6
	bge label63
	add r6, r8, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label67
	b label83
label107:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label987
	b label110
label987:
	mov r0, r1
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label114
	b label123
label110:
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label987
	b label110
label123:
	ldr r7, [sp, #0]
	add r0, r7, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	mov r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label114
	b label123
label114:
	ldr r7, [sp, #0]
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	b label1612
label117:
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	movw r1, #14269
	vmov s1, r0
	movt r1, #46470
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
	beq label1033
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label120
label1033:
	mov r0, #1065353216
	vmov s1, r0
label118:
	mov r0, #1065353216
	movw r1, #14269
	vmov s0, r0
	movt r1, #46470
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
label1612:
	ldr r7, [sp, #0]
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	b label1612
label120:
	vadd.f32 s1, s1, s2
	mov r0, #1056964608
	movw r1, #14269
	vmov s2, r0
	movt r1, #46470
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	mov r0, #0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s3, s1, s2
	vcmp.f32 s3, s4
	vmov s4, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label118
	b label120
label125:
	ldr r7, [sp, #4]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label962
	b label125
label97:
	ldr r7, [sp, #4]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label98
	b label97
