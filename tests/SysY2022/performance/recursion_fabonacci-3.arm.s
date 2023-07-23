.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
fibFP:
	push { lr }
	vpush { s16, s17, s18 }
	mov r0, #1073741824
	vmov.f32 s17, s0
	vmov s0, r0
	vcmp.f32 s17, s0
	vmrs APSR_nzcv, FPSCR
	bmi label16
	vsub.f32 s18, s17, s0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bmi label25
	b label10
label16:
	mov r0, #1065353216
	vmov s0, r0
label2:
	vpop { s16, s17, s18 }
	pop { pc }
label25:
	mov r0, #1065353216
	vmov s16, r0
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s18, s17, s0
	vmov s0, r0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bpl label9
label36:
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
	mov r0, #1065353216
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s18, s17, s0
	vmov s0, r0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bmi label36
	b label9
takFP:
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	vmov.f32 s18, s0
	vmov.f32 s17, s1
	sub sp, sp, #4
	vmov.f32 s16, s2
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	bpl label83
label66:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s17, s19
	vmrs APSR_nzcv, FPSCR
	bmi label96
	vmov.f32 s19, s16
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bmi label103
	vmov.f32 s20, s18
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bmi label75
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bmi label66
	b label83
label96:
	vmov.f32 s20, s17
	vmov.f32 s21, s16
	b label79
label75:
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
	bmi label135
	vmov.f32 s16, s0
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bmi label66
	b label83
label135:
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	b label75
label79:
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
	bmi label147
	vmov.f32 s19, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bmi label103
	vmov.f32 s20, s18
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bmi label75
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bmi label66
	b label83
label147:
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label79
label83:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	pop { pc }
label103:
	vmov.f32 s21, s16
	vmov.f32 s22, s18
label69:
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
	bmi label115
	vmov.f32 s20, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bmi label75
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bmi label66
	b label83
label115:
	vmov.f32 s20, s23
	vmov.f32 s21, s24
	vmov.f32 s22, s0
	b label69
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
	bne label167
	mov r0, #112
	bl putch
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label166
label164:
	mov r0, #112
	bl putch
label165:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
label166:
	mov r0, #1
	bl putint
	b label165
label167:
	mov r0, #1
	bl putint
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	beq label164
	b label166
