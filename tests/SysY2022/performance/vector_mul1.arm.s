.arch armv7ve
.data
.bss
.align 8
Vectortm:
	.zero	400000
.align 8
vectorB:
	.zero	400000
.align 8
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #20
	bl _sysy_starttime
	mov r1, #0
	movw r7, #:lower16:vectorA
	movt r7, #:upper16:vectorA
	str r7, [sp, #4]
.p2align 4
label2:
	ldr r7, [sp, #4]
	mov r2, #1065353216
	vmov s0, r2
	add r0, r7, r1, lsl #2
	add r1, r1, #64
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	vstr s0, [r0, #16]
	vstr s0, [r0, #20]
	vstr s0, [r0, #24]
	vstr s0, [r0, #28]
	vstr s0, [r0, #32]
	vstr s0, [r0, #36]
	vstr s0, [r0, #40]
	vstr s0, [r0, #44]
	vstr s0, [r0, #48]
	vstr s0, [r0, #52]
	vstr s0, [r0, #56]
	vstr s0, [r0, #60]
	vstr s0, [r0, #64]
	vstr s0, [r0, #68]
	vstr s0, [r0, #72]
	vstr s0, [r0, #76]
	vstr s0, [r0, #80]
	vstr s0, [r0, #84]
	vstr s0, [r0, #88]
	vstr s0, [r0, #92]
	vstr s0, [r0, #96]
	vstr s0, [r0, #100]
	vstr s0, [r0, #104]
	vstr s0, [r0, #108]
	vstr s0, [r0, #112]
	vstr s0, [r0, #116]
	vstr s0, [r0, #120]
	vstr s0, [r0, #124]
	vstr s0, [r0, #128]
	vstr s0, [r0, #132]
	vstr s0, [r0, #136]
	vstr s0, [r0, #140]
	vstr s0, [r0, #144]
	vstr s0, [r0, #148]
	vstr s0, [r0, #152]
	vstr s0, [r0, #156]
	vstr s0, [r0, #160]
	vstr s0, [r0, #164]
	vstr s0, [r0, #168]
	vstr s0, [r0, #172]
	vstr s0, [r0, #176]
	vstr s0, [r0, #180]
	vstr s0, [r0, #184]
	vstr s0, [r0, #188]
	vstr s0, [r0, #192]
	vstr s0, [r0, #196]
	vstr s0, [r0, #200]
	vstr s0, [r0, #204]
	vstr s0, [r0, #208]
	vstr s0, [r0, #212]
	vstr s0, [r0, #216]
	vstr s0, [r0, #220]
	vstr s0, [r0, #224]
	vstr s0, [r0, #228]
	vstr s0, [r0, #232]
	vstr s0, [r0, #236]
	vstr s0, [r0, #240]
	vstr s0, [r0, #244]
	vstr s0, [r0, #248]
	vstr s0, [r0, #252]
	movw r0, #34432
	movt r0, #1
	cmp r1, r0
	blt label2
	movw r4, #:lower16:Vectortm
	movt r4, #:upper16:Vectortm
	add r0, r7, r1, lsl #2
	movw r7, #:lower16:vectorB
	mov r1, #1065353216
	movt r7, #:upper16:vectorB
	vmov s0, r1
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	vstr s0, [r0, #16]
	vstr s0, [r0, #20]
	vstr s0, [r0, #24]
	vstr s0, [r0, #28]
	vstr s0, [r0, #32]
	vstr s0, [r0, #36]
	vstr s0, [r0, #40]
	vstr s0, [r0, #44]
	vstr s0, [r0, #48]
	vstr s0, [r0, #52]
	vstr s0, [r0, #56]
	vstr s0, [r0, #60]
	vstr s0, [r0, #64]
	vstr s0, [r0, #68]
	vstr s0, [r0, #72]
	vstr s0, [r0, #76]
	vstr s0, [r0, #80]
	vstr s0, [r0, #84]
	vstr s0, [r0, #88]
	vstr s0, [r0, #92]
	vstr s0, [r0, #96]
	vstr s0, [r0, #100]
	vstr s0, [r0, #104]
	vstr s0, [r0, #108]
	vstr s0, [r0, #112]
	vstr s0, [r0, #116]
	vstr s0, [r0, #120]
	vstr s0, [r0, #124]
	mov r0, #0
	str r7, [sp, #0]
	str r4, [sp, #8]
.p2align 4
label5:
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	blt label81
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label15
	mov r2, r6
	vmov s0, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	blt label31
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label15:
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label16
	ldr r7, [sp, #0]
	add r2, r7, r1, lsl #2
	add r1, r1, #1
	vstr s0, [r2, #0]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	blt label15
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	blt label31
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label18:
	add r4, r1, r8
	add r9, r3, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r4, r4, r9
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r4, r10
	add r10, r5, r8
	vmov s1, r4
	mul r9, r9, r10
	ldr r4, [sp, #8]
	add r9, r9, r9, lsr #31
	add r4, r4, r8, lsl #2
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	vldr s2, [r4, #0]
	add r9, r9, r11
	add r11, r8, #3
	vdiv.f32 s1, s2, s1
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r8
	vldr s2, [r4, #12]
	movw r4, #34460
	movt r4, #1
	cmp r8, r4
	vadd.f32 s0, s0, s1
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label18
.p2align 4
label21:
	add r3, r1, r8
	add r4, r2, r8
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	add r3, r8, #1
	add r4, r4, r3
	vmov s1, r4
	ldr r4, [sp, #8]
	vcvt.f32.s32 s1, s1
	add r4, r4, r8, lsl #2
	vldr s2, [r4, #0]
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label294
	movw r8, #34464
	movt r8, #1
	ldr r7, [sp, #0]
	add r2, r7, r1, lsl #2
	add r1, r1, #1
	vstr s0, [r2, #0]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	blt label15
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	blt label31
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label294:
	mov r8, r3
	b label21
label60:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
.p2align 4
label61:
	ldr r7, [sp, #4]
	add r1, r7, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r7, [sp, #0]
	add r2, r7, r0, lsl #2
	vldr s2, [r2, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #4]
	vldr s2, [r2, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #8]
	vldr s2, [r2, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #12]
	vldr s2, [r2, #12]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #16]
	vldr s2, [r2, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #20]
	vldr s2, [r2, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #24]
	vldr s2, [r2, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #28]
	vldr s2, [r2, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #32]
	vldr s2, [r2, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #36]
	vldr s2, [r2, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #40]
	vldr s2, [r2, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #44]
	vldr s2, [r2, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #48]
	vldr s2, [r2, #48]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #52]
	vldr s2, [r2, #52]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #56]
	vldr s2, [r2, #56]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r1, #60]
	add r1, r0, #16
	vldr s2, [r2, #60]
	movw r2, #34448
	movt r2, #1
	cmp r1, r2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label64
	mov r0, r1
	b label61
label64:
	ldr r7, [sp, #4]
	add r0, r0, #28
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
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #16]
	vldr s2, [r1, #16]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #20]
	vldr s2, [r1, #20]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #24]
	vldr s2, [r1, #24]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #28]
	vldr s2, [r1, #28]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #32]
	vldr s2, [r1, #32]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #36]
	vldr s2, [r1, #36]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #40]
	vldr s2, [r1, #40]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #44]
	vldr s2, [r1, #44]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	b label65
.p2align 4
label47:
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label51
	ldr r7, [sp, #4]
	add r2, r7, r1, lsl #2
	add r1, r1, #1
	vstr s0, [r2, #0]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label51:
	add r3, r8, #4
	add r2, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label394
.p2align 4
label52:
	add r3, r1, r8
	add r4, r2, r8
	mul r3, r3, r4
	add r3, r3, r3, lsr #31
	asr r4, r3, #1
	add r3, r8, #1
	add r4, r4, r3
	vmov s1, r4
	ldr r4, [sp, #8]
	vcvt.f32.s32 s1, s1
	add r4, r4, r8, lsl #2
	vldr s2, [r4, #0]
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label410
	movw r8, #34464
	movt r8, #1
	ldr r7, [sp, #4]
	add r2, r7, r1, lsl #2
	add r1, r1, #1
	vstr s0, [r2, #0]
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label410:
	mov r8, r3
	b label52
.p2align 4
label56:
	add r4, r1, r8
	add r9, r3, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r4, r4, r9
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r4, r10
	add r10, r5, r8
	vmov s1, r4
	mul r9, r9, r10
	ldr r4, [sp, #8]
	add r9, r9, r9, lsr #31
	add r4, r4, r8, lsl #2
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	vldr s2, [r4, #0]
	add r9, r9, r11
	add r11, r8, #3
	vdiv.f32 s1, s2, s1
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r10, r10, r11
	vldr s2, [r4, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r7, r8
	add r8, r8, #4
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r9, r8
	vldr s2, [r4, #12]
	movw r4, #34460
	movt r4, #1
	cmp r8, r4
	vadd.f32 s0, s0, s1
	vmov s1, r9
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label56
	b label52
.p2align 4
label81:
	add r1, r2, #1
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label82
	ldr r4, [sp, #8]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label81
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label15
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	blt label31
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label87:
	add r4, r2, r3
	add r5, r1, r3
	ldr r7, [sp, #4]
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r1, r4
	vmov s1, r4
	add r4, r7, r3, lsl #2
	add r3, r3, #1
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r3, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label87
	movw r6, #34464
	movt r6, #1
	ldr r4, [sp, #8]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label81
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label15
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r1, #34464
	movt r1, #1
	cmp r6, r1
	blt label31
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label31:
	add r1, r2, #1
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label35
	ldr r4, [sp, #8]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label31
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label35:
	add r3, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label36
	b label1004
.p2align 4
label40:
	add r4, r2, r3
	add r5, r1, r3
	ldr r7, [sp, #0]
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r1, r4
	vmov s1, r4
	add r4, r7, r3, lsl #2
	add r3, r3, #1
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r3, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label40
	movw r6, #34464
	movt r6, #1
	ldr r4, [sp, #8]
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r1
	movw r1, #34464
	movt r1, #1
	cmp r2, r1
	blt label31
	mov r8, #0
	mov r1, r8
	vmov s0, r8
	movw r2, #34464
	movt r2, #1
	cmp r8, r2
	blt label47
	add r0, r0, #1
	cmp r0, #1000
	blt label5
	b label60
.p2align 4
label1004:
	mov r3, r6
	b label40
.p2align 4
label37:
	add r7, r2, r6
	add r8, r1, r6
	add r9, r3, r6
	mul r7, r7, r8
	mul r8, r8, r9
	add r7, r7, r7, lsr #31
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	add r7, r1, r7
	add r8, r1, r8
	vmov s1, r7
	ldr r7, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r7, r7, r6, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r4, r6
	mul r9, r9, r8
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r7, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r5, r6
	add r6, r6, #4
	mul r8, r8, r9
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r1, r8
	vldr s2, [r7, #12]
	movw r7, #34460
	movt r7, #1
	cmp r6, r7
	vadd.f32 s0, s0, s1
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label37
	b label1004
.p2align 4
label36:
	add r3, r2, #2
	add r4, r2, #3
	add r5, r2, #4
	b label37
.p2align 4
label82:
	add r3, r6, #4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label83
.p2align 4
label844:
	mov r3, r6
	b label87
.p2align 4
label84:
	add r7, r2, r6
	add r8, r1, r6
	add r9, r3, r6
	mul r7, r7, r8
	mul r8, r8, r9
	add r7, r7, r7, lsr #31
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	add r7, r1, r7
	add r8, r1, r8
	vmov s1, r7
	ldr r7, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r7, r7, r6, lsl #2
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r4, r6
	mul r9, r9, r8
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	asr r9, r9, #1
	vdiv.f32 s1, s2, s1
	add r9, r1, r9
	vldr s2, [r7, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r5, r6
	add r6, r6, #4
	mul r8, r8, r9
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r1, r8
	vldr s2, [r7, #12]
	movw r7, #34460
	movt r7, #1
	cmp r6, r7
	vadd.f32 s0, s0, s1
	vmov s1, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label84
	b label844
.p2align 4
label83:
	add r3, r2, #2
	add r4, r2, #3
	add r5, r2, #4
	b label84
.p2align 4
label16:
	add r3, r8, #4
	add r2, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label21
	add r3, r1, #1
	add r5, r1, #2
	add r6, r1, #3
	add r7, r1, #4
	b label18
.p2align 4
label394:
	add r3, r1, #1
	add r5, r1, #2
	add r6, r1, #3
	add r7, r1, #4
	b label56
label65:
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
	blt label65
	mov r0, #0
	vmov s1, r0
.p2align 4
label68:
	ldr r7, [sp, #0]
	movw r2, #34448
	movt r2, #1
	add r1, r7, r0, lsl #2
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
	vldr s2, [r1, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #48]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #52]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #56]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #60]
	add r1, r0, #16
	cmp r1, r2
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label71
	mov r0, r1
	b label68
label71:
	ldr r7, [sp, #0]
	add r0, r0, #28
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
	vldr s2, [r1, #16]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #20]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #24]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #28]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #36]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #40]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #44]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
label72:
	ldr r7, [sp, #0]
	add r1, r7, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	blt label72
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
	bne label804
	mov r0, #1065353216
	vmov s1, r0
	b label79
label804:
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
.p2align 4
label76:
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
	bne label76
label79:
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
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
