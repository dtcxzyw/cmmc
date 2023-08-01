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
	movw r1, #0
	vmov s2, r0
	movt r1, #16448
	vmov s1, r1
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
	sub sp, sp, #20
	bl getint
	str r0, [sp, #8]
	bl getint
	mov r6, #0
	movw r5, #:lower16:test_block
	str r0, [sp, #4]
	movt r5, #:upper16:test_block
	movw r0, #4059
	str r0, [sp, #0]
	movt r0, #16329
	str r0, [sp, #0]
label49:
	ldr r0, [sp, #8]
	cmp r0, r6
	ble label56
.p2align 4
label51:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label142
	add r4, r5, r6, lsl #5
	mov r7, #0
.p2align 4
label53:
	bl getfloat
	add r0, r4, r7, lsl #2
	add r7, r7, #1
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r7
	bgt label53
	add r6, r6, #1
	ldr r0, [sp, #8]
	cmp r0, r6
	bgt label51
label56:
	ldr r0, [sp, #8]
	movw r4, #:lower16:test_dct
	mov r7, #0
	movt r4, #:upper16:test_dct
	vmov s0, r0
	movw r0, #4059
	movt r0, #16457
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #4]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
label57:
	add r2, r4, r7, lsl #5
	vmov s0, r7
	ldr r0, [sp, #8]
	vcvt.f32.s32 s4, s0
	cmp r0, r7
	bgt label169
label168:
	mov r6, #0
	b label60
.p2align 4
label169:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label116
	b label616
label60:
	ldr r0, [sp, #8]
	cmp r0, r6
	bgt label62
	b label66
.p2align 4
label116:
	add r0, r2, r3, lsl #2
	mov r6, #0
	vmov s0, r6
	vstr s0, [r0, #0]
	vmov s0, r3
	vcvt.f32.s32 s3, s0
	ldr r0, [sp, #8]
	cmp r0, r6
	ble label119
.p2align 4
label120:
	ldr r0, [sp, #4]
	cmp r0, #0
	ble label462
	vmov s0, r6
	mov r0, #1056964608
	movw r1, #4059
	add r8, r5, r6, lsl #5
	vmov s1, r0
	movt r1, #49353
	ldr r0, [sp, #0]
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
	bne label130
	b label122
.p2align 4
label124:
	vmov s0, r9
	mov r0, #1056964608
	movw r1, #4059
	vmov s1, r0
	movt r1, #49353
	ldr r0, [sp, #0]
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
	add r0, r8, r9, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	beq label128
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
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
	add r9, r9, #1
	add r0, r2, r3, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r9
	bgt label124
	add r6, r6, #1
	ldr r0, [sp, #8]
	cmp r0, r6
	bgt label120
	add r3, r3, #1
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label116
	add r7, r7, #1
	add r2, r4, r7, lsl #5
	vmov s0, r7
	ldr r0, [sp, #8]
	vcvt.f32.s32 s4, s0
	cmp r0, r7
	bgt label169
	b label168
.p2align 4
label122:
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
	mov r9, #0
	add r0, r2, r3, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label124
.p2align 4
label130:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label122
.p2align 4
label62:
	add r5, r4, r6, lsl #5
	vldr s0, [r5, #0]
	bl putfloat
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label65
	mov r7, #1
.p2align 4
label63:
	mov r0, #32
	bl putch
	add r0, r5, r7, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r0, r7
	bgt label63
.p2align 4
label65:
	mov r0, #10
	bl putch
	add r6, r6, #1
	ldr r0, [sp, #8]
	cmp r0, r6
	bgt label62
label66:
	mov r0, #10
	bl putch
	mov r8, #0
	ldr r0, [sp, #8]
	movw r5, #:lower16:test_idct
	movt r5, #:upper16:test_idct
	sub r6, r0, #4
	ldr r0, [sp, #4]
	sub r7, r0, #4
label67:
	vmov s0, r8
	mov r0, #1056964608
	add r2, r5, r8, lsl #5
	vmov s1, r0
	ldr r0, [sp, #8]
	vcvt.f32.s32 s0, s0
	cmp r0, r8
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	ble label206
.p2align 4
label207:
	mov r3, #0
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label78
	add r8, r8, #1
	b label67
.p2align 4
label78:
	add r0, r2, r3, lsl #2
	vldr s0, [r4, #0]
	mov r1, #1048576000
	vmov s1, r1
	vmul.f32 s0, s0, s1
	vstr s0, [r0, #0]
	mov r0, #1056964608
	vmov s0, r3
	vmov s1, r0
	ldr r0, [sp, #8]
	vcvt.f32.s32 s0, s0
	cmp r0, #1
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label79
	b label243
.p2align 4
label91:
	add r0, r2, r3, lsl #2
	add r3, r3, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label78
	b label229
.p2align 4
label92:
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label93
	vmov s0, r9
	movw r1, #4059
	add r10, r4, r9, lsl #5
	ldr r0, [sp, #0]
	movt r1, #49353
	vcvt.f32.s32 s0, s0
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
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
	bne label103
	b label95
.p2align 4
label97:
	vmov s0, r11
	movw r1, #4059
	ldr r0, [sp, #0]
	movt r1, #49353
	vcvt.f32.s32 s0, s0
	vmov s1, r0
	movw r0, #4059
	movt r0, #16585
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
	bne label102
.p2align 4
label100:
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
	add r11, r11, #1
	add r0, r2, r3, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r11
	bgt label97
	add r9, r9, #1
	ldr r0, [sp, #8]
	cmp r0, r9
	bgt label92
	b label91
.p2align 4
label95:
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
	mov r11, #1
	add r0, r2, r3, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label97
.p2align 4
label93:
	add r9, r9, #1
	ldr r0, [sp, #8]
	cmp r0, r9
	bgt label92
	b label91
.p2align 4
label79:
	ldr r0, [sp, #8]
	cmp r0, #5
	bgt label84
	b label80
.p2align 4
label81:
	add r0, r4, r1, lsl #5
	add r1, r1, #1
	vldr s0, [r0, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r2, r3, lsl #2
	vmul.f32 s0, s0, s2
	vadd.f32 s1, s1, s0
	vstr s1, [r0, #0]
	ldr r0, [sp, #8]
	cmp r0, r1
	bgt label81
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label104
	b label621
.p2align 4
label84:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s1, [r0, #0]
.p2align 4
label85:
	add r9, r4, r1, lsl #5
	mov r0, #1056964608
	add r1, r1, #4
	vmov s0, r0
	vldr s2, [r9, #0]
	cmp r6, r1
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
	bgt label85
	b label81
.p2align 4
label104:
	ldr r0, [sp, #4]
	cmp r0, #5
	ble label400
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s1, [r0, #0]
.p2align 4
label106:
	add r9, r4, r1, lsl #2
	mov r0, #1056964608
	add r1, r1, #4
	vmov s0, r0
	vldr s2, [r9, #0]
	cmp r7, r1
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
	bgt label106
.p2align 4
label110:
	add r0, r4, r1, lsl #2
	add r1, r1, #1
	vldr s0, [r0, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r2, r3, lsl #2
	vmul.f32 s0, s0, s2
	vadd.f32 s1, s1, s0
	vstr s1, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r1
	bgt label110
	mov r9, #1
	ldr r0, [sp, #8]
	cmp r0, r9
	bgt label92
	b label91
.p2align 4
label80:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s1, [r0, #0]
	b label81
.p2align 4
label229:
	add r8, r8, #1
	vmov s0, r8
	mov r0, #1056964608
	add r2, r5, r8, lsl #5
	vmov s1, r0
	ldr r0, [sp, #8]
	vcvt.f32.s32 s0, s0
	cmp r0, r8
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label207
	b label206
.p2align 4
label119:
	add r3, r3, #1
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label116
label627:
	add r7, r7, #1
	add r2, r4, r7, lsl #5
	vmov s0, r7
	ldr r0, [sp, #8]
	vcvt.f32.s32 s4, s0
	cmp r0, r7
	bgt label169
	b label168
.p2align 4
label462:
	add r6, r6, #1
	ldr r0, [sp, #8]
	cmp r0, r6
	bgt label120
	add r3, r3, #1
	ldr r0, [sp, #4]
	cmp r0, r3
	bgt label116
	b label627
label206:
	mov r6, #0
	ldr r0, [sp, #8]
	cmp r0, r6
	ble label75
.p2align 4
label71:
	add r4, r5, r6, lsl #5
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label74
	mov r7, #1
.p2align 4
label72:
	mov r0, #32
	bl putch
	add r0, r4, r7, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r0, r7
	bgt label72
.p2align 4
label74:
	mov r0, #10
	bl putch
	add r6, r6, #1
	ldr r0, [sp, #8]
	cmp r0, r6
	bgt label71
label75:
	mov r0, #10
	bl putch
	add sp, sp, #20
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label243:
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label104
	mov r9, #1
	ldr r0, [sp, #8]
	cmp r0, r9
	bgt label92
	b label91
.p2align 4
label621:
	mov r9, #1
	ldr r0, [sp, #8]
	cmp r0, r9
	bgt label92
	b label91
.p2align 4
label400:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s1, [r0, #0]
	b label110
.p2align 4
label103:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label95
label616:
	add r7, r7, #1
	b label57
.p2align 4
label102:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label100
label142:
	add r6, r6, #1
	b label49
