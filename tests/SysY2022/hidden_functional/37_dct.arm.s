.arch armv7ve
.data
.bss
.align 4
test_block:
	.zero	256
.align 4
test_dct:
	.zero	256
.align 4
test_idct:
	.zero	256
.text
.syntax unified
.arm
.fpu vfpv4
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
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #4
	bl getint
	mov r5, r0
	bl getint
	mov r6, #0
	movw r7, #:lower16:test_block
	mov r4, r0
	movt r7, #:upper16:test_block
label47:
	cmp r5, r6
	bgt label130
label49:
	vmov s0, r5
	movw r0, #4059
	movw r6, #:lower16:test_dct
	mov r3, #0
	vmov s1, r4
	movt r0, #16457
	movt r6, #:upper16:test_dct
	vcvt.f32.s32 s18, s0
	vcvt.f32.s32 s19, s1
	vmov s0, r0
	vdiv.f32 s16, s0, s19
	vdiv.f32 s17, s0, s18
	b label50
label130:
	cmp r4, #0
	bgt label131
	b label134
label132:
	bl getfloat
	add r0, r8, r9, lsl #2
	add r9, r9, #1
	vstr s0, [r0, #0]
	cmp r4, r9
	bgt label132
	add r6, r6, #1
	cmp r5, r6
	bgt label130
	b label49
label134:
	add r6, r6, #1
	b label47
label131:
	add r8, r7, r6, lsl #5
	mov r9, #0
	b label132
label50:
	add r1, r6, r3, lsl #5
	vmov s0, r3
	cmp r5, r3
	vcvt.f32.s32 s4, s0
	bgt label159
label158:
	mov r7, #0
	cmp r5, r7
	bgt label107
	b label55
label159:
	mov r2, #0
	b label111
label53:
	cmp r5, r7
	bgt label107
label55:
	mov r0, #10
	bl putch
	mov r3, #0
	movw r7, #:lower16:test_idct
	movt r7, #:upper16:test_idct
	b label56
label107:
	add r8, r6, r7, lsl #5
	vldr s0, [r8, #0]
	bl putfloat
	cmp r4, #1
	ble label110
	mov r9, #1
label108:
	mov r0, #32
	bl putch
	add r0, r8, r9, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	add r9, r9, #1
	cmp r4, r9
	bgt label108
label110:
	mov r0, #10
	bl putch
	add r7, r7, #1
	b label53
label437:
	add r3, r3, #1
	add r1, r6, r3, lsl #5
	vmov s0, r3
	cmp r5, r3
	vcvt.f32.s32 s4, s0
	bgt label159
	b label158
label114:
	add r0, r1, r2, lsl #2
	mov r8, #0
	vmov s0, r8
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
label115:
	cmp r5, r8
	bgt label117
label447:
	add r2, r2, #1
	cmp r4, r2
	bgt label114
	b label437
label117:
	cmp r4, #0
	bgt label118
	b label128
label122:
	vmov s0, r10
	mov r0, #1056964608
	movw r11, #4059
	vmov s1, r0
	movt r11, #49353
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
	beq label126
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
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
	add r10, r10, #1
	add r0, r1, r2, lsl #2
	cmp r4, r10
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	bgt label122
	add r8, r8, #1
	cmp r5, r8
	bgt label117
	b label447
label128:
	add r8, r8, #1
	b label115
label118:
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
	vmul.f32 s0, s17, s0
	vmul.f32 s0, s0, s4
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
	add r9, r7, r8, lsl #5
	beq label120
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
label120:
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
	mov r10, #0
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label122
label111:
	cmp r4, r2
	bgt label114
	b label437
label56:
	vmov s0, r3
	mov r0, #1056964608
	add r1, r7, r3, lsl #5
	cmp r5, r3
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label178
label177:
	mov r6, #0
	cmp r5, r6
	bgt label102
	b label106
label178:
	mov r2, #0
	b label58
label181:
	add r3, r3, #1
	vmov s0, r3
	mov r0, #1056964608
	add r1, r7, r3, lsl #5
	cmp r5, r3
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label178
	b label177
label61:
	add r0, r1, r2, lsl #2
	vldr s0, [r6, #0]
	mov r8, #1048576000
	cmp r5, #1
	vmov s1, r8
	vmul.f32 s0, s0, s1
	vstr s0, [r0, #0]
	mov r0, #1056964608
	vmov s0, r2
	vmov s1, r0
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label89
	cmp r4, #1
	bgt label63
	b label199
label74:
	cmp r5, r8
	bgt label76
label251:
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	cmp r4, r2
	bgt label61
	b label181
label76:
	cmp r4, #1
	bgt label77
	b label87
label80:
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
	beq label84
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
label84:
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
	cmp r4, r10
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	bgt label80
	add r8, r8, #1
	cmp r5, r8
	bgt label76
	b label251
label87:
	add r8, r8, #1
	b label74
label89:
	cmp r5, #5
	bgt label95
	b label354
label100:
	cmp r5, r6
	ble label106
label102:
	add r8, r7, r6, lsl #5
	vldr s0, [r8, #0]
	bl putfloat
	cmp r4, #1
	ble label103
	mov r9, #1
	b label104
label103:
	mov r0, #10
	bl putch
	add r6, r6, #1
	b label100
label106:
	mov r0, #10
	bl putch
	add sp, sp, #4
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label63:
	cmp r4, #5
	bgt label69
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
label65:
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label65
label217:
	add r0, r1, r2, lsl #2
	mov r8, #1
	vstr s0, [r0, #0]
	b label74
label69:
	add r0, r1, r2, lsl #2
	mov r9, #1
	vldr s1, [r0, #0]
	mov r0, #5
label70:
	add r8, r6, r9, lsl #2
	mov r9, #1056964608
	vldr s2, [r8, #0]
	vmov s0, r9
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #12]
	add r8, r0, #4
	cmp r4, r8
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	bgt label247
	add r8, r6, r0, lsl #2
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r4, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label65
	b label217
label247:
	vmov.f32 s1, s0
	mov r9, r0
	mov r0, r8
	b label70
label77:
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
	add r9, r6, r8, lsl #5
	beq label78
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
label78:
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
	b label80
label199:
	mov r8, #1
	b label74
label354:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
label91:
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label91
label369:
	add r0, r1, r2, lsl #2
	vstr s0, [r0, #0]
	cmp r4, #1
	bgt label63
	b label199
label95:
	add r0, r1, r2, lsl #2
	mov r9, #1
	vldr s1, [r0, #0]
	mov r0, #5
label96:
	add r8, r6, r9, lsl #5
	mov r9, #1056964608
	vldr s2, [r8, #0]
	vmov s0, r9
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #96]
	add r8, r0, #4
	cmp r5, r8
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	bgt label399
	add r8, r6, r0, lsl #5
	add r0, r0, #1
	vldr s1, [r8, #0]
	cmp r5, r0
	mov r8, #1056964608
	vmov s2, r8
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label91
	b label369
label399:
	vmov.f32 s1, s0
	mov r9, r0
	mov r0, r8
	b label96
label58:
	cmp r4, r2
	bgt label61
	b label181
label104:
	mov r0, #32
	bl putch
	add r0, r8, r9, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	add r9, r9, #1
	cmp r4, r9
	bgt label104
	b label103
