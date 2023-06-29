.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r12, #20480
	movt r12, #18
	sub sp, sp, r12
	movw r12, #13664
	movt r12, #12
	add r5, sp, r12
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	str r5, [r12, #0]
	movw r12, #6872
	movt r12, #6
	add r2, sp, r12
	str r2, [sp, #36]
	add r2, sp, #80
	str r2, [sp, #48]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	ldr r2, [sp, #48]
	add r1, r2, r0, lsl #2
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
	add r0, r0, #8
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label186
	b label2
label186:
	mov r0, #0
	str r0, [sp, #64]
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #68]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label192
	b label10
label192:
	mov r6, #0
	vmov s0, r6
	mov r5, r6
	str r6, [sp, #32]
	movw r0, #34464
	movt r0, #1
	cmp r6, r0
	bge label596
	b label37
label10:
	ldr r3, [sp, #68]
	add r3, r3, #7
	movw r12, #20476
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #68]
	add r3, r3, #6
	str r3, [sp, #20]
	ldr r3, [sp, #68]
	add r3, r3, #5
	str r3, [sp, #16]
	ldr r3, [sp, #68]
	add r3, r3, #4
	str r3, [sp, #12]
	ldr r3, [sp, #68]
	add r3, r3, #3
	str r3, [sp, #8]
	ldr r3, [sp, #68]
	add r3, r3, #2
	movw r12, #20448
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #68]
	add r3, r3, #1
	str r3, [sp, #76]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label30
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label15
label14:
	add r2, r1, #1
	ldr r3, [sp, #76]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #76]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #48]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #68]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r4, r1, #2
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20448
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #8]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #12]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #16]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #20]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20476
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #76]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label15
	b label14
label15:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label19
	b label18
label19:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label394
	b label22
label596:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label994
	b label129
label37:
	ldr r5, [sp, #32]
	add r0, r5, #7
	ldr r5, [sp, #32]
	add r1, r5, #6
	ldr r5, [sp, #32]
	add r5, r5, #5
	str r5, [sp, #52]
	ldr r5, [sp, #32]
	add r2, r5, #4
	ldr r5, [sp, #32]
	add r5, r5, #3
	str r5, [sp, #72]
	ldr r5, [sp, #32]
	add r3, r5, #2
	ldr r5, [sp, #32]
	add r5, r5, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	str r5, [r12, #0]
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label38
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label44
	b label59
label44:
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label48
label47:
	add r8, r6, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r8, r5
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r10, r6, r5
	mul r5, r10, r7
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r9, r6, #2
	add r5, r9, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r6, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	ldr r5, [sp, #32]
	add r5, r5, r6
	mul r5, r5, r10
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r8, r5
	vmov s3, r5
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r9, r5
	add r8, r6, r3
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #3
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #72]
	add r5, r6, r5
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #4
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r6, r2
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #5
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #52]
	add r5, r6, r5
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #6
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r6, r1
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #7
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r6, r6, r0
	mul r5, r6, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r4, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r4
	add r4, r4, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label48
	b label47
label48:
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label713
	b label58
label713:
	mov r4, r6
	add r6, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label718
	b label57
label718:
	mov r0, r4
	b label54
label57:
	add r8, r4, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r8, r5
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r5, r4
	mul r5, r5, r7
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r9, r4, #2
	add r5, r9, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r4, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	ldr r5, [sp, #32]
	add r10, r5, r4
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r4, r5
	mul r5, r10, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r8, r5
	vmov s3, r5
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r9, r5
	add r8, r3, r4
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r4, #3
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #72]
	add r5, r5, r4
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r4, #4
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r2, r4
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r4, #5
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #52]
	add r5, r5, r4
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r4, #6
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r1, r4
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r4, #7
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r4, r0, r4
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r6, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r4, r6
	add r6, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label718
	b label57
label54:
	ldr r5, [sp, #32]
	add r1, r5, r0
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r2, r5, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r0, r5, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label734
	mov r0, r1
	b label54
label734:
	mov r6, r1
	b label38
label394:
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label26
	b label29
label22:
	add r2, r1, #1
	ldr r3, [sp, #76]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #76]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #48]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #68]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r1, #2
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20448
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #8]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #12]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #16]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #20]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20476
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #76]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label394
	b label22
label26:
	ldr r3, [sp, #68]
	add r1, r3, r0
	ldr r3, [sp, #76]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #76]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #48]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label502
	b label26
label502:
	mov r1, r0
	b label30
label59:
	ldr r5, [sp, #32]
	add r7, r5, r6
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r6, r5
	mul r5, r7, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r7, r6, #1
	add r5, r7, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r6, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, r3
	mul r5, r8, r9
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #2
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r5, [sp, #72]
	add r5, r6, r5
	mul r8, r9, r5
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #3
	add r8, r9, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, r2
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r9, r6, #4
	add r5, r9, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r5, [sp, #52]
	add r5, r6, r5
	mul r8, r8, r5
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #5
	add r8, r9, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r9, r6, r1
	mul r5, r5, r9
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #6
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, r0
	mul r5, r9, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r6, r6, #7
	add r5, r6, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r5, [sp, #32]
	add r5, r5, r4
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r4, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r4
	add r4, r4, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label44
	b label59
label18:
	add r2, r1, #1
	ldr r3, [sp, #76]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #76]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #48]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #68]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r4, r1, #2
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20448
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #8]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #12]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #16]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #20]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20476
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #76]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label19
	b label18
label58:
	add r8, r6, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r8, r5
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r10, r6, r5
	mul r5, r10, r7
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r9, r6, #2
	add r5, r9, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r6, lsl #2
	vldr s2, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s1, s3, s1
	ldr r5, [sp, #32]
	add r5, r5, r6
	mul r5, r5, r10
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r8, r5
	vmov s3, r5
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r9, r5
	add r8, r6, r3
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #3
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #72]
	add r5, r6, r5
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #4
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r6, r2
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #5
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #52]
	add r5, r6, r5
	mul r5, r5, r8
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #6
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r6, r1
	mul r5, r8, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #7
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r6, r6, r0
	mul r5, r6, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r4, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r6, r4
	add r4, r4, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label713
	b label58
label29:
	add r2, r0, #1
	ldr r3, [sp, #76]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #76]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #48]
	add r2, r2, r0, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #68]
	add r4, r3, r0
	ldr r3, [sp, #76]
	add r3, r0, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r4, r0, #2
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20448
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #3
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #8]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #4
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #12]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #5
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #16]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	ldr r3, [sp, #20]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #76]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20476
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	mul r0, r0, r4
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #76]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label26
	b label29
label994:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #28]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label91
	b label68
label91:
	ldr r0, [sp, #64]
	add r0, r0, #1
	cmp r0, #1000
	bge label92
	b label1396
label92:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label97
	b label96
label97:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label100
label128:
	ldr r2, [sp, #48]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #36]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r3, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r3, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label100
	b label128
label129:
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	movw r12, #20472
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #20468
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	movw r12, #20464
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	movw r12, #20460
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	str r3, [sp, #4]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #2
	movw r12, #13656
	movt r12, #12
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #1
	str r3, [sp, #24]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label130
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label137
label136:
	add r2, r1, #1
	ldr r3, [sp, #24]
	add r2, r2, r3
	ldr r3, [sp, #24]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #24]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #36]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r1, #2
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #13656
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #24]
	add r4, r4, r3
	ldr r3, [sp, #4]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20460
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20468
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20472
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #24]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label137
	b label136
label137:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label140
	b label151
label130:
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r5, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #24]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label994
	b label129
label147:
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	ldr r3, [sp, #24]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #24]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #36]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1971
	b label147
label1971:
	mov r1, r0
	b label130
label140:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1863
	b label143
label1863:
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label147
label150:
	add r2, r0, #1
	ldr r3, [sp, #24]
	add r2, r2, r3
	ldr r3, [sp, #24]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #24]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #36]
	add r2, r2, r0, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	ldr r3, [sp, #24]
	add r3, r0, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r0, #2
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #13656
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #3
	ldr r3, [sp, #24]
	add r4, r4, r3
	ldr r3, [sp, #4]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #4
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20460
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #5
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #6
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20468
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20472
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	mul r0, r0, r4
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #24]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label147
	b label150
label143:
	add r2, r1, #1
	ldr r3, [sp, #24]
	add r2, r2, r3
	ldr r3, [sp, #24]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #24]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #36]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r4, r1, #2
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #13656
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #24]
	add r4, r4, r3
	ldr r3, [sp, #4]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20460
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20468
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20472
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #24]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1863
	b label143
label151:
	add r2, r1, #1
	ldr r3, [sp, #24]
	add r2, r2, r3
	ldr r3, [sp, #24]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #24]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #36]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r4, r1, #2
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #13656
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	ldr r3, [sp, #24]
	add r4, r4, r3
	ldr r3, [sp, #4]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20460
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20468
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #24]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20472
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #24]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label140
	b label151
label68:
	ldr r3, [sp, #28]
	add r3, r3, #7
	str r3, [sp, #60]
	ldr r3, [sp, #28]
	add r3, r3, #6
	str r3, [sp, #56]
	ldr r3, [sp, #28]
	add r3, r3, #5
	str r3, [sp, #44]
	ldr r3, [sp, #28]
	add r3, r3, #4
	str r3, [sp, #40]
	ldr r3, [sp, #28]
	add r3, r3, #3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #28]
	add r3, r3, #2
	str r3, [sp, #0]
	ldr r3, [sp, #28]
	add r3, r3, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label88
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label72
	b label87
label88:
	ldr r2, [sp, #48]
	ldr r3, [sp, #28]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	str r3, [sp, #28]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label91
	b label68
label72:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label76
	b label75
label76:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1113
	b label79
label1113:
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label83
	b label86
label83:
	ldr r3, [sp, #28]
	add r1, r3, r0
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r0, r5, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label88
	mov r0, r1
	b label83
label79:
	add r4, r1, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r4, r3
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r7, r1, r3
	mul r2, r7, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r6, r1, #2
	add r2, r6, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r2, r5, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #28]
	add r3, r3, r1
	mul r3, r3, r7
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r4, r3
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r6, r3
	ldr r3, [sp, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #3
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #40]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #44]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #56]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #60]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1113
	b label79
label75:
	add r4, r1, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r4, r3
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r7, r1, r3
	mul r2, r7, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r6, r1, #2
	add r2, r6, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r2, r5, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #28]
	add r3, r3, r1
	mul r3, r3, r7
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r4, r3
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r6, r3
	ldr r3, [sp, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #3
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #40]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #44]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #56]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #60]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label76
	b label75
label87:
	ldr r3, [sp, #28]
	add r2, r3, r1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r1, #1
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r2, r5, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #40]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #44]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #56]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #60]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #7
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #28]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label72
	b label87
label86:
	add r4, r0, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r4, r3
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r6, r0, #2
	add r2, r6, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r2, r5, r0, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #28]
	add r5, r3, r0
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r3, r5, r3
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r4, r3
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r6, r3
	ldr r3, [sp, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #3
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #4
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #40]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #5
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #44]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #6
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #56]
	add r3, r3, r0
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #7
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #60]
	add r0, r3, r0
	mul r0, r0, r4
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	add r0, r1, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label83
	b label86
label38:
	ldr r2, [sp, #36]
	ldr r5, [sp, #32]
	add r0, r2, r5, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	str r5, [sp, #32]
	movw r0, #34464
	movt r0, #1
	cmp r5, r0
	bge label596
	b label37
label30:
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	ldr r3, [sp, #68]
	add r0, r5, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #76]
	str r3, [sp, #68]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label192
	b label10
label1396:
	str r0, [sp, #64]
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #68]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label192
	b label10
label100:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label103
	b label127
label103:
	ldr r2, [sp, #48]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #36]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s1, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1477
	vmov.f32 s0, s1
	b label103
label1477:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label109
label126:
	ldr r2, [sp, #36]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label109
	b label126
label109:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label112
label125:
	ldr r2, [sp, #36]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label112
	b label125
label112:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label116
label115:
	ldr r2, [sp, #36]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #12]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label116
	b label115
label116:
	ldr r2, [sp, #36]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label119
	b label116
label119:
	vdiv.f32 s2, s1, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s0, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwgt r0, #1
	movw r1, #14269
	movt r1, #46470
	vmov s1, r1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r1, #0
	movwmi r1, #1
	orr r0, r0, r1
	cmp r0, #0
	beq label1551
	mov r0, #1065353216
	vmov s0, r0
	vmov.f32 s1, s2
	b label122
label1551:
	mov r0, #1065353216
	vmov s0, r0
	b label120
label122:
	vadd.f32 s0, s0, s1
	mov r0, #1056964608
	vmov s1, r0
	vmul.f32 s0, s0, s1
	vdiv.f32 s1, s2, s0
	vsub.f32 s3, s0, s1
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
	beq label120
	b label122
label96:
	ldr r2, [sp, #48]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #36]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r3, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r3, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label97
	b label96
label127:
	ldr r2, [sp, #48]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #36]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vldr s3, [r3, #4]
	vldr s4, [r0, #4]
	vmul.f32 s3, s3, s4
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s3
	vldr s1, [r3, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label103
	b label127
label120:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
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
	movw r12, #20480
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
