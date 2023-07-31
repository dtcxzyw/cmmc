.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
fibFP:
.p2align 4
	push { lr }
	vpush { s16, s17, s18, s19, s20 }
	mov r0, #1073741824
	vmov.f32 s18, s0
	vmov s0, r0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bmi label52
	vsub.f32 s19, s18, s0
	vcmp.f32 s19, s0
	vmrs APSR_nzcv, FPSCR
	bmi label61
	vsub.f32 s17, s19, s0
	vcmp.f32 s17, s0
	vmrs APSR_nzcv, FPSCR
	bmi label70
	vsub.f32 s20, s17, s0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bmi label79
	b label12
label7:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s20, s17, s0
	vmov s0, r0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bmi label90
	b label11
label12:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s16, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s16, s16, s0
	b label7
label70:
	mov r0, #1065353216
	vmov s16, r0
label13:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s19, s19, s0
	vmov s0, r0
	vcmp.f32 s19, s0
	vmrs APSR_nzcv, FPSCR
	bmi label120
	vsub.f32 s20, s19, s0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bmi label130
	b label23
label18:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s20, s19, s0
	vmov s0, r0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bmi label141
	b label22
label23:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s17, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s17, s17, s0
	b label18
label120:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s16, s16, s0
label24:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s19, s18, s0
	vmov s0, r0
	vcmp.f32 s19, s0
	vmrs APSR_nzcv, FPSCR
	bmi label171
	vsub.f32 s18, s19, s0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bpl label27
	mov r0, #1065353216
	vmov s17, r0
label34:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s19, s19, s0
	vmov s0, r0
	vcmp.f32 s19, s0
	vmrs APSR_nzcv, FPSCR
	bpl label36
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s17, s0
	vadd.f32 s0, s16, s0
label2:
	vpop { s16, s17, s18, s19, s20 }
	pop { pc }
label36:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s20, s19, s0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bmi label239
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s18, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s18, s18, s0
label38:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s20, s19, s0
	vmov s0, r0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bmi label259
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s19, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s0, s19, s0
	vadd.f32 s0, s18, s0
	vadd.f32 s0, s17, s0
	vadd.f32 s0, s16, s0
	b label2
label27:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s20, s18, s0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bpl label28
	mov r0, #1065353216
	vmov s17, r0
label29:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s20, s18, s0
	vmov s0, r0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bpl label31
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s17, s17, s0
	b label34
label28:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s17, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s17, s17, s0
	b label29
label31:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s18, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s0, s18, s0
	vadd.f32 s17, s17, s0
	b label34
label22:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s19, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s0, s19, s0
	vadd.f32 s0, s17, s0
	vadd.f32 s16, s16, s0
	b label24
label11:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s17, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s0, s17, s0
	vadd.f32 s16, s16, s0
	b label13
label90:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s16, s16, s0
	b label13
label141:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s17, s0
	vadd.f32 s16, s16, s0
	b label24
label130:
	mov r0, #1065353216
	vmov s17, r0
	b label18
label52:
	mov r0, #1065353216
	vmov s0, r0
	b label2
label259:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s18, s0
	vadd.f32 s0, s17, s0
	vadd.f32 s0, s16, s0
	b label2
label61:
	mov r0, #1065353216
	vmov s16, r0
	b label24
label171:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s16, s0
	b label2
label239:
	mov r0, #1065353216
	vmov s18, r0
	b label38
label79:
	mov r0, #1065353216
	vmov s16, r0
	b label7
takFP:
.p2align 4
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	vmov.f32 s18, s0
	vmov.f32 s17, s1
	sub sp, sp, #4
	vmov.f32 s16, s2
label282:
	vcmp.f32 s17, s18
	vmrs APSR_nzcv, FPSCR
	bpl label303
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s17, s19
	vmrs APSR_nzcv, FPSCR
	bmi label316
	vmov.f32 s19, s16
label287:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bmi label323
	b label322
label366:
	vmov.f32 s19, s0
	b label287
label303:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	pop { pc }
label323:
	vmov.f32 s21, s16
	vmov.f32 s22, s18
label295:
	mov r0, #1065353216
	vmov.f32 s1, s21
	vmov s25, r0
	vmov.f32 s2, s22
	vsub.f32 s0, s20, s25
	bl takFP
	vmov.f32 s1, s22
	vmov.f32 s2, s20
	vmov.f32 s23, s0
	vsub.f32 s0, s21, s25
	bl takFP
	vmov.f32 s1, s20
	vmov.f32 s2, s21
	vmov.f32 s24, s0
	vsub.f32 s0, s22, s25
	bl takFP
	vcmp.f32 s24, s23
	vmrs APSR_nzcv, FPSCR
	bpl label354
	vmov.f32 s20, s23
	vmov.f32 s21, s24
	vmov.f32 s22, s0
	b label295
label289:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bmi label291
	b label329
label354:
	vmov.f32 s20, s0
	b label289
label291:
	mov r0, #1065353216
	vmov.f32 s1, s18
	vmov s23, r0
	vmov.f32 s2, s17
	vsub.f32 s0, s16, s23
	bl takFP
	vmov.f32 s1, s17
	vmov.f32 s2, s16
	vmov.f32 s21, s0
	vsub.f32 s0, s18, s23
	bl takFP
	vmov.f32 s1, s16
	vmov.f32 s2, s18
	vmov.f32 s22, s0
	vsub.f32 s0, s17, s23
	bl takFP
	vcmp.f32 s22, s21
	vmov.f32 s17, s0
	vmrs APSR_nzcv, FPSCR
	bpl label329
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	b label291
label329:
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	b label282
label322:
	vmov.f32 s20, s18
	b label289
label316:
	vmov.f32 s20, s17
	vmov.f32 s21, s16
label299:
	mov r0, #1065353216
	vmov.f32 s1, s20
	vmov s24, r0
	vmov.f32 s2, s21
	vsub.f32 s0, s19, s24
	bl takFP
	vmov.f32 s1, s21
	vmov.f32 s2, s19
	vmov.f32 s22, s0
	vsub.f32 s0, s20, s24
	bl takFP
	vmov.f32 s1, s19
	vmov.f32 s2, s20
	vmov.f32 s23, s0
	vsub.f32 s0, s21, s24
	bl takFP
	vcmp.f32 s23, s22
	vmrs APSR_nzcv, FPSCR
	bpl label366
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label299
.globl main
main:
.p2align 4
	push { r4, lr }
	vpush { s16, s17 }
	mov r0, #20
	bl _sysy_starttime
	bl getint
	mov r4, r0
	bl getfloat
	vmov.f32 s17, s0
	bl getfloat
	vmov.f32 s16, s0
	bl getfloat
	vmov.f32 s2, s0
	vmov.f32 s0, s17
	vmov.f32 s1, s16
	bl takFP
	movw r0, #0
	vmov.f32 s16, s0
	movt r0, #16864
	vmov s0, r4
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	bl fibFP
	movw r0, #59606
	movt r0, #19741
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label380
	b label381
label376:
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label379
	mov r0, #112
	bl putch
label378:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
label380:
	mov r0, #112
	bl putch
	b label376
label381:
	mov r0, #1
	bl putint
	b label376
label379:
	mov r0, #1
	bl putint
	b label378
