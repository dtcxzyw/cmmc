.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
fibFP:
.p2align 4
	push { lr }
	vpush { s16, s17, s18 }
	mov r0, #1073741824
	vmov.f32 s17, s0
	vmov s0, r0
	vcmp.f32 s17, s0
	vmrs APSR_nzcv, FPSCR
	bpl label4
	mov r0, #1065353216
	vmov s0, r0
label2:
	vpop { s16, s17, s18 }
	pop { pc }
label4:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s18, s17, s0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bpl label10
	mov r0, #1065353216
	vmov s16, r0
label5:
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s18, s17, s0
	vmov s0, r0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bpl label9
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s16, s0
	b label2
label9:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s18, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s17, s0
	vmov s0, r0
	vsub.f32 s0, s18, s0
	bl fibFP
	vadd.f32 s0, s17, s0
	vadd.f32 s0, s16, s0
	b label2
label10:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s18, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s16, s0
	vmov s0, r0
	vsub.f32 s0, s18, s0
	bl fibFP
	vadd.f32 s16, s16, s0
	b label5
takFP:
.p2align 4
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	vmov.f32 s18, s0
	vmov.f32 s16, s2
	sub sp, sp, #4
	vmov.f32 s17, s1
label60:
	vcmp.f32 s17, s18
	vmrs APSR_nzcv, FPSCR
	bpl label81
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s17, s19
	vmrs APSR_nzcv, FPSCR
	bmi label94
	vmov.f32 s19, s16
	b label65
label94:
	vmov.f32 s20, s17
	vmov.f32 s21, s16
	b label77
label81:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	pop { pc }
label65:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bmi label101
	vmov.f32 s20, s18
	b label71
label101:
	vmov.f32 s21, s16
	vmov.f32 s22, s18
	b label67
label77:
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
	bmi label145
	vmov.f32 s19, s0
	b label65
label145:
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label77
label67:
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
	bmi label113
	vmov.f32 s20, s0
	b label71
label113:
	vmov.f32 s20, s23
	vmov.f32 s21, s24
	vmov.f32 s22, s0
	b label67
label71:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bmi label73
label119:
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	b label60
label73:
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
	bpl label119
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	b label73
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
	bne label153
	mov r0, #112
	bl putch
label149:
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label152
	mov r0, #112
	bl putch
label151:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
label152:
	mov r0, #1
	bl putint
	b label151
label153:
	mov r0, #1
	bl putint
	b label149
