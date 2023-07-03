.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
fibFP:
	push { lr }
	vpush { s16, s17 }
	sub sp, sp, #4
	vmov.f32 s16, s0
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	bmi label12
	b label4
label12:
	mov r0, #1065353216
	vmov s0, r0
label2:
	add sp, sp, #4
	vpop { s16, s17 }
	pop { pc }
label4:
	mov r0, #1073741824
	vmov s0, r0
	vsub.f32 s0, s16, s0
	bl fibFP
	vmov.f32 s17, s0
	mov r0, #1065353216
	vmov s0, r0
	vsub.f32 s0, s16, s0
	bl fibFP
	vadd.f32 s0, s17, s0
	b label2
takFP:
	push { r4, lr }
	vpush { s16, s17, s18, s19, s20 }
	sub sp, sp, #4
	vcmp.f32 s1, s0
	vmrs APSR_nzcv, FPSCR
	bmi label37
	vmov.f32 s0, s2
	b label30
label37:
	vmov.f32 s16, s0
	vmov.f32 s17, s1
	vmov.f32 s18, s2
label26:
	mov r4, #1065353216
	vmov s0, r4
	vsub.f32 s0, s16, s0
	vmov.f32 s1, s17
	vmov.f32 s2, s18
	bl takFP
	vmov.f32 s19, s0
	vmov s0, r4
	vsub.f32 s0, s17, s0
	vmov.f32 s1, s18
	vmov.f32 s2, s16
	bl takFP
	vmov.f32 s20, s0
	vmov s0, r4
	vsub.f32 s0, s18, s0
	vmov.f32 s1, s16
	vmov.f32 s2, s17
	bl takFP
	vcmp.f32 s20, s19
	vmrs APSR_nzcv, FPSCR
	bmi label53
	b label30
label53:
	vmov.f32 s16, s19
	vmov.f32 s17, s20
	vmov.f32 s18, s0
	b label26
label30:
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20 }
	pop { r4, pc }
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
	vmov.f32 s16, s0
	vmov s0, r4
	vcvt.f32.s32 s0, s0
	movw r0, #0
	movt r0, #16864
	vmov s1, r0
	vadd.f32 s0, s1, s0
	bl fibFP
	movw r0, #59606
	movt r0, #19741
	vmov s1, r0
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	beq label56
	mov r0, #1
	bl putint
	b label57
label56:
	mov r0, #112
	bl putch
label57:
	mov r0, #1073741824
	vmov s0, r0
	vcmp.f32 s16, s0
	vmrs APSR_nzcv, FPSCR
	beq label58
	mov r0, #1
	bl putint
	b label59
label58:
	mov r0, #112
	bl putch
label59:
	mov r0, #41
	bl _sysy_stoptime
	mov r0, #0
	vpop { s16, s17 }
	pop { r4, pc }
