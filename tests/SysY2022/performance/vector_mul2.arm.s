.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	movw r12, #20664
	movt r12, #18
	sub sp, sp, r12
	movw r12, #13792
	movt r12, #12
	add r2, sp, r12
	str r2, [sp, #144]
	movw r12, #6992
	movt r12, #6
	add r2, sp, r12
	str r2, [sp, #128]
	add r2, sp, #192
	str r2, [sp, #136]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	ldr r2, [sp, #136]
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
	bge label215
	b label2
label215:
	mov r0, #0
	str r0, [sp, #152]
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label221
	b label10
label221:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label985
	b label134
label10:
	ldr r3, [sp, #160]
	add r3, r3, #15
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #14
	str r3, [sp, #108]
	ldr r3, [sp, #160]
	add r3, r3, #13
	str r3, [sp, #104]
	ldr r3, [sp, #160]
	add r3, r3, #12
	str r3, [sp, #100]
	ldr r3, [sp, #160]
	add r3, r3, #11
	str r3, [sp, #96]
	ldr r3, [sp, #160]
	add r3, r3, #10
	str r3, [sp, #92]
	ldr r3, [sp, #160]
	add r3, r3, #9
	str r3, [sp, #88]
	ldr r3, [sp, #160]
	add r3, r3, #8
	str r3, [sp, #172]
	ldr r3, [sp, #160]
	add r3, r3, #7
	str r3, [sp, #180]
	ldr r3, [sp, #160]
	add r3, r3, #6
	str r3, [sp, #188]
	ldr r3, [sp, #160]
	add r3, r3, #5
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #4
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #3
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #2
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label30
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label15
	b label14
label15:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label427
	b label18
label30:
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	str r3, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label221
	b label10
label18:
	add r2, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #136]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #160]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r1, #2
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #188]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #180]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #8
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #172]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #9
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #88]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #10
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #92]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #11
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #96]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #12
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #100]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #13
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #104]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #14
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #108]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #15
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label427
	b label18
label427:
	mov r0, r1
	add r2, r1, #16
	str r2, [sp, #176]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
	b label29
label22:
	add r2, r0, #16
	movw r12, #20592
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label25
	b label28
label25:
	ldr r3, [sp, #160]
	add r1, r3, r0
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label628
	b label25
label628:
	mov r1, r0
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	str r3, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label221
	b label10
label29:
	add r1, r0, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r0, r3
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #160]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r2, r0, #2
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #188]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #180]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #172]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #88]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #92]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #96]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #100]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #104]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #108]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #176]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #176]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
	b label29
label28:
	add r1, r0, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #160]
	add r2, r3, r0
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r2, r0, #2
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #188]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #180]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #172]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #88]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #92]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #96]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #100]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #104]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #108]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20592
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20592
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label25
	b label28
label14:
	add r2, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #136]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #160]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r1, #2
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6980
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #6988
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #188]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #180]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #8
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #172]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #9
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #88]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #10
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #92]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #11
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #96]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #12
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #100]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #13
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #104]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #14
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #108]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #15
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20620
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label15
	b label14
label985:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #168]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label991
	b label41
label991:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	str r1, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label68
	b label111
label134:
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #15
	str r4, [sp, #8]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	str r3, [sp, #12]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #13
	str r3, [sp, #40]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #12
	str r4, [sp, #44]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #11
	str r3, [sp, #48]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #10
	str r4, [sp, #52]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #9
	str r3, [sp, #56]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #8
	str r4, [sp, #16]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #7
	str r3, [sp, #20]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #6
	str r4, [sp, #24]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #5
	str r3, [sp, #28]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #4
	str r4, [sp, #32]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	str r3, [sp, #36]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #2
	str r4, [sp, #60]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, #1
	str r2, [sp, #68]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label135
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3114
	b label156
label3114:
	mov r0, r1
	add r2, r1, #16
	movw r12, #13784
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label144
label155:
	add r4, r0, #1
	ldr r2, [sp, #68]
	add r1, r4, r2
	ldr r2, [sp, #68]
	add r6, r0, r2
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r2, [sp, #68]
	add r2, r5, r2
	ldr r4, [sp, #60]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #36]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #32]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #28]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #24]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #20]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #16]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #56]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #52]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #48]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #44]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #40]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #12]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #8]
	add r0, r0, r4
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #13784
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #13784
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #13784
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label144
	b label155
label156:
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r1
	ldr r2, [sp, #68]
	add r3, r1, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r4, r1, #1
	add r2, r4, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #60]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #2
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #36]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #3
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #32]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #4
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #28]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #5
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #24]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #6
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #20]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #7
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #16]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #8
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #56]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #9
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #52]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #48]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #11
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #44]
	add r5, r1, r4
	mul r3, r3, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #40]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #13
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #12]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #8]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3114
	b label156
label144:
	add r2, r0, #16
	str r2, [sp, #184]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label148
	b label147
label148:
	add r2, r0, #16
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label151
	b label154
label151:
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	ldr r2, [sp, #68]
	add r2, r2, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label135
	mov r0, r1
	b label151
label41:
	ldr r3, [sp, #168]
	add r3, r3, #15
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #14
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #13
	movw r12, #13788
	movt r12, #12
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #12
	movw r12, #20580
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #11
	movw r12, #20588
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #10
	movw r12, #20596
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #9
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #8
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #7
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #6
	str r3, [sp, #84]
	ldr r3, [sp, #168]
	add r3, r3, #5
	str r3, [sp, #80]
	ldr r3, [sp, #168]
	add r3, r3, #4
	str r3, [sp, #76]
	ldr r3, [sp, #168]
	add r3, r3, #3
	str r3, [sp, #72]
	ldr r3, [sp, #168]
	add r3, r3, #2
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label61
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1017
	b label60
label1017:
	mov r0, r1
	add r2, r1, #16
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label1022
	b label59
label1022:
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1027
	b label58
label1027:
	mov r0, r1
	add r2, r1, #16
	movw r12, #20576
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label55
	b label54
label58:
	add r2, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #128]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #168]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r4, r1, #2
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #72]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #76]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #80]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #84]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #8
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #9
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #10
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20596
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #11
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20588
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #12
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20580
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #13
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #13788
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #14
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #15
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1027
	b label58
label60:
	add r2, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #128]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vldr s3, [r2, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #168]
	add r3, r3, r1
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s3, r3
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r4, r1, #2
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #72]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #4
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #76]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #5
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #80]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #6
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	ldr r3, [sp, #84]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #7
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #8
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #9
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #10
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20596
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #11
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20588
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #12
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20580
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #13
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #13788
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #14
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r4
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r4, r1, #15
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r4, r3
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	mul r1, r1, r4
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1017
	b label60
label61:
	ldr r2, [sp, #144]
	ldr r3, [sp, #168]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	str r3, [sp, #168]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label991
	b label41
label55:
	ldr r3, [sp, #168]
	add r1, r3, r0
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1224
	b label55
label1224:
	mov r1, r0
	ldr r2, [sp, #144]
	ldr r3, [sp, #168]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	str r3, [sp, #168]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label991
	b label41
label154:
	add r4, r0, #1
	ldr r2, [sp, #68]
	add r1, r4, r2
	ldr r2, [sp, #68]
	add r2, r2, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	ldr r2, [sp, #68]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r2, [sp, #68]
	add r2, r5, r2
	ldr r4, [sp, #60]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #36]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #32]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #28]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #24]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #20]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #16]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #56]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #52]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #48]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #44]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #40]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #12]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #8]
	add r0, r4, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20600
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label151
	b label154
label147:
	add r4, r0, #1
	ldr r2, [sp, #68]
	add r1, r4, r2
	ldr r2, [sp, #68]
	add r6, r0, r2
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r2, [sp, #68]
	add r2, r5, r2
	ldr r4, [sp, #60]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #36]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #32]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #28]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #24]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #20]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #16]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #56]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #52]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #48]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #44]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #40]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r3, [sp, #12]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #68]
	add r2, r3, r2
	ldr r4, [sp, #8]
	add r0, r0, r4
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #184]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #184]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #184]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label148
	b label147
label59:
	add r1, r0, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r0, r3
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	ldr r3, [sp, #168]
	add r2, r3, r0
	mul r2, r2, r4
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	add r2, r0, #2
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #72]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #80]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #84]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20596
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20588
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20580
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #13788
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r0, r3
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #6976
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label1022
	b label59
label54:
	add r1, r0, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r1, r3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	ldr r3, [sp, #168]
	add r2, r3, r0
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	add r2, r0, #2
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20612
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #3
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #72]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #4
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #76]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #5
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #80]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #6
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	ldr r3, [sp, #84]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #7
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #8
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #9
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20604
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #10
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20596
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #11
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20588
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #12
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20580
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #13
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #13788
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #14
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r2, r0, #15
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r2, r3
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20628
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r3, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20576
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20576
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label55
	b label54
label68:
	ldr r0, [sp, #152]
	add r0, r0, #1
	cmp r0, #1000
	bge label69
	str r0, [sp, #152]
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #160]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label221
	b label10
label69:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label74
label73:
	ldr r2, [sp, #136]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #128]
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
	vldr s1, [r3, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label74
	b label73
label74:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label77
label110:
	ldr r2, [sp, #136]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #128]
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
	vldr s1, [r3, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label77
	b label110
label111:
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #15
	str r4, [sp, #148]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #14
	str r3, [sp, #156]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #13
	str r4, [sp, #4]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #12
	str r3, [sp, #0]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #11
	str r4, [sp, #112]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #10
	str r3, [sp, #116]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #9
	str r4, [sp, #164]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #8
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #7
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	str r4, [r12, #0]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #6
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #5
	str r4, [sp, #120]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #4
	str r3, [sp, #124]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, #3
	str r3, [sp, #132]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, #2
	str r4, [sp, #140]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, #1
	str r2, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label112
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2370
	b label118
label2370:
	mov r0, r1
	add r2, r1, #16
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label123
label122:
	add r4, r0, #1
	ldr r2, [sp, #64]
	add r1, r4, r2
	ldr r2, [sp, #64]
	add r6, r0, r2
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r2, [sp, #64]
	add r2, r5, r2
	ldr r4, [sp, #140]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #132]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #124]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #120]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #164]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #116]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #112]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #4]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #156]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #148]
	add r0, r0, r4
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #6984
	movt r12, #6
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label123
	b label122
label123:
	add r2, r0, #16
	movw r12, #13776
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label126
	b label133
label126:
	add r2, r0, #16
	movw r12, #20584
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label130
label129:
	add r4, r0, #1
	ldr r2, [sp, #64]
	add r1, r4, r2
	ldr r2, [sp, #64]
	add r2, r2, r0
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s2, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s2, s3, s2
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	ldr r2, [sp, #64]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s1, s1, s3
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s0, s2
	ldr r2, [sp, #64]
	add r2, r5, r2
	ldr r4, [sp, #140]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #132]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #124]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #120]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #164]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #116]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #112]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #0]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #4]
	add r3, r4, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #156]
	add r3, r3, r0
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #148]
	add r0, r4, r0
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #20584
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20584
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #20584
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label130
	b label129
label130:
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	ldr r2, [sp, #64]
	add r2, r2, r0
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r2, r1, #1
	add r1, r0, #1
	add r2, r1, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label112
	mov r0, r1
	b label130
label118:
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r1
	ldr r2, [sp, #64]
	add r3, r1, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r4, r1, #1
	add r2, r4, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s2, [r2, #0]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #140]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #2
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #4]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #132]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #3
	add r3, r4, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #124]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #4
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #120]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #6
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #7
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #8
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #164]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #9
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #116]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #10
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #112]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #11
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #12
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #4]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #13
	add r3, r5, r3
	vmov s1, r3
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r3, [sp, #156]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s1, r4
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r4, [sp, #148]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vldr s2, [r2, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2370
	b label118
label133:
	add r4, r0, #1
	ldr r2, [sp, #64]
	add r1, r4, r2
	ldr r2, [sp, #64]
	add r6, r0, r2
	mul r1, r6, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r5, r0, #2
	add r1, r5, r1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vldr s3, [r1, #4]
	vdiv.f32 s1, s3, s1
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	mul r2, r2, r6
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r2, r4, r2
	vmov s3, r2
	vcvt.f32.s32 s3, s3
	vdiv.f32 s2, s2, s3
	vadd.f32 s0, s0, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r5, r2
	ldr r4, [sp, #140]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #3
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #8]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #132]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #4
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #12]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #124]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #5
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #16]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #120]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #6
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #20]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20608
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #7
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #24]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20616
	movt r12, #18
	add r12, sp, r12
	ldr r4, [r12, #0]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #8
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #28]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	movw r12, #20624
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #9
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #32]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #164]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #10
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #36]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #116]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #11
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #40]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #112]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #12
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #44]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #0]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #13
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #48]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #4]
	add r3, r0, r4
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #14
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #52]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r3, [sp, #156]
	add r3, r0, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	add r3, r0, #15
	add r2, r3, r2
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #56]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #64]
	add r2, r3, r2
	ldr r4, [sp, #148]
	add r0, r0, r4
	mul r0, r0, r2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	movw r12, #13776
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r0, r2, r0
	vmov s1, r0
	vcvt.f32.s32 s1, s1
	vldr s2, [r1, #60]
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	movw r12, #13776
	movt r12, #12
	add r12, sp, r12
	ldr r2, [r12, #0]
	mov r0, r2
	add r2, r2, #16
	movw r12, #13776
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label126
	b label133
label135:
	ldr r2, [sp, #128]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r2, [sp, #68]
	mov r3, r2
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label985
	b label134
label112:
	ldr r2, [sp, #136]
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r2, [sp, #64]
	mov r3, r2
	movw r12, #13780
	movt r12, #12
	add r12, sp, r12
	str r2, [r12, #0]
	movw r0, #34464
	movt r0, #1
	cmp r2, r0
	bge label68
	b label111
label77:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label80
label109:
	ldr r2, [sp, #136]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #128]
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
	vldr s1, [r3, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label80
	b label109
label80:
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s1, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1888
	vmov.f32 s0, s1
	b label80
label1888:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label86
label108:
	ldr r2, [sp, #128]
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
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label86
	b label108
label86:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label89
label107:
	ldr r2, [sp, #128]
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
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label89
	b label107
label89:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label92
	b label106
label92:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
label4530:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label95
	b label4530
label95:
	vdiv.f32 s1, s1, s0
	mov r0, #1065353216
	vmov s0, r0
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label1928
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label102
	b label1933
label1928:
	mov r0, #1
	cmp r0, #0
	beq label102
	vadd.f32 s0, s0, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label1928
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label102
label1933:
	vadd.f32 s0, s0, s2
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s0, s0, s2
	vdiv.f32 s2, s1, s0
	vsub.f32 s3, s0, s2
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	bgt label1928
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label102
	b label1933
label4490:
	mov r0, #0
	b label103
label102:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label1949
	b label4490
label106:
	ldr r2, [sp, #128]
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
	vldr s2, [r0, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	vldr s2, [r0, #60]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	mov r0, r1
	add r1, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label92
	b label106
label1949:
	movw r0, #14269
	movt r0, #46470
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
label103:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20664
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, pc }
