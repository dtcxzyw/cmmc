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
	bhi label5
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
label5:
	movw r1, #0
	movt r1, #16448
	vmov s2, r0
	vmov s1, r1
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label8
label6:
	movw r0, #0
	movt r0, #16512
	vmov s1, r0
	movw r0, #0
	movt r0, #16448
	vmov s2, r0
	movw r0, #0
	movt r0, #16512
	vmul.f32 s1, s0, s1
	vmul.f32 s1, s1, s0
	vmul.f32 s1, s1, s0
	vmul.f32 s0, s0, s2
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
label8:
	movw r1, #0
	movt r1, #16448
	vmov s2, r0
	vmov s1, r1
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label11
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
	b label6
label11:
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
	b label6
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
	bne label125
	bl getch
	cmp r0, #50
	beq label96
label125:
	mvn r0, #0
label118:
	add sp, sp, #4
	vpop { s16, s17, s18, s19, s20, s21 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label96:
	bl getint
	mov r4, r0
	bl getint
	cmp r4, #1024
	mov r5, r0
	bgt label125
	cmp r0, #1024
	bgt label125
	bl getint
	cmp r0, #255
	bne label125
	add r0, r5, r5, lsr #31
	movw r7, #:lower16:image
	movt r7, #:upper16:image
	cmp r5, #0
	asr r8, r0, #1
	add r0, r4, r4, lsr #31
	vmov s0, r8
	asr r6, r0, #1
	vcvt.f32.s32 s16, s0
	vmov s0, r6
	vcvt.f32.s32 s17, s0
	ble label100
	mov r9, #0
	b label110
.p2align 4
label117:
	add r10, r10, #4
	mov r11, r0
.p2align 4
label114:
	bl getint
	str r0, [r10, #0]
	add r0, r11, #1
	cmp r4, r0
	bgt label117
label112:
	add r9, r9, #1
	cmp r5, r9
	ble label100
label110:
	cmp r4, #0
	ble label112
	mul r0, r4, r9
	mov r11, #0
	add r10, r7, r0, lsl #2
	b label114
label100:
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
	vcmp.f32 s19, s3
	vmov.f32 s1, s19
	vmov.f32 s18, s0
	vmrs APSR_nzcv, FPSCR
	vdiv.f32 s0, s19, s3
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
	cmp r5, #0
	ble label201
	mov r9, #0
	b label101
label103:
	mov r0, #10
	bl putch
	add r9, r9, #1
	cmp r5, r9
	ble label201
label101:
	sub r0, r9, r8
	cmp r4, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s21, s0, s18
	vmul.f32 s20, s0, s19
	ble label103
	mov r10, #0
	b label104
.p2align 4
label230:
	mov r0, #0
.p2align 4
label108:
	bl putint
	mov r0, #32
	bl putch
	add r10, r10, #1
	cmp r4, r10
	ble label103
.p2align 4
label104:
	sub r0, r10, r6
	mov r1, #0
	mov r3, #0
	vmov s0, r0
	vcvt.f32.s32 s0, s0
	vmul.f32 s1, s0, s18
	vmul.f32 s0, s0, s19
	vsub.f32 s1, s1, s20
	vadd.f32 s0, s0, s21
	vadd.f32 s1, s1, s17
	vadd.f32 s0, s0, s16
	vcvt.s32.f32 s1, s1
	vcvt.s32.f32 s0, s0
	vmov r0, s1
	vmov r2, s0
	cmp r4, r0
	movwls r1, #1
	cmp r2, #0
	movwlt r3, #1
	orrs r1, r1, r3
	bne label230
	cmp r5, r2
	ble label230
	mul r1, r4, r2
	add r0, r7, r0, lsl #2
	ldr r0, [r0, r1, lsl #2]
	b label108
label201:
	mov r0, #0
	b label118
