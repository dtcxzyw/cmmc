.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r12, #20372
	movt r12, #18
	sub sp, sp, r12
	mov r4, sp
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #6788
	movt r12, #6
	add r7, sp, r12
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	str r7, [r12, #0]
	movw r12, #13572
	movt r12, #12
	add r7, sp, r12
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	str r7, [r12, #0]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
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
	mov r6, #0
	vmov s0, r6
	mov r2, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	bge label216
	add r3, r6, #3
	add r4, r6, #2
	add r1, r6, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label30
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
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
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label1129
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label136
	b label151
label15:
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label19
	b label18
label19:
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label326
	b label29
label326:
	mov r5, r6
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label331
	b label25
label331:
	mov r3, r5
	b label26
label25:
	add r7, r5, #1
	add r7, r7, r1
	add r8, r1, r5
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r5, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	add r8, r2, r5
	add r9, r5, r1
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r5, #2
	add r8, r8, r1
	add r9, r4, r5
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r5, #3
	add r8, r8, r1
	add r5, r3, r5
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r5, r6
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label331
	b label25
label29:
	add r7, r6, #1
	add r7, r7, r1
	add r8, r6, r1
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r6, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	add r9, r2, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r6, #2
	add r8, r8, r1
	add r9, r6, r4
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, #3
	add r8, r8, r1
	add r6, r6, r3
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r5
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label326
	b label29
label26:
	add r4, r2, r3
	add r5, r1, r3
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r1, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r4, r7, r3, lsl #2
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label391
	b label26
label391:
	mov r6, r3
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label216
	add r3, r2, #3
	add r4, r2, #2
	add r1, r2, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label30
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label14
label136:
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label139
	b label150
label139:
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label1146
	b label149
label1146:
	mov r6, r7
	add r7, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label1151
	b label145
label1151:
	mov r5, r6
label146:
	add r3, r2, r5
	add r4, r1, r5
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	add r3, r5, #1
	add r4, r3, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r5, lsl #2
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label130
	mov r5, r3
	b label146
label149:
	add r8, r7, #1
	add r4, r8, r1
	add r10, r7, r1
	mul r4, r10, r4
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r9, r7, #2
	add r4, r9, r4
	vmov s1, r4
	vcvt.f32.s32 s2, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r7, lsl #2
	vldr s1, [r4, #0]
	vldr s3, [r4, #4]
	vdiv.f32 s2, s3, s2
	add r11, r2, r7
	mul r10, r11, r10
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r8, r8, r10
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r9, r1
	add r9, r7, r5
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	add r8, r7, #3
	add r9, r8, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r7, r7, r3
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label1146
	b label149
label145:
	add r8, r6, #1
	add r4, r8, r1
	add r9, r1, r6
	mul r4, r9, r4
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r9, r6, #2
	add r4, r9, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r6, lsl #2
	vldr s2, [r4, #0]
	vldr s3, [r4, #4]
	vdiv.f32 s1, s3, s1
	add r10, r2, r6
	add r11, r6, r1
	mul r10, r10, r11
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r8, r8, r10
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r9, r1
	add r9, r5, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	add r8, r6, #3
	add r9, r8, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r6, r3, r6
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	add r7, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label1151
	b label145
label14:
	add r7, r6, #1
	add r7, r7, r1
	add r8, r6, r1
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s2, s1
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r6, lsl #2
	vldr s1, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s2, s3, s2
	add r9, r2, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r6, #2
	add r8, r8, r1
	add r9, r6, r4
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, #3
	add r8, r8, r1
	add r6, r6, r3
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r5
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label14
label30:
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label216
	add r3, r2, #3
	add r4, r2, #2
	add r1, r2, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label30
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label14
label18:
	add r7, r6, #1
	add r7, r7, r1
	add r8, r6, r1
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r6, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	add r9, r2, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r6, #2
	add r8, r8, r1
	add r9, r6, r4
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, #3
	add r8, r8, r1
	add r6, r6, r3
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r5
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label19
	b label18
label151:
	add r4, r2, r7
	add r8, r7, r1
	mul r4, r4, r8
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r9, r7, #1
	add r4, r9, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r7, lsl #2
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, r5
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #2
	add r8, r10, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r7, r3
	mul r9, r9, r8
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r7, r7, #3
	add r7, r7, r9
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r2, r6
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label136
	b label151
label440:
	mov r6, #0
	vmov s0, r6
	mov r2, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	bge label446
	add r3, r6, #3
	add r4, r6, #2
	add r1, r6, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label107
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label114
	b label113
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
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label695
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label91
	b label90
label45:
	add r0, r0, #1
	cmp r0, #1000
	bge label46
	mov r6, #0
	vmov s0, r6
	mov r2, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	bge label216
	add r3, r6, #3
	add r4, r6, #2
	add r1, r6, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label30
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
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
	bge label54
	b label82
label91:
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label94
	b label105
label1129:
	mov r3, r7
label130:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r2, r7, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	mov r7, r3
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label440
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label1129
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label136
	b label151
label94:
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label753
	b label104
label753:
	mov r6, r7
	add r7, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label758
	b label100
label758:
	mov r5, r6
label101:
	add r3, r2, r5
	add r4, r1, r5
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	add r3, r5, #1
	add r4, r3, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r5, lsl #2
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label84
	mov r5, r3
	b label101
label150:
	add r8, r7, #1
	add r4, r8, r1
	add r10, r7, r1
	mul r4, r10, r4
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r9, r7, #2
	add r4, r9, r4
	vmov s1, r4
	vcvt.f32.s32 s2, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r7, lsl #2
	vldr s1, [r4, #0]
	vldr s3, [r4, #4]
	vdiv.f32 s2, s3, s2
	add r11, r2, r7
	mul r10, r11, r10
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r8, r8, r10
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r9, r1
	add r9, r7, r5
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	add r8, r7, #3
	add r9, r8, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r7, r7, r3
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label139
	b label150
label107:
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label446
	add r3, r2, #3
	add r4, r2, #2
	add r1, r2, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label107
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label114
label113:
	add r7, r6, #1
	add r7, r7, r1
	add r8, r6, r1
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r6, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	add r9, r2, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r6, #2
	add r8, r8, r1
	add r9, r6, r4
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, #3
	add r8, r8, r1
	add r6, r6, r3
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r5
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label114
	b label113
label114:
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label118
	b label117
label118:
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label1014
	b label121
label1014:
	mov r5, r6
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label1062
	b label128
label121:
	add r7, r6, #1
	add r7, r7, r1
	add r8, r6, r1
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s2, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r6, lsl #2
	vldr s1, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s2, s3, s2
	add r9, r2, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r6, #2
	add r8, r8, r1
	add r9, r6, r4
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, #3
	add r8, r8, r1
	add r6, r6, r3
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r5
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label1014
	b label121
label117:
	add r7, r6, #1
	add r7, r7, r1
	add r8, r6, r1
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r6, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	add r9, r2, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r6, #2
	add r8, r8, r1
	add r9, r6, r4
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, #3
	add r8, r8, r1
	add r6, r6, r3
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r1, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r5
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label118
	b label117
label128:
	add r7, r5, #1
	add r7, r7, r1
	add r8, r1, r5
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r1, r7
	vmov s1, r7
	vcvt.f32.s32 s2, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r7, r7, r5, lsl #2
	vldr s1, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s2, s3, s2
	add r8, r2, r5
	add r9, r5, r1
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r5, #2
	add r8, r8, r1
	add r9, r4, r5
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r8, r1, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r5, #3
	add r8, r8, r1
	add r5, r3, r5
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r1, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r5, r6
	add r6, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label1062
	b label128
label1062:
	mov r3, r5
label125:
	add r4, r2, r3
	add r5, r1, r3
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r1, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r4, r7, r3, lsl #2
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r3, r3, #1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label1078
	b label125
label1078:
	mov r6, r3
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label446
	add r3, r2, #3
	add r4, r2, #2
	add r1, r2, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label107
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label114
	b label113
label105:
	add r8, r7, #1
	add r4, r8, r1
	add r10, r7, r1
	mul r4, r10, r4
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r9, r7, #2
	add r4, r9, r4
	vmov s1, r4
	vcvt.f32.s32 s2, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r7, lsl #2
	vldr s1, [r4, #0]
	vldr s3, [r4, #4]
	vdiv.f32 s2, s3, s2
	add r11, r2, r7
	mul r10, r11, r10
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r8, r8, r10
	vmov s3, r8
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r9, r1
	add r9, r7, r5
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	add r8, r7, #3
	add r9, r8, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r7, r7, r3
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label94
	b label105
label90:
	add r4, r2, r7
	add r8, r7, r1
	mul r4, r4, r8
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r9, r7, #1
	add r4, r9, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r7, lsl #2
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r7, r5
	mul r8, r8, r9
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r10, r7, #2
	add r8, r10, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r7, r3
	mul r9, r9, r8
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	add r7, r7, #3
	add r7, r7, r9
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r2, r6
	mul r7, r8, r7
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label91
	b label90
label695:
	mov r3, r7
label84:
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r2, r7, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	mov r7, r3
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label45
	add r3, r2, #3
	add r5, r2, #2
	add r1, r2, #1
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label695
	add r6, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label91
	b label90
label100:
	add r9, r6, #1
	add r4, r9, r1
	add r8, r1, r6
	mul r4, r8, r4
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r8, r6, #2
	add r4, r8, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r6, lsl #2
	vldr s2, [r4, #0]
	vldr s3, [r4, #4]
	vdiv.f32 s1, s3, s1
	add r10, r2, r6
	add r11, r6, r1
	mul r10, r10, r11
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r9, r9, r10
	vmov s3, r9
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r9, r5, r6
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	add r8, r6, #3
	add r9, r8, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r6, r3, r6
	mul r6, r6, r8
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	add r6, r7, r6
	vmov s1, r6
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r7
	add r7, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label758
	b label100
label104:
	add r9, r7, #1
	add r4, r9, r1
	add r10, r7, r1
	mul r4, r10, r4
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r8, r7, #2
	add r4, r8, r4
	vmov s1, r4
	vcvt.f32.s32 s2, s1
	movw r12, #6784
	movt r12, #6
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r4, r7, lsl #2
	vldr s1, [r4, #0]
	vldr s3, [r4, #4]
	vdiv.f32 s2, s3, s2
	add r11, r2, r7
	mul r10, r11, r10
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	add r9, r9, r10
	vmov s3, r9
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r8, r8, r1
	add r9, r7, r5
	mul r8, r9, r8
	add r8, r8, r8, lsr #31
	asr r9, r8, #1
	add r8, r7, #3
	add r9, r8, r9
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r8, r1
	add r7, r7, r3
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r6, r7
	vmov s1, r7
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r7, r6
	add r6, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label753
	b label104
label54:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label500
	b label81
label500:
	mov r0, r1
label57:
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s1, [r1, #0]
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label513
	b label57
label513:
	mov r1, #0
	vmov s1, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label63
label80:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
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
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label63
	b label80
label63:
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label525
	b label79
label525:
	mov r0, r1
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label69
label78:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
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
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r0, r1
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label69
	b label78
label79:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
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
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	mov r1, r0
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label525
	b label79
label69:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
label1600:
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label72
	b label1600
label82:
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r2, #4]
	vldr s4, [r1, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
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
	bge label54
	b label82
label50:
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r2, #4]
	vldr s4, [r1, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
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
label81:
	movw r12, #20360
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	movw r12, #20356
	movt r12, #18
	add r12, sp, r12
	ldr r7, [r12, #0]
	add r1, r7, r1, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r2, #4]
	vldr s4, [r1, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
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
	bge label500
	b label81
label72:
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
	beq label554
	mov r0, #1065353216
	vmov s1, r0
	vmov.f32 s2, s0
	b label73
label554:
	mov r0, #1065353216
	vmov s1, r0
label76:
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
	movw r12, #20372
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label73:
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
	beq label76
	b label73
