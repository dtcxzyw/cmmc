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
	bhs label2
	mov r0, #1065353216
	vmov s0, r0
label9:
	vpop { s16, s17, s18 }
	pop { pc }
label2:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s18, s17, s0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bhs label8
	mov r0, #1065353216
	vmov s16, r0
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s18, s17, s0
	vmov s0, r0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bhs label7
	b label67
label7:
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
	b label9
label67:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s16, s0
	b label9
label8:
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
	bhs label7
	b label67
takFP:
	push { r4, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24 }
	vmov.f32 s18, s0
	vmov.f32 s17, s1
	sub sp, sp, #4
	vmov.f32 s16, s2
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	bhs label92
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s1, s19
	vmrs APSR_nzcv, FPSCR
	bhs label105
	b label170
label105:
	vmov.f32 s19, s16
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bhs label112
	b label111
label92:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24 }
	pop { r4, pc }
label111:
	vmov.f32 s21, s16
	vmov.f32 s22, s18
	b label78
label112:
	vmov.f32 s20, s18
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bhs label135
	b label84
label88:
	mov r4, #1065353216
	vmov.f32 s1, s20
	vmov s0, r4
	vmov.f32 s2, s21
	vsub.f32 s0, s19, s0
	bl takFP
	vmov.f32 s1, s21
	vmov.f32 s2, s19
	vmov.f32 s22, s0
	vmov s0, r4
	vsub.f32 s0, s20, s0
	bl takFP
	vmov.f32 s1, s19
	vmov.f32 s2, s20
	vmov.f32 s23, s0
	vmov s0, r4
	vsub.f32 s0, s21, s0
	bl takFP
	vcmp.f32 s23, s22
	vmrs APSR_nzcv, FPSCR
	bhs label168
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label88
label168:
	vmov.f32 s19, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bhs label112
	b label111
label170:
	vmov.f32 s20, s17
	vmov.f32 s21, s16
	b label88
label84:
	mov r4, #1065353216
	vmov.f32 s1, s18
	vmov s0, r4
	vmov.f32 s2, s17
	vsub.f32 s0, s16, s0
	bl takFP
	vmov.f32 s1, s17
	vmov.f32 s2, s16
	vmov.f32 s21, s0
	vmov s0, r4
	vsub.f32 s0, s18, s0
	bl takFP
	vmov.f32 s1, s16
	vmov.f32 s2, s18
	vmov.f32 s22, s0
	vmov s0, r4
	vsub.f32 s0, s17, s0
	bl takFP
	vcmp.f32 s22, s21
	vmrs APSR_nzcv, FPSCR
	bhs label152
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	vmov.f32 s17, s0
	b label84
label152:
	vmov.f32 s16, s0
	vmov.f32 s17, s20
	vmov.f32 s18, s19
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label92
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s19, s0
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label105
	b label170
label78:
	mov r4, #1065353216
	vmov.f32 s1, s21
	vmov s0, r4
	vmov.f32 s2, s22
	vsub.f32 s0, s20, s0
	bl takFP
	vmov.f32 s1, s22
	vmov.f32 s2, s20
	vmov.f32 s23, s0
	vmov s0, r4
	vsub.f32 s0, s21, s0
	bl takFP
	vmov.f32 s1, s20
	vmov.f32 s2, s21
	vmov.f32 s24, s0
	vmov s0, r4
	vsub.f32 s0, s22, s0
	bl takFP
	vcmp.f32 s24, s23
	vmrs APSR_nzcv, FPSCR
	bhs label128
	vmov.f32 s20, s23
	vmov.f32 s21, s24
	vmov.f32 s22, s0
	b label78
label128:
	vmov.f32 s20, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bhs label135
	b label84
label135:
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label92
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s19, s0
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label105
	b label170
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
	movw r0, #7178
	movt r0, #19477
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label185
	mov r0, #112
	bl putch
	mov r0, #1065353216
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label210
label214:
	mov r0, #112
	bl putch
	b label183
label185:
	mov r0, #1
	bl putint
	mov r0, #1065353216
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label210
	b label214
label210:
	mov r0, #1
	bl putint
label183:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
