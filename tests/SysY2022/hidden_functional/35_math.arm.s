.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
my_sqrt:
.p2align 4
	push { lr }
	movw r0, #0
	sub sp, sp, #4
	movt r0, #17096
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label7
	movw r0, #0
	movt r0, #17096
	vmov s1, r0
	vdiv.f32 s0, s0, s1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	ble label4
	movw r0, #0
	movt r0, #17096
	vmov s1, r0
	vdiv.f32 s0, s0, s1
	bl my_sqrt
	movw r0, #0
	movt r0, #16672
	vmov s1, r0
	vmul.f32 s0, s0, s1
	vmul.f32 s0, s0, s1
label5:
	add sp, sp, #4
	pop { pc }
label7:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	mov r0, #1040187392
	vadd.f32 s2, s0, s2
	vdiv.f32 s2, s1, s2
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s3, s0, s1
	vmov s1, r0
	vadd.f32 s3, s3, s1
	vadd.f32 s2, s3, s2
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s2, s0
	vmul.f32 s0, s0, s1
	b label5
label4:
	vadd.f32 s1, s0, s0
	movw r0, #0
	movt r0, #16512
	vmov s2, r0
	mov r0, #1040187392
	vadd.f32 s2, s0, s2
	vdiv.f32 s2, s1, s2
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s3, s0, s1
	vmov s1, r0
	movw r0, #0
	movt r0, #16672
	vadd.f32 s3, s3, s1
	vadd.f32 s2, s3, s2
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s3, s0, s2
	vadd.f32 s2, s2, s3
	vmul.f32 s2, s2, s1
	vdiv.f32 s0, s0, s2
	vadd.f32 s0, s2, s0
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vmul.f32 s0, s0, s1
	b label5
asr5:
.p2align 4
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	vmov.f32 s18, s1
	mov r0, #1056964608
	vmov.f32 s19, s0
	vsub.f32 s1, s1, s0
	vmov s0, r0
	mov r0, #1065353216
	vmul.f32 s1, s1, s0
	vadd.f32 s16, s19, s1
	vsub.f32 s5, s18, s16
	vmul.f32 s1, s5, s0
	vadd.f32 s17, s16, s1
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vmov s4, r0
	movw r0, #0
	vdiv.f32 s21, s1, s17
	movt r0, #16576
	vdiv.f32 s22, s1, s18
	vdiv.f32 s24, s1, s16
	vmul.f32 s6, s21, s4
	vadd.f32 s6, s24, s6
	vadd.f32 s6, s6, s22
	vmul.f32 s6, s6, s5
	vmov s5, r0
	movw r0, #0
	movt r0, #16752
	vmov s7, r0
	vdiv.f32 s23, s6, s5
	vsub.f32 s6, s16, s19
	vmul.f32 s7, s2, s7
	vmul.f32 s0, s6, s0
	vadd.f32 s20, s19, s0
	vdiv.f32 s0, s1, s20
	vdiv.f32 s1, s1, s19
	vmul.f32 s4, s0, s4
	vadd.f32 s4, s1, s4
	vadd.f32 s4, s4, s24
	vmul.f32 s4, s4, s6
	vdiv.f32 s4, s4, s5
	vadd.f32 s5, s4, s23
	vsub.f32 s3, s5, s3
	vabs.f32 s6, s3
	vcmp.f32 s6, s7
	vmrs APSR_nzcv, FPSCR
	bhi label123
	movw r0, #0
	movt r0, #16752
	vmov s0, r0
	vdiv.f32 s0, s3, s0
	vadd.f32 s0, s5, s0
label121:
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28 }
	pop { pc }
