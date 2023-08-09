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
	movw r1, #0
	movt r1, #16448
	vmov s2, r0
	vmov s1, r1
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label10
label8:
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
label10:
	movw r1, #0
	movt r1, #16448
	vmov s2, r0
	vmov s1, r1
	vdiv.f32 s0, s0, s1
	vabs.f32 s1, s0
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	bhi label13
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
	b label8
label13:
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
	b label8
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #24
	bl getint
	str r0, [sp, #20]
	mov r9, r0
	sub r0, r0, #4
	str r0, [sp, #8]
	bl getint
	mov r6, #0
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	str r0, [sp, #16]
	sub r8, r0, #4
	mov r5, r4
	sub r0, r0, #20
	str r8, [sp, #12]
	sub r8, r9, #20
	str r8, [sp, #0]
	str r0, [sp, #4]
	ldr r9, [sp, #20]
	cmp r9, r6
	bgt label224
	b label98
.p2align 4
label230:
	add r7, r7, #4
	mov r8, r1
.p2align 4
label227:
	bl getfloat
	add r1, r8, #1
	vstr s0, [r7, #0]
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label230
	add r6, r6, #1
	add r5, r5, #32
	ldr r9, [sp, #20]
	cmp r9, r6
	ble label98
.p2align 4
label224:
	ldr r0, [sp, #16]
	cmp r0, #0
	ble label225
	mov r7, r5
	mov r8, #0
	b label227
label98:
	ldr r9, [sp, #20]
	movw r0, #4059
	movt r0, #16457
	mov r5, #0
	vmov s0, r9
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #16]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r3, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
	vmov s0, r5
	vcvt.f32.s32 s4, s0
	cmp r9, r5
	bgt label102
	b label253
.p2align 4
label835:
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	ble label253
.p2align 4
label102:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label106
label257:
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	bgt label102
	b label253
.p2align 4
label816:
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label835
.p2align 4
label106:
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r2, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label110
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label106
	b label257
.p2align 4
label120:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	ble label816
.p2align 4
label110:
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
	beq label111
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
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
	mov r10, #0
	mov r9, r7
	vldr s6, [r2, #0]
	vmov.f32 s5, s0
	b label113
.p2align 4
label117:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label118:
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
	add r10, r10, #1
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r10
	ble label120
	add r9, r9, #4
.p2align 4
label113:
	vmov s0, r10
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
	vldr s1, [r9, #0]
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	vmul.f32 s7, s1, s5
	orrs r0, r0, r1
	bne label117
	b label118
label253:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r5, #0
	mov r4, r0
	ldr r9, [sp, #20]
	cmp r9, r5
	bgt label129
	b label136
.p2align 4
label135:
	add r6, r6, #4
.p2align 4
label132:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	bgt label135
.p2align 4
label130:
	mov r0, #10
	bl putch
	ldr r9, [sp, #20]
	add r4, r4, #32
	add r5, r5, #1
	cmp r9, r5
	ble label136
.p2align 4
label129:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label130
	add r6, r4, #4
	mov r7, #1
	b label132
label136:
	mov r0, #10
	bl putch
	mov r5, #0
	movw r4, #:lower16:test_idct
	movt r4, #:upper16:test_idct
	mov r3, r4
	vmov s0, r5
	mov r0, #1056964608
	ldr r9, [sp, #20]
	vmov s1, r0
	cmp r9, r5
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label140
	b label389
.p2align 4
label144:
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	mov r0, #1056964608
	vmov s0, r5
	vmov s1, r0
	cmp r9, r5
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	ble label389
.p2align 4
label140:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label145
	b label144
.p2align 4
label174:
	vldr s0, [r2, #0]
	add r6, r6, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	add r2, r2, #4
	cmp r0, r6
	ble label144
.p2align 4
label145:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vldr s0, [r0, #0]
	mov r0, #1048576000
	vmov s1, r0
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmov s0, r6
	vstr s1, [r2, #0]
	ldr r9, [sp, #20]
	vcvt.f32.s32 s0, s0
	cmp r9, #1
	vadd.f32 s0, s0, s2
	vmul.f32 s3, s16, s0
	ble label146
	cmp r9, #5
	ble label636
	ldr r0, [sp, #8]
	cmp r0, #17
	ble label191
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #32
	b label199
.p2align 4
label204:
	add r1, r1, #512
	vmov.f32 s1, s0
.p2align 4
label199:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #16
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #96]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #128]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #160]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #192]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #224]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #256]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #288]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #320]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #352]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #384]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #416]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #448]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #480]
	ldr r8, [sp, #0]
	vmul.f32 s0, s2, s0
	cmp r8, r7
	vadd.f32 s0, s1, s0
	bgt label204
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov.f32 s1, s0
	add r1, r0, r7, lsl #5
.p2align 4
label192:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #4
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #96]
	ldr r0, [sp, #8]
	vmul.f32 s0, s2, s0
	cmp r0, r7
	vadd.f32 s0, s1, s0
	ble label196
	add r1, r1, #128
	vmov.f32 s1, s0
	b label192
.p2align 4
label196:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r7, lsl #5
	add r7, r7, #1
	mov r0, #1056964608
	vldr s1, [r1, #0]
	vmov s2, r0
	ldr r9, [sp, #20]
	vmul.f32 s1, s1, s2
	cmp r9, r7
	vadd.f32 s0, s0, s1
	ble label827
.p2align 4
label209:
	add r1, r1, #32
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	ldr r9, [sp, #20]
	vmov s2, r0
	cmp r9, r7
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label209
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label843
.p2align 4
label147:
	vldr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #5
	ble label148
	ldr r8, [sp, #12]
	cmp r8, #17
	ble label150
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #4
.p2align 4
label158:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #16
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #16]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #20]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #24]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #28]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #36]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #40]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #44]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #48]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #52]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #56]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #60]
	ldr r0, [sp, #4]
	vmul.f32 s0, s2, s0
	cmp r0, r7
	vadd.f32 s0, s1, s0
	ble label162
	add r1, r1, #64
	vmov.f32 s1, s0
	b label158
.p2align 4
label162:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov.f32 s1, s0
	add r1, r0, r7, lsl #2
.p2align 4
label151:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #4
	vmov s0, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	ldr r8, [sp, #12]
	vmul.f32 s0, s2, s0
	cmp r8, r7
	vadd.f32 s0, s1, s0
	ble label155
	add r1, r1, #16
	vmov.f32 s1, s0
	b label151
.p2align 4
label155:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r7, lsl #2
	add r7, r7, #1
	mov r0, #1056964608
	vldr s1, [r1, #0]
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r7
	vadd.f32 s0, s0, s1
	ble label822
.p2align 4
label169:
	add r1, r1, #4
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r7
	vadd.f32 s0, s0, s1
	bgt label169
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label622:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	ble label174
.p2align 4
label175:
	vmov s0, r8
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
	bne label188
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label178
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label188:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	ldr r0, [sp, #16]
	vdiv.f32 s2, s0, s1
	cmp r0, #1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	ble label826
.p2align 4
label178:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	movw r0, #4059
	movt r0, #16457
	vmov s5, r0
	movw r0, #4059
	movt r0, #49225
	vsub.f32 s2, s0, s1
	vcmp.f32 s0, s5
	vmrs APSR_nzcv, FPSCR
	vmovgt.f32 s0, s2
	vmov s2, r0
	vadd.f32 s1, s0, s1
	vcmp.f32 s0, s2
	vmrs APSR_nzcv, FPSCR
	vmovmi.f32 s0, s1
	bl my_sin_impl
	mov r10, #1
	add r9, r7, #4
	vldr s6, [r2, #0]
	vmov.f32 s5, s0
	b label179
.p2align 4
label184:
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
	add r10, r10, #1
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r10
	ble label622
	add r9, r9, #4
.p2align 4
label179:
	vmov s0, r10
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
	vldr s1, [r9, #0]
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	vmul.f32 s7, s1, s5
	orrs r0, r0, r1
	beq label184
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label184
.p2align 4
label148:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov.f32 s0, s1
	mov r7, #1
	add r1, r0, #4
	add r7, r7, #1
	mov r0, #1056964608
	vldr s1, [r1, #0]
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r7
	vadd.f32 s0, s0, s1
	bgt label169
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label150:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #4
	b label151
.p2align 4
label191:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #32
	b label192
.p2align 4
label146:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label147
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label636:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vmov.f32 s0, s1
	mov r7, #1
	add r1, r0, #32
	add r7, r7, #1
	mov r0, #1056964608
	vldr s1, [r1, #0]
	vmov s2, r0
	ldr r9, [sp, #20]
	vmul.f32 s1, s1, s2
	cmp r9, r7
	vadd.f32 s0, s0, s1
	bgt label209
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label147
.p2align 4
label843:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label826:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label827:
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label147
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label175
	b label174
.p2align 4
label822:
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label175
	b label174
label389:
	mov r5, #0
	ldr r9, [sp, #20]
	cmp r9, r5
	bgt label217
	b label216
.p2align 4
label223:
	mov r0, #10
	bl putch
	ldr r9, [sp, #20]
	add r4, r4, #32
	add r5, r5, #1
	cmp r9, r5
	ble label216
.p2align 4
label217:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label223
	add r6, r4, #4
	mov r7, #1
.p2align 4
label219:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	ble label223
	add r6, r6, #4
	b label219
label216:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label225:
	add r6, r6, #1
	add r5, r5, #32
	ldr r9, [sp, #20]
	cmp r9, r6
	bgt label224
	b label98
