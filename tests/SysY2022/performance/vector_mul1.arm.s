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
	add r2, sp, #272
	str r2, [sp, #144]
	movw r12, #7060
	movt r12, #6
	add r2, sp, r12
	str r2, [sp, #128]
	movw r12, #13848
	movt r12, #12
	add r2, sp, r12
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
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #268]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label221
	b label10
label221:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #60]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label985
label134:
	ldr r3, [sp, #60]
	add r4, r3, #15
	str r4, [sp, #36]
	ldr r3, [sp, #60]
	add r3, r3, #14
	str r3, [sp, #8]
	ldr r3, [sp, #60]
	add r3, r3, #13
	str r3, [sp, #12]
	ldr r3, [sp, #60]
	add r3, r3, #12
	str r3, [sp, #16]
	ldr r3, [sp, #60]
	add r3, r3, #11
	str r3, [sp, #20]
	ldr r3, [sp, #60]
	add r3, r3, #10
	str r3, [sp, #24]
	ldr r3, [sp, #60]
	add r3, r3, #9
	str r3, [sp, #28]
	ldr r3, [sp, #60]
	add r3, r3, #8
	movw r12, #13844
	movt r12, #12
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #60]
	add r3, r3, #7
	str r3, [sp, #40]
	ldr r3, [sp, #60]
	add r3, r3, #6
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #60]
	add r3, r3, #5
	str r3, [sp, #44]
	ldr r3, [sp, #60]
	add r3, r3, #4
	str r3, [sp, #48]
	ldr r3, [sp, #60]
	add r3, r3, #3
	str r3, [sp, #32]
	ldr r3, [sp, #60]
	add r3, r3, #2
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #60]
	add r3, r3, #1
	str r3, [sp, #56]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label135
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label141
	b label156
label10:
	ldr r3, [sp, #268]
	add r2, r3, #15
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #268]
	add r3, r3, #14
	str r3, [sp, #108]
	ldr r3, [sp, #268]
	add r3, r3, #13
	str r3, [sp, #104]
	ldr r3, [sp, #268]
	add r3, r3, #12
	str r3, [sp, #100]
	ldr r3, [sp, #268]
	add r3, r3, #11
	str r3, [sp, #96]
	ldr r3, [sp, #268]
	add r3, r3, #10
	str r3, [sp, #180]
	ldr r3, [sp, #268]
	add r3, r3, #9
	str r3, [sp, #92]
	ldr r3, [sp, #268]
	add r3, r3, #8
	str r3, [sp, #172]
	ldr r3, [sp, #268]
	add r3, r3, #7
	str r3, [sp, #88]
	ldr r3, [sp, #268]
	add r3, r3, #6
	str r3, [sp, #84]
	ldr r3, [sp, #268]
	add r3, r3, #5
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #268]
	add r3, r3, #4
	str r3, [sp, #164]
	ldr r3, [sp, #268]
	add r3, r3, #3
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #268]
	add r3, r3, #2
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #268]
	add r3, r3, #1
	str r3, [sp, #252]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label30
	add r2, r0, #16
	str r2, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label247
	b label29
label24:
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #268]
	add r1, r3, r0
	ldr r3, [sp, #252]
	add r2, r0, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #252]
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label30
	b label24
label30:
	ldr r2, [sp, #144]
	ldr r3, [sp, #268]
	add r1, r2, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r3, [sp, #252]
	str r3, [sp, #268]
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label221
	b label10
label247:
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label17
label28:
	ldr r2, [sp, #136]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #268]
	add r5, r3, r1
	ldr r3, [sp, #252]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	ldr r3, [sp, #252]
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	add r5, r1, #1
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #2
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #3
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #164]
	add r4, r1, r3
	add r5, r1, #4
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #5
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #84]
	add r4, r1, r3
	add r5, r1, #6
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	ldr r3, [sp, #88]
	add r4, r1, r3
	add r5, r1, #7
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #172]
	add r4, r1, r3
	add r5, r1, #8
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #92]
	add r4, r1, r3
	add r5, r1, #9
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #180]
	add r4, r1, r3
	add r5, r1, #10
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #96]
	add r4, r1, r3
	add r5, r1, #11
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #100]
	add r4, r1, r3
	add r5, r1, #12
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #104]
	add r4, r1, r3
	add r5, r1, #13
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r3, [sp, #108]
	add r4, r1, r3
	add r5, r1, #14
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	add r1, r1, #15
	ldr r3, [sp, #252]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #252]
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label17
	b label28
label17:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label257
	b label27
label257:
	mov r0, r1
	add r2, r1, #16
	str r2, [sp, #216]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label24
	b label23
label141:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3105
	b label155
label3105:
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #200]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label148
	b label147
label148:
	add r1, r0, #16
	str r1, [sp, #232]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label3290
label151:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #60]
	add r2, r3, r0
	ldr r3, [sp, #56]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #1
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #56]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #2
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #3
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #32]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #4
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #48]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #5
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #44]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #6
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #7
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #40]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #8
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	movw r12, #13844
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #9
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #28]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #10
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #24]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #11
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #20]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #12
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #16]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #13
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #12]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #14
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #8]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #15
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r4, [sp, #36]
	add r0, r4, r0
	ldr r3, [sp, #56]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #232]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #232]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #232]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label3290
	b label151
label3290:
	mov r1, r0
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s1, [r0, #0]
	ldr r3, [sp, #60]
	add r2, r3, r1
	add r0, r1, #1
	ldr r3, [sp, #56]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label3482
	b label3290
label3482:
	mov r1, r0
	ldr r2, [sp, #128]
	ldr r3, [sp, #60]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #56]
	str r3, [sp, #60]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label985
	b label134
label29:
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #268]
	add r4, r3, r0
	ldr r3, [sp, #252]
	add r2, r0, r3
	mul r3, r4, r2
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #2
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #3
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #164]
	add r2, r0, r3
	add r4, r0, #4
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #5
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #84]
	add r2, r0, r3
	add r4, r0, #6
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #88]
	add r2, r0, r3
	add r4, r0, #7
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #172]
	add r2, r0, r3
	add r4, r0, #8
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #92]
	add r2, r0, r3
	add r4, r0, #9
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #180]
	add r2, r0, r3
	add r4, r0, #10
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #96]
	add r2, r0, r3
	add r4, r0, #11
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #100]
	add r2, r0, r3
	add r4, r0, #12
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #104]
	add r2, r0, r3
	add r4, r0, #13
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #108]
	add r2, r0, r3
	add r4, r0, #14
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r0, r2
	add r0, r0, #15
	ldr r3, [sp, #252]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #252]
	add r0, r0, r3
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #168]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label247
	b label29
label23:
	ldr r2, [sp, #136]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #268]
	add r2, r3, r0
	ldr r3, [sp, #252]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #252]
	add r2, r3, r0
	add r4, r0, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #2
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #3
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #164]
	add r2, r3, r0
	add r4, r0, #4
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #5
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #84]
	add r2, r3, r0
	add r4, r0, #6
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #88]
	add r2, r3, r0
	add r4, r0, #7
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #172]
	add r2, r3, r0
	add r4, r0, #8
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #92]
	add r2, r3, r0
	add r4, r0, #9
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #180]
	add r2, r3, r0
	add r4, r0, #10
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #96]
	add r2, r3, r0
	add r4, r0, #11
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #100]
	add r2, r3, r0
	add r4, r0, #12
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #104]
	add r2, r3, r0
	add r4, r0, #13
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #108]
	add r2, r3, r0
	add r4, r0, #14
	ldr r3, [sp, #252]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #252]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r1, r2, r0
	add r0, r0, #15
	ldr r3, [sp, #252]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #252]
	add r0, r0, r3
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #216]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #216]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label24
	b label23
label27:
	ldr r2, [sp, #136]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #268]
	add r5, r3, r1
	ldr r3, [sp, #252]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	ldr r3, [sp, #252]
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	add r5, r1, #1
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #2
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #3
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #164]
	add r4, r1, r3
	add r5, r1, #4
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #5
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #84]
	add r4, r1, r3
	add r5, r1, #6
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	ldr r3, [sp, #88]
	add r4, r1, r3
	add r5, r1, #7
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #172]
	add r4, r1, r3
	add r5, r1, #8
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #92]
	add r4, r1, r3
	add r5, r1, #9
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #180]
	add r4, r1, r3
	add r5, r1, #10
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #96]
	add r4, r1, r3
	add r5, r1, #11
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #100]
	add r4, r1, r3
	add r5, r1, #12
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #104]
	add r4, r1, r3
	add r5, r1, #13
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r3, [sp, #108]
	add r4, r1, r3
	add r5, r1, #14
	ldr r3, [sp, #252]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #252]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	movw r12, #20636
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r2, r1, r2
	add r1, r1, #15
	ldr r3, [sp, #252]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #252]
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label257
	b label27
label156:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #60]
	add r5, r3, r1
	ldr r3, [sp, #56]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #1
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #32]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #48]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #44]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #40]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	movw r12, #13844
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #8
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #28]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #24]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #20]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #16]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #12
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #12]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #8]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s2, r4
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r4, [sp, #36]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r3, [sp, #60]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r1, r0
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label141
	b label156
label155:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #60]
	add r4, r3, r1
	ldr r3, [sp, #56]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #1
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #2
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #32]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #3
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #48]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #44]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r6, r1, r3
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #40]
	add r5, r1, r3
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	movw r12, #13844
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #8
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #28]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #24]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #20]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #16]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #12
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #12]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #8]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s2, r4
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r4, [sp, #36]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r3, [sp, #60]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r1, r0
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3105
	b label155
label147:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #60]
	add r4, r3, r0
	ldr r3, [sp, #56]
	add r2, r0, r3
	mul r3, r4, r2
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #1
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #56]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #2
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	movw r12, #20632
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #3
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #32]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #4
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #48]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #5
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #44]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #6
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	movw r12, #7056
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #7
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #40]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #8
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	movw r12, #13844
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #9
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #28]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #10
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #24]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #11
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #20]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #12
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #16]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #13
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #12]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #14
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #8]
	add r4, r0, r3
	ldr r3, [sp, #56]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #15
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r4, [sp, #36]
	add r0, r0, r4
	ldr r3, [sp, #56]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #200]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #200]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #200]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label148
	b label147
label985:
	mov r0, #0
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label991
	b label41
label991:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label68
	b label111
label41:
	ldr r3, [sp, #160]
	add r2, r3, #15
	str r2, [sp, #188]
	ldr r3, [sp, #160]
	add r3, r3, #14
	str r3, [sp, #196]
	ldr r3, [sp, #160]
	add r3, r3, #13
	str r3, [sp, #204]
	ldr r3, [sp, #160]
	add r3, r3, #12
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #11
	str r3, [sp, #212]
	ldr r3, [sp, #160]
	add r3, r3, #10
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #160]
	add r3, r3, #9
	str r3, [sp, #80]
	ldr r3, [sp, #160]
	add r3, r3, #8
	str r3, [sp, #76]
	ldr r3, [sp, #160]
	add r3, r3, #7
	str r3, [sp, #72]
	ldr r3, [sp, #160]
	add r3, r3, #6
	str r3, [sp, #68]
	ldr r3, [sp, #160]
	add r3, r3, #5
	str r3, [sp, #220]
	ldr r3, [sp, #160]
	add r3, r3, #4
	str r3, [sp, #228]
	ldr r3, [sp, #160]
	add r3, r3, #3
	str r3, [sp, #236]
	ldr r3, [sp, #160]
	add r3, r3, #2
	str r3, [sp, #244]
	ldr r3, [sp, #160]
	add r3, r3, #1
	str r3, [sp, #260]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label42
	add r2, r0, #16
	str r2, [sp, #176]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label1019
	b label63
label111:
	ldr r3, [sp, #64]
	add r4, r3, #15
	str r4, [sp, #4]
	ldr r3, [sp, #64]
	add r3, r3, #14
	str r3, [sp, #0]
	ldr r3, [sp, #64]
	add r3, r3, #13
	str r3, [sp, #112]
	ldr r3, [sp, #64]
	add r3, r3, #12
	str r3, [sp, #116]
	ldr r3, [sp, #64]
	add r3, r3, #11
	str r3, [sp, #156]
	ldr r3, [sp, #64]
	add r3, r3, #10
	str r3, [sp, #264]
	ldr r3, [sp, #64]
	add r3, r3, #9
	str r3, [sp, #256]
	ldr r3, [sp, #64]
	add r3, r3, #8
	str r3, [sp, #248]
	ldr r3, [sp, #64]
	add r3, r3, #7
	str r3, [sp, #240]
	ldr r3, [sp, #64]
	add r3, r3, #6
	str r3, [sp, #120]
	ldr r3, [sp, #64]
	add r3, r3, #5
	str r3, [sp, #124]
	ldr r3, [sp, #64]
	add r3, r3, #4
	str r3, [sp, #132]
	ldr r3, [sp, #64]
	add r3, r3, #3
	str r3, [sp, #140]
	ldr r3, [sp, #64]
	add r3, r3, #2
	str r3, [sp, #148]
	ldr r3, [sp, #64]
	add r3, r3, #1
	str r3, [sp, #52]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label112
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label119
label118:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #64]
	add r5, r3, r1
	ldr r3, [sp, #52]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #1
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	ldr r3, [sp, #148]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #140]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #3
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #132]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #4
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #124]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #5
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	ldr r3, [sp, #120]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #6
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #240]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #7
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	ldr r3, [sp, #248]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #8
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #256]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #9
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #264]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #10
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #156]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #11
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #116]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #112]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #13
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #0]
	add r3, r1, r3
	mul r4, r4, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s2, r4
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r4, [sp, #4]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r3, [sp, #64]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r1, r0
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label119
	b label118
label119:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2536
	b label122
label2707:
	mov r1, r0
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s1, [r0, #0]
	ldr r3, [sp, #64]
	add r2, r3, r1
	add r0, r1, #1
	ldr r3, [sp, #52]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r0, r1
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label2723
	b label2707
label2723:
	mov r1, r0
	ldr r2, [sp, #136]
	ldr r3, [sp, #64]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #52]
	str r3, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label68
	b label111
label1019:
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1024
	b label62
label1024:
	mov r0, r1
	add r2, r1, #16
	str r2, [sp, #184]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label55
label54:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r3, [sp, #260]
	add r2, r0, r3
	mul r3, r4, r2
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #244]
	add r2, r0, r3
	add r4, r0, #2
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #236]
	add r2, r0, r3
	add r4, r0, #3
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #228]
	add r2, r0, r3
	add r4, r0, #4
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #220]
	add r2, r0, r3
	add r4, r0, #5
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #68]
	add r2, r0, r3
	add r4, r0, #6
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #72]
	add r2, r0, r3
	add r4, r0, #7
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #76]
	add r2, r0, r3
	add r4, r0, #8
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #80]
	add r2, r0, r3
	add r4, r0, #9
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #10
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #212]
	add r2, r0, r3
	add r4, r0, #11
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #12
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #204]
	add r2, r0, r3
	add r4, r0, #13
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #196]
	add r2, r0, r3
	add r4, r0, #14
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r2, [sp, #188]
	add r1, r0, r2
	add r0, r0, #15
	ldr r3, [sp, #260]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #260]
	add r0, r0, r3
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #184]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #184]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label55
	b label54
label55:
	add r2, r0, #16
	str r2, [sp, #208]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label59
	b label58
label62:
	ldr r2, [sp, #128]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #160]
	add r5, r3, r1
	ldr r3, [sp, #260]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	ldr r3, [sp, #260]
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	add r5, r1, #1
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #244]
	add r4, r1, r3
	add r5, r1, #2
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #236]
	add r4, r1, r3
	add r5, r1, #3
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #228]
	add r4, r1, r3
	add r5, r1, #4
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	ldr r3, [sp, #220]
	add r4, r1, r3
	add r5, r1, #5
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #68]
	add r4, r1, r3
	add r5, r1, #6
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	ldr r3, [sp, #72]
	add r4, r1, r3
	add r5, r1, #7
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #76]
	add r4, r1, r3
	add r5, r1, #8
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #80]
	add r4, r1, r3
	add r5, r1, #9
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #10
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #212]
	add r4, r1, r3
	add r5, r1, #11
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #12
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #204]
	add r4, r1, r3
	add r5, r1, #13
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r3, [sp, #196]
	add r4, r1, r3
	add r5, r1, #14
	ldr r3, [sp, #260]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r2, [sp, #188]
	add r2, r1, r2
	add r1, r1, #15
	ldr r3, [sp, #260]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #260]
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1024
	b label62
label63:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r3, [sp, #260]
	add r2, r0, r3
	mul r3, r4, r2
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #244]
	add r2, r0, r3
	add r4, r0, #2
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #236]
	add r2, r0, r3
	add r4, r0, #3
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #228]
	add r2, r0, r3
	add r4, r0, #4
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #220]
	add r2, r0, r3
	add r4, r0, #5
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #68]
	add r2, r0, r3
	add r4, r0, #6
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #72]
	add r2, r0, r3
	add r4, r0, #7
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #76]
	add r2, r0, r3
	add r4, r0, #8
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #80]
	add r2, r0, r3
	add r4, r0, #9
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #10
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #212]
	add r2, r0, r3
	add r4, r0, #11
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #12
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #204]
	add r2, r0, r3
	add r4, r0, #13
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #196]
	add r2, r0, r3
	add r4, r0, #14
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r2, [sp, #188]
	add r1, r0, r2
	add r0, r0, #15
	ldr r3, [sp, #260]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #260]
	add r0, r0, r3
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #176]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #176]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label1019
	b label63
label59:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r1, r3, r0
	ldr r3, [sp, #260]
	add r2, r0, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #260]
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label42
	b label59
label58:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r2, r3, r0
	ldr r3, [sp, #260]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #260]
	add r2, r3, r0
	add r4, r0, #1
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #244]
	add r2, r3, r0
	add r4, r0, #2
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #236]
	add r2, r3, r0
	add r4, r0, #3
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #228]
	add r2, r3, r0
	add r4, r0, #4
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #220]
	add r2, r3, r0
	add r4, r0, #5
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #68]
	add r2, r3, r0
	add r4, r0, #6
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #72]
	add r2, r3, r0
	add r4, r0, #7
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #76]
	add r2, r3, r0
	add r4, r0, #8
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #80]
	add r2, r3, r0
	add r4, r0, #9
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #10
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #212]
	add r2, r3, r0
	add r4, r0, #11
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #12
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #204]
	add r2, r3, r0
	add r4, r0, #13
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #196]
	add r2, r3, r0
	add r4, r0, #14
	ldr r3, [sp, #260]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #260]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r2, [sp, #188]
	add r1, r2, r0
	add r0, r0, #15
	ldr r3, [sp, #260]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #260]
	add r0, r3, r0
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #208]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #208]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label59
	b label58
label2536:
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #192]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label126
	b label133
label122:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #64]
	add r5, r3, r1
	ldr r3, [sp, #52]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #1
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	ldr r3, [sp, #148]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #2
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #140]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #3
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #132]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #4
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #124]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	ldr r3, [sp, #120]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #6
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #240]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	ldr r3, [sp, #248]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #8
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #256]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	ldr r3, [sp, #264]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #156]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #116]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #12
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #112]
	add r5, r1, r3
	mul r3, r4, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #13
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #0]
	add r3, r1, r3
	mul r4, r5, r3
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r5, r1, #14
	add r4, r5, r4
	vmov s2, r4
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r4, [sp, #4]
	add r4, r1, r4
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r1, r1, #15
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r3, [sp, #64]
	add r1, r3, r0
	mul r1, r4, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	add r1, r1, r0
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r1, r0
	add r0, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2536
	b label122
label126:
	add r1, r0, #16
	str r1, [sp, #224]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label2707
	b label132
label133:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #64]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r0, r3
	mul r3, r4, r2
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r0, #1
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #52]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #2
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #148]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #3
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #140]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #4
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #132]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #5
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #124]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #6
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #120]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #7
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #240]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #8
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #248]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #9
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #256]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #10
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #264]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #11
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #156]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #12
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #116]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #13
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #112]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #14
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #0]
	add r4, r0, r3
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #15
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r4, [sp, #4]
	add r0, r0, r4
	ldr r3, [sp, #52]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #192]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #192]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #192]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label126
	b label133
label132:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #64]
	add r2, r3, r0
	ldr r3, [sp, #52]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #1
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #52]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #2
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #148]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #3
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #140]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #4
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #132]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #5
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r3, [sp, #124]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #6
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r3, [sp, #120]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #7
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r3, [sp, #240]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #8
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r3, [sp, #248]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #9
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r3, [sp, #256]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #10
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #264]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #11
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #156]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #12
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #116]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #13
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #112]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #14
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #0]
	add r4, r3, r0
	ldr r3, [sp, #52]
	add r2, r2, r3
	mul r2, r4, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	add r2, r0, #15
	add r3, r2, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r4, [sp, #4]
	add r0, r4, r0
	ldr r3, [sp, #52]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #224]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #224]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #224]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label2707
	b label132
label135:
	ldr r2, [sp, #128]
	ldr r3, [sp, #60]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #56]
	str r3, [sp, #60]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label985
	b label134
label42:
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r2, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r3, [sp, #260]
	str r3, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label991
	b label41
label68:
	ldr r0, [sp, #152]
	add r0, r0, #1
	cmp r0, #1000
	bge label69
	str r0, [sp, #152]
	mov r0, #0
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #268]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
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
	bge label73
	b label110
label112:
	ldr r2, [sp, #136]
	ldr r3, [sp, #64]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #52]
	str r3, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label68
	b label111
label73:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label76
	b label109
label76:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label79
	b label108
label79:
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
	bge label1790
	vmov.f32 s0, s1
	b label79
label1790:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label86
	b label85
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
label4500:
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
	b label4500
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
	bgt label1895
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label102
	b label1900
label1895:
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
	bgt label1895
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label102
label1900:
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
	bgt label1895
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label102
	b label1900
label4459:
	mov r0, #0
	b label104
label102:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label103
	b label4459
label85:
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
	b label85
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
label109:
	ldr r2, [sp, #136]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
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
	bge label76
	b label109
label108:
	ldr r2, [sp, #136]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
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
	bge label79
	b label108
label110:
	ldr r2, [sp, #136]
	add r3, r2, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r3, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
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
	bge label73
	b label110
label103:
	movw r0, #14269
	movt r0, #46470
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
label104:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20664
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, pc }
