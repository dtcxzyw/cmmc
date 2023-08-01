.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
my_sin_impl:
	push { lr }
	vpush { s16 }
	movw r0, #14269
	movt r0, #13702
	vabs.f32 s1, s0
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label4
label2:
	vpop { s16 }
	pop { pc }
label4:
	movw r1, #0
	movt r1, #16448
	vmov s2, r0
	vmov s1, r1
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label7
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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	vpush { s16 }
	mov r0, #80
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
	movw r6, #0
	movt r6, #16512
	movw r5, #52429
	movt r5, #16076
	mov r4, #1073741824
	mov r9, #0
	mov r7, r9
	vmov s0, r9
	movw r0, #0
	movt r0, #17216
	cmp r9, #192
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vdiv.f32 s16, s0, s1
	bge label52
.p2align 4
label81:
	mov r8, #0
	vmov s0, r8
	movw r0, #0
	movt r0, #17216
	mov r2, #0
	vmov s1, r0
	vmov s4, r2
	vcvt.f32.s32 s0, s0
	vdiv.f32 s3, s0, s1
	b label56
label52:
	mov r0, #0
	vpop { s16 }
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label53:
	vmov s0, r8
	movw r0, #0
	movt r0, #17216
	mov r2, #0
	vmov s1, r0
	vmov s4, r2
	vcvt.f32.s32 s0, s0
	vdiv.f32 s3, s0, s1
.p2align 4
label56:
	movw r0, #23333
	movw r1, #57186
	movt r1, #304
	mla r0, r9, r1, r0
	movw r1, #36553
	movt r1, #5497
	smmul r1, r0, r1
	asr r3, r1, #23
	add r3, r3, r1, lsr #31
	movw r1, #57607
	movt r1, #1525
	mls r0, r3, r1, r0
	movs r9, r0
	add r1, r0, r1
	movlt r9, r1
	movw r1, #4059
	movt r1, #49353
	movw r0, #48161
	movt r0, #19646
	vmov s0, r9
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vdiv.f32 s0, s0, s1
	vmov s1, r2
	vcvt.f32.s32 s1, s1
	vadd.f32 s0, s1, s0
	vmov s1, r0
	movw r0, #0
	movt r0, #16832
	vmov s2, r0
	movw r0, #4059
	movt r0, #16329
	vmul.f32 s0, s0, s1
	vdiv.f32 s6, s0, s2
	vmov s0, r0
	mov r0, #0
	vadd.f32 s0, s6, s0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label60
	b label61
.p2align 4
label70:
	vadd.f32 s4, s4, s7
	add r2, r2, #1
	cmp r2, #24
	blt label56
.p2align 4
label72:
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
	add r8, r8, #1
	cmp r8, #192
	blt label53
	mov r0, #10
	bl putch
	add r7, r7, #1
	vmov s0, r7
	movw r0, #0
	movt r0, #17216
	cmp r7, #192
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vdiv.f32 s16, s0, s1
	blt label81
	b label52
.p2align 4
label61:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vmov s7, r0
	movw r0, #4059
	movt r0, #49225
	vcmp.f32 s0, s1
	vsub.f32 s1, s0, s7
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s1
	vmov s1, r0
	vcmp.f32 s0, s1
	vadd.f32 s1, s0, s7
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	movw r1, #4059
	movt r1, #49353
	mov r0, #0
	vcmp.f32 s6, s7
	vmov.f32 s5, s0
	vmrs APSR_nzcv, FPSCR
	vmov s0, r1
	movwgt r0, #1
	mov r1, #0
	vcmp.f32 s6, s0
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label63
	movw r0, #4059
	movt r0, #16585
	vmov s0, r0
	vdiv.f32 s1, s6, s0
	vcvt.s32.f32 s1, s1
	vcvt.f32.s32 s1, s1
	vmul.f32 s0, s1, s0
	vsub.f32 s6, s6, s0
.p2align 4
label63:
	movw r0, #4059
	movt r0, #16457
	vmov.f32 s1, s6
	vmov s0, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s6, s0
	vmov s0, r0
	movw r0, #4059
	movt r0, #49225
	vmrs APSR_nzcv, FPSCR
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
	cmp r0, #10
	mov r1, #0
	vmov s2, r4
	mov r3, #0
	movwlt r1, #1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r3, #1
	ands r1, r1, r3
	beq label166
.p2align 4
label68:
	vmul.f32 s2, s5, s1
	mov r1, #1040187392
	vadd.f32 s6, s3, s2
	vmov s2, r5
	vsub.f32 s7, s6, s2
	vmul.f32 s8, s7, s7
	vmul.f32 s7, s0, s1
	vadd.f32 s7, s16, s7
	vsub.f32 s2, s7, s2
	vmul.f32 s2, s2, s2
	vadd.f32 s9, s8, s2
	vmov s8, r6
	vadd.f32 s2, s9, s9
	vadd.f32 s10, s9, s8
	vdiv.f32 s11, s2, s10
	vmov s10, r1
	mov r1, #1056964608
	vmov s2, r1
	movw r1, #52429
	movt r1, #15820
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
	vmov s11, r1
	movw r1, #39322
	movt r1, #16153
	vmul.f32 s9, s9, s2
	vsub.f32 s9, s9, s11
	vmov s11, r1
	movw r1, #52429
	movt r1, #15692
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
	vmov s6, r1
	movw r1, #14269
	movt r1, #13702
	vsub.f32 s2, s2, s6
	vmov s6, r1
	movw r1, #0
	movt r1, #16448
	vmov s8, r1
	vcmp.f32 s9, s2
	mov r1, #0
	vmov s7, r1
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s2, s9
	vmovmi.f32 s7, s8
	vcmp.f32 s2, s6
	vmrs APSR_nzcv, FPSCR
	bmi label70
	vadd.f32 s1, s1, s2
	add r0, r0, #1
	cmp r0, #10
	vmov s2, r4
	mov r3, #0
	movwlt r1, #1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r3, #1
	ands r1, r1, r3
	bne label68
	mov r0, #0
	vmov s7, r0
	vadd.f32 s4, s4, s7
	add r2, r2, #1
	cmp r2, #24
	blt label56
	b label72
.p2align 4
label166:
	mov r0, #0
	vmov s7, r0
	vadd.f32 s4, s4, s7
	add r2, r2, #1
	cmp r2, #24
	blt label56
	b label72
.p2align 4
label60:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label61