label123:
	vsub.f32 s3, s16, s20
	mov r0, #1056964608
	vsub.f32 s9, s20, s19
	vmov s5, r0
	mov r0, #1065353216
	vmul.f32 s6, s3, s5
	vmul.f32 s2, s2, s5
	vmul.f32 s10, s9, s5
	vadd.f32 s7, s20, s6
	vmul.f32 s25, s2, s5
	vadd.f32 s10, s19, s10
	vmov s6, r0
	movw r0, #0
	movt r0, #16512
	vdiv.f32 s8, s6, s7
	vmov s7, r0
	movw r0, #0
	movt r0, #16576
	vdiv.f32 s6, s6, s10
	vmul.f32 s8, s8, s7
	vadd.f32 s8, s0, s8
	vmul.f32 s6, s6, s7
	vadd.f32 s8, s8, s24
	vadd.f32 s1, s1, s6
	vmul.f32 s3, s8, s3
	vadd.f32 s0, s1, s0
	vmov s8, r0
	movw r0, #0
	movt r0, #16752
	vmov s6, r0
	vmul.f32 s0, s0, s9
	vdiv.f32 s3, s3, s8
	vmul.f32 s27, s2, s6
	vdiv.f32 s26, s0, s8
	vadd.f32 s0, s26, s3
	vsub.f32 s1, s0, s4
	vabs.f32 s4, s1
	vcmp.f32 s4, s27
	vmrs APSR_nzcv, FPSCR
	bhi label129
	movw r0, #0
	movt r0, #16752
	vmov s2, r0
	vdiv.f32 s1, s1, s2
	vadd.f32 s19, s0, s1
label125:
	vsub.f32 s2, s17, s16
	mov r0, #1056964608
	vsub.f32 s5, s18, s17
	vmov s0, r0
	mov r0, #1065353216
	vmul.f32 s1, s2, s0
	vmul.f32 s0, s5, s0
	vadd.f32 s3, s16, s1
	vadd.f32 s0, s17, s0
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vmov s4, r0
	movw r0, #0
	vdiv.f32 s3, s1, s3
	movt r0, #16576
	vdiv.f32 s0, s1, s0
	vmul.f32 s3, s3, s4
	vadd.f32 s3, s24, s3
	vmul.f32 s0, s0, s4
	vadd.f32 s3, s3, s21
	vadd.f32 s0, s21, s0
	vmul.f32 s3, s3, s2
	vadd.f32 s0, s0, s22
	vmov s2, r0
	vmul.f32 s0, s0, s5
	vdiv.f32 s3, s3, s2
	vdiv.f32 s20, s0, s2
	vadd.f32 s0, s3, s20
	vsub.f32 s1, s0, s23
	vabs.f32 s2, s1
	vcmp.f32 s2, s27
	vmrs APSR_nzcv, FPSCR
	bhi label128
	movw r0, #0
	movt r0, #16752
	vmov s2, r0
	vdiv.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vadd.f32 s0, s19, s0
	b label121
label129:
	vmov.f32 s0, s20
	mov r0, #1
	vmov.f32 s1, s16
	vmov.f32 s2, s25
	bl asr5
	mov r0, #1
	vmov.f32 s28, s0
	vmov.f32 s0, s19
	vmov.f32 s1, s20
	vmov.f32 s2, s25
	vmov.f32 s3, s26
	bl asr5
	vadd.f32 s19, s0, s28
	b label125
label128:
	vmov.f32 s0, s16
	mov r0, #1
	vmov.f32 s1, s17
	vmov.f32 s2, s25
	bl asr5
	mov r0, #1
	vmov.f32 s16, s0
	vmov.f32 s0, s17
	vmov.f32 s1, s18
	vmov.f32 s2, s25
	vmov.f32 s3, s20
	bl asr5
	vadd.f32 s0, s16, s0
	vadd.f32 s0, s19, s0
	b label121
eee:
.p2align 4
	push { lr }
	movw r0, #4719
	sub sp, sp, #4
	movt r0, #14979
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label274
	b label292
label272:
	add sp, sp, #4
	pop { pc }
label292:
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmov s3, r0
	mov r0, #3
	vmul.f32 s1, s1, s2
	vadd.f32 s2, s0, s3
	vadd.f32 s1, s2, s1
	vmov.f32 s2, s0
.p2align 4
label293:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label293
	movw r0, #0
	movt r0, #16576
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vmov s3, r0
	mov r0, #4
	vadd.f32 s1, s1, s2
	vmov.f32 s2, s0
