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
label129:
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	movw r12, #20464
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #20460
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	str r3, [sp, #8]
	movw r12, #6868
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	movw r12, #20448
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
	bge label149
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label133
	b label148
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
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	str r5, [r12, #0]
	movw r4, #34464
	movt r4, #1
	cmp r6, r4
	bge label57
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label41
	b label56
label52:
	ldr r5, [sp, #32]
	add r1, r5, r0
	movw r12, #20456
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
	bge label819
	mov r0, r1
	b label52
label819:
	mov r6, r1
label57:
	ldr r2, [sp, #36]
	ldr r5, [sp, #32]
	add r0, r2, r5, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	str r5, [sp, #32]
	movw r0, #34464
	movt r0, #1
	cmp r5, r0
	bge label596
	b label37
label41:
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label45
	b label44
label45:
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label49
	b label48
label133:
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
	movw r12, #20448
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
	ldr r3, [sp, #8]
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
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
	bge label1861
	b label140
label1861:
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label144
	b label147
label140:
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
	movw r12, #20448
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
	ldr r3, [sp, #8]
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
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
	bge label1861
	b label140
label144:
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
	bge label1969
	b label144
label1969:
	mov r1, r0
	b label149
label49:
	add r4, r6, #8
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	bge label803
	b label55
label803:
	mov r0, r6
	b label52
label10:
	ldr r3, [sp, #68]
	add r3, r3, #7
	movw r12, #20468
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #68]
	add r3, r3, #6
	movw r12, #20472
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #68]
	add r3, r3, #5
	movw r12, #20476
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #68]
	add r3, r3, #4
	str r3, [sp, #20]
	ldr r3, [sp, #68]
	add r3, r3, #3
	str r3, [sp, #16]
	ldr r3, [sp, #68]
	add r3, r3, #2
	str r3, [sp, #12]
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	movw r12, #20476
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
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20472
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20468
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
label994:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #28]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label68
	b label106
label68:
	ldr r0, [sp, #64]
	add r0, r0, #1
	cmp r0, #1000
	bge label69
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
label69:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label73
label105:
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
	bge label73
	b label105
label24:
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
	bge label328
	b label24
label328:
	mov r1, r0
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
label15:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label18
	b label29
label18:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label307
	b label28
label307:
	mov r0, r1
	add r1, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label24
	b label27
label28:
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	movw r12, #20476
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
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20472
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20468
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
	bge label307
	b label28
label29:
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	movw r12, #20476
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
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20472
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20468
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
	bge label18
	b label29
label56:
	ldr r5, [sp, #32]
	add r7, r5, r6
	movw r12, #20456
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
	add r9, r6, r5
	mul r5, r8, r9
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r8, r6, #5
	add r5, r8, r5
	vmov s1, r5
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r5, r6, r1
	mul r8, r9, r5
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	add r9, r6, #6
	add r8, r9, r8
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vldr s2, [r7, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r8, r6, r0
	mul r5, r5, r8
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
	bge label41
	b label56
label55:
	add r8, r6, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r8, r5
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r5, r6
	mul r5, r5, r7
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r9, r6, #2
	add r5, r9, r5
	vmov s1, r5
	vcvt.f32.s32 s2, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r6, lsl #2
	vldr s1, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s2, s3, s2
	ldr r5, [sp, #32]
	add r10, r5, r6
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r6, r5
	mul r5, r10, r5
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r8, r5
	vmov s3, r5
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r9, r5
	add r8, r3, r6
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
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #72]
	add r5, r5, r6
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
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r2, r6
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
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r8, r8, r5
	ldr r5, [sp, #52]
	add r5, r5, r6
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
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r8, r1, r6
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
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r5, r8, r5
	add r6, r0, r6
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
	bge label803
	b label55
label44:
	add r8, r6, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r8, r5
	movw r12, #20456
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
	vcvt.f32.s32 s2, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r6, lsl #2
	vldr s1, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s2, s3, s2
	ldr r5, [sp, #32]
	add r5, r5, r6
	mul r5, r5, r10
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r8, r5
	vmov s3, r5
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	bge label45
	b label44
label27:
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	movw r12, #20476
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
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #6
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20472
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #7
	ldr r3, [sp, #76]
	add r4, r4, r3
	movw r12, #20468
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
	bge label24
	b label27
label48:
	add r8, r6, #1
	movw r12, #20456
	movt r12, #18
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r8, r5
	movw r12, #20456
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
	vcvt.f32.s32 s2, s1
	movw r12, #13660
	movt r12, #12
	add r12, sp, r12
	ldr r5, [r12, #0]
	add r7, r5, r6, lsl #2
	vldr s1, [r7, #0]
	vldr s3, [r7, #4]
	vdiv.f32 s2, s3, s2
	ldr r5, [sp, #32]
	add r5, r5, r6
	mul r5, r5, r10
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r8, r5
	vmov s3, r5
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	movw r12, #20456
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
	bge label49
	b label48
label147:
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
	movw r12, #20448
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
	ldr r3, [sp, #8]
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r0, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
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
	bge label144
	b label147
label148:
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
	movw r12, #20448
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
	ldr r3, [sp, #8]
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
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	ldr r3, [sp, #24]
	add r4, r4, r3
	movw r12, #20464
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
	bge label133
	b label148
label106:
	ldr r3, [sp, #28]
	add r3, r3, #7
	str r3, [sp, #40]
	ldr r3, [sp, #28]
	add r3, r3, #6
	str r3, [sp, #60]
	ldr r3, [sp, #28]
	add r3, r3, #5
	str r3, [sp, #56]
	ldr r3, [sp, #28]
	add r3, r3, #4
	str r3, [sp, #44]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label126
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label110
	b label125
label126:
	ldr r2, [sp, #48]
	ldr r3, [sp, #28]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	str r3, [sp, #28]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label68
	b label106
label110:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label114
	b label113
label114:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label118
	b label117
label125:
	ldr r3, [sp, #28]
	add r2, r3, r1
	movw r12, #20452
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
	ldr r3, [sp, #44]
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
	ldr r3, [sp, #56]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #60]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #6
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #40]
	add r5, r1, r3
	mul r3, r4, r5
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
	mul r1, r5, r1
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
	bge label110
	b label125
label118:
	add r0, r1, #8
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1561
	b label121
label1561:
	mov r0, r1
	ldr r3, [sp, #28]
	add r1, r3, r1
	movw r12, #20452
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
	bge label126
	b label1561
label117:
	add r4, r1, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r4, r3
	movw r12, #20452
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
	movw r12, #20452
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
	movw r12, #20452
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #44]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #56]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #60]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #40]
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
	bge label118
	b label117
label121:
	add r4, r1, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r4, r3
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
	mul r2, r3, r2
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
	add r5, r3, r1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r5, r3
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r4, r3
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r6, r3
	ldr r3, [sp, #0]
	add r3, r3, r1
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6864
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r1
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #44]
	add r3, r3, r1
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #56]
	add r3, r3, r1
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #60]
	add r3, r3, r1
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #40]
	add r1, r3, r1
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
	bge label1561
	b label121
label113:
	add r4, r1, #1
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r4, r3
	movw r12, #20452
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
	movw r12, #20452
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
	movw r12, #20452
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #44]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #56]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #60]
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
	movw r12, #20452
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #40]
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
	bge label114
	b label113
label149:
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
label73:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label77
label76:
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
	bge label77
	b label76
label77:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label81
label80:
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
	bge label81
	b label80
label81:
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
	bge label1135
	vmov.f32 s0, s1
	b label81
label1135:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label88
label87:
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
	bge label88
	b label87
label88:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label91
	b label104
label91:
	add r1, r0, #8
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label95
label94:
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
	bge label95
	b label94
label95:
	ldr r2, [sp, #36]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label98
	b label95
label98:
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
	beq label1242
	mov r0, #1065353216
	vmov s0, r0
	vmov.f32 s1, s2
	b label101
label1242:
	mov r0, #1065353216
	vmov s0, r0
	b label99
label101:
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
	beq label99
	b label101
label104:
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
	bge label91
	b label104
label99:
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
