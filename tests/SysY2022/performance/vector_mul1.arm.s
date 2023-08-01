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
	push { r4, r5, r6, r7, r8, lr }
	mov r0, #62
	bl _sysy_starttime
	mov r1, #0
	movw r5, #:lower16:vectorA
	movt r5, #:upper16:vectorA
.p2align 4
label2:
	add r0, r5, r1, lsl #2
	mov r2, #1065353216
	add r1, r1, #64
	vmov s0, r2
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
	add r0, r5, r1, lsl #2
	movw r4, #:lower16:vectorB
	mov r1, #1065353216
	movt r4, #:upper16:vectorB
	vmov s0, r1
	mov r1, #0
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
	movw r0, #:lower16:Vectortm
	movt r0, #:upper16:Vectortm
.p2align 4
label5:
	mov r6, #0
	mov r3, r6
	vmov s0, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	blt label64
	b label187
.p2align 4
label522:
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label38
.p2align 4
label64:
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label449
.p2align 4
label65:
	add r7, r3, r6
	add r8, r2, r6
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	add r7, r5, r6, lsl #2
	add r6, r6, #1
	vldr s2, [r7, #0]
	movw r7, #34464
	vcvt.f32.s32 s1, s1
	movt r7, #1
	cmp r6, r7
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label65
	movw r6, #34464
	movt r6, #1
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label64
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label15
	mov r3, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	bge label509
.p2align 4
label26:
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	blt label27
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label26
	b label519
.p2align 4
label27:
	add r7, r3, r6
	add r8, r2, r6
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r2, r7
	vmov s1, r7
	add r7, r4, r6, lsl #2
	add r6, r6, #1
	vldr s2, [r7, #0]
	movw r7, #34464
	vcvt.f32.s32 s1, s1
	movt r7, #1
	cmp r6, r7
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label27
	movw r6, #34464
	movt r6, #1
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label26
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label57
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label38
.p2align 4
label57:
	add r3, r2, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	bge label426
.p2align 4
label58:
	add r7, r2, r6
	add r8, r3, r6
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r8, r7, #1
	add r7, r6, #1
	add r6, r0, r6, lsl #2
	add r8, r8, r7
	vmov s1, r8
	vldr s2, [r6, #0]
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label443
	movw r6, #34464
	movt r6, #1
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label57
	b label522
.p2align 4
label443:
	mov r6, r7
	b label58
.p2align 4
label15:
	add r3, r2, #1
	movw r7, #34464
	movt r7, #1
	cmp r6, r7
	blt label16
	b label200
.p2align 4
label216:
	movw r6, #34464
	movt r6, #1
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label15
	mov r6, #0
	mov r3, r6
	vmov s0, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	blt label26
	mov r2, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label57
	b label511
.p2align 4
label16:
	add r7, r2, r6
	add r8, r3, r6
	mul r7, r7, r8
	add r7, r7, r7, lsr #31
	asr r8, r7, #1
	add r7, r6, #1
	add r6, r0, r6, lsl #2
	add r8, r8, r7
	vmov s1, r8
	vldr s2, [r6, #0]
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label216
	mov r6, r7
	b label16
label187:
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label15
label193:
	mov r6, #0
	mov r3, r6
	vmov s0, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	blt label26
label509:
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label57
	b label511
.p2align 4
label200:
	add r2, r4, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label15
	mov r6, #0
	mov r3, r6
	vmov s0, r6
	movw r2, #34464
	movt r2, #1
	cmp r6, r2
	blt label26
	b label509
.p2align 4
label449:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label64
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label15
	b label193
.p2align 4
label426:
	add r2, r5, r2, lsl #2
	vstr s0, [r2, #0]
	mov r2, r3
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label57
	add r1, r1, #1
	cmp r1, #1000
	blt label5
label38:
	mov r0, #76
	bl _sysy_stoptime
	mov r0, #0
	vmov s0, r0
.p2align 4
label39:
	add r1, r5, r0, lsl #2
	add r2, r4, r0, lsl #2
	vldr s1, [r1, #0]
	add r0, r0, #8
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
	movw r1, #34456
	vldr s2, [r2, #28]
	movt r1, #1
	cmp r0, r1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	blt label39
.p2align 4
label42:
	add r1, r5, r0, lsl #2
	vldr s1, [r1, #0]
	add r1, r4, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	blt label42
	mov r0, #0
	vmov s1, r0
.p2align 4
label45:
	add r1, r4, r0, lsl #2
	add r0, r0, #8
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
	movw r1, #34456
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	blt label45
.p2align 4
label48:
	add r1, r4, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	blt label48
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
	beq label390
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label54
label52:
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
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
label54:
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
	bne label54
	b label52
label511:
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label38
label519:
	mov r6, #0
	mov r2, r6
	vmov s0, r6
	movw r3, #34464
	movt r3, #1
	cmp r6, r3
	blt label57
	b label511
label390:
	mov r0, #1065353216
	vmov s1, r0
	b label52
