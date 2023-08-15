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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #24
	bl getint
	str r0, [sp, #20]
	mov r8, r0
	sub r0, r0, #3
	str r0, [sp, #8]
	bl getint
	cmp r8, #0
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	str r0, [sp, #16]
	sub r7, r8, #18
	sub r9, r0, #3
	sub r0, r0, #18
	str r9, [sp, #12]
	str r7, [sp, #0]
	str r0, [sp, #4]
	ble label106
	mov r5, r4
	mov r6, #0
	ldr r0, [sp, #16]
	cmp r0, #0
	bgt label99
	b label104
.p2align 4
label103:
	add r7, r7, #4
	mov r8, r1
.p2align 4
label100:
	bl getfloat
	add r1, r8, #1
	vstr s0, [r7, #0]
	ldr r0, [sp, #16]
	cmp r0, r1
	bgt label103
	add r6, r6, #1
	ldr r8, [sp, #20]
	cmp r8, r6
	ble label106
.p2align 4
label105:
	add r5, r5, #32
	ldr r0, [sp, #16]
	cmp r0, #0
	ble label104
.p2align 4
label99:
	mov r7, r5
	mov r8, #0
	b label100
label106:
	ldr r8, [sp, #20]
	movw r0, #4059
	movt r0, #16457
	cmp r8, #0
	vmov s0, r8
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #16]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
	ble label135
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r5, #0
	mov r3, r0
	vmov s0, r5
	ldr r0, [sp, #16]
	vcvt.f32.s32 s4, s0
	cmp r0, #0
	bgt label113
	b label111
.p2align 4
label892:
	add r5, r5, #1
	ldr r8, [sp, #20]
	cmp r8, r5
	ble label135
.p2align 4
label112:
	add r3, r3, #32
	vmov s0, r5
	ldr r0, [sp, #16]
	vcvt.f32.s32 s4, s0
	cmp r0, #0
	ble label111
.p2align 4
label113:
	mov r2, r3
	mov r6, #0
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r3, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	b label117
.p2align 4
label129:
	add r0, r8, #1
	ldr r8, [sp, #20]
	cmp r8, r0
	ble label396
	add r7, r7, #32
	mov r8, r0
.p2align 4
label117:
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
	beq label121
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label121:
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
	b label123
.p2align 4
label127:
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
	ble label129
	add r9, r9, #4
.p2align 4
label123:
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
	beq label127
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label127
.p2align 4
label396:
	add r6, r6, #1
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label892
	add r2, r2, #4
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r2, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	b label117
label135:
	ldr r8, [sp, #20]
	cmp r8, #0
	ble label147
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r5, #0
	mov r4, r0
	b label137
.p2align 4
label144:
	add r6, r6, #4
.p2align 4
label141:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	bgt label144
.p2align 4
label145:
	mov r0, #10
	bl putch
	ldr r8, [sp, #20]
	add r5, r5, #1
	cmp r8, r5
	ble label147
	add r4, r4, #32
.p2align 4
label137:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label145
	add r6, r4, #4
	mov r7, #1
	b label141
label147:
	mov r0, #10
	bl putch
	ldr r8, [sp, #20]
	cmp r8, #0
	ble label148
	movw r3, #:lower16:test_idct
	movt r3, #:upper16:test_idct
	mov r4, #0
	vmov s0, r4
	mov r0, #1056964608
	vmov s1, r0
	ldr r0, [sp, #16]
	vcvt.f32.s32 s0, s0
	cmp r0, #0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label166
	b label153
.p2align 4
label920:
	add r4, r4, #1
	ldr r8, [sp, #20]
	cmp r8, r4
	ble label452
.p2align 4
label154:
	add r3, r3, #32
	vmov s0, r4
	mov r0, #1056964608
	vmov s1, r0
	ldr r0, [sp, #16]
	vcvt.f32.s32 s0, s0
	cmp r0, #0
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	ble label153
.p2align 4
label166:
	mov r2, r3
	mov r5, #0
	b label167
.p2align 4
label908:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	ble label920
.p2align 4
label241:
	add r2, r2, #4
.p2align 4
label167:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	vldr s0, [r0, #0]
	mov r0, #1048576000
	vmov s1, r0
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmov s0, r5
	vstr s1, [r2, #0]
	ldr r8, [sp, #20]
	vcvt.f32.s32 s0, s0
	cmp r8, #1
	vadd.f32 s0, s0, s2
	vmul.f32 s3, s16, s0
	ble label483
	cmp r8, #4
	ble label487
	ldr r0, [sp, #8]
	cmp r0, #16
	ble label510
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r6, #1
	add r1, r0, #32
	b label199
.p2align 4
label203:
	add r1, r1, #512
	vmov.f32 s1, s0
.p2align 4
label199:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #16
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
	ldr r7, [sp, #0]
	vmul.f32 s0, s2, s0
	cmp r7, r6
	vadd.f32 s0, s1, s0
	bgt label203
	vmov.f32 s1, s0
	mov r7, r6
	ldr r0, [sp, #8]
	cmp r0, r6
	ble label900
.p2align 4
label192:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r6, r7
	add r1, r0, r7, lsl #5
	b label193
.p2align 4
label197:
	add r1, r1, #128
	vmov.f32 s1, s0
.p2align 4
label193:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #4
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
	cmp r0, r6
	vadd.f32 s0, s1, s0
	bgt label197
	vmov.f32 s1, s0
	ldr r8, [sp, #20]
	cmp r8, r6
	ble label899
.p2align 4
label177:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r6, lsl #5
	b label178
.p2align 4
label182:
	add r1, r1, #32
.p2align 4
label178:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #1
	ldr r8, [sp, #20]
	vmov s2, r0
	cmp r8, r6
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bgt label182
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label897
.p2align 4
label205:
	vldr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #4
	ble label623
	ldr r9, [sp, #12]
	cmp r9, #16
	ble label646
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r6, #1
	add r1, r0, #4
	b label234
.p2align 4
label238:
	add r1, r1, #64
	vmov.f32 s1, s0
.p2align 4
label234:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #16
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
	cmp r0, r6
	vadd.f32 s0, s1, s0
	bgt label238
	vmov.f32 s1, s0
	mov r7, r6
	ldr r9, [sp, #12]
	cmp r9, r6
	ble label905
.p2align 4
label224:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r6, r7
	add r1, r0, r7, lsl #2
	b label225
.p2align 4
label229:
	add r1, r1, #16
	vmov.f32 s1, s0
.p2align 4
label225:
	vldr s2, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #4
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
	ldr r9, [sp, #12]
	vmul.f32 s0, s2, s0
	cmp r9, r6
	vadd.f32 s0, s1, s0
	bgt label229
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label917
.p2align 4
label212:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	add r1, r0, r6, lsl #2
	b label213
.p2align 4
label217:
	add r1, r1, #4
.p2align 4
label213:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #1
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r6
	vadd.f32 s0, s0, s1
	bgt label217
	vstr s0, [r2, #0]
	ldr r8, [sp, #20]
	cmp r8, #1
	ble label903
.p2align 4
label242:
	movw r0, #:lower16:test_dct
	movt r0, #:upper16:test_dct
	mov r7, #1
	add r6, r0, #32
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label246
	add r7, r7, #1
	ldr r8, [sp, #20]
	cmp r8, r7
	bgt label259
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	cmp r0, r5
	bgt label241
	b label909
.p2align 4
label848:
	add r7, r7, #1
	ldr r8, [sp, #20]
	cmp r8, r7
	ble label908
.p2align 4
label259:
	add r6, r6, #32
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label910
.p2align 4
label246:
	vmov s0, r7
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
	beq label248
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label248:
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
	mov r9, #1
	add r8, r6, #4
	vldr s6, [r2, #0]
	vmov.f32 s5, s0
	b label250
.p2align 4
label255:
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
	add r9, r9, #1
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r9
	ble label848
	add r8, r8, #4
.p2align 4
label250:
	vmov s0, r9
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
	vldr s1, [r8, #0]
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	vmul.f32 s7, s1, s5
	orrs r0, r0, r1
	beq label255
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
	b label255
.p2align 4
label487:
	mov r0, #0
	mov r6, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r8, [sp, #20]
	cmp r8, r6
	bgt label177
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label205
	cmp r8, #1
	bgt label242
	b label240
.p2align 4
label623:
	mov r0, #0
	mov r6, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label212
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
label902:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label241
	b label762
.p2align 4
label510:
	mov r6, #0
	mov r7, #1
	vmov s0, r6
	ldr r0, [sp, #8]
	cmp r0, r7
	bgt label192
	vmov.f32 s1, s0
	ldr r8, [sp, #20]
	cmp r8, r6
	bgt label177
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label205
	cmp r8, #1
	bgt label242
	b label240
.p2align 4
label646:
	mov r6, #0
	mov r7, #1
	vmov s0, r6
	ldr r9, [sp, #12]
	cmp r9, r7
	bgt label224
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label212
	vstr s0, [r2, #0]
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
	b label902
.p2align 4
label905:
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label212
	vstr s0, [r2, #0]
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	cmp r0, r5
	bgt label241
	b label762
.p2align 4
label900:
	vmov.f32 s1, s0
	ldr r8, [sp, #20]
	cmp r8, r6
	bgt label177
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label205
	cmp r8, #1
	bgt label242
	b label240
.p2align 4
label910:
	add r7, r7, #1
	ldr r8, [sp, #20]
	cmp r8, r7
	bgt label259
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label241
label909:
	add r4, r4, #1
	ldr r8, [sp, #20]
	cmp r8, r4
	bgt label154
	b label452
.p2align 4
label917:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label241
	b label762
.p2align 4
label899:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label205
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
	b label240
label104:
	add r6, r6, #1
	ldr r8, [sp, #20]
	cmp r8, r6
	bgt label105
	b label106
label153:
	add r4, r4, #1
	ldr r8, [sp, #20]
	cmp r8, r4
	bgt label154
	b label452
.p2align 4
label483:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label205
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
	b label240
label111:
	add r5, r5, #1
	ldr r8, [sp, #20]
	cmp r8, r5
	bgt label112
	b label135
label452:
	movw r3, #:lower16:test_idct
	movt r3, #:upper16:test_idct
	mov r5, #0
	mov r4, r3
	b label156
.p2align 4
label159:
	mov r0, #10
	bl putch
	ldr r8, [sp, #20]
	add r5, r5, #1
	cmp r8, r5
	ble label148
	add r4, r4, #32
.p2align 4
label156:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label159
	add r6, r4, #4
	mov r7, #1
.p2align 4
label162:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	ble label159
	add r6, r6, #4
	b label162
label148:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label903:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label241
label762:
	add r4, r4, #1
	ldr r8, [sp, #20]
	cmp r8, r4
	bgt label154
	b label452
.p2align 4
label897:
	ldr r8, [sp, #20]
	cmp r8, #1
	bgt label242
label240:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label241
	b label762
