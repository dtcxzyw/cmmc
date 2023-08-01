.arch armv7ve
.data
.bss
.align 8
test_block:
	.zero	256
.align 8
test_dct:
	.zero	256
.align 8
test_idct:
	.zero	256
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
my_sin_impl:
	push { lr }
	vpush { s16 }
	movw r0, #14269
	vabs.f32 s1, s0
	movt r0, #13702
	vmov s2, r0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label4
label2:
	vpop { s16 }
	pop { pc }
label4:
	movw r0, #0
	movt r0, #16448
	vmov s1, r0
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label7
label5:
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
	b label5
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #12
	bl getint
	str r0, [sp, #4]
	bl getint
	mov r6, #0
	movw r5, #:lower16:test_block
	str r0, [sp, #0]
	movt r5, #:upper16:test_block
	ldr r0, [sp, #4]
	cmp r0, r6
	ble label56
.p2align 4
label51:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label52
	add r4, r5, r6, lsl #5
	mov r7, #0
.p2align 4
label54:
	bl getfloat
	add r0, r4, r7, lsl #2
	add r7, r7, #1
	vstr s0, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r7
	bgt label54
	add r6, r6, #1
	ldr r0, [sp, #4]
	cmp r0, r6
	bgt label51
label56:
	ldr r0, [sp, #4]
	movw r4, #:lower16:test_dct
	mov r6, #0
	movt r4, #:upper16:test_dct
	vmov s0, r0
	movw r0, #4059
	movt r0, #16457
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #0]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
	add r1, r4, r6, lsl #5
	vmov s0, r6
	ldr r0, [sp, #4]
	vcvt.f32.s32 s4, s0
	cmp r0, r6
	bgt label169
label168:
	mov r6, #0
	b label79
.p2align 4
label169:
	mov r2, #0
	ldr r0, [sp, #0]
	cmp r0, r2
	ble label61
.p2align 4
label62:
	add r0, r1, r2, lsl #2
	mov r3, #0
	vmov s0, r3
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
	ldr r0, [sp, #4]
	cmp r0, r3
	ble label65
.p2align 4
label66:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label67
	vmov s0, r3
	mov r0, #1056964608
	movw r7, #4059
	vmov s1, r0
	movt r7, #49353
	movw r0, #4059
	movt r0, #16329
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vmul.f32 s0, s17, s0
	vmul.f32 s0, s0, s4
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r7
	mov r7, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r7, #1
	orrs r0, r0, r7
	add r7, r5, r3, lsl #5
	bne label77
	b label69
.p2align 4
label269:
	add r3, r3, #1
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label66
	add r2, r2, #1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label62
	add r6, r6, #1
	add r1, r4, r6, lsl #5
	vmov s0, r6
	ldr r0, [sp, #4]
	vcvt.f32.s32 s4, s0
	cmp r0, r6
	bgt label169
	b label168
label79:
	ldr r0, [sp, #4]
	cmp r0, r6
	bgt label129
	b label81
.p2align 4
label69:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r8, #0
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
.p2align 4
label71:
	vmov s0, r8
	mov r0, #1056964608
	movw r9, #4059
	vmov s1, r0
	movt r9, #49353
	movw r0, #4059
	movt r0, #16329
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vmul.f32 s0, s16, s0
	vmul.f32 s0, s0, s3
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r9
	mov r9, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r9, #1
	orrs r0, r0, r9
	add r0, r7, r8, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	bne label76
.p2align 4
label74:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	add r8, r8, #1
	add r0, r1, r2, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label71
	b label269
.p2align 4
label76:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label74
.p2align 4
label67:
	add r3, r3, #1
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label66
	add r2, r2, #1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label62
	b label647
.p2align 4
label65:
	add r2, r2, #1
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label62
label647:
	add r6, r6, #1
	add r1, r4, r6, lsl #5
	vmov s0, r6
	ldr r0, [sp, #4]
	vcvt.f32.s32 s4, s0
	cmp r0, r6
	bgt label169
	b label168
label81:
	mov r0, #10
	bl putch
	mov r7, #0
	ldr r0, [sp, #4]
	movw r5, #:lower16:test_idct
	movt r5, #:upper16:test_idct
	sub r3, r0, #8
	ldr r0, [sp, #0]
	sub r6, r0, #8
	vmov s0, r7
	mov r0, #1056964608
	add r1, r5, r7, lsl #5
	vmov s1, r0
	ldr r0, [sp, #4]
	vcvt.f32.s32 s0, s0
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label307
	b label306
.p2align 4
label129:
	add r5, r4, r6, lsl #5
	vldr s0, [r5, #0]
	bl putfloat
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label132
	mov r7, #1
.p2align 4
label130:
	mov r0, #32
	bl putch
	add r0, r5, r7, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #0]
	add r7, r7, #1
	cmp r0, r7
	bgt label130
.p2align 4
label132:
	mov r0, #10
	bl putch
	add r6, r6, #1
	ldr r0, [sp, #4]
	cmp r0, r6
	bgt label129
	b label81
label306:
	mov r6, #0
	ldr r0, [sp, #4]
	cmp r0, r6
	ble label90
.p2align 4
label86:
	add r4, r5, r6, lsl #5
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label89
	mov r7, #1
.p2align 4
label87:
	mov r0, #32
	bl putch
	add r0, r4, r7, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #0]
	add r7, r7, #1
	cmp r0, r7
	bgt label87
.p2align 4
label89:
	mov r0, #10
	bl putch
	add r6, r6, #1
	ldr r0, [sp, #4]
	cmp r0, r6
	bgt label86
label90:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label307:
	mov r2, #0
	ldr r0, [sp, #0]
	cmp r0, r2
	ble label93
.p2align 4
label94:
	add r0, r1, r2, lsl #2
	vldr s0, [r4, #0]
	mov r8, #1048576000
	vmov s1, r8
	vmul.f32 s0, s0, s1
	vstr s0, [r0, #0]
	mov r0, #1056964608
	vmov s0, r2
	vmov s1, r0
	ldr r0, [sp, #4]
	vcvt.f32.s32 s0, s0
	cmp r0, #1
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label95
	b label344
.p2align 4
label107:
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r2
	bgt label94
	b label93
.p2align 4
label108:
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label109
	vmov s0, r8
	movw r0, #4059
	movw r9, #4059
	movt r0, #16329
	movt r9, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r9
	mov r9, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r9, #1
	orrs r0, r0, r9
	add r9, r4, r8, lsl #5
	bne label119
	b label111
.p2align 4
label500:
	add r8, r8, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label108
	b label107
.p2align 4
label111:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r10, #1
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
.p2align 4
label113:
	vmov s0, r10
	movw r0, #4059
	movw r11, #4059
	movt r0, #16329
	movt r11, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s3, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r11
	mov r11, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r11, #1
	orrs r0, r0, r11
	add r0, r9, r10, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	bne label118
.p2align 4
label116:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	vmrs APSR_nzcv, FPSCR
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	add r10, r10, #1
	add r0, r1, r2, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r10
	bgt label113
	b label500
.p2align 4
label118:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label116
.p2align 4
label109:
	add r8, r8, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label108
	b label107
.p2align 4
label95:
	ldr r0, [sp, #4]
	cmp r0, #9
	ble label96
	add r0, r1, r2, lsl #2
	vldr s1, [r0, #0]
	mov r0, #1
.p2align 4
label101:
	add r8, r4, r0, lsl #5
	mov r9, #1056964608
	add r0, r0, #8
	vmov s0, r9
	vldr s2, [r8, #0]
	cmp r3, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #96]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #128]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #160]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #192]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #224]
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	bgt label101
	vmov.f32 s0, s1
.p2align 4
label97:
	add r8, r4, r0, lsl #5
	vldr s1, [r8, #0]
	mov r8, #1056964608
	vmov s2, r8
	add r8, r1, r2, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	add r8, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	ble label364
	mov r0, r8
	b label97
.p2align 4
label364:
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label654
.p2align 4
label120:
	ldr r0, [sp, #0]
	cmp r0, #9
	bgt label124
	b label517
.p2align 4
label121:
	add r8, r4, r0, lsl #2
	vldr s1, [r8, #0]
	mov r8, #1056964608
	vmov s2, r8
	add r8, r1, r2, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	add r8, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	ble label531
	mov r0, r8
	b label121
.p2align 4
label124:
	add r0, r1, r2, lsl #2
	vldr s1, [r0, #0]
	mov r0, #1
.p2align 4
label125:
	add r8, r4, r0, lsl #2
	mov r9, #1056964608
	add r0, r0, #8
	vmov s0, r9
	vldr s2, [r8, #0]
	cmp r6, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #12]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #16]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #20]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #24]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #28]
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	bgt label125
	vmov.f32 s0, s1
	b label121
.p2align 4
label96:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	b label97
.p2align 4
label93:
	add r7, r7, #1
	vmov s0, r7
	mov r0, #1056964608
	add r1, r5, r7, lsl #5
	vmov s1, r0
	ldr r0, [sp, #4]
	vcvt.f32.s32 s0, s0
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label307
	b label306
.p2align 4
label531:
	mov r8, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label108
	b label107
label61:
	add r6, r6, #1
	add r1, r4, r6, lsl #5
	vmov s0, r6
	ldr r0, [sp, #4]
	vcvt.f32.s32 s4, s0
	cmp r0, r6
	bgt label169
	b label168
label52:
	add r6, r6, #1
	ldr r0, [sp, #4]
	cmp r0, r6
	bgt label51
	b label56
.p2align 4
label344:
	ldr r0, [sp, #0]
	cmp r0, #1
	bgt label120
	mov r8, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label108
	b label107
.p2align 4
label654:
	mov r8, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label108
	b label107
.p2align 4
label517:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	b label121
.p2align 4
label119:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label111
.p2align 4
label77:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label69
