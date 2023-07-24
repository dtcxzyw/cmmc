.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
my_sin_impl:
.p2align 4
	push { lr }
	vpush { s16 }
	movw r0, #14269
	vabs.f32 s1, s0
	movt r0, #13702
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label4
label2:
	vpop { s16 }
	pop { pc }
label4:
	movw r0, #0
	movt r0, #16448
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label7
label5:
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	movw r0, #0
	movt r0, #16448
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s2
	vsub.f32 s0, s0, s1
	b label2
label7:
	movw r0, #0
	movt r0, #16448
	vmov s16, r0
	vdiv.f32 s0, s0, s16
	bl my_sin_impl
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s16
	vsub.f32 s0, s0, s1
	b label5
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	vpush { s16 }
	mov r0, #80
	sub sp, sp, #4
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	mov r0, #192
	bl putint
	mov r0, #32
	bl putch
	mov r0, #192
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	mov r6, #0
	mov r4, r6
	vmov s0, r6
	movw r0, #0
	cmp r6, #192
	movt r0, #17216
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vdiv.f32 s16, s0, s1
	bge label50
label79:
	mov r5, #0
	vmov s0, r5
	movw r0, #0
	mov r1, #0
	movt r0, #17216
	vmov s4, r1
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vdiv.f32 s3, s0, s1
	b label54
label50:
	mov r0, #0
	add sp, sp, #4
	vpop { s16 }
	pop { r4, r5, r6, pc }
.p2align 4
label51:
	vmov s0, r5
	movw r0, #0
	mov r1, #0
	movt r0, #17216
	vmov s4, r1
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vdiv.f32 s3, s0, s1
.p2align 4
label54:
	movw r0, #23333
	movw r2, #57186
	movw r3, #36553
	movt r2, #304
	movt r3, #5497
	mla r2, r6, r2, r0
	movw r0, #57607
	movt r0, #1525
	smmul r3, r2, r3
	asr r6, r3, #23
	add r3, r6, r3, lsr #31
	mls r2, r3, r0, r2
	movs r6, r2
	add r0, r2, r0
	movlt r6, r0
	movw r2, #4059
	movw r0, #48161
	vmov s0, r6
	movt r2, #49353
	movt r0, #19646
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vdiv.f32 s0, s0, s1
	vmov s1, r1
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s1, s0
	vmov s1, r0
	movw r0, #0
	movt r0, #16832
	vmov s2, r0
	movw r0, #4059
	vmul.f32 s0, s0, s1
	movt r0, #16329
	vdiv.f32 s6, s0, s2
	vmov s0, r0
	mov r0, #0
	vadd.f32 s0, s6, s0
	vcmp.f32 s0, s1
	vmov s1, r2
	mov r2, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r2, #1
	orrs r0, r0, r2
	bne label114
	b label58
.p2align 4
label135:
	movw r0, #4059
	movt r0, #16585
	vmov s0, r0
	vdiv.f32 s1, s6, s0
	vcvt.s32.f32 s1, s1
	vcvt.f32.s32 s1, s1
	vmul.f32 s0, s1, s0
	vsub.f32 s6, s6, s0
.p2align 4
label60:
	movw r0, #4059
	vmov.f32 s1, s6
	movt r0, #16457
	vmov s0, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s6, s0
	vmov s0, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s6, s0
	vmovgt.f32 s1, s2
	vmov s2, r0
	vcmp.f32 s1, s2
	vadd.f32 s2, s1, s0
	vmov.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s2
	bl my_sin_impl
	mov r0, #0
	vmov s1, r0
.p2align 4
label62:
	cmp r0, #10
	mov r2, #0
	mov r3, #1073741824
	movwlt r2, #1
	vmov s2, r3
	mov r3, #0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r3, #1
	ands r2, r2, r3
	bne label65
	mov r0, #0
	vmov s7, r0
	vadd.f32 s4, s4, s7
	add r1, r1, #1
	cmp r1, #24
	blt label54
	b label69
