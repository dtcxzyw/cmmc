.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r12, #20364
	movt r12, #18
	sub sp, sp, r12
	mov r4, sp
	movw r12, #6784
	movt r12, #6
	add r8, sp, r12
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	str r8, [r12, #0]
	movw r12, #13568
	movt r12, #12
	add r8, sp, r12
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	str r8, [r12, #0]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	mov r2, #1065353216
	vmov s0, r2
	vstr s0, [r1, #0]
	vstr s0, [r1, #4]
	vstr s0, [r1, #8]
	vstr s0, [r1, #12]
	vstr s0, [r1, #16]
	vstr s0, [r1, #20]
	vstr s0, [r1, #24]
	vstr s0, [r1, #28]
	vstr s0, [r1, #32]
	vstr s0, [r1, #36]
	vstr s0, [r1, #40]
	vstr s0, [r1, #44]
	vstr s0, [r1, #48]
	vstr s0, [r1, #52]
	vstr s0, [r1, #56]
	vstr s0, [r1, #60]
	add r0, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label210
	b label2
label210:
	mov r0, #0
	mov r7, #0
	vmov s0, r7
	mov r2, r7
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	bge label216
	add r3, r7, #3
	add r5, r7, #2
	add r1, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label30
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label216:
	mov r7, #0
	vmov s0, r7
	mov r2, r7
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	bge label440
	add r3, r7, #3
	add r5, r7, #2
	add r1, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label130
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label137
	b label136
label14:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label15:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label18
	b label29
label30:
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label216
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label30
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label440:
	mov r7, #0
	vmov s0, r7
	mov r2, r7
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	bge label446
	add r3, r7, #3
	add r5, r7, #2
	add r1, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label107
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label113
	b label128
label446:
	mov r7, #0
	vmov s0, r7
	mov r2, r7
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	bge label45
	add r3, r7, #3
	add r5, r7, #2
	add r1, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label84
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label91
	b label90
label45:
	add r0, r0, #1
	cmp r0, #1000
	bge label46
	mov r7, #0
	vmov s0, r7
	mov r2, r7
	movw r1, #34464
	movt r1, #1
	cmp r7, r1
	bge label216
	add r3, r7, #3
	add r5, r7, #2
	add r1, r7, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label30
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label46:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label51
	b label50
label51:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label55
	b label54
label128:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label113
	b label128
label18:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label283
	b label28
label283:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label288
	b label24
label288:
	mov r3, r6
	b label25
label24:
	add r8, r2, r6
	add r9, r1, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #1
	add r9, r1, r9
	add r10, r1, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #2
	add r9, r1, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #3
	add r9, r1, r9
	add r6, r3, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label288
	b label24
label25:
	add r5, r2, r3
	add r6, r1, r3
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r5, r8, r3, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r3, #1
	movw r5, #34464
	movt r5, #1
	cmp r3, r5
	bge label348
	b label25
label348:
	mov r7, r3
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label216
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label30
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label15
	b label14
label90:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r11, r7, #2
	add r9, r9, r11
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r3, r7
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r7, r7, #3
	add r7, r10, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r2, r6
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label91
	b label90
label101:
	add r3, r2, r6
	add r5, r1, r6
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	add r3, r6, #1
	add r5, r5, r3
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	add r5, r4, r6, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r5, #34464
	movt r5, #1
	cmp r3, r5
	bge label818
	mov r6, r3
	b label101
label818:
	mov r7, r3
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label45
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label84
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label91
	b label90
label113:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label117
	b label116
label117:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label971
label120:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label971
	b label120
label136:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r11, r7, #2
	add r9, r9, r11
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r3, r7
	mul r10, r10, r9
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r7, r7, #3
	add r7, r10, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r2, r6
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label137
	b label136
label29:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label18
	b label29
label28:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label283
	b label28
label130:
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label440
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label130
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label137
	b label136
label137:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label141
	b label140
label141:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label1230
	b label144
label1230:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label149
	b label148
label144:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label1230
	b label144
label148:
	add r8, r2, r6
	add r9, r1, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #1
	add r8, r8, r9
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r1, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r6, r3, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label149
	b label148
label149:
	add r3, r2, r6
	add r5, r1, r6
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	add r3, r6, #1
	add r5, r5, r3
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	add r5, r4, r6, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r5, #34464
	movt r5, #1
	cmp r3, r5
	bge label1338
	mov r6, r3
	b label149
label1338:
	mov r7, r3
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label440
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label130
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label137
	b label136
label140:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label141
	b label140
label116:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r7, #1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #2
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, #3
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label117
	b label116
label971:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label1019
	b label127
label1019:
	mov r3, r6
label124:
	add r5, r2, r3
	add r6, r1, r3
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r5, r8, r3, lsl #2
	vldr s2, [r5, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r3, #1
	movw r5, #34464
	movt r5, #1
	cmp r3, r5
	bge label1035
	b label124
label1035:
	mov r7, r3
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label446
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label107
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label113
	b label128
label127:
	add r8, r2, r6
	add r9, r1, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r8, r8, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #1
	add r9, r1, r9
	add r10, r1, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #2
	add r9, r1, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r9, r1, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, #3
	add r9, r1, r9
	add r6, r3, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label1019
	b label127
label107:
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label446
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label107
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label113
	b label128
label91:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label94
label105:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label94
	b label105
label94:
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label753
	b label104
label753:
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label101
	b label100
label104:
	add r8, r2, r7
	add r9, r1, r7
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #1
	add r8, r8, r10
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r10, r1, r10
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r5, r7
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r7, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r7, r3, r7
	mul r7, r9, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label753
	b label104
label84:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label45
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label84
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label91
	b label90
label100:
	add r8, r2, r6
	add r9, r1, r6
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #1
	add r8, r8, r9
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	add r8, r4, r6, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r1, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #2
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r10, r5, r6
	mul r9, r9, r10
	add r9, r9, r9, lsr #31
	asr r10, r9, #1
	add r9, r6, #3
	add r10, r10, r9
	vmov s1, r10
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r1, r9
	add r6, r3, r6
	mul r6, r9, r6
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r8, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	add r7, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	bge label101
	b label100
label55:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label526
label82:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
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
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label526
	b label82
label54:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
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
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label55
	b label54
label50:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
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
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label51
	b label50
label526:
	mov r0, r1
label58:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s1, [r1, #0]
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label539
	b label58
label539:
	mov r1, #0
	vmov s1, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label65
	b label64
label65:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label568
	b label81
label568:
	mov r0, r1
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label71
label80:
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
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
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r0, r1
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label71
	b label80
label81:
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
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
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label568
	b label81
label71:
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
label1602:
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
	add r1, r8, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	b label1602
label74:
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s1, s1, s0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwgt r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s2, r1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwmi r1, #1
	orr r0, r0, r1
	cmp r0, #0
	beq label597
	mov r0, #1065353216
	vmov s1, r0
	vmov.f32 s2, s0
	b label75
label597:
	mov r0, #1065353216
	vmov s1, r0
	b label78
label75:
	vadd.f32 s1, s1, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s3, s1, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwgt r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s4, r1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwmi r1, #1
	orr r0, r0, r1
	cmp r0, #0
	beq label78
	b label75
label64:
	movw r12, #20352
	movt r12, #18
	add r12, sp, r12
	ldr r8, [r12, #0]
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
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label65
	b label64
label78:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s0, s1, s0
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwls r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwge r1, #1
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20364
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
