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
my_sin_impl:
.p2align 4
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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #20
	bl getint
	str r0, [sp, #0]
	mov r6, r0
	bl getint
	mov r5, #0
	movw r4, #:lower16:test_block
	str r0, [sp, #4]
	movt r4, #:upper16:test_block
	ldr r6, [sp, #0]
	cmp r6, r5
	ble label54
.p2align 4
label49:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label50
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label49
	b label54
.p2align 4
label51:
	bl getfloat
	add r0, r6, r7, lsl #2
	add r7, r7, #1
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r7
	bgt label51
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label49
label54:
	ldr r6, [sp, #0]
	movw r0, #4059
	mov r3, #0
	movt r0, #16457
	vmov s0, r6
	movw r6, #:lower16:test_dct
	movt r6, #:upper16:test_dct
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #4]
	str r6, [sp, #8]
	vmov s1, r0
	vdiv.f32 s17, s0, s18
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
	vmov s0, r3
	add r1, r6, r3, lsl #5
	ldr r6, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r6, r3
	bgt label173
	mov r4, #0
	cmp r6, r4
	bgt label60
	b label64
label173:
	mov r2, #0
	b label118
.p2align 4
label60:
	ldr r6, [sp, #8]
	add r5, r6, r4, lsl #5
	vldr s0, [r5, #0]
	bl putfloat
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label63
	mov r6, #1
	b label61
.p2align 4
label63:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label60
label64:
	mov r0, #10
	bl putch
	mov r8, #0
	movw r1, #:lower16:test_idct
	ldr r6, [sp, #0]
	movt r1, #:upper16:test_idct
	ldr r0, [sp, #4]
	str r1, [sp, #12]
	sub r5, r6, #4
	sub r3, r6, #20
	sub r4, r0, #20
	sub r7, r0, #4
	b label65
.p2align 4
label118:
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label120
	add r3, r3, #1
	ldr r6, [sp, #8]
	vmov s0, r3
	add r1, r6, r3, lsl #5
	ldr r6, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r6, r3
	bgt label173
	mov r4, #0
	cmp r6, r4
	bgt label60
	b label64
.p2align 4
label120:
	add r0, r1, r2, lsl #2
	mov r5, #0
	vmov s0, r5
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label124
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label120
	add r3, r3, #1
	ldr r6, [sp, #8]
	vmov s0, r3
	add r1, r6, r3, lsl #5
	ldr r6, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r6, r3
	bgt label173
	mov r4, #0
	cmp r6, r4
	bgt label60
	b label64
.p2align 4
label124:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label125
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label124
	add r2, r2, #1
	cmp r0, r2
	bgt label120
	add r3, r3, #1
	ldr r6, [sp, #8]
	vmov s0, r3
	add r1, r6, r3, lsl #5
	ldr r6, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r6, r3
	bgt label173
	mov r4, #0
	cmp r6, r4
	bgt label60
	b label64
.p2align 4
label128:
	vmov s0, r7
	mov r0, #1056964608
	movw r8, #4059
	vmov s1, r0
	movt r8, #49353
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
	vmov s1, r8
	mov r8, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r8, #1
	orrs r0, r0, r8
	add r0, r6, r7, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	beq label132
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label132:
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
	add r7, r7, #1
	add r0, r1, r2, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r7
	bgt label128
	add r5, r5, #1
	ldr r6, [sp, #0]
	cmp r6, r5
	bgt label124
	add r2, r2, #1
	cmp r0, r2
	bgt label120
	add r3, r3, #1
	ldr r6, [sp, #8]
	vmov s0, r3
	add r1, r6, r3, lsl #5
	ldr r6, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r6, r3
	bgt label173
	mov r4, #0
	cmp r6, r4
	bgt label60
	b label64
.p2align 4
label65:
	vmov s0, r8
	mov r0, #1056964608
	ldr r1, [sp, #12]
	vmov s1, r0
	ldr r6, [sp, #0]
	add r1, r1, r8, lsl #5
	vcvt.f32.s32 s0, s0
	cmp r6, r8
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label215
	mov r4, #0
	cmp r6, r4
	bgt label113
	b label117
.p2align 4
label215:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label69
.p2align 4
label218:
	add r8, r8, #1
	b label65
.p2align 4
label361:
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label69
	b label218
.p2align 4
label86:
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label88
	add r9, r9, #1
	ldr r6, [sp, #0]
	cmp r6, r9
	bgt label86
	b label361
.p2align 4
label91:
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
	add r0, r6, r10, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	beq label94
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label94:
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
	ldr r0, [sp, #4]
	cmp r0, r10
	bgt label91
	add r9, r9, #1
	ldr r6, [sp, #0]
	cmp r6, r9
	bgt label86
	b label361
.p2align 4
label113:
	ldr r1, [sp, #12]
	add r5, r1, r4, lsl #5
	vldr s0, [r5, #0]
	bl putfloat
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label116
	mov r6, #1
.p2align 4
label114:
	mov r0, #32
	bl putch
	add r0, r5, r6, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r0, r6
	bgt label114
.p2align 4
label116:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r6, [sp, #0]
	cmp r6, r4
	bgt label113
label117:
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label125:
	vmov s0, r5
	mov r0, #1056964608
	movw r6, #4059
	vmov s1, r0
	movt r6, #49353
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
	vmov s1, r6
	mov r6, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r6, #1
	orrs r0, r0, r6
	add r6, r4, r5, lsl #5
	bne label642
	b label126
.p2align 4
label88:
	vmov s0, r9
	movw r0, #4059
	movw r6, #4059
	movt r0, #16329
	movt r6, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r6
	mov r6, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r6, #1
	orrs r0, r0, r6
	ldr r6, [sp, #8]
	add r6, r6, r9, lsl #5
	beq label89
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label89:
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
	b label91
.p2align 4
label642:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label126:
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
	mov r7, #0
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label128
.p2align 4
label69:
	add r0, r1, r2, lsl #2
	ldr r6, [sp, #8]
	vldr s0, [r6, #0]
	mov r6, #1048576000
	vmov s1, r6
	vmul.f32 s0, s0, s1
	vstr s0, [r0, #0]
	ldr r6, [sp, #0]
	mov r0, #1056964608
	vmov s0, r2
	vmov s1, r0
	cmp r6, #1
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label70
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label98
	mov r9, #1
	cmp r6, r9
	bgt label86
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label69
	b label218
.p2align 4
label70:
	ldr r6, [sp, #0]
	cmp r6, #5
	bgt label75
	b label235
.p2align 4
label778:
	mov r0, #1
	b label76
.p2align 4
label72:
	ldr r6, [sp, #8]
	add r6, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r6, #0]
	mov r6, #1056964608
	vmov s2, r6
	add r6, r1, r2, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r6, #0]
	ldr r6, [sp, #0]
	cmp r6, r0
	bgt label72
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label98
	mov r9, #1
	cmp r6, r9
	bgt label86
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label69
	b label218
.p2align 4
label75:
	add r0, r1, r2, lsl #2
	cmp r5, #17
	vldr s0, [r0, #0]
	ble label778
	mov r0, #1
	vmov.f32 s1, s0
	b label79
.p2align 4
label76:
	ldr r6, [sp, #8]
	mov r9, #1056964608
	vmov s1, r9
	add r6, r6, r0, lsl #5
	add r0, r0, #4
	vldr s2, [r6, #0]
	cmp r5, r0
	vmul.f32 s2, s2, s1
	vadd.f32 s0, s0, s2
	vldr s2, [r6, #32]
	vmul.f32 s2, s2, s1
	vadd.f32 s0, s0, s2
	vldr s2, [r6, #64]
	vmul.f32 s2, s2, s1
	vadd.f32 s0, s0, s2
	vldr s2, [r6, #96]
	vmul.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bgt label76
	b label72
.p2align 4
label79:
	ldr r6, [sp, #8]
	mov r9, #1056964608
	vmov s0, r9
	add r6, r6, r0, lsl #5
	add r0, r0, #16
	vldr s2, [r6, #0]
	cmp r3, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #96]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #128]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #160]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #192]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #224]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #256]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #288]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #320]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #352]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #384]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #416]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #448]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #480]
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	ble label76
	vmov.f32 s1, s0
	b label79
.p2align 4
label98:
	ldr r0, [sp, #4]
	cmp r0, #5
	bgt label99
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	b label107
.p2align 4
label99:
	add r0, r1, r2, lsl #2
	cmp r7, #17
	vldr s0, [r0, #0]
	bgt label471
	mov r0, #1
	b label100
.p2align 4
label471:
	mov r0, #1
	vmov.f32 s1, s0
	b label103
.p2align 4
label100:
	ldr r6, [sp, #8]
	mov r9, #1056964608
	vmov s1, r9
	add r6, r6, r0, lsl #2
	add r0, r0, #4
	vldr s2, [r6, #0]
	cmp r7, r0
	vmul.f32 s2, s2, s1
	vadd.f32 s0, s0, s2
	vldr s2, [r6, #4]
	vmul.f32 s2, s2, s1
	vadd.f32 s0, s0, s2
	vldr s2, [r6, #8]
	vmul.f32 s2, s2, s1
	vadd.f32 s0, s0, s2
	vldr s2, [r6, #12]
	vmul.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bgt label100
	b label107
.p2align 4
label103:
	ldr r6, [sp, #8]
	mov r9, #1056964608
	vmov s0, r9
	add r6, r6, r0, lsl #2
	add r0, r0, #16
	vldr s2, [r6, #0]
	cmp r4, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #12]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #16]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #20]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #24]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #28]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #36]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #40]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #44]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #48]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #52]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #56]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r6, #60]
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	ble label100
	vmov.f32 s1, s0
	b label103
.p2align 4
label107:
	ldr r6, [sp, #8]
	add r6, r6, r0, lsl #2
	vldr s1, [r6, #0]
	mov r6, #1056964608
	vmov s2, r6
	add r6, r1, r2, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r6, #0]
	add r6, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r6
	bgt label584
	mov r9, #1
	ldr r6, [sp, #0]
	cmp r6, r9
	bgt label86
	b label361
.p2align 4
label584:
	mov r0, r6
	b label107
.p2align 4
label235:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	b label72
.p2align 4
label50:
	add r6, r4, r5, lsl #5
	mov r7, #0
	b label51
.p2align 4
label61:
	mov r0, #32
	bl putch
	add r0, r5, r6, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #4]
	add r6, r6, #1
	cmp r0, r6
	bgt label61
	b label63
