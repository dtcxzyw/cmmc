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
	bhs label4
	mov r0, #1065353216
	vmov s0, r0
	b label2
label70:
	mov r0, #1065353216
	vmov s0, r0
	vadd.f32 s0, s16, s0
label2:
	vpop { s16, s17, s18 }
	pop { pc }
label4:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s18, s17, s0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bhs label10
	mov r0, #1065353216
	vmov s16, r0
	vmov s0, r0
	mov r0, #1073741824
	vsub.f32 s18, s17, s0
	vmov s0, r0
	vcmp.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	bhs label9
	b label70
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
	bhs label9
	b label70
takFP:
	push { r4, lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24 }
	vmov.f32 s18, s0
	vmov.f32 s17, s1
	sub sp, sp, #4
	vmov.f32 s16, s2
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	bhs label93
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s1, s19
	vmrs APSR_nzcv, FPSCR
	bhs label106
	b label171
label106:
	vmov.f32 s19, s16
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bhs label113
	b label112
label93:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24 }
	pop { r4, pc }
label112:
	vmov.f32 s21, s16
	vmov.f32 s22, s18
	b label79
label113:
	vmov.f32 s20, s18
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bhs label136
	b label85
label89:
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
	bhs label169
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label89
label169:
	vmov.f32 s19, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s16, s20
	vmrs APSR_nzcv, FPSCR
	bhs label113
	b label112
label171:
	vmov.f32 s20, s17
	vmov.f32 s21, s16
	b label89
label85:
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
	bhs label153
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	vmov.f32 s17, s0
	b label85
label153:
	vmov.f32 s16, s0
	vmov.f32 s17, s20
	vmov.f32 s18, s19
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label93
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s19, s0
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label106
	b label171
label79:
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
	bhs label129
	vmov.f32 s20, s23
	vmov.f32 s21, s24
	vmov.f32 s22, s0
	b label79
label129:
	vmov.f32 s20, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bhs label136
	b label85
label136:
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label93
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s19, s0
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bhs label106
	b label171
.globl main
main:
	push { r4, lr }
	vpush { s16, s17 }
	mov r0, #19
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
	movw r0, #17320
	movt r0, #19569
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label186
	mov r0, #112
	bl putch
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label211
label215:
	mov r0, #112
	bl putch
	b label184
label186:
	mov r0, #1
	bl putint
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label211
	b label215
label211:
	mov r0, #1
	bl putint
label184:
	mov r0, #40
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
