.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	movw r12, #20672
	movt r12, #18
	sub sp, sp, r12
	add r2, sp, #296
	str r2, [sp, #144]
	movw r12, #7084
	movt r12, #6
	add r1, sp, r12
	str r1, [sp, #128]
	movw r12, #13872
	movt r12, #12
	add r1, sp, r12
	str r1, [sp, #136]
	mov r0, #62
	bl _sysy_starttime
	mov r0, #0
label2:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
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
	str r0, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label221
	b label134
label221:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #60]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label227
	b label111
label227:
	mov r0, #0
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label233
	b label18
label233:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label45
	b label88
label45:
	ldr r0, [sp, #152]
	add r0, r0, #1
	cmp r0, #1000
	bge label46
	str r0, [sp, #152]
	mov r0, #0
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label221
	b label134
label46:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r2, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label50
	b label87
label111:
	ldr r3, [sp, #60]
	add r4, r3, #15
	str r4, [sp, #0]
	ldr r3, [sp, #60]
	add r3, r3, #14
	str r3, [sp, #48]
	ldr r3, [sp, #60]
	add r3, r3, #13
	str r3, [sp, #120]
	ldr r3, [sp, #60]
	add r3, r3, #12
	str r3, [sp, #112]
	ldr r3, [sp, #60]
	add r3, r3, #11
	str r3, [sp, #124]
	ldr r3, [sp, #60]
	add r3, r3, #10
	str r3, [sp, #132]
	ldr r3, [sp, #60]
	add r3, r3, #9
	str r3, [sp, #140]
	ldr r3, [sp, #60]
	add r3, r3, #8
	str r3, [sp, #116]
	ldr r3, [sp, #60]
	add r3, r3, #7
	str r3, [sp, #148]
	ldr r3, [sp, #60]
	add r3, r3, #6
	str r3, [sp, #156]
	ldr r3, [sp, #60]
	add r3, r3, #5
	str r3, [sp, #164]
	ldr r3, [sp, #60]
	add r3, r3, #4
	str r3, [sp, #172]
	ldr r3, [sp, #60]
	add r3, r3, #3
	str r3, [sp, #180]
	ldr r3, [sp, #60]
	add r3, r3, #2
	str r3, [sp, #288]
	ldr r3, [sp, #60]
	add r3, r3, #1
	str r3, [sp, #52]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label2335
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label118
	b label133
label2335:
	mov r0, r1
	b label112
label133:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #60]
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
	ldr r3, [sp, #288]
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
	ldr r3, [sp, #180]
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
	ldr r3, [sp, #172]
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
	ldr r3, [sp, #164]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #5
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	ldr r3, [sp, #156]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #6
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #140]
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
	ldr r3, [sp, #132]
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
	ldr r3, [sp, #124]
	add r6, r1, r3
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #112]
	add r5, r1, r3
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #48]
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
	ldr r4, [sp, #0]
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
	bge label118
	b label133
label18:
	ldr r3, [sp, #168]
	add r1, r3, #15
	str r1, [sp, #92]
	ldr r3, [sp, #168]
	add r2, r3, #14
	str r2, [sp, #188]
	ldr r3, [sp, #168]
	add r2, r3, #13
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #168]
	add r2, r3, #12
	str r2, [sp, #196]
	ldr r3, [sp, #168]
	add r2, r3, #11
	str r2, [sp, #88]
	ldr r3, [sp, #168]
	add r2, r3, #10
	str r2, [sp, #84]
	ldr r3, [sp, #168]
	add r2, r3, #9
	str r2, [sp, #80]
	ldr r3, [sp, #168]
	add r2, r3, #8
	str r2, [sp, #204]
	ldr r3, [sp, #168]
	add r2, r3, #7
	str r2, [sp, #76]
	ldr r3, [sp, #168]
	add r2, r3, #6
	str r2, [sp, #72]
	ldr r3, [sp, #168]
	add r2, r3, #5
	str r2, [sp, #96]
	ldr r3, [sp, #168]
	add r2, r3, #4
	str r2, [sp, #100]
	ldr r3, [sp, #168]
	add r2, r3, #3
	str r2, [sp, #108]
	ldr r3, [sp, #168]
	add r2, r3, #2
	str r2, [sp, #68]
	ldr r3, [sp, #168]
	add r2, r3, #1
	str r2, [sp, #184]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label38
	add r2, r0, #16
	str r2, [sp, #200]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
	b label37
label32:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r1, r3, r0
	ldr r2, [sp, #184]
	add r2, r0, r2
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #184]
	add r1, r1, r2
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label38
	b label32
label38:
	ldr r2, [sp, #144]
	ldr r3, [sp, #168]
	add r1, r2, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r2, [sp, #184]
	mov r3, r2
	str r2, [sp, #168]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label233
	b label18
label118:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label2347
	b label132
label2347:
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #192]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label125
label124:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #60]
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
	ldr r3, [sp, #288]
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
	ldr r3, [sp, #180]
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
	ldr r3, [sp, #172]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #140]
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
	ldr r3, [sp, #132]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #48]
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
	ldr r4, [sp, #0]
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
	bge label125
	b label124
label125:
	add r1, r0, #16
	str r1, [sp, #272]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label2532
	b label128
label2532:
	mov r1, r0
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s1, [r0, #0]
	ldr r3, [sp, #60]
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
	bge label112
	b label2532
label22:
	add r2, r0, #16
	str r2, [sp, #208]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label25
label36:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r4, r3, r0
	ldr r2, [sp, #184]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #68]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #108]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #100]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #72]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #76]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #204]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #80]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #84]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #88]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #196]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #188]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #92]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #184]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #184]
	add r0, r0, r2
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
	bge label25
	b label36
label25:
	add r2, r0, #16
	str r2, [sp, #216]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label28
label35:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r4, r3, r0
	ldr r2, [sp, #184]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #68]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #108]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #100]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #72]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #76]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #204]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #80]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #84]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #88]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #196]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #188]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #92]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #184]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #184]
	add r0, r0, r2
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
	bge label28
	b label35
label28:
	add r2, r0, #16
	str r2, [sp, #264]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label32
label31:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r3, r3, r0
	ldr r2, [sp, #184]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r2, [sp, #184]
	add r3, r2, r0
	add r4, r0, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #68]
	add r3, r2, r0
	add r4, r0, #2
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #108]
	add r3, r2, r0
	add r4, r0, #3
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #100]
	add r3, r2, r0
	add r4, r0, #4
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r2, r0
	add r4, r0, #5
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #72]
	add r3, r2, r0
	add r4, r0, #6
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #76]
	add r3, r2, r0
	add r4, r0, #7
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #204]
	add r3, r2, r0
	add r4, r0, #8
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #80]
	add r3, r2, r0
	add r4, r0, #9
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #84]
	add r3, r2, r0
	add r4, r0, #10
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #88]
	add r3, r2, r0
	add r4, r0, #11
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #196]
	add r3, r2, r0
	add r4, r0, #12
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r2, r0
	add r4, r0, #13
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #188]
	add r3, r2, r0
	add r4, r0, #14
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #92]
	add r1, r1, r0
	add r0, r0, #15
	ldr r2, [sp, #184]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #184]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #264]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #264]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label32
	b label31
label134:
	ldr r3, [sp, #160]
	add r1, r3, #15
	str r1, [sp, #212]
	ldr r3, [sp, #160]
	add r2, r3, #14
	str r2, [sp, #220]
	ldr r3, [sp, #160]
	add r2, r3, #13
	str r2, [sp, #228]
	ldr r3, [sp, #160]
	add r2, r3, #12
	str r2, [sp, #260]
	ldr r3, [sp, #160]
	add r2, r3, #11
	str r2, [sp, #268]
	ldr r3, [sp, #160]
	add r2, r3, #10
	str r2, [sp, #276]
	ldr r3, [sp, #160]
	add r2, r3, #9
	str r2, [sp, #284]
	ldr r3, [sp, #160]
	add r2, r3, #8
	str r2, [sp, #292]
	ldr r3, [sp, #160]
	add r2, r3, #7
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #160]
	add r2, r3, #6
	str r2, [sp, #236]
	ldr r3, [sp, #160]
	add r2, r3, #5
	str r2, [sp, #104]
	ldr r3, [sp, #160]
	add r2, r3, #4
	str r2, [sp, #244]
	ldr r3, [sp, #160]
	add r2, r3, #3
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	str r2, [r12, #0]
	ldr r3, [sp, #160]
	add r2, r3, #2
	str r2, [sp, #252]
	ldr r3, [sp, #160]
	add r2, r3, #1
	str r2, [sp, #176]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label154
	add r2, r0, #16
	str r2, [sp, #232]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label138
label153:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r2, [sp, #176]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #252]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #244]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #104]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #236]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #292]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #284]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #276]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #268]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #260]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #228]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #220]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #212]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #176]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #232]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #232]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label138
	b label153
label149:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r1, r3, r0
	ldr r2, [sp, #176]
	add r2, r0, r2
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #176]
	add r1, r1, r2
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label154
	b label149
label154:
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r2, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r2, [sp, #176]
	mov r3, r2
	str r2, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label221
	b label134
label138:
	add r2, r0, #16
	str r2, [sp, #240]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label142
label141:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r2, [sp, #176]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #252]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #244]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #104]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #236]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #292]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #284]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #276]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #268]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #260]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #228]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #220]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #212]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #176]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #240]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #240]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label142
	b label141
label142:
	add r2, r0, #16
	str r2, [sp, #248]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label146
	b label145
label146:
	add r2, r0, #16
	str r2, [sp, #280]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label149
label152:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r3, r3, r0
	ldr r2, [sp, #176]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r2, [sp, #176]
	add r3, r2, r0
	add r4, r0, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #252]
	add r3, r2, r0
	add r4, r0, #2
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r2, r0
	add r4, r0, #3
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #244]
	add r3, r2, r0
	add r4, r0, #4
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #104]
	add r3, r2, r0
	add r4, r0, #5
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #236]
	add r3, r2, r0
	add r4, r0, #6
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r2, r0
	add r4, r0, #7
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #292]
	add r3, r2, r0
	add r4, r0, #8
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #284]
	add r3, r2, r0
	add r4, r0, #9
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #276]
	add r3, r2, r0
	add r4, r0, #10
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #268]
	add r3, r2, r0
	add r4, r0, #11
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #260]
	add r3, r2, r0
	add r4, r0, #12
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #228]
	add r3, r2, r0
	add r4, r0, #13
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #220]
	add r3, r2, r0
	add r4, r0, #14
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #212]
	add r1, r1, r0
	add r0, r0, #15
	ldr r2, [sp, #176]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #280]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #280]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label149
	b label152
label145:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r2, [sp, #176]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #252]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	movw r12, #20664
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #244]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #104]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #236]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #292]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #284]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #276]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #268]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #260]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #228]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #220]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #176]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #176]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #212]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #176]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #176]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #248]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #248]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label146
	b label145
label128:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #60]
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
	ldr r3, [sp, #288]
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
	ldr r3, [sp, #180]
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
	ldr r3, [sp, #172]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #140]
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
	ldr r3, [sp, #132]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #48]
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
	ldr r4, [sp, #0]
	add r0, r4, r0
	ldr r3, [sp, #52]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #272]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #272]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #272]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label2532
	b label128
label132:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #60]
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
	ldr r3, [sp, #288]
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
	ldr r3, [sp, #180]
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
	ldr r3, [sp, #172]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #140]
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
	ldr r3, [sp, #132]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #48]
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
	ldr r4, [sp, #0]
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
	bge label2347
	b label132
label37:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r4, r3, r0
	ldr r2, [sp, #184]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #68]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #108]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #100]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #72]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #76]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #204]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #80]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #84]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #88]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #196]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	movw r12, #20668
	movt r12, #18
	add r12, sp, r12
	ldr r2, [r12, #0]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #188]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #184]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #184]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #92]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #184]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #184]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #200]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #200]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
	b label37
label88:
	ldr r3, [sp, #64]
	add r4, r3, #15
	str r4, [sp, #32]
	ldr r3, [sp, #64]
	add r3, r3, #14
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #64]
	add r3, r3, #13
	str r3, [sp, #40]
	ldr r3, [sp, #64]
	add r3, r3, #12
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #64]
	add r3, r3, #11
	str r3, [sp, #36]
	ldr r3, [sp, #64]
	add r3, r3, #10
	str r3, [sp, #28]
	ldr r3, [sp, #64]
	add r3, r3, #9
	str r3, [sp, #24]
	ldr r3, [sp, #64]
	add r3, r3, #8
	str r3, [sp, #20]
	ldr r3, [sp, #64]
	add r3, r3, #7
	str r3, [sp, #16]
	ldr r3, [sp, #64]
	add r3, r3, #6
	str r3, [sp, #12]
	ldr r3, [sp, #64]
	add r3, r3, #5
	movw r12, #13868
	movt r12, #12
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #64]
	add r3, r3, #4
	str r3, [sp, #8]
	ldr r3, [sp, #64]
	add r3, r3, #3
	str r3, [sp, #44]
	ldr r3, [sp, #64]
	add r3, r3, #2
	str r3, [sp, #4]
	ldr r3, [sp, #64]
	add r3, r3, #1
	str r3, [sp, #56]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1605
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label96
	b label95
label1605:
	mov r0, r1
label89:
	ldr r1, [sp, #136]
	ldr r3, [sp, #64]
	add r1, r1, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r3, [sp, #56]
	str r3, [sp, #64]
	mov r1, r0
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label45
	b label88
label95:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #64]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #44]
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
	ldr r3, [sp, #8]
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
	movw r12, #13868
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #36]
	add r6, r1, r3
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #11
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r5, r1, r3
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #12
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #40]
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
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r4, [sp, #32]
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
	bge label96
	b label95
label96:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1778
label110:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #64]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #44]
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
	ldr r3, [sp, #8]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #4
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	movw r12, #13868
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
	add r6, r1, r3
	mul r3, r4, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #7
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	ldr r3, [sp, #20]
	add r5, r1, r3
	mul r3, r6, r5
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #8
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #36]
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
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #40]
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
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r4, [sp, #32]
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
	bge label1778
	b label110
label1778:
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #224]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label102
label109:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #64]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #44]
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
	ldr r3, [sp, #8]
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
	movw r12, #13868
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #36]
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
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #40]
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
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r4, [sp, #32]
	add r0, r0, r4
	ldr r3, [sp, #56]
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
	bge label102
	b label109
label102:
	add r1, r0, #16
	str r1, [sp, #256]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label1788
label105:
	ldr r2, [sp, #144]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #64]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #44]
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
	ldr r3, [sp, #8]
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
	movw r12, #13868
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #12]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #36]
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
	movw r12, #7080
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #40]
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
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r4, [sp, #32]
	add r0, r4, r0
	ldr r3, [sp, #56]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #256]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #256]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #256]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label1788
	b label105
label1788:
	mov r1, r0
	ldr r2, [sp, #144]
	add r0, r2, r0, lsl #2
	vldr s1, [r0, #0]
	ldr r3, [sp, #64]
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
	bge label89
	b label1788
label112:
	ldr r1, [sp, #128]
	ldr r3, [sp, #60]
	add r1, r1, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r3, [sp, #52]
	str r3, [sp, #60]
	mov r1, r0
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label227
	b label111
label50:
	add r2, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label53
	b label86
label53:
	add r2, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label57
	b label56
label57:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s1, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1130
	vmov.f32 s0, s1
	b label57
label1130:
	mov r0, #0
	vmov s0, r0
	add r2, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label64
label63:
	ldr r1, [sp, #128]
	add r0, r1, r0, lsl #2
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
	mov r0, r2
	add r2, r2, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label64
	b label63
label64:
	add r2, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label68
label67:
	ldr r1, [sp, #128]
	add r0, r1, r0, lsl #2
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
	mov r0, r2
	add r2, r2, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label68
	b label67
label68:
	add r2, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label71
	b label85
label71:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
label4502:
	ldr r1, [sp, #128]
	add r1, r1, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label74
	b label4502
label74:
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
	bgt label1300
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label81
	b label1305
label1300:
	mov r0, #1
	cmp r0, #0
	beq label81
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
	bgt label1300
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label81
	b label1305
label4457:
	mov r0, #0
	b label82
label81:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label1321
	b label4457
label1305:
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
	bgt label1300
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label81
	b label1305
label85:
	ldr r1, [sp, #128]
	add r0, r1, r0, lsl #2
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
	mov r0, r2
	add r2, r2, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label71
	b label85
label56:
	ldr r1, [sp, #136]
	add r3, r1, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r1, [sp, #128]
	add r0, r1, r0, lsl #2
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
	mov r0, r2
	add r2, r2, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label57
	b label56
label86:
	ldr r1, [sp, #136]
	add r3, r1, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r1, [sp, #128]
	add r0, r1, r0, lsl #2
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
	mov r0, r2
	add r2, r2, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label53
	b label86
label87:
	ldr r1, [sp, #136]
	add r3, r1, r0, lsl #2
	vldr s1, [r3, #0]
	ldr r1, [sp, #128]
	add r0, r1, r0, lsl #2
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
	mov r0, r2
	add r2, r2, #16
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label50
	b label87
label1321:
	movw r0, #14269
	movt r0, #46470
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
label82:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20672
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, pc }
