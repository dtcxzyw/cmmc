.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
fibFP:
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
	bpl label5
	mov r0, #1065353216
	vmov s16, r0
label24:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s19, s18, s0
	vmov s0, r0
	vcmp.f32 s19, s0
	vmrs APSR_nzcv, FPSCR
	bpl label26
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s16, s0
	b label2
label52:
	mov r0, #1065353216
	vmov s0, r0
label2:
	vpop { s16, s17, s18, s19, s20 }
	pop { pc }
label26:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s18, s19, s0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bmi label180
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
label5:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s17, s19, s0
	vcmp.f32 s17, s0
	vmrs APSR_nzcv, FPSCR
	bpl label6
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
	vsub.f32 s0, s20, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s17, s0
	vmov s0, r0
	vsub.f32 s0, s20, s0
	bl fibFP
	vadd.f32 s17, s17, s0
	b label18
label180:
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
	b label2
label36:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s20, s19, s0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bpl label37
	mov r0, #1065353216
	vmov s18, r0
	b label38
label120:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s16, s16, s0
	b label24
label6:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bpl label12
	mov r0, #1065353216
	vmov s16, r0
label7:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s20, s17, s0
	vmov s0, r0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bpl label11
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s16, s16, s0
	b label13
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
label37:
	mov r0, #1073741824
	vmov s0, r0
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
label130:
	mov r0, #1065353216
	vmov s17, r0
label18:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s20, s19, s0
	vmov s0, r0
	vcmp.f32 s20, s0
	vmrs APSR_nzcv, FPSCR
	bpl label22
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s17, s0
	vadd.f32 s16, s16, s0
	b label24
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
label259:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s18, s0
	vadd.f32 s0, s17, s0
	vadd.f32 s0, s16, s0
	b label2
.p2align 4
takFP:
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	vmov.f32 s18, s0
	vmov.f32 s17, s1
	sub sp, sp, #4
	vmov.f32 s16, s2
label286:
	vcmp.f32 s17, s18
	vmrs APSR_nzcv, FPSCR
	bpl label307
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s17, s19
	vmrs APSR_nzcv, FPSCR
	bpl label319
	vmov.f32 s20, s17
	vmov.f32 s21, s16
label303:
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
	bmi label371
	vmov.f32 s19, s0
	b label291
label307:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	pop { pc }
label319:
	vmov.f32 s19, s16
label291:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s21, s17, s0
	vcmp.f32 s16, s21
	vmrs APSR_nzcv, FPSCR
	bmi label327
	vmov.f32 s20, s18
label293:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bmi label295
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	b label286
label327:
	vmov.f32 s20, s16
	vmov.f32 s22, s18
label299:
	mov r0, #1065353216
	vmov.f32 s1, s20
	vmov s25, r0
	vmov.f32 s2, s22
	vsub.f32 s0, s21, s25
	bl takFP
	vmov.f32 s1, s22
	vmov.f32 s2, s21
	vmov.f32 s23, s0
	vsub.f32 s0, s20, s25
	bl takFP
	vmov.f32 s1, s21
	vmov.f32 s2, s20
	vmov.f32 s24, s0
	vsub.f32 s0, s22, s25
	bl takFP
	vcmp.f32 s24, s23
	vmrs APSR_nzcv, FPSCR
	bmi label359
	vmov.f32 s20, s0
	b label293
label295:
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
	vmrs APSR_nzcv, FPSCR
	bmi label347
	vmov.f32 s16, s0
	vmov.f32 s17, s20
	vmov.f32 s18, s19
	b label286
label347:
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	vmov.f32 s17, s0
	b label295
label371:
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label303
label359:
	vmov.f32 s21, s23
	vmov.f32 s20, s24
	vmov.f32 s22, s0
	b label299
.p2align 4
.globl main
main:
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
