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
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #12
	bl getint
	str r0, [sp, #4]
	mov r1, r0
	bl getint
	mov r6, #0
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	str r0, [sp, #0]
label49:
	ldr r1, [sp, #4]
	cmp r1, r6
	ble label56
.p2align 4
label51:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label148
	add r5, r4, r6, lsl #5
	mov r7, #0
.p2align 4
label53:
	bl getfloat
	add r0, r5, r7, lsl #2
	add r7, r7, #1
	vstr s0, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r7
	bgt label53
	add r6, r6, #1
	ldr r1, [sp, #4]
	cmp r1, r6
	bgt label51
label56:
	ldr r1, [sp, #4]
	movw r0, #4059
	movt r0, #16457
	mov r6, #0
	vmov s0, r1
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #0]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
label57:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov s0, r6
	ldr r1, [sp, #4]
	add r2, r0, r6, lsl #5
	vcvt.f32.s32 s4, s0
	cmp r1, r6
	bgt label175
label174:
	mov r5, #0
	b label60
.p2align 4
label175:
	mov r3, #0
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label122
	b label777
label60:
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label62
	b label66
.p2align 4
label122:
	add r0, r2, r3, lsl #2
	mov r5, #0
	vmov s0, r5
	vstr s0, [r0, #0]
	vmov s0, r3
	vcvt.f32.s32 s3, s0
	ldr r1, [sp, #4]
	cmp r1, r5
	ble label125
.p2align 4
label126:
	ldr r0, [sp, #0]
	cmp r0, #0
	ble label622
	vmov s0, r5
	mov r0, #1056964608
	movw r1, #4059
	movt r1, #49353
	add r7, r4, r5, lsl #5
	vmov s1, r0
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
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	bne label136
	b label128
.p2align 4
label130:
	vmov s0, r8
	mov r0, #1056964608
	movw r1, #4059
	movt r1, #49353
	vmov s1, r0
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
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	add r0, r7, r8, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	bne label133
.p2align 4
label134:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #49225
	vmrs APSR_nzcv, FPSCR
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	add r8, r8, #1
	add r0, r2, r3, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label130
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label126
	add r3, r3, #1
	cmp r0, r3
	bgt label122
	add r6, r6, #1
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov s0, r6
	add r2, r0, r6, lsl #5
	vcvt.f32.s32 s4, s0
	cmp r1, r6
	bgt label175
	b label174
.p2align 4
label128:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #49225
	vmrs APSR_nzcv, FPSCR
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r8, #0
	add r0, r2, r3, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label130
.p2align 4
label136:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label128
.p2align 4
label62:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r4, r0, r5, lsl #5
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label65
	mov r6, #1
.p2align 4
label63:
	mov r0, #32
	bl putch
	add r0, r4, r6, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #0]
	add r6, r6, #1
	cmp r0, r6
	bgt label63
.p2align 4
label65:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label62
label66:
	mov r0, #10
	bl putch
	mov r8, #0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0]
	sub r4, r1, #20
	sub r6, r1, #4
	sub r5, r0, #20
	sub r7, r0, #4
.p2align 4
label67:
	vmov s0, r8
	mov r0, #1056964608
	ldr r1, [sp, #4]
	vmov s1, r0
	movw r0, #:lower16:test_idct
	movt r0, #:upper16:test_idct
	add r2, r0, r8, lsl #5
	cmp r1, r8
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label217
	b label216
.p2align 4
label220:
	add r8, r8, #1
	b label67
.p2align 4
label217:
	mov r3, #0
	ldr r0, [sp, #0]
	cmp r0, r3
	ble label220
.p2align 4
label71:
	add r1, r2, r3, lsl #2
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vldr s0, [r0, #0]
	mov r0, #1048576000
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vstr s0, [r1, #0]
	ldr r1, [sp, #4]
	vmov s0, r3
	cmp r1, #1
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label72
	b label234
.p2align 4
label87:
	add r0, r2, r3, lsl #2
	add r3, r3, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label71
	b label220
.p2align 4
label88:
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label89
	vmov s0, r9
	movw r0, #4059
	movt r0, #16329
	movw r1, #4059
	movt r1, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s4, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r10, r0, r9, lsl #5
	bne label99
	b label91
.p2align 4
label449:
	add r9, r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label88
	b label87
.p2align 4
label91:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #49225
	vmrs APSR_nzcv, FPSCR
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r11, #1
	add r0, r2, r3, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label93
.p2align 4
label99:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label91
.p2align 4
label93:
	vmov s0, r11
	movw r0, #4059
	movt r0, #16329
	movw r1, #4059
	movt r1, #49353
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s3, s0
	vadd.f32 s0, s0, s1
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	add r0, r10, r11, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	bne label98
.p2align 4
label96:
	movw r0, #4059
	movt r0, #16457
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
	vcmp.f32 s0, s1
	vmov s1, r0
	movw r0, #4059
	movt r0, #49225
	vmrs APSR_nzcv, FPSCR
	vsub.f32 s2, s0, s1
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	add r11, r11, #1
	add r0, r2, r3, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r11
	bgt label93
	b label449
.p2align 4
label98:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label96
.p2align 4
label72:
	ldr r1, [sp, #4]
	cmp r1, #5
	bgt label77
	b label73
.p2align 4
label74:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r0, r0, r1, lsl #5
	vldr s1, [r0, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r2, r3, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #0]
	add r0, r1, #1
	ldr r1, [sp, #4]
	cmp r1, r0
	ble label254
	mov r1, r0
	b label74
.p2align 4
label77:
	add r0, r2, r3, lsl #2
	cmp r6, #17
	vldr s1, [r0, #0]
	ble label260
	mov r1, #1
	b label81
.p2align 4
label78:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r9, r0, r1, lsl #5
	add r1, r1, #4
	mov r0, #1056964608
	vldr s2, [r9, #0]
	cmp r6, r1
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #96]
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	bgt label78
	vmov.f32 s0, s1
	b label74
.p2align 4
label81:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r9, r0, r1, lsl #5
	add r1, r1, #16
	mov r0, #1056964608
	vldr s2, [r9, #0]
	cmp r4, r1
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #96]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #128]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #160]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #192]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #224]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #256]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #288]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #320]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #352]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #384]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #416]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #448]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #480]
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	bgt label81
	b label78
.p2align 4
label89:
	add r9, r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label88
	b label87
.p2align 4
label254:
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label780
.p2align 4
label100:
	ldr r0, [sp, #0]
	cmp r0, #5
	ble label466
	add r0, r2, r3, lsl #2
	cmp r7, #17
	vldr s1, [r0, #0]
	ble label472
	mov r1, #1
	b label105
.p2align 4
label102:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r9, r0, r1, lsl #2
	add r1, r1, #4
	mov r0, #1056964608
	vldr s2, [r9, #0]
	cmp r7, r1
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #12]
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	bgt label102
	vmov.f32 s0, s1
	b label109
.p2align 4
label105:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r9, r0, r1, lsl #2
	add r1, r1, #16
	mov r0, #1056964608
	vldr s2, [r9, #0]
	cmp r5, r1
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #12]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #16]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #20]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #24]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #28]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #36]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #40]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #44]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #48]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #52]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #56]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r9, #60]
	vmul.f32 s0, s2, s0
	vadd.f32 s1, s1, s0
	bgt label105
	b label102
.p2align 4
label109:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r0, r0, r1, lsl #2
	add r1, r1, #1
	vldr s1, [r0, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r2, r3, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r0, #0]
	ldr r0, [sp, #0]
	cmp r0, r1
	bgt label109
	mov r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label88
	b label87
.p2align 4
label73:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s0, [r0, #0]
	b label74
.p2align 4
label125:
	add r3, r3, #1
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label122
label786:
	add r6, r6, #1
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov s0, r6
	ldr r1, [sp, #4]
	add r2, r0, r6, lsl #5
	vcvt.f32.s32 s4, s0
	cmp r1, r6
	bgt label175
	b label174
.p2align 4
label622:
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label126
	add r3, r3, #1
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label122
	b label786
label216:
	mov r5, #0
	ldr r1, [sp, #4]
	cmp r1, r5
	ble label119
.p2align 4
label115:
	movw r0, #:lower16:test_idct
	movt r0, #:upper16:test_idct
	add r4, r0, r5, lsl #5
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label118
	mov r6, #1
.p2align 4
label116:
	mov r0, #32
	bl putch
	add r0, r4, r6, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #0]
	add r6, r6, #1
	cmp r0, r6
	bgt label116
.p2align 4
label118:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label115
label119:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label234:
	ldr r0, [sp, #0]
	cmp r0, #1
	bgt label100
	mov r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label88
	b label87
.p2align 4
label780:
	mov r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label88
	b label87
.p2align 4
label466:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s0, [r0, #0]
	b label109
label777:
	add r6, r6, #1
	b label57
.p2align 4
label133:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label134
label148:
	add r6, r6, #1
	b label49
.p2align 4
label472:
	mov r1, #1
	b label102
.p2align 4
label260:
	mov r1, #1
	b label78
