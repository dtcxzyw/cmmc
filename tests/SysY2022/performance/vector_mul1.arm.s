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
	mov r1, #0
	movw r0, #:lower16:Vectortm
	movw r8, #:lower16:vectorA
	movt r0, #:upper16:Vectortm
	movt r8, #:upper16:vectorA
	str r8, [sp, #4]
	movw r8, #:lower16:vectorB
	movt r8, #:upper16:vectorB
	str r8, [sp, #0]
label2:
	ldr r8, [sp, #4]
	mov r3, #1065353216
	vmov s0, r3
	add r2, r8, r1, lsl #2
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
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	bge label212
	add r4, r7, #3
	add r5, r7, #2
	add r2, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label31
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label212:
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	bge label438
	add r4, r7, #3
	add r5, r7, #2
	add r2, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label57
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label41
	b label40
label15:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label18
label30:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
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
	bge label18
	b label30
label57:
	ldr r8, [sp, #0]
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label438
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label57
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label41
	b label40
label18:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label279
	b label21
label279:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label327
	b label29
label327:
	mov r4, r6
label25:
	add r5, r3, r4
	add r6, r2, r4
	ldr r8, [sp, #4]
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	add r5, r8, r4, lsl #2
	add r4, r4, #1
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label28
	b label25
label29:
	add r8, r3, r6
	add r9, r2, r6
	add r10, r2, r6
	mul r8, r8, r9
	add r9, r6, #1
	add r9, r2, r9
	add r8, r8, r8, lsr #31
	mul r9, r9, r10
	asr r8, r8, #1
	add r10, r5, r6
	add r8, r2, r8
	add r9, r9, r9, lsr #31
	vmov s1, r8
	ldr r8, [sp, #4]
	asr r9, r9, #1
	add r9, r2, r9
	add r8, r8, r6, lsl #2
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
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
	vldr s2, [r8, #12]
	add r6, r2, r6
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
	bge label327
	b label29
label14:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
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
	bge label15
	b label14
label88:
	add r1, r1, #1
	cmp r1, #1000
	bge label89
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	bge label212
	add r4, r7, #3
	add r5, r7, #2
	add r2, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label31
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
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
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	bge label97
	b label125
label28:
	add r3, r0, r3, lsl #2
	mov r7, r4
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
	cmp r7, r6
	bge label31
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
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
	cmp r7, r6
	bge label31
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label21:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
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
	bge label279
	b label21
label40:
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
	bge label41
	b label40
label438:
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	bge label662
	add r4, r7, #3
	add r5, r7, #2
	add r2, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label63
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label67
	b label83
label41:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label45
label44:
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
	bge label45
	b label44
label45:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label49
label48:
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
	bge label49
	b label48
label49:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label594
	b label56
label662:
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	bge label88
	add r4, r7, #3
	add r5, r7, #2
	add r2, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label147
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label131
	b label130
label83:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
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
	bge label67
	b label83
label130:
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
	bge label131
	b label130
label594:
	mov r4, r7
label52:
	add r5, r3, r4
	add r6, r2, r4
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r6, r5, #1
	add r5, r4, #1
	add r4, r0, r4, lsl #2
	add r6, r6, r5
	vmov s1, r6
	vldr s2, [r4, #0]
	movw r4, #34464
	movt r4, #1
	cmp r5, r4
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label55
	mov r4, r5
	b label52
label67:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label70
	b label82
label70:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label688
	b label73
label688:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label736
	b label81
label736:
	mov r4, r6
label77:
	add r5, r3, r4
	add r6, r2, r4
	ldr r8, [sp, #0]
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	add r5, r8, r4, lsl #2
	add r4, r4, #1
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label80
	b label77
label55:
	ldr r8, [sp, #0]
	mov r7, r5
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label438
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label57
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label41
	b label40
label56:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r2, r7
	mul r8, r8, r9
	add r9, r7, #1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r9
	add r9, r2, r9
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
	bge label594
	b label56
label147:
	ldr r8, [sp, #4]
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label88
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label147
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label131
	b label130
label131:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label135
	b label134
label144:
	ldr r8, [sp, #4]
	mov r7, r5
	add r3, r8, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label88
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label147
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label131
	b label130
label134:
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
	bge label135
	b label134
label135:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label138
label146:
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
	bge label138
	b label146
label138:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label1235
	b label145
label1235:
	mov r4, r7
	b label141
label145:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r2, r7
	mul r8, r8, r9
	add r9, r7, #1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r8, r9
	add r9, r2, r9
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
	bge label1235
	b label145
label141:
	add r5, r3, r4
	add r6, r2, r4
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r6, r5, #1
	add r5, r4, #1
	add r4, r0, r4, lsl #2
	add r6, r6, r5
	vmov s1, r6
	vldr s2, [r4, #0]
	movw r4, #34464
	movt r4, #1
	cmp r5, r4
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label144
	mov r4, r5
	b label141
label73:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
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
	bge label688
	b label73
label82:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
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
	bge label70
	b label82
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
	cmp r7, r6
	bge label63
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label67
	b label83
label81:
	add r8, r3, r6
	add r9, r2, r6
	add r10, r2, r6
	mul r8, r8, r9
	add r9, r6, #1
	add r9, r2, r9
	add r8, r8, r8, lsr #31
	mul r9, r9, r10
	asr r8, r8, #1
	add r10, r5, r6
	add r8, r2, r8
	add r9, r9, r9, lsr #31
	vmov s1, r8
	ldr r8, [sp, #0]
	asr r9, r9, #1
	add r9, r2, r9
	add r8, r8, r6, lsl #2
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
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
	vldr s2, [r8, #12]
	add r6, r2, r6
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
	bge label736
	b label81
label80:
	add r3, r0, r3, lsl #2
	mov r7, r4
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
	cmp r7, r6
	bge label63
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label67
	b label83
label97:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label936
	b label124
label936:
	mov r0, r1
	b label100
label124:
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	bge label936
	b label124
label100:
	ldr r8, [sp, #4]
	add r1, r8, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label949
	b label100
label949:
	mov r1, #0
	vmov s1, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label106
	b label123
label106:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label961
	b label109
label961:
	mov r0, r1
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label114
	b label113
label114:
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
label1627:
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label117
	b label1627
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
	beq label1024
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label118
label1024:
	mov r0, #1065353216
	vmov s1, r0
	b label121
label118:
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
	beq label121
	b label118
label125:
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	bge label97
	b label125
label123:
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	bge label106
	b label123
label113:
	ldr r8, [sp, #0]
	add r0, r8, r0, lsl #2
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
	b label113
label109:
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	bge label961
	b label109
label121:
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
