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
	sub r0, r0, #3
	str r0, [sp, #8]
	bl getint
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	sub r8, r9, #18
	str r0, [sp, #16]
	sub r10, r0, #3
	mov r6, #0
	mov r5, r4
	sub r0, r0, #18
	str r10, [sp, #12]
	str r8, [sp, #0]
	str r0, [sp, #4]
	ldr r9, [sp, #20]
	cmp r9, r6
	bgt label98
	b label105
.p2align 4
label104:
	add r7, r7, #4
	mov r8, r1
.p2align 4
label101:
	bl getfloat
	add r1, r8, #1
	vstr s0, [r7, #0]
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label104
	add r6, r6, #1
	add r5, r5, #32
	ldr r9, [sp, #20]
	cmp r9, r6
	ble label105
.p2align 4
label98:
	ldr r0, [sp, #16]
	cmp r0, #0
	ble label99
	mov r7, r5
	mov r8, #0
	b label101
label105:
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
	bgt label109
	b label288
.p2align 4
label894:
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	ble label288
.p2align 4
label109:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label114
	add r5, r5, #1
	add r3, r3, #32
	ldr r9, [sp, #20]
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	bgt label109
	b label288
.p2align 4
label880:
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label894
.p2align 4
label114:
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r2, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label118
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label114
	add r5, r5, #1
	add r3, r3, #32
	vmov s0, r5
	cmp r9, r5
	vcvt.f32.s32 s4, s0
	bgt label109
	b label288
.p2align 4
label382:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	ble label880
.p2align 4
label118:
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
	bne label130
.p2align 4
label119:
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
	b label121
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
	ble label382
	add r9, r9, #4
.p2align 4
label121:
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
	beq label126
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label126
label288:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r5, #0
	mov r4, r0
	ldr r9, [sp, #20]
	cmp r9, r5
	bgt label136
	b label143
.p2align 4
label142:
	mov r0, #10
	bl putch
	ldr r9, [sp, #20]
	add r4, r4, #32
	add r5, r5, #1
	cmp r9, r5
	ble label143
.p2align 4
label136:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label142
	add r6, r4, #4
	mov r7, #1
.p2align 4
label138:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	ble label142
	add r6, r6, #4
	b label138
label143:
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
	bgt label147
	b label424
.p2align 4
label151:
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
	ble label424
.p2align 4
label147:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label152
	b label151
.p2align 4
label582:
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
	ble label151
.p2align 4
label152:
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
	ble label153
	cmp r9, #4
	ble label681
	ldr r0, [sp, #8]
	cmp r0, #16
	ble label704
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #32
.p2align 4
label236:
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
	ble label806
	add r1, r1, #512
	vmov.f32 s1, s0
	b label236
.p2align 4
label806:
	vmov.f32 s1, s0
	mov r8, r7
	ldr r0, [sp, #8]
	cmp r0, r7
	ble label877
.p2align 4
label226:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, r8
	add r1, r0, r8, lsl #5
.p2align 4
label227:
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
	ble label734
	add r1, r1, #128
	vmov.f32 s1, s0
	b label227
.p2align 4
label734:
	vmov.f32 s1, s0
	ldr r9, [sp, #20]
	cmp r9, r7
	ble label891
.p2align 4
label214:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r7, lsl #5
	b label215
.p2align 4
label219:
	add r1, r1, #32
.p2align 4
label215:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	ldr r9, [sp, #20]
	vmov s2, r0
	cmp r9, r7
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label219
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label875
.p2align 4
label154:
	vldr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #4
	ble label451
	ldr r10, [sp, #12]
	cmp r10, #16
	ble label475
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r1, r0, #4
	b label169
.p2align 4
label173:
	add r1, r1, #64
	vmov.f32 s1, s0
.p2align 4
label169:
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
	bgt label173
	vmov.f32 s1, s0
	mov r8, r7
	ldr r10, [sp, #12]
	cmp r10, r7
	ble label867
.p2align 4
label179:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, r8
	add r1, r0, r8, lsl #2
	b label180
.p2align 4
label184:
	add r1, r1, #16
	vmov.f32 s1, s0
.p2align 4
label180:
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
	bgt label184
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r7
	ble label885
.p2align 4
label159:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r7, lsl #2
	b label160
.p2align 4
label164:
	add r1, r1, #4
.p2align 4
label160:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r7
	vadd.f32 s0, s0, s1
	bgt label164
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label668:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	ble label582
.p2align 4
label191:
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
	beq label597
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label195
.p2align 4
label196:
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
	b label197
.p2align 4
label201:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label202:
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
	ble label668
	add r9, r9, #4
.p2align 4
label197:
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
	bne label201
	b label202
.p2align 4
label597:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label196
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label195:
	add r8, r8, #1
	add r7, r7, #32
	ldr r9, [sp, #20]
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label681:
	mov r0, #0
	mov r7, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r9, [sp, #20]
	cmp r9, r7
	bgt label214
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label154
label874:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label451:
	mov r0, #0
	mov r7, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r0, [sp, #16]
	cmp r0, r7
	bgt label159
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label704:
	mov r7, #0
	mov r8, #1
	vmov s0, r7
	ldr r0, [sp, #8]
	cmp r0, r8
	bgt label226
	vmov.f32 s1, s0
	ldr r9, [sp, #20]
	cmp r9, r7
	bgt label214
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label154
	b label874
.p2align 4
label877:
	vmov.f32 s1, s0
	ldr r9, [sp, #20]
	cmp r9, r7
	bgt label214
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label154
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label867:
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r7
	bgt label159
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label153:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label154
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label475:
	mov r7, #0
	mov r8, #1
	ldr r10, [sp, #12]
	vmov s0, r7
	cmp r10, r8
	bgt label179
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r7
	bgt label159
	vstr s0, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label891:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label154
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
.p2align 4
label885:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
label424:
	mov r5, #0
	ldr r9, [sp, #20]
	cmp r9, r5
	bgt label246
	b label245
.p2align 4
label252:
	add r6, r6, #4
.p2align 4
label249:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	bgt label252
.p2align 4
label247:
	mov r0, #10
	bl putch
	ldr r9, [sp, #20]
	add r4, r4, #32
	add r5, r5, #1
	cmp r9, r5
	ble label245
.p2align 4
label246:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label247
	add r6, r4, #4
	mov r7, #1
	b label249
label245:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label99:
	add r6, r6, #1
	add r5, r5, #32
	ldr r9, [sp, #20]
	cmp r9, r6
	bgt label98
	b label105
.p2align 4
label875:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r8, #1
	ldr r9, [sp, #20]
	add r7, r0, #32
	cmp r9, r8
	bgt label191
	b label582
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
	b label119