.p2align 4
label298:
	vmul.f32 s4, s3, s2
	ands r1, r0, #1
	vmul.f32 s2, s2, s2
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label298
	movw r0, #0
	movt r0, #16832
	vmov s2, r0
	mov r0, #1065353216
	vdiv.f32 s2, s3, s2
	vadd.f32 s1, s1, s2
	vmov s2, r0
	mov r0, #5
.p2align 4
label303:
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label303
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	b label272
label274:
	mov r0, #1056964608
	vmov s1, r0
	movw r0, #4719
	movt r0, #14979
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bgt label291
	vmul.f32 s1, s0, s0
	mov r0, #1056964608
	vmov s2, r0
	mov r0, #1065353216
	vmov s3, r0
	mov r0, #3
	vmul.f32 s1, s1, s2
	vadd.f32 s2, s0, s3
	vadd.f32 s2, s2, s1
	vmov.f32 s1, s0
.p2align 4
label276:
	vmul.f32 s4, s3, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label276
	movw r0, #0
	movt r0, #16576
	vmov s1, r0
	mov r0, #1065353216
	vdiv.f32 s1, s3, s1
	vmov s3, r0
	mov r0, #4
	vadd.f32 s2, s2, s1
	vmov.f32 s1, s0
.p2align 4
label281:
	vmul.f32 s4, s3, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s3, s4
	cmp r0, #0
	bne label281
	movw r0, #0
	movt r0, #16832
	vmov s1, r0
	mov r0, #1065353216
	vdiv.f32 s1, s3, s1
	vadd.f32 s1, s2, s1
	vmov s2, r0
	mov r0, #5
.p2align 4
label286:
	vmul.f32 s3, s2, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label286
	movw r0, #0
	movt r0, #17136
	vmov s0, r0
	vdiv.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	vmul.f32 s0, s0, s0
	b label272
label291:
	mov r0, #1056964608
	vmov s1, r0
	vmul.f32 s0, s0, s1
	bl eee
	vmul.f32 s0, s0, s0
	vmul.f32 s0, s0, s0
	b label272
my_exp:
.p2align 4
	push { lr }
	vcmp.f32 s0, #0
	sub sp, sp, #4
	vmrs APSR_nzcv, FPSCR
	bmi label440
	vcvt.s32.f32 s1, s0
	vmov r0, s1
	vcvt.f32.s32 s1, s1
	vsub.f32 s0, s0, s1
	cmp r0, #0
	blt label446
	beq label496
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
.p2align 4
label453:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label453
	vmov.f32 s5, s2
	b label444
label440:
	vneg.f32 s0, s0
	bl my_exp
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s0, s1, s0
label441:
	add sp, sp, #4
	pop { pc }
label444:
	bl eee
	vmul.f32 s0, s5, s0
	b label441
label446:
	rsb r0, r0, #0
	mov r1, #1065353216
	vmov s2, r1
	movw r1, #63572
	movt r1, #16429
	vmov s1, r1
.p2align 4
label447:
	vmul.f32 s3, s2, s1
	ands r1, r0, #1
	vmul.f32 s1, s1, s1
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s2, s3
	cmp r0, #0
	bne label447
	mov r0, #1065353216
	vmov s1, r0
	vdiv.f32 s5, s1, s2
	b label444
label496:
	mov r0, #1065353216
	vmov s5, r0
	b label444
.globl main
main:
.p2align 4
	push { r4, r5, lr }
	vpush { s16, s17, s18 }
	bl getint
	movs r4, r0
	bne label523
label522:
	mov r0, #0
	vpop { s16, s17, s18 }
	pop { r4, r5, pc }
.p2align 4
label523:
	bl getfloat
	vabs.f32 s18, s0
	vmov.f32 s16, s0
	bl getfloat
	vmov.f32 s17, s0
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	vmov.f32 s0, s16
	mov r0, #1065353216
	vmov s1, r0
	mov r0, #2
