.arch armv7ve
.data
.bss
.align 8
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
	mov r2, #0
	movw r0, #:lower16:lut_fibFP
	movt r0, #:upper16:lut_fibFP
	vmov r1, s0
	vmov.f32 s16, s0
	bl cmmcCacheLookup
	mov r4, r0
	ldr r0, [r0, #12]
	cmp r0, #0
	beq label94
	vldr s0, [r4, #8]
label92:
	vpop { s16, s17 }
	pop { r4, pc }
label94:
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bpl label96
	mov r0, #1
	str r0, [r4, #12]
	mov r0, #1065353216
	vmov s0, r0
	vstr s0, [r4, #8]
	b label92
label96:
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
	b label92
.p2align 4
takFP:
	push { lr }
	vpush { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	vmov.f32 s18, s0
	vmov.f32 s17, s1
	sub sp, sp, #4
	vmov.f32 s16, s2
label2:
	vcmp.f32 s17, s18
	vmrs APSR_nzcv, FPSCR
	bpl label23
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s19, s18, s0
	vcmp.f32 s17, s19
	vmrs APSR_nzcv, FPSCR
	bpl label35
	vmov.f32 s20, s17
	vmov.f32 s21, s16
label19:
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
	bmi label87
	vmov.f32 s19, s0
	b label7
label23:
	vmov.f32 s0, s16
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21, s22, s23, s24, s25 }
	pop { pc }
label35:
	vmov.f32 s19, s16
label7:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s21, s17, s0
	vcmp.f32 s16, s21
	vmrs APSR_nzcv, FPSCR
	bmi label43
	vmov.f32 s20, s18
label9:
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s16, s16, s0
	vcmp.f32 s18, s16
	vmrs APSR_nzcv, FPSCR
	bhs label50
label11:
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
	bmi label63
	vmov.f32 s16, s0
	vmov.f32 s17, s20
	vmov.f32 s18, s19
	b label2
label43:
	vmov.f32 s20, s16
	vmov.f32 s22, s18
label15:
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
	bmi label75
	vmov.f32 s20, s0
	b label9
label50:
	vmov.f32 s16, s17
	vmov.f32 s18, s19
	vmov.f32 s17, s20
	b label2
label63:
	vmov.f32 s16, s21
	vmov.f32 s18, s22
	vmov.f32 s17, s0
	b label11
label87:
	vmov.f32 s19, s22
	vmov.f32 s20, s23
	vmov.f32 s21, s0
	b label19
label75:
	vmov.f32 s21, s23
	vmov.f32 s20, s24
	vmov.f32 s22, s0
	b label15
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
	bne label145
	mov r0, #112
	bl putch
label140:
	mov r0, #1065353216
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bne label143
	mov r0, #112
	bl putch
label142:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
label145:
	mov r0, #1
	bl putint
	b label140
label143:
	mov r0, #1
	bl putint
	b label142
