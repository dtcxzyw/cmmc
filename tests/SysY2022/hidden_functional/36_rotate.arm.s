.arch armv7ve
.data
.bss
.align 8
image:
	.zero	4194304
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
my_sin_impl:
	push { lr }
	vpush { s16 }
	movw r0, #14269
	movt r0, #13702
	vabs.f32 s1, s0
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label4
label2:
	vpop { s16 }
	pop { pc }
label4:
	movw r1, #0
	movt r1, #16448
	vmov s2, r0
	vmov s1, r1
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label7
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	movw r0, #0
	movt r0, #16448
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s2
	vsub.f32 s0, s0, s1
	b label2
label7:
	movw r0, #0
	movt r0, #16448
	vmov s16, r0
	vdiv.f32 s0, s0, s16
	bl my_sin_impl
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s16
	vsub.f32 s0, s0, s1
	vmov s1, r0
	movw r0, #0
	movt r0, #16448
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s2
	vsub.f32 s0, s0, s1
	b label2
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19, s20, s21 }
	sub sp, sp, #4
	bl getfloat
	vmov.f32 s19, s0
	bl getch
	bl getch
	cmp r0, #80
	beq label51
label78:
	mvn r0, #0
label49:
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label51:
	bl getch
	cmp r0, #50
	bne label78
	bl getint
	mov r4, r0
	bl getint
	cmp r4, #1024
	mov r5, r0
	bgt label78
	cmp r0, #1024
	bgt label78
	bl getint
	cmp r0, #255
	movw r6, #:lower16:image
	movt r6, #:upper16:image
	add r1, r4, r4, lsr #31
	asr r7, r1, #1
	add r1, r5, r5, lsr #31
	vmov s0, r7
	asr r8, r1, #1
	vcvt.f32.s32 s16, s0
	vmov s0, r8
	vcvt.f32.s32 s17, s0
	bne label78
	mov r9, #0
	cmp r5, r9
	ble label57
label68:
	cmp r4, #0
	bgt label70
label69:
	add r9, r9, #1
	cmp r5, r9
	bgt label68
	b label57
label70:
	mul r10, r4, r9
	mov r11, #0
.p2align 4
label71:
	bl getint
	add r1, r10, r11
	add r11, r11, #1
	str r0, [r6, r1, lsl #2]
	cmp r4, r11
	bgt label71
	b label69
label57:
	movw r0, #4059
	movt r0, #16329
	movw r1, #4059
	movt r1, #49353
	vmov s0, r0
	vmov s4, r1
	movw r0, #4059
	movt r0, #16585
	mov r1, #0
	vmov s3, r0
	mov r0, #0
	vadd.f32 s0, s19, s0
	vdiv.f32 s1, s0, s3
	vcmp.f32 s0, s3
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r9, r0, r1
	vcvt.s32.f32 s1, s1
	movw r0, #4059
	movt r0, #16457
	vmov s5, r0
	movw r0, #4059
	movt r0, #49225
	vcvt.f32.s32 s1, s1
	vmov s6, r0
	vmul.f32 s1, s1, s3
	vsub.f32 s1, s0, s1
	vmovne.f32 s0, s1
	vcmp.f32 s0, s5
	vsub.f32 s1, s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s1
	vcmp.f32 s0, s6
	vadd.f32 s1, s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r0, #0
	mov r1, #0
	vmov.f32 s1, s19
	vcmp.f32 s19, s3
	vmov.f32 s18, s0
	vdiv.f32 s0, s19, s3
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s19, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r9, r0, r1
	vcvt.s32.f32 s0, s0
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s0, s3
	vsub.f32 s0, s19, s0
	vmovne.f32 s1, s0
	vcmp.f32 s1, s5
	vsub.f32 s2, s1, s3
	vmov.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s2
	vcmp.f32 s0, s6
	vadd.f32 s1, s0, s3
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r0, #80
	vmov.f32 s19, s0
	bl putch
	mov r0, #50
	bl putch
	mov r0, #10
	bl putch
	mov r0, r4
	bl putint
	mov r0, #32
	bl putch
	mov r0, r5
	bl putint
	mov r0, #32
	bl putch
	mov r0, #255
	bl putint
	mov r0, #10
	bl putch
	mov r9, #0
	cmp r5, r9
	ble label155
label60:
	sub r0, r9, r8
	cmp r4, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s21, s0, s19
	vmul.f32 s20, s0, s18
	ble label61
	mov r10, #0
	b label62
label61:
	mov r0, #10
	bl putch
	add r9, r9, #1
	cmp r5, r9
	bgt label60
	b label155
.p2align 4
label62:
	sub r0, r10, r7
	mov r1, #0
	mov r3, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s1, s0, s18
	vmul.f32 s0, s0, s19
	vsub.f32 s1, s1, s21
	vadd.f32 s0, s0, s20
	vadd.f32 s1, s1, s16
	vadd.f32 s0, s0, s17
	vcvt.s32.f32 s1, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s1
	vmov r2, s0
	cmp r4, r0
	movwle r1, #1
	cmp r0, #0
	orrlt r1, r1, #1
	cmp r2, #0
	movwlt r3, #1
	orrs r1, r1, r3
	bne label182
	cmp r5, r2
	bgt label227
.p2align 4
label182:
	mov r0, #0
.p2align 4
label66:
	bl putint
	mov r0, #32
	bl putch
	add r10, r10, #1
	cmp r4, r10
	bgt label62
	b label61
label155:
	mov r0, #0
	b label49
.p2align 4
label227:
	mla r0, r4, r2, r0
	ldr r0, [r6, r0, lsl #2]
	b label66
