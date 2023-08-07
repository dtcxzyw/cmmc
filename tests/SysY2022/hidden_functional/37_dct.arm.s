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
label49:
	ldr r1, [sp, #16]
	cmp r1, r6
	ble label59
.p2align 4
label52:
	ldr r0, [sp, #12]
	cmp r0, #0
	ble label193
	mov r7, r5
	mov r8, #0
	b label54
.p2align 4
label199:
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
	ble label644
.p2align 4
label169:
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
	bne label181
	b label170
.p2align 4
label725:
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label169
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
label170:
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
label172:
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
	beq label177
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label177:
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
	ble label725
	add r9, r9, #4
	b label172
.p2align 4
label54:
	bl getfloat
	add r1, r8, #1
	vstr s0, [r7, #0]
	ldr r0, [sp, #12]
	cmp r0, r1
	ble label199
	add r7, r7, #4
	mov r8, r1
	b label54
.p2align 4
label67:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label68
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
	ble label249
.p2align 4
label78:
	mov r2, r4
	mov r6, #0
	ldr r0, [sp, #12]
	cmp r0, r6
	bgt label83
.p2align 4
label82:
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
	bgt label78
	b label249
.p2align 4
label83:
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
	ble label268
	cmp r1, #5
	bgt label86
	b label85
.p2align 4
label134:
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
	bgt label83
	b label82
.p2align 4
label135:
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
	bne label148
	b label136
.p2align 4
label607:
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label136:
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label139
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label139:
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
	b label140
.p2align 4
label148:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	ldr r0, [sp, #12]
	vdiv.f32 s2, s0, s1
	cmp r0, #1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	bgt label139
	add r8, r8, #1
	add r7, r7, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label140:
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
	beq label145
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label145:
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
	ble label607
	add r9, r9, #4
	b label140
.p2align 4
label86:
	vldr s1, [r2, #0]
	ldr r7, [sp, #4]
	cmp r7, #17
	ble label87
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #32
.p2align 4
label95:
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
	ble label99
	add r1, r1, #512
	vmov.f32 s1, s0
	b label95
.p2align 4
label88:
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
	ble label92
	add r1, r1, #128
	vmov.f32 s1, s0
	mov r7, r0
	b label88
.p2align 4
label99:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	vmov.f32 s1, s0
	add r1, r1, r7, lsl #5
	b label88
.p2align 4
label92:
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
	bgt label105
	b label776
.p2align 4
label101:
	vldr s1, [r7, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r1, #1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r1, [sp, #16]
	cmp r1, r0
	ble label389
.p2align 4
label105:
	add r7, r7, #32
	mov r1, r0
	b label101
.p2align 4
label389:
	ldr r0, [sp, #12]
	cmp r0, #1
	ble label777
.p2align 4
label108:
	ldr r0, [sp, #12]
	cmp r0, #5
	ble label398
	vldr s1, [r2, #0]
	ldr r8, [sp, #8]
	cmp r8, #17
	ble label403
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #4
.p2align 4
label118:
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
	ble label122
	add r1, r1, #64
	vmov.f32 s1, s0
	b label118
.p2align 4
label110:
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
	ble label114
	add r1, r1, #16
	vmov.f32 s1, s0
	b label110
.p2align 4
label122:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	vmov.f32 s1, s0
	add r1, r1, r7, lsl #2
	b label110
.p2align 4
label114:
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
	bgt label129
	b label779
.p2align 4
label125:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r7, r7, #1
	vmov s2, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r0, [sp, #12]
	cmp r0, r7
	ble label515
.p2align 4
label129:
	add r1, r1, #4
	b label125
.p2align 4
label85:
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
	bgt label105
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label108
.p2align 4
label777:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label87:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #32
	b label88
label249:
	movw r4, #:lower16:test_idct
	movt r4, #:upper16:test_idct
	mov r5, #0
	ldr r1, [sp, #16]
	cmp r1, r5
	ble label153
.p2align 4
label154:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #12]
	cmp r0, #1
	ble label155
	add r6, r4, #4
	mov r7, #1
.p2align 4
label157:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #12]
	add r7, r7, #1
	cmp r0, r7
	ble label155
	add r6, r6, #4
	b label157
.p2align 4
label155:
	mov r0, #10
	bl putch
	ldr r1, [sp, #16]
	add r4, r4, #32
	add r5, r5, #1
	cmp r1, r5
	bgt label154
	b label153
.p2align 4
label398:
	vldr s0, [r2, #0]
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	mov r0, #1056964608
	add r1, r1, #4
	add r7, r7, #1
	vmov s2, r0
	vldr s1, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r2, #0]
	ldr r0, [sp, #12]
	cmp r0, r7
	bgt label129
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label515:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label779:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
.p2align 4
label776:
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label108
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
label153:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label644:
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
label268:
	ldr r0, [sp, #12]
	cmp r0, #1
	bgt label108
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r8, #1
	add r7, r1, #32
	ldr r1, [sp, #16]
	cmp r1, r8
	bgt label135
	b label134
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
label68:
	add r6, r4, #4
	mov r7, #1
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
label403:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r1, r1, #4
	b label110
label193:
	add r6, r6, #1
	add r5, r5, #32
	b label49
.p2align 4
label181:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label170