.p2align 4
label524:
	vmul.f32 s2, s1, s0
	ands r1, r0, #1
	vmul.f32 s0, s0, s0
	add r0, r0, r0, lsr #31
	asr r0, r0, #1
	vmovne.f32 s1, s2
	cmp r0, #0
	bne label524
	vmov.f32 s0, s1
	bl putfloat
	vmov.f32 s0, s16
	bl my_sqrt
	mov r0, #32
	vmov.f32 s18, s0
	bl putch
	vmov.f32 s0, s18
	bl putfloat
	vmov.f32 s0, s16
	bl my_exp
	mov r0, #32
	vmov.f32 s18, s0
	bl putch
	vmov.f32 s0, s18
	bl putfloat
	mov r0, #32
	bl putch
	vcmp.f32 s16, #0
	mov r0, #1065353216
	mov r5, #0
	vmov s1, r0
	mov r0, #1056964608
	vmrs APSR_nzcv, FPSCR
	vmov s2, r0
	movwgt r5, #1
	movw r0, #0
	movt r0, #16512
	vsub.f32 s0, s16, s1
	vmov s3, r0
	movw r0, #0
	movt r0, #16576
	vmul.f32 s2, s0, s2
	vadd.f32 s2, s2, s1
	vdiv.f32 s2, s1, s2
	vmul.f32 s2, s2, s3
	vadd.f32 s2, s2, s1
	vdiv.f32 s1, s1, s16
	vadd.f32 s1, s2, s1
	vmul.f32 s0, s1, s0
	vmov s1, r0
	vdiv.f32 s18, s0, s1
	bgt label536
	b label537
.p2align 4
label533:
	mov r0, #45
	bl putch
.p2align 4
label534:
	mov r0, #10
	bl putch
	subs r4, r4, #1
	bne label523
	b label522
.p2align 4
label529:
	mov r0, #32
	bl putch
	mov r0, #0
	vcmp.f32 s17, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	ands r0, r5, r0
	bne label535
	b label530
.p2align 4
label537:
	mov r0, #45
	bl putch
	b label529
.p2align 4
label530:
	mov r0, #45
	bl putch
.p2align 4
label531:
	mov r0, #32
	bl putch
	vcmp.f32 s16, #0
	vmrs APSR_nzcv, FPSCR
	bgt label532
	b label533
.p2align 4
label535:
	mov r0, #1065353216
	vmov s11, r0
	mov r0, #1056964608
	vmov s1, r0
	movw r0, #0
	movt r0, #16512
	vsub.f32 s0, s17, s11
	vmov s2, r0
	movw r0, #0
	movt r0, #16576
	vmul.f32 s1, s0, s1
	vadd.f32 s1, s1, s11
	vdiv.f32 s1, s11, s1
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s11, s17
	vadd.f32 s1, s1, s11
	vadd.f32 s1, s1, s2
	vmul.f32 s0, s1, s0
	vmov s1, r0
	movw r0, #52343
	movt r0, #12843
	vmov s12, r0
	mov r0, #1
	vdiv.f32 s3, s0, s1
	vmov.f32 s0, s11
	vmov.f32 s1, s17
	vmov.f32 s2, s12
	bl asr5
	mov r0, #1
	vmov.f32 s13, s0
	vmov.f32 s0, s11
	vmov.f32 s1, s16
	vmov.f32 s2, s12
	vmov.f32 s3, s18
	bl asr5
	vdiv.f32 s0, s13, s0
	bl putfloat
	b label531
.p2align 4
label536:
	mov r0, #1065353216
	vmov.f32 s1, s16
	vmov s0, r0
	vmov.f32 s3, s18
	movw r0, #52343
	movt r0, #12843
	vmov s2, r0
	mov r0, #1
	bl asr5
	bl putfloat
	b label529
.p2align 4
label532:
	mov r0, #1065353216
	vmov.f32 s1, s16
	vmov s0, r0
	vmov.f32 s3, s18
	movw r0, #52343
	movt r0, #12843
	vmov s2, r0
	mov r0, #1
	bl asr5
	vmul.f32 s0, s17, s0
	bl my_exp
	bl putfloat
	b label534
