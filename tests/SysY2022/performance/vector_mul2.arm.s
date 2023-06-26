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
	add r2, sp, #280
	str r2, [sp, #144]
	movw r12, #7068
	movt r12, #6
	add r2, sp, r12
	str r2, [sp, #128]
	movw r12, #13856
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
	b label10
label221:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label985
	b label37
label985:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #168]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label1721
	b label64
label1721:
	mov r1, #0
	vmov s0, r1
	mov r3, r1
	str r1, [sp, #60]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label91
	b label134
label91:
	ldr r0, [sp, #152]
	add r0, r0, #1
	cmp r0, #1000
	bge label92
	str r0, [sp, #152]
	mov r0, #0
	vmov s0, r0
	mov r3, r0
	str r0, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label221
	b label10
label92:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
	add r3, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label97
label96:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r3
	add r3, r3, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label97
	b label96
label97:
	add r3, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label100
	b label133
label37:
	ldr r3, [sp, #64]
	add r4, r3, #15
	str r4, [sp, #8]
	ldr r3, [sp, #64]
	add r3, r3, #14
	str r3, [sp, #12]
	ldr r3, [sp, #64]
	add r3, r3, #13
	str r3, [sp, #16]
	ldr r3, [sp, #64]
	add r3, r3, #12
	str r3, [sp, #20]
	ldr r3, [sp, #64]
	add r3, r3, #11
	str r3, [sp, #148]
	ldr r3, [sp, #64]
	add r3, r3, #10
	str r3, [sp, #156]
	ldr r3, [sp, #64]
	add r3, r3, #9
	str r3, [sp, #164]
	ldr r3, [sp, #64]
	add r3, r3, #8
	str r3, [sp, #272]
	ldr r3, [sp, #64]
	add r3, r3, #7
	str r3, [sp, #264]
	ldr r3, [sp, #64]
	add r3, r3, #6
	str r3, [sp, #256]
	ldr r3, [sp, #64]
	add r3, r3, #5
	str r3, [sp, #24]
	ldr r3, [sp, #64]
	add r3, r3, #4
	str r3, [sp, #28]
	ldr r3, [sp, #64]
	add r3, r3, #3
	str r3, [sp, #32]
	ldr r3, [sp, #64]
	add r3, r3, #2
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #64]
	add r3, r3, #1
	str r3, [sp, #52]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label38
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label44
	b label59
label1364:
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
	bge label1556
	b label1364
label1556:
	mov r1, r0
	ldr r2, [sp, #128]
	ldr r3, [sp, #64]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #52]
	str r3, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label985
	b label37
label64:
	ldr r3, [sp, #168]
	add r2, r3, #15
	str r2, [sp, #84]
	ldr r3, [sp, #168]
	add r3, r3, #14
	str r3, [sp, #80]
	ldr r3, [sp, #168]
	add r3, r3, #13
	str r3, [sp, #104]
	ldr r3, [sp, #168]
	add r3, r3, #12
	str r3, [sp, #72]
	ldr r3, [sp, #168]
	add r3, r3, #11
	str r3, [sp, #100]
	ldr r3, [sp, #168]
	add r3, r3, #10
	str r3, [sp, #260]
	ldr r3, [sp, #168]
	add r3, r3, #9
	movw r12, #20652
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
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #6
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #5
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #168]
	add r3, r3, #4
	str r3, [sp, #68]
	ldr r3, [sp, #168]
	add r3, r3, #3
	str r3, [sp, #92]
	ldr r3, [sp, #168]
	add r3, r3, #2
	str r3, [sp, #76]
	ldr r3, [sp, #168]
	add r3, r3, #1
	str r3, [sp, #276]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label65
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label72
label71:
	ldr r2, [sp, #128]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #168]
	add r5, r3, r1
	ldr r3, [sp, #276]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	ldr r3, [sp, #276]
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	add r5, r1, #1
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #76]
	add r4, r1, r3
	add r5, r1, #2
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #92]
	add r4, r1, r3
	add r5, r1, #3
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #68]
	add r4, r1, r3
	add r5, r1, #4
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #5
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #6
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #7
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #8
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #9
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #260]
	add r4, r1, r3
	add r5, r1, #10
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #100]
	add r4, r1, r3
	add r5, r1, #11
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #72]
	add r4, r1, r3
	add r5, r1, #12
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #104]
	add r4, r1, r3
	add r5, r1, #13
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r3, [sp, #80]
	add r4, r1, r3
	add r5, r1, #14
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r2, [sp, #84]
	add r2, r1, r2
	add r1, r1, #15
	ldr r3, [sp, #276]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #276]
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
	bge label72
	b label71
label72:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1929
	b label86
label81:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r1, r3, r0
	ldr r3, [sp, #276]
	add r2, r0, r3
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #276]
	add r1, r1, r3
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label1955
	b label81
label1955:
	mov r1, r0
	ldr r2, [sp, #144]
	ldr r3, [sp, #168]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #276]
	str r3, [sp, #168]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label1721
	b label64
label44:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label1018
	b label47
label1018:
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #176]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label52
label51:
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
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #32]
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #256]
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
	ldr r3, [sp, #264]
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
	ldr r3, [sp, #272]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #12]
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
	ldr r4, [sp, #8]
	add r0, r0, r4
	ldr r3, [sp, #52]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #176]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #176]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #176]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label52
	b label51
label52:
	add r1, r0, #16
	str r1, [sp, #240]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label1364
	b label55
label1929:
	mov r0, r1
	add r2, r1, #16
	str r2, [sp, #208]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label78
label85:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r4, r3, r0
	ldr r3, [sp, #276]
	add r2, r0, r3
	mul r3, r4, r2
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #76]
	add r2, r0, r3
	add r4, r0, #2
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #92]
	add r2, r0, r3
	add r4, r0, #3
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #68]
	add r2, r0, r3
	add r4, r0, #4
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #5
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #6
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #7
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #8
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r0, r3
	add r4, r0, #9
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #260]
	add r2, r0, r3
	add r4, r0, #10
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #100]
	add r2, r0, r3
	add r4, r0, #11
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #72]
	add r2, r0, r3
	add r4, r0, #12
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #104]
	add r2, r0, r3
	add r4, r0, #13
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #80]
	add r2, r0, r3
	add r4, r0, #14
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r2, [sp, #84]
	add r1, r0, r2
	add r0, r0, #15
	ldr r3, [sp, #276]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #276]
	add r0, r0, r3
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
	bge label78
	b label85
label78:
	add r2, r0, #16
	str r2, [sp, #224]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label81
label84:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #168]
	add r2, r3, r0
	ldr r3, [sp, #276]
	add r3, r0, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r3, [sp, #276]
	add r2, r3, r0
	add r4, r0, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r3, [sp, #76]
	add r2, r3, r0
	add r4, r0, #2
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r3, [sp, #92]
	add r2, r3, r0
	add r4, r0, #3
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r3, [sp, #68]
	add r2, r3, r0
	add r4, r0, #4
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #5
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #6
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #7
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #8
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r2, r3, r0
	add r4, r0, #9
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r3, [sp, #260]
	add r2, r3, r0
	add r4, r0, #10
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r3, [sp, #100]
	add r2, r3, r0
	add r4, r0, #11
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r3, [sp, #72]
	add r2, r3, r0
	add r4, r0, #12
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r3, [sp, #104]
	add r2, r3, r0
	add r4, r0, #13
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r3, [sp, #80]
	add r2, r3, r0
	add r4, r0, #14
	ldr r3, [sp, #276]
	add r3, r4, r3
	mul r2, r2, r3
	add r2, r2, r2, lsr #31
	asr r2, r2, #1
	ldr r3, [sp, #276]
	add r2, r2, r3
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r2, [sp, #84]
	add r1, r2, r0
	add r0, r0, #15
	ldr r3, [sp, #276]
	add r0, r0, r3
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r3, [sp, #276]
	add r0, r0, r3
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #224]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #224]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label81
	b label84
label10:
	ldr r3, [sp, #160]
	add r1, r3, #15
	str r1, [sp, #88]
	ldr r3, [sp, #160]
	add r2, r3, #14
	str r2, [sp, #172]
	ldr r3, [sp, #160]
	add r2, r3, #13
	str r2, [sp, #252]
	ldr r3, [sp, #160]
	add r2, r3, #12
	str r2, [sp, #180]
	ldr r3, [sp, #160]
	add r2, r3, #11
	str r2, [sp, #188]
	ldr r3, [sp, #160]
	add r2, r3, #10
	str r2, [sp, #196]
	ldr r3, [sp, #160]
	add r2, r3, #9
	str r2, [sp, #204]
	ldr r3, [sp, #160]
	add r2, r3, #8
	str r2, [sp, #212]
	ldr r3, [sp, #160]
	add r2, r3, #7
	str r2, [sp, #220]
	ldr r3, [sp, #160]
	add r2, r3, #6
	str r2, [sp, #228]
	ldr r3, [sp, #160]
	add r2, r3, #5
	str r2, [sp, #96]
	ldr r3, [sp, #160]
	add r2, r3, #4
	str r2, [sp, #236]
	ldr r3, [sp, #160]
	add r2, r3, #3
	str r2, [sp, #244]
	ldr r3, [sp, #160]
	add r2, r3, #2
	str r2, [sp, #108]
	ldr r3, [sp, #160]
	add r2, r3, #1
	str r2, [sp, #268]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label30
	add r2, r0, #16
	str r2, [sp, #192]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label15
label14:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r2, [sp, #268]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #108]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #244]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #236]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #228]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #220]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #212]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #204]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #196]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #188]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #180]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #252]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #172]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #88]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #268]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #268]
	add r0, r0, r2
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r2, [sp, #192]
	mov r0, r2
	add r2, r2, #16
	str r2, [sp, #192]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label15
	b label14
label15:
	add r2, r0, #16
	str r2, [sp, #184]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label19
	b label18
label19:
	add r2, r0, #16
	str r2, [sp, #200]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label22
	b label29
label26:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r1, r3, r0
	ldr r2, [sp, #268]
	add r2, r0, r2
	mul r1, r1, r2
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r2, [sp, #268]
	add r1, r1, r2
	vmov s2, r1
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label30
	b label26
label30:
	ldr r2, [sp, #144]
	ldr r3, [sp, #160]
	add r1, r2, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r2, [sp, #268]
	mov r3, r2
	str r2, [sp, #160]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label221
	b label10
label22:
	add r2, r0, #16
	str r2, [sp, #248]
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	bge label26
label25:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r3, r3, r0
	ldr r2, [sp, #268]
	add r2, r0, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	ldr r2, [sp, #268]
	add r3, r2, r0
	add r4, r0, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #108]
	add r3, r2, r0
	add r4, r0, #2
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #244]
	add r3, r2, r0
	add r4, r0, #3
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #236]
	add r3, r2, r0
	add r4, r0, #4
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r2, r0
	add r4, r0, #5
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #228]
	add r3, r2, r0
	add r4, r0, #6
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #220]
	add r3, r2, r0
	add r4, r0, #7
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #212]
	add r3, r2, r0
	add r4, r0, #8
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #204]
	add r3, r2, r0
	add r4, r0, #9
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #196]
	add r3, r2, r0
	add r4, r0, #10
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #188]
	add r3, r2, r0
	add r4, r0, #11
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #180]
	add r3, r2, r0
	add r4, r0, #12
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #252]
	add r3, r2, r0
	add r4, r0, #13
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #172]
	add r3, r2, r0
	add r4, r0, #14
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #88]
	add r1, r1, r0
	add r0, r0, #15
	ldr r2, [sp, #268]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #268]
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
	bge label26
	b label25
label29:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r2, [sp, #268]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #108]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #244]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #236]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #228]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #220]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #212]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #204]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #196]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #188]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #180]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #252]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #172]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #88]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #268]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #268]
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
	b label29
label18:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r3, [sp, #160]
	add r4, r3, r0
	ldr r2, [sp, #268]
	add r3, r0, r2
	mul r2, r4, r3
	add r2, r2, r2, lsr #31
	asr r4, r2, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	add r4, r0, #1
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	ldr r2, [sp, #108]
	add r3, r0, r2
	add r4, r0, #2
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	ldr r2, [sp, #244]
	add r3, r0, r2
	add r4, r0, #3
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	ldr r2, [sp, #236]
	add r3, r0, r2
	add r4, r0, #4
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	ldr r2, [sp, #96]
	add r3, r0, r2
	add r4, r0, #5
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	ldr r2, [sp, #228]
	add r3, r0, r2
	add r4, r0, #6
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	ldr r2, [sp, #220]
	add r3, r0, r2
	add r4, r0, #7
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	ldr r2, [sp, #212]
	add r3, r0, r2
	add r4, r0, #8
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	ldr r2, [sp, #204]
	add r3, r0, r2
	add r4, r0, #9
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	ldr r2, [sp, #196]
	add r3, r0, r2
	add r4, r0, #10
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	ldr r2, [sp, #188]
	add r3, r0, r2
	add r4, r0, #11
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	ldr r2, [sp, #180]
	add r3, r0, r2
	add r4, r0, #12
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	ldr r2, [sp, #252]
	add r3, r0, r2
	add r4, r0, #13
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	ldr r2, [sp, #172]
	add r3, r0, r2
	add r4, r0, #14
	ldr r2, [sp, #268]
	add r2, r4, r2
	mul r2, r3, r2
	add r2, r2, r2, lsr #31
	asr r3, r2, #1
	ldr r2, [sp, #268]
	add r2, r3, r2
	vmov s2, r2
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	ldr r1, [sp, #88]
	add r1, r0, r1
	add r0, r0, #15
	ldr r2, [sp, #268]
	add r0, r0, r2
	mul r0, r1, r0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r2, [sp, #268]
	add r0, r0, r2
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
	bge label19
	b label18
label59:
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
	movw r12, #20640
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #256]
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
	ldr r3, [sp, #264]
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
	ldr r3, [sp, #272]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #12]
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
	ldr r4, [sp, #8]
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
	bge label44
	b label59
label55:
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
	movw r12, #20640
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #32]
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #256]
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
	ldr r3, [sp, #264]
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
	ldr r3, [sp, #272]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #12]
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
	ldr r4, [sp, #8]
	add r0, r4, r0
	ldr r3, [sp, #52]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #240]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #240]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #240]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label1364
	b label55
label47:
	ldr r2, [sp, #144]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #64]
	add r4, r3, r1
	ldr r3, [sp, #52]
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
	movw r12, #20640
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
	ldr r3, [sp, #28]
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
	ldr r3, [sp, #24]
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
	ldr r3, [sp, #256]
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
	ldr r3, [sp, #264]
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
	ldr r3, [sp, #272]
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
	ldr r3, [sp, #164]
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
	ldr r3, [sp, #156]
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
	ldr r3, [sp, #148]
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
	ldr r3, [sp, #20]
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
	ldr r3, [sp, #16]
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
	ldr r3, [sp, #12]
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
	ldr r4, [sp, #8]
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
	bge label1018
	b label47
label86:
	ldr r2, [sp, #128]
	add r2, r2, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r3, [sp, #168]
	add r5, r3, r1
	ldr r3, [sp, #276]
	add r4, r1, r3
	mul r3, r5, r4
	add r3, r3, r3, lsr #31
	asr r5, r3, #1
	ldr r3, [sp, #276]
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	add r5, r1, #1
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	ldr r3, [sp, #76]
	add r4, r1, r3
	add r5, r1, #2
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	ldr r3, [sp, #92]
	add r4, r1, r3
	add r5, r1, #3
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	ldr r3, [sp, #68]
	add r4, r1, r3
	add r5, r1, #4
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	movw r12, #20644
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #5
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	movw r12, #20660
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #6
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	movw r12, #20648
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #7
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	movw r12, #20656
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #8
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	movw r12, #20652
	movt r12, #18
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	add r5, r1, #9
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #260]
	add r4, r1, r3
	add r5, r1, #10
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	ldr r3, [sp, #100]
	add r4, r1, r3
	add r5, r1, #11
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #48]
	ldr r3, [sp, #72]
	add r4, r1, r3
	add r5, r1, #12
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #52]
	ldr r3, [sp, #104]
	add r4, r1, r3
	add r5, r1, #13
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #56]
	ldr r3, [sp, #80]
	add r4, r1, r3
	add r5, r1, #14
	ldr r3, [sp, #276]
	add r3, r5, r3
	mul r3, r4, r3
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	ldr r3, [sp, #276]
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #60]
	ldr r2, [sp, #84]
	add r2, r1, r2
	add r1, r1, #15
	ldr r3, [sp, #276]
	add r1, r1, r3
	mul r1, r2, r1
	add r1, r1, r1, lsr #31
	asr r1, r1, #1
	ldr r3, [sp, #276]
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
	bge label1929
	b label86
label134:
	ldr r3, [sp, #60]
	add r4, r3, #15
	str r4, [sp, #140]
	ldr r3, [sp, #60]
	add r3, r3, #14
	str r3, [sp, #132]
	ldr r3, [sp, #60]
	add r3, r3, #13
	str r3, [sp, #36]
	ldr r3, [sp, #60]
	add r3, r3, #12
	movw r12, #13852
	movt r12, #12
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #60]
	add r3, r3, #11
	str r3, [sp, #40]
	ldr r3, [sp, #60]
	add r3, r3, #10
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	str r3, [r12, #0]
	ldr r3, [sp, #60]
	add r3, r3, #9
	str r3, [sp, #44]
	ldr r3, [sp, #60]
	add r3, r3, #8
	str r3, [sp, #124]
	ldr r3, [sp, #60]
	add r3, r3, #7
	str r3, [sp, #120]
	ldr r3, [sp, #60]
	add r3, r3, #6
	str r3, [sp, #116]
	ldr r3, [sp, #60]
	add r3, r3, #5
	str r3, [sp, #112]
	ldr r3, [sp, #60]
	add r3, r3, #4
	str r3, [sp, #0]
	ldr r3, [sp, #60]
	add r3, r3, #3
	str r3, [sp, #4]
	ldr r3, [sp, #60]
	add r3, r3, #2
	str r3, [sp, #48]
	ldr r3, [sp, #60]
	add r3, r3, #1
	str r3, [sp, #56]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	bge label3093
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label142
	b label141
label3093:
	mov r0, r1
label135:
	ldr r1, [sp, #136]
	ldr r3, [sp, #60]
	add r1, r1, r3, lsl #2
	vstr s0, [r1, #0]
	ldr r3, [sp, #56]
	str r3, [sp, #60]
	mov r1, r0
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label91
	b label134
label141:
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
	ldr r3, [sp, #48]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #0]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #44]
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
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #40]
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
	movw r12, #13852
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #36]
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
	ldr r3, [sp, #132]
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
	ldr r4, [sp, #140]
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
	bge label142
	b label141
label142:
	add r0, r1, #16
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label3266
	b label145
label3266:
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #216]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label149
	b label156
label145:
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
	ldr r3, [sp, #48]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #0]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #44]
	add r6, r1, r3
	mul r3, r5, r6
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r4, r1, #9
	add r3, r4, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
	add r4, r1, r3
	mul r3, r6, r4
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r5, r1, #10
	add r3, r5, r3
	vmov s2, r3
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	ldr r3, [sp, #40]
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
	movw r12, #13852
	movt r12, #12
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #36]
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
	ldr r3, [sp, #132]
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
	ldr r4, [sp, #140]
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
	bge label3266
	b label145
label149:
	add r1, r0, #16
	str r1, [sp, #232]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label3437
label155:
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
	ldr r3, [sp, #48]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #0]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #44]
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
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #40]
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
	movw r12, #13852
	movt r12, #12
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
	ldr r3, [sp, #36]
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
	ldr r3, [sp, #132]
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
	ldr r4, [sp, #140]
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
	bge label3437
	b label155
label3437:
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
	bge label135
	b label3437
label156:
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
	ldr r3, [sp, #48]
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
	ldr r3, [sp, #4]
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
	ldr r3, [sp, #0]
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
	ldr r3, [sp, #112]
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
	ldr r3, [sp, #116]
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
	ldr r3, [sp, #120]
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
	ldr r3, [sp, #124]
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
	ldr r3, [sp, #44]
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
	movw r12, #7064
	movt r12, #6
	add r12, sp, r12
	ldr r3, [r12, #0]
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
	ldr r3, [sp, #40]
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
	movw r12, #13852
	movt r12, #12
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
	ldr r3, [sp, #36]
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
	ldr r3, [sp, #132]
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
	ldr r4, [sp, #140]
	add r0, r0, r4
	ldr r3, [sp, #56]
	add r1, r2, r3
	mul r0, r0, r1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	ldr r1, [sp, #216]
	add r0, r0, r1
	vmov s2, r0
	vcvt.f32.s32 s2, s2
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	ldr r1, [sp, #216]
	mov r0, r1
	add r1, r1, #16
	str r1, [sp, #216]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label149
	b label156
label38:
	ldr r2, [sp, #128]
	ldr r3, [sp, #64]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #52]
	str r3, [sp, #64]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label985
	b label37
label65:
	ldr r2, [sp, #144]
	ldr r3, [sp, #168]
	add r0, r2, r3, lsl #2
	vstr s0, [r0, #0]
	ldr r3, [sp, #276]
	str r3, [sp, #168]
	movw r0, #34464
	movt r0, #1
	cmp r3, r0
	bge label1721
	b label64
label100:
	add r3, r0, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label104
	b label103
label104:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
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
	bge label2716
	vmov.f32 s0, s1
	b label104
label2716:
	mov r0, #0
	vmov s0, r0
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label111
label110:
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
	bge label111
	b label110
label111:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label115
label114:
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
	bge label115
	b label114
label115:
	add r1, r0, #16
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label119
label118:
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
	bge label119
	b label118
label119:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
label4514:
	ldr r2, [sp, #128]
	add r1, r2, r0, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s0, s0, s2
	add r0, r0, #1
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label122
	b label4514
label122:
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
	bgt label2951
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label128
	b label2956
label2951:
	mov r0, #1
	cmp r0, #0
	beq label128
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
	bgt label2951
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label128
label2956:
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
	bgt label2951
	movw r0, #14269
	movt r0, #46470
	vmov s4, r0
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwmi r0, #1
	cmp r0, #0
	beq label128
	b label2956
label133:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r3
	add r3, r3, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label100
	b label133
label103:
	ldr r1, [sp, #136]
	add r1, r1, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r2, [sp, #128]
	add r0, r2, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	vldr s2, [r0, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vldr s2, [r0, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r0, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r0, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r0, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r0, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r0, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r0, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r0, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r0, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r0, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r0, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r0, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r0, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	vldr s2, [r0, #60]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	mov r0, r3
	add r3, r3, #16
	movw r1, #34464
	movt r1, #1
	cmp r3, r1
	bge label104
	b label103
label128:
	mov r0, #1065353216
	vmov s1, r0
	vsub.f32 s0, s0, s1
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bls label129
	mov r0, #0
	b label130
label129:
	movw r0, #14269
	movt r0, #46470
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	mov r0, #0
	movwge r0, #1
label130:
	bl putint
	mov r0, #10
	bl putch
	mov r0, #0
	movw r12, #20664
	movt r12, #18
	add sp, sp, r12
	pop { r4, r5, r6, pc }
