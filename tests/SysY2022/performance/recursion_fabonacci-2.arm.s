.arch armv7ve
.data
.bss
.p2align 3
lut_fibFP:
	.zero	16336
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
fibFP:
	push { r4, lr }
	vpush { s16, s17 }
	movw r0, #:lower16:lut_fibFP
	movt r0, #:upper16:lut_fibFP
	vmov r1, s0
	mov r2, #0
	vmov.f32 s16, s0
	bl cmmcCacheLookup
	mov r4, r0
	ldr r0, [r0, #12]
	cmp r0, #0
	beq label98
	vldr s0, [r4, #8]
label96:
	vpop { s16, s17 }
	pop { r4, pc }
label98:
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bpl label100
	mov r0, #1
	str r0, [r4, #12]
	mov r0, #1065353216
	vmov s0, r0
	vstr s0, [r4, #8]
	b label96
label100:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s16, s0
	bl fibFP
	mov r0, #1065353216
	vmov.f32 s17, s0
	vmov s0, r0
	vsub.f32 s0, s16, s0
	bl fibFP
	mov r0, #1
	str r0, [r4, #12]
	vadd.f32 s0, s17, s0
	vstr s0, [r4, #8]
	b label96
.p2align 4
takFP:
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	vcmp.f32 s1, s0
	sub sp, sp, #4
	vmrs APSR_nzcv, FPSCR
	bpl label30
	vmov.f32 s16, s0
	vmov.f32 s17, s1
	vmov.f32 s18, s2
	b label4
label92:
	vmov.f32 s16, s19
	vmov.f32 s17, s20
label4:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s16, s0
	vcmp.f32 s17, s19
	vmrs APSR_nzcv, FPSCR
	bmi label38
	vmov.f32 s19, s18
	b label12
label50:
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
label8:
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
	bmi label50
	vmov.f32 s19, s0
label12:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s20, s17, s0
	vcmp.f32 s18, s20
	vmrs APSR_nzcv, FPSCR
	bmi label57
	vmov.f32 s20, s16
	b label18
label57:
	vmov.f32 s21, s18
	vmov.f32 s22, s16
label14:
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
	bmi label69
	vmov.f32 s20, s0
label18:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s18, s18, s0
	vcmp.f32 s16, s18
	vmrs APSR_nzcv, FPSCR
	bmi label20
	vmov.f32 s18, s17
	b label24
label88:
	vmov.f32 s18, s21
	vmov.f32 s16, s22
	vmov.f32 s17, s0
label20:
	mov r0, #1065353216
	vmov.f32 s1, s16
	vmov s23, r0
	vmov.f32 s2, s17
	vsub.f32 s0, s18, s23
	bl takFP
	vmov.f32 s1, s17
	vmov.f32 s2, s18
	vmov.f32 s21, s0
	vsub.f32 s0, s16, s23
	bl takFP
	vmov.f32 s1, s18
	vmov.f32 s2, s16
	vmov.f32 s22, s0
	vsub.f32 s0, s17, s23
	bl takFP
	vcmp.f32 s22, s21
	vmrs APSR_nzcv, FPSCR
	bmi label88
	vmov.f32 s18, s0
label24:
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bmi label92
	vmov.f32 s0, s18
label2:
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	pop { pc }
label69:
	vmov.f32 s20, s23
	vmov.f32 s21, s24
	vmov.f32 s22, s0
	b label14
label30:
	vmov.f32 s0, s2
	b label2
label38:
	vmov.f32 s20, s17
	vmov.f32 s21, s18
	b label8
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
	movt r0, #16864
	vmov.f32 s16, s0
	vmov s1, r0
	vmov s0, r4
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	bl fibFP
	movw r0, #7178
	movt r0, #19477
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	bne label149
	mov r0, #112
	bl putch
label144:
	mov r0, #1065353216
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label147
	mov r0, #112
	bl putch
label146:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
label149:
	mov r0, #1
	bl putint
	b label144
label147:
	mov r0, #1
	bl putint
	b label146
