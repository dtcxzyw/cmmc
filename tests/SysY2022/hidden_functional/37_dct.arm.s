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
	ble label147
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
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov s0, r6
	add r2, r0, r6, lsl #5
	vcvt.f32.s32 s4, s0
	cmp r1, r6
	bgt label174
label173:
	mov r5, #0
	b label78
.p2align 4
label174:
	mov r3, #0
	ldr r0, [sp, #0]
	cmp r0, r3
	ble label177
.p2align 4
label61:
	add r0, r2, r3, lsl #2
	mov r5, #0
	vmov s0, r5
	vstr s0, [r0, #0]
	vmov s0, r3
	vcvt.f32.s32 s3, s0
	ldr r1, [sp, #4]
	cmp r1, r5
	ble label186
.p2align 4
label64:
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
	bne label74
	b label65
.p2align 4
label67:
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
	bne label73
.p2align 4
label70:
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
	bgt label67
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label64
	add r3, r3, #1
	cmp r0, r3
	bgt label61
	add r6, r6, #1
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov s0, r6
	add r2, r0, r6, lsl #5
	vcvt.f32.s32 s4, s0
	cmp r1, r6
	bgt label174
	b label173
label78:
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label134
	b label80
.p2align 4
label65:
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
	b label67
.p2align 4
label74:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label65
label80:
	mov r0, #10
	bl putch
	mov r8, #0
	ldr r1, [sp, #4]
	ldr r0, [sp, #0]
	sub r6, r1, #4
	sub r4, r1, #20
	sub r5, r0, #20
	sub r7, r0, #4
	b label81
.p2align 4
label134:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r4, r0, r5, lsl #5
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label137
	mov r6, #1
.p2align 4
label135:
	mov r0, #32
	bl putch
	add r0, r4, r6, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #0]
	add r6, r6, #1
	cmp r0, r6
	bgt label135
.p2align 4
label137:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label134
	b label80
.p2align 4
label81:
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
	bgt label308
	b label307
.p2align 4
label311:
	add r8, r8, #1
	b label81
.p2align 4
label308:
	mov r3, #0
	ldr r0, [sp, #0]
	cmp r0, r3
	ble label311
.p2align 4
label85:
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
	bgt label114
	b label86
.p2align 4
label89:
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
	bgt label85
	b label311
.p2align 4
label90:
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label91
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
	bne label101
	b label93
.p2align 4
label419:
	add r9, r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label90
	b label89
.p2align 4
label93:
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
.p2align 4
label95:
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
	bne label100
.p2align 4
label98:
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
	bgt label95
	b label419
.p2align 4
label100:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label98
.p2align 4
label114:
	ldr r1, [sp, #4]
	cmp r1, #5
	bgt label119
	b label115
.p2align 4
label116:
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
	ble label578
	mov r1, r0
	b label116
.p2align 4
label119:
	add r0, r2, r3, lsl #2
	cmp r6, #17
	vldr s1, [r0, #0]
	ble label585
	mov r1, #1
	b label123
.p2align 4
label120:
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
	bgt label120
	vmov.f32 s0, s1
	b label116
.p2align 4
label123:
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
	bgt label123
	b label120
.p2align 4
label91:
	add r9, r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label90
	b label89
.p2align 4
label102:
	ldr r0, [sp, #0]
	cmp r0, #5
	bgt label103
	b label437
.p2align 4
label578:
	ldr r0, [sp, #0]
	cmp r0, #1
	bgt label102
	mov r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label90
	b label89
.p2align 4
label103:
	add r0, r2, r3, lsl #2
	cmp r7, #17
	vldr s1, [r0, #0]
	ble label444
	mov r1, #1
	b label107
.p2align 4
label104:
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
	bgt label104
	vmov.f32 s0, s1
	b label111
.p2align 4
label107:
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
	bgt label107
	b label104
.p2align 4
label111:
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
	bgt label111
	mov r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label90
	b label89
.p2align 4
label115:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s0, [r0, #0]
	b label116
.p2align 4
label86:
	ldr r0, [sp, #0]
	cmp r0, #1
	bgt label102
	mov r9, #1
	ldr r1, [sp, #4]
	cmp r1, r9
	bgt label90
	b label89
label307:
	mov r5, #0
	ldr r1, [sp, #4]
	cmp r1, r5
	ble label129
.p2align 4
label130:
	movw r0, #:lower16:test_idct
	movt r0, #:upper16:test_idct
	add r4, r0, r5, lsl #5
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #0]
	cmp r0, #1
	ble label131
	mov r6, #1
	b label132
.p2align 4
label131:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r1, [sp, #4]
	cmp r1, r5
	bgt label130
	b label129
.p2align 4
label132:
	mov r0, #32
	bl putch
	add r0, r4, r6, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #0]
	add r6, r6, #1
	cmp r0, r6
	bgt label132
	b label131
label129:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label177:
	add r6, r6, #1
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov s0, r6
	ldr r1, [sp, #4]
	add r2, r0, r6, lsl #5
	vcvt.f32.s32 s4, s0
	cmp r1, r6
	bgt label174
	b label173
.p2align 4
label186:
	add r3, r3, #1
	ldr r0, [sp, #0]
	cmp r0, r3
	bgt label61
	b label177
.p2align 4
label585:
	mov r1, #1
	b label120
.p2align 4
label73:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label70
.p2align 4
label437:
	add r0, r2, r3, lsl #2
	mov r1, #1
	vldr s0, [r0, #0]
	b label111
.p2align 4
label444:
	mov r1, #1
	b label104
label147:
	add r6, r6, #1
	b label49
.p2align 4
label101:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label93
