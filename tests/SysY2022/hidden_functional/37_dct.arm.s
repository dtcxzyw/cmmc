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
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #24
	bl getint
	str r0, [sp, #16]
	mov r1, r0
	bl getint
	mov r6, #0
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	str r0, [sp, #12]
	mov r5, r4
	ldr r1, [sp, #16]
	cmp r1, r6
	ble label59
.p2align 4
label52:
	ldr r0, [sp, #12]
	cmp r0, #0
	ble label53
	mov r7, r5
	mov r8, #0
	b label55
.p2align 4
label201:
	add r6, r6, #1
	add r5, r5, #32
	ldr r1, [sp, #16]
	cmp r1, r6
	bgt label52
label59:
	ldr r1, [sp, #16]
	movw r0, #4059
	movt r0, #16457
	mov r5, #0
	vmov s0, r1
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r3, r1
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #12]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
	vmov s0, r5
	ldr r1, [sp, #16]
	vcvt.f32.s32 s4, s0
	cmp r1, r5
	bgt label161
label63:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r5, #0
	mov r4, r1
	ldr r1, [sp, #16]
	cmp r1, r5
	bgt label67
	b label74
.p2align 4
label161:
	mov r2, r3
	mov r6, #0
	ldr r0, [sp, #12]
	cmp r0, r6
	ble label637
.p2align 4
label165:
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r2, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	ldr r1, [sp, #16]
	cmp r1, r8
	ble label169
.p2align 4
label170:
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
	bne label182
	b label171
.p2align 4
label727:
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label170
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #12]
	cmp r0, r6
	bgt label165
	add r5, r5, #1
	add r3, r3, #32
	vmov s0, r5
	cmp r1, r5
	vcvt.f32.s32 s4, s0
	bgt label161
	b label63
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
	mov r10, #0
	mov r9, r7
	vldr s6, [r2, #0]
	vmov.f32 s5, s0
.p2align 4
label173:
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
	bne label177
.p2align 4
label178:
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
	ldr r0, [sp, #12]
	cmp r0, r10
	ble label727
	add r9, r9, #4
	b label173
.p2align 4
label55:
	bl getfloat
	add r1, r8, #1
	vstr s0, [r7, #0]
	ldr r0, [sp, #12]
	cmp r0, r1
	ble label201
	add r7, r7, #4
	mov r8, r1
	b label55
.p2align 4
label67:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #12]
	cmp r0, #1
	ble label73
	add r6, r4, #4
	mov r7, #1
	b label69
.p2align 4
label73:
	mov r0, #10
	bl putch
	ldr r1, [sp, #16]
	add r4, r4, #32
	add r5, r5, #1
	cmp r1, r5
	bgt label67
label74:
	mov r0, #10
	bl putch
	mov r5, #0
	movw r4, #:lower16:test_idct
	movt r4, #:upper16:test_idct
	ldr r1, [sp, #16]
	sub r3, r1, #20
	sub r7, r1, #4
	str r7, [sp, #4]
	ldr r0, [sp, #12]
	sub r8, r0, #4
	sub r0, r0, #20
	str r8, [sp, #8]
	str r0, [sp, #0]
	vmov s0, r5
	mov r0, #1056964608
	vmov s1, r0
	cmp r1, r5
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	ble label78
.p2align 4
label90:
	mov r2, r4
	mov r6, #0
	ldr r0, [sp, #12]
	cmp r0, r6
	ble label94
.p2align 4
label95:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r0, #1048576000
	vldr s0, [r1, #0]
	vmov s1, r0
	mov r0, #1056964608
	vmul.f32 s0, s0, s1
	vmov s1, r0
	vstr s0, [r2, #0]
	ldr r1, [sp, #16]
	vmov s0, r6
	cmp r1, #1
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label96
	b label286
.p2align 4
label122:
	vldr s0, [r2, #0]
	add r6, r6, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #12]
	add r2, r2, #4
	cmp r0, r6
	bgt label95
	b label94
.p2align 4
label123:
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
	bne label124
	b label437
.p2align 4
label508:
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
.p2align 4
label124:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	ldr r0, [sp, #12]
	cmp r0, #1
	ble label127
.p2align 4
label128:
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
.p2align 4
label129:
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
	beq label134
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
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
	add r10, r10, #1
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r2, #0]
	ldr r0, [sp, #12]
	cmp r0, r10
	ble label508
	add r9, r9, #4
	b label129
.p2align 4
label69:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #12]
	add r7, r7, #1
	cmp r0, r7
	ble label73
	add r6, r6, #4
	b label69
.p2align 4
label96:
	ldr r1, [sp, #16]
	cmp r1, #5
	ble label97
	vldr s1, [r2, #0]
	ldr r7, [sp, #4]
	cmp r7, #17
	ble label297
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #32
.p2align 4
label107:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #16
	vmov s0, r0
	cmp r3, r7
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
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	ble label111
	add r1, r1, #512
	vmov.f32 s1, s0
	b label107
.p2align 4
label99:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	vmov s0, r0
	add r0, r7, #4
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #96]
	ldr r7, [sp, #4]
	vmul.f32 s0, s2, s0
	cmp r7, r0
	vadd.f32 s0, s1, s0
	ble label103
	add r1, r1, #128
	vmov.f32 s1, s0
	mov r7, r0
	b label99
.p2align 4
label111:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	vmov.f32 s1, s0
	add r1, r1, r7, lsl #5
	b label99
.p2align 4
label103:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	add r7, r1, r0, lsl #5
	mov r1, r0
	vldr s1, [r7, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r1, #1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label117
	b label778
.p2align 4
label113:
	vldr s1, [r7, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r1, #1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r1, [sp, #16]
	cmp r1, r0
	ble label407
.p2align 4
label117:
	add r7, r7, #32
	mov r1, r0
	b label113
.p2align 4
label407:
	ldr r0, [sp, #12]
	cmp r0, #1
	ble label779
.p2align 4
label138:
	ldr r0, [sp, #12]
	cmp r0, #5
	ble label514
	vldr s1, [r2, #0]
	ldr r8, [sp, #8]
	cmp r8, #17
	ble label146
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #4
.p2align 4
label154:
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
	ldr r0, [sp, #0]
	vmul.f32 s0, s2, s0
	cmp r0, r7
	vadd.f32 s0, s1, s0
	ble label158
	add r1, r1, #64
	vmov.f32 s1, s0
	b label154
.p2align 4
label147:
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
	ldr r8, [sp, #8]
	vmul.f32 s0, s2, s0
	cmp r8, r7
	vadd.f32 s0, s1, s0
	ble label151
	add r1, r1, #16
	vmov.f32 s1, s0
	b label147
.p2align 4
label158:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	vmov.f32 s1, s0
	add r1, r1, r7, lsl #2
	b label147
.p2align 4
label139:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	vmov s2, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r0, [sp, #12]
	cmp r0, r7
	ble label143
.p2align 4
label144:
	add r1, r1, #4
	b label139
.p2align 4
label151:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r0, #1056964608
	add r1, r1, r7, lsl #2
	vmov s2, r0
	add r7, r7, #1
	vldr s1, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r0, [sp, #12]
	cmp r0, r7
	bgt label144
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
.p2align 4
label143:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
.p2align 4
label127:
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
.p2align 4
label437:
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label128
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
.p2align 4
label97:
	vldr s0, [r2, #0]
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r0, #1056964608
	add r7, r1, #32
	vmov s2, r0
	vldr s1, [r7, #0]
	mov r1, #1
	add r0, r1, #1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r1, [sp, #16]
	cmp r1, r0
	bgt label117
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label138
	b label776
.p2align 4
label146:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #4
	b label147
.p2align 4
label94:
	add r5, r5, #1
	add r4, r4, #32
	ldr r1, [sp, #16]
	mov r0, #1056964608
	vmov s0, r5
	vmov s1, r0
	cmp r1, r5
	vcvt.f32.s32 s0, s0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label90
	b label78
.p2align 4
label169:
	add r6, r6, #1
	add r2, r2, #4
	ldr r0, [sp, #12]
	cmp r0, r6
	bgt label165
	add r5, r5, #1
	add r3, r3, #32
	ldr r1, [sp, #16]
	vmov s0, r5
	cmp r1, r5
	vcvt.f32.s32 s4, s0
	bgt label161
	b label63
.p2align 4
label778:
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label138
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
.p2align 4
label286:
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label138
label776:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
label78:
	movw r4, #:lower16:test_idct
	movt r4, #:upper16:test_idct
	mov r5, #0
	ldr r1, [sp, #16]
	cmp r1, r5
	ble label82
.p2align 4
label83:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label85
.p2align 4
label84:
	mov r0, #10
	bl putch
	ldr r1, [sp, #16]
	add r4, r4, #32
	add r5, r5, #1
	cmp r1, r5
	bgt label83
	b label82
.p2align 4
label85:
	add r6, r4, #4
	mov r7, #1
.p2align 4
label86:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #12]
	add r7, r7, #1
	cmp r0, r7
	ble label84
	add r6, r6, #4
	b label86
label82:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label53:
	add r6, r6, #1
	add r5, r5, #32
	ldr r1, [sp, #16]
	cmp r1, r6
	bgt label52
	b label59
.p2align 4
label779:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label123
	b label122
label637:
	add r5, r5, #1
	add r3, r3, #32
	ldr r1, [sp, #16]
	vmov s0, r5
	cmp r1, r5
	vcvt.f32.s32 s4, s0
	bgt label161
	b label63
.p2align 4
label514:
	vldr s0, [r2, #0]
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #4
	b label139
.p2align 4
label177:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label178
.p2align 4
label182:
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
label297:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #32
	b label99
