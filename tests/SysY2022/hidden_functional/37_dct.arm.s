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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #24
	bl getint
	str r0, [sp, #20]
	mov r9, r0
	sub r0, r0, #3
	str r0, [sp, #8]
	bl getint
	mov r6, #0
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	str r0, [sp, #16]
	sub r8, r9, #18
	sub r10, r0, #3
	mov r5, r4
	sub r0, r0, #18
	str r10, [sp, #12]
	str r8, [sp, #0]
	str r0, [sp, #4]
	ldr r9, [sp, #20]
	cmp r9, r6
	bgt label246
	b label98
.p2align 4
label252:
	add r7, r7, #4
	mov r8, r1
.p2align 4
label249:
	bl getfloat
	add r1, r8, #1
	vstr s0, [r7, #0]
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label252
	add r6, r6, #1
	add r5, r5, #32
	ldr r9, [sp, #20]
	cmp r9, r6
	ble label98
.p2align 4
label246:
	ldr r0, [sp, #16]
	cmp r0, #0
	ble label247
	mov r7, r5
	mov r8, #0
	b label249
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
	bgt label223
	b label102
.p2align 4
label892:
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	ble label102
.p2align 4
label223:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label227
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	bgt label223
	b label102
.p2align 4
label877:
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label892
.p2align 4
label227:
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r2, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label232
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label227
	add r5, r5, #1
	add r3, r3, #32
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	bgt label223
	b label102
.p2align 4
label242:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	ble label877
.p2align 4
label232:
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
	bne label244
.p2align 4
label233:
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
	b label235
.p2align 4
label240:
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
	ble label242
	add r9, r9, #4
.p2align 4
label235:
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
	beq label240
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label240
label102:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r5, #0
	mov r4, r0
	ldr r9, [sp, #20]
	cmp r9, r5
	bgt label106
	b label113
.p2align 4
label111:
	add r6, r6, #4
.p2align 4
label108:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	bgt label111
.p2align 4
label112:
	mov r0, #10
	bl putch
	ldr r9, [sp, #20]
	add r4, r4, #32
	add r5, r5, #1
	cmp r9, r5
	ble label113
.p2align 4
label106:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label112
	add r6, r4, #4
	mov r7, #1
	b label108
label113:
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
	bgt label117
	b label305
.p2align 4
label121:
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
	ble label305
.p2align 4
label117:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label122
	b label121
.p2align 4
label464:
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
	ble label121
.p2align 4
label122:
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
	ble label123
	cmp r9, #4
	ble label562
	ldr r0, [sp, #8]
	cmp r0, #16
	ble label585
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #32
.p2align 4
label206:
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
	ble label689
	add r1, r1, #512
	vmov.f32 s1, s0
	b label206
.p2align 4
label689:
	vmov.f32 s1, s0
	mov r8, r7
	ldr r0, [sp, #8]
	cmp r0, r7
	ble label874
.p2align 4
label199:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, r8
	add r1, r0, r8, lsl #5
	b label200
.p2align 4
label204:
	add r1, r1, #128
	vmov.f32 s1, s0
.p2align 4
label200:
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
	bgt label204
	vmov.f32 s1, s0
	ldr r9, [sp, #20]
	cmp r9, r7
	ble label873
.p2align 4
label184:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r7, lsl #5
	b label185
.p2align 4
label189:
	add r1, r1, #32
.p2align 4
label185:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	ldr r9, [sp, #20]
	vmov s2, r0
	cmp r9, r7
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label189
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label871
.p2align 4
label124:
	vldr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #4
	ble label332
	ldr r10, [sp, #12]
	cmp r10, #16
	ble label356
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #4
	b label139
.p2align 4
label143:
	add r1, r1, #64
	vmov.f32 s1, s0
.p2align 4
label139:
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
	bgt label143
	vmov.f32 s1, s0
	mov r8, r7
	ldr r10, [sp, #12]
	cmp r10, r7
	ble label865
.p2align 4
label149:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, r8
	add r1, r0, r8, lsl #2
	b label150
.p2align 4
label154:
	add r1, r1, #16
	vmov.f32 s1, s0
.p2align 4
label150:
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
	ldr r10, [sp, #12]
	vmul.f32 s0, s2, s0
	cmp r10, r7
	vadd.f32 s0, s1, s0
	bgt label154
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r7
	ble label883
.p2align 4
label131:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r7, lsl #2
	b label132
.p2align 4
label136:
	add r1, r1, #4
.p2align 4
label132:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r7
	vadd.f32 s0, s0, s1
	bgt label136
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
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
	bgt label122
	b label121
.p2align 4
label541:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	ble label464
.p2align 4
label162:
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
	beq label163
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
	ble label868
.p2align 4
label165:
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
	b label166
.p2align 4
label171:
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
	ble label541
	add r9, r9, #4
.p2align 4
label166:
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
	beq label171
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label171
.p2align 4
label163:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label165
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label562:
	mov r0, #0
	mov r7, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r9, [sp, #20]
	cmp r9, r7
	bgt label184
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label124
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label332:
	mov r0, #0
	mov r7, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r0, [sp, #16]
	cmp r0, r7
	bgt label131
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label862
.p2align 4
label585:
	mov r7, #0
	mov r8, #1
	vmov s0, r7
	ldr r0, [sp, #8]
	cmp r0, r8
	bgt label199
	vmov.f32 s1, s0
	ldr r9, [sp, #20]
	cmp r9, r7
	bgt label184
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label124
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label874:
	vmov.f32 s1, s0
	ldr r9, [sp, #20]
	cmp r9, r7
	bgt label184
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label124
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label865:
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r7
	bgt label131
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label862
.p2align 4
label123:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label124
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label356:
	mov r7, #0
	mov r8, #1
	ldr r10, [sp, #12]
	vmov s0, r7
	cmp r10, r8
	bgt label149
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r7
	bgt label131
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label862
.p2align 4
label868:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label873:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label124
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label883:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
.p2align 4
label862:
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
	bgt label122
	b label121
label305:
	mov r5, #0
	ldr r9, [sp, #20]
	cmp r9, r5
	bgt label216
	b label215
.p2align 4
label222:
	mov r0, #10
	bl putch
	ldr r9, [sp, #20]
	add r4, r4, #32
	add r5, r5, #1
	cmp r9, r5
	ble label215
.p2align 4
label216:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label222
	add r6, r4, #4
	mov r7, #1
.p2align 4
label218:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	ble label222
	add r6, r6, #4
	b label218
label215:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label247:
	add r6, r6, #1
	add r5, r5, #32
	ldr r9, [sp, #20]
	cmp r9, r6
	bgt label246
	b label98
.p2align 4
label871:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label162
	b label464
.p2align 4
label244:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label233