.p2align 4
label65:
	vmul.f32 s2, s5, s1
	movw r2, #52429
	movt r2, #16076
	vadd.f32 s6, s3, s2
	vmov s2, r2
	movw r2, #0
	movt r2, #16512
	vsub.f32 s7, s6, s2
	vmul.f32 s8, s7, s7
	vmul.f32 s7, s0, s1
	vadd.f32 s7, s16, s7
	vsub.f32 s2, s7, s2
	vmul.f32 s2, s2, s2
	vadd.f32 s9, s8, s2
	vmov s8, r2
	mov r2, #1040187392
	vadd.f32 s2, s9, s9
	vadd.f32 s10, s9, s8
	vdiv.f32 s11, s2, s10
	vmov s10, r2
	mov r2, #1056964608
	vmov s2, r2
	movw r2, #52429
	movt r2, #15820
	vmul.f32 s12, s9, s10
	vadd.f32 s12, s12, s2
	vadd.f32 s11, s12, s11
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s12, s9, s11
	vadd.f32 s11, s11, s12
	vmul.f32 s11, s11, s2
	vdiv.f32 s9, s9, s11
	vadd.f32 s9, s11, s9
	vmov s11, r2
	movw r2, #39322
	movt r2, #16153
	vmul.f32 s9, s9, s2
	vsub.f32 s9, s9, s11
	vmov s11, r2
	movw r2, #52429
	movt r2, #15692
	vsub.f32 s7, s7, s11
	vsub.f32 s6, s6, s11
	vmul.f32 s7, s7, s7
	vmul.f32 s6, s6, s6
	vadd.f32 s6, s6, s7
	vadd.f32 s7, s6, s6
	vadd.f32 s8, s6, s8
	vdiv.f32 s7, s7, s8
	vmul.f32 s8, s6, s10
	vadd.f32 s8, s8, s2
	vadd.f32 s7, s8, s7
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s8, s6, s7
	vadd.f32 s7, s7, s8
	vmul.f32 s7, s7, s2
	vdiv.f32 s6, s6, s7
	vadd.f32 s6, s7, s6
	vmul.f32 s2, s6, s2
	vmov s6, r2
	movw r2, #14269
	movt r2, #13702
	vsub.f32 s2, s2, s6
	vmov s6, r2
	movw r2, #0
	movt r2, #16448
	vcmp.f32 s9, s2
	vmov s8, r2
	mov r2, #0
	vmov s7, r2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s2, s9
	vmovmi.f32 s7, s8
	vcmp.f32 s2, s6
	vmrs APSR_nzcv, FPSCR
	bmi label67
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	b label62
.p2align 4
label67:
	vadd.f32 s4, s4, s7
	add r1, r1, #1
	cmp r1, #24
	blt label54
.p2align 4
label69:
	movw r0, #0
	movt r0, #16832
	vmov s0, r0
	movw r0, #0
	movt r0, #17279
	vmov s1, r0
	vdiv.f32 s0, s4, s0
	vmul.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	cmp r0, #255
	movge r0, #255
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r5, #192
	blt label51
	mov r0, #10
	bl putch
	add r4, r4, #1
	vmov s0, r4
	movw r0, #0
	cmp r4, #192
	movt r0, #17216
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vdiv.f32 s16, s0, s1
	blt label79
	b label50
.p2align 4
label114:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label58:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vmov s7, r0
	movw r0, #4059
	vcmp.f32 s0, s1
	movt r0, #49225
	vsub.f32 s1, s0, s7
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s1
	vmov s1, r0
	vcmp.f32 s0, s1
	vadd.f32 s1, s0, s7
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r0, #0
	vcmp.f32 s6, s7
	movw r2, #4059
	movt r2, #49353
	vmov.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	vmov s0, r2
	movwgt r0, #1
	mov r2, #0
	vcmp.f32 s6, s0
	vmrs APSR_nzcv, FPSCR
	movwmi r2, #1
	orrs r0, r0, r2
	bne label135
	b label60
