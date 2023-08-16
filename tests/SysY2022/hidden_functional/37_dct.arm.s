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
	mov r1, r0
	bl getint
	movw r4, #:lower16:test_block
	movt r4, #:upper16:test_block
	sub r7, r0, #3
	str r0, [sp, #16]
	sub r0, r0, #18
	str r7, [sp, #8]
	ldr r1, [sp, #20]
	cmp r1, #0
	sub r7, r1, #3
	str r7, [sp, #12]
	str r0, [sp, #0]
	sub r0, r1, #18
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
	ldr r1, [sp, #20]
	cmp r1, r6
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
	ldr r1, [sp, #20]
	movw r0, #4059
	movt r0, #16457
	cmp r1, #0
	vmov s0, r1
	vcvt.f32.s32 s18, s0
	vmov s0, r0
	ldr r0, [sp, #16]
	vdiv.f32 s17, s0, s18
	vmov s1, r0
	vcvt.f32.s32 s19, s1
	vdiv.f32 s16, s0, s19
	ble label135
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r5, #0
	mov r3, r1
	vmov s0, r5
	vcvt.f32.s32 s4, s0
	cmp r0, #0
	bgt label111
	b label133
.p2align 4
label912:
	add r5, r5, #1
	ldr r1, [sp, #20]
	cmp r1, r5
	ble label135
.p2align 4
label134:
	add r3, r3, #32
	vmov s0, r5
	ldr r0, [sp, #16]
	vcvt.f32.s32 s4, s0
	cmp r0, #0
	ble label133
.p2align 4
label111:
	mov r2, r3
	mov r6, #0
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r3, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	b label115
.p2align 4
label392:
	add r8, r8, #1
	ldr r1, [sp, #20]
	cmp r1, r8
	ble label891
	add r7, r7, #32
.p2align 4
label115:
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
	beq label119
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
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
	mov r9, r7
	vldr s6, [r2, #0]
	mov r10, #0
	vmov.f32 s5, s0
	b label121
.p2align 4
label125:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
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
	ble label392
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
	bne label125
	b label126
.p2align 4
label891:
	add r6, r6, #1
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label912
	add r2, r2, #4
	mov r8, #0
	mov r7, r4
	vmov s0, r8
	vstr s0, [r2, #0]
	vmov s0, r6
	vcvt.f32.s32 s3, s0
	b label115
label135:
	ldr r1, [sp, #20]
	cmp r1, #0
	ble label147
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r5, #0
	mov r4, r1
	b label137
.p2align 4
label140:
	mov r0, #10
	bl putch
	ldr r1, [sp, #20]
	add r5, r5, #1
	cmp r1, r5
	ble label147
	add r4, r4, #32
.p2align 4
label137:
	vldr s0, [r4, #0]
	bl putfloat
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label140
	add r6, r4, #4
	mov r7, #1
.p2align 4
label143:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	ble label140
	add r6, r6, #4
	b label143
label147:
	mov r0, #10
	bl putch
	ldr r1, [sp, #20]
	cmp r1, #0
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
label919:
	add r4, r4, #1
	ldr r1, [sp, #20]
	cmp r1, r4
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
	ble label919
.p2align 4
label207:
	add r2, r2, #4
.p2align 4
label167:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r0, #1048576000
	vldr s0, [r1, #0]
	vmov s1, r0
	mov r0, #1056964608
	vmov s2, r0
	vmul.f32 s1, s0, s1
	vmov s0, r5
	vstr s1, [r2, #0]
	ldr r1, [sp, #20]
	vcvt.f32.s32 s0, s0
	cmp r1, #1
	vadd.f32 s0, s0, s2
	vmul.f32 s3, s16, s0
	ble label170
	cmp r1, #4
	ble label727
	ldr r7, [sp, #12]
	cmp r7, #16
	ble label733
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r6, #1
	add r1, r1, #32
	b label243
.p2align 4
label247:
	add r1, r1, #512
	vmov.f32 s1, s0
.p2align 4
label243:
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
	ldr r0, [sp, #4]
	vmul.f32 s0, s2, s0
	cmp r0, r6
	vadd.f32 s0, s1, s0
	bgt label247
	vmov.f32 s1, s0
	mov r0, r6
	ldr r7, [sp, #12]
	cmp r7, r6
	ble label909
.p2align 4
label236:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r6, r0
	add r1, r1, r0, lsl #5
.p2align 4
label237:
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
	ldr r7, [sp, #12]
	vmul.f32 s0, s2, s0
	cmp r7, r6
	vadd.f32 s0, s1, s0
	ble label764
	add r1, r1, #128
	vmov.f32 s1, s0
	b label237
.p2align 4
label764:
	vmov.f32 s1, s0
	mov r0, r6
	ldr r1, [sp, #20]
	cmp r1, r6
	ble label908
.p2align 4
label254:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	add r6, r1, r0, lsl #5
	mov r1, r0
	b label255
.p2align 4
label259:
	add r6, r6, #32
	mov r1, r0
.p2align 4
label255:
	vldr s1, [r6, #0]
	mov r0, #1056964608
	vmov s2, r0
	add r0, r1, #1
	ldr r1, [sp, #20]
	vmul.f32 s1, s1, s2
	cmp r1, r0
	vadd.f32 s0, s0, s1
	bgt label259
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label911
.p2align 4
label171:
	vldr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #4
	ble label491
	ldr r7, [sp, #8]
	cmp r7, #16
	ble label514
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r6, #1
	add r1, r1, #4
	b label186
.p2align 4
label190:
	add r1, r1, #64
	vmov.f32 s1, s0
.p2align 4
label186:
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
	ldr r0, [sp, #0]
	vmul.f32 s0, s2, s0
	cmp r0, r6
	vadd.f32 s0, s1, s0
	bgt label190
	vmov.f32 s1, s0
	mov r0, r6
	ldr r7, [sp, #8]
	cmp r7, r6
	ble label899
.p2align 4
label196:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r6, r0
	add r1, r1, r0, lsl #2
.p2align 4
label197:
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
	ldr r7, [sp, #8]
	vmul.f32 s0, s2, s0
	cmp r7, r6
	vadd.f32 s0, s1, s0
	ble label616
	add r1, r1, #16
	vmov.f32 s1, s0
	b label197
.p2align 4
label616:
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r6
	ble label917
.p2align 4
label176:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	add r1, r1, r6, lsl #2
.p2align 4
label177:
	vldr s1, [r1, #0]
	mov r0, #1056964608
	add r6, r6, #1
	vmov s2, r0
	ldr r0, [sp, #16]
	vmul.f32 s1, s1, s2
	cmp r0, r6
	vadd.f32 s0, s0, s1
	ble label509
	add r1, r1, #4
	b label177
.p2align 4
label509:
	vstr s0, [r2, #0]
	ldr r1, [sp, #20]
	cmp r1, #1
	ble label915
.p2align 4
label208:
	movw r1, #:lower16:test_dct
	movt r1, #:upper16:test_dct
	mov r7, #1
	add r6, r1, #32
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label212
	add r7, r7, #1
	ldr r1, [sp, #20]
	cmp r1, r7
	bgt label225
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	cmp r0, r5
	bgt label207
	b label904
.p2align 4
label709:
	add r7, r7, #1
	ldr r1, [sp, #20]
	cmp r1, r7
	ble label903
.p2align 4
label225:
	add r6, r6, #32
	ldr r0, [sp, #16]
	cmp r0, #1
	ble label905
.p2align 4
label212:
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
	beq label214
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label214:
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
	b label216
.p2align 4
label223:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label220:
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
	ble label709
	add r8, r8, #4
.p2align 4
label216:
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
	bne label223
	b label220
.p2align 4
label491:
	mov r0, #0
	mov r6, #1
	vmov.f32 s0, s1
	vmov s2, r0
	vmov.f32 s1, s2
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label176
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
label914:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label207
	b label630
.p2align 4
label733:
	mov r6, #0
	mov r0, #1
	vmov s0, r6
	ldr r7, [sp, #12]
	cmp r7, r0
	bgt label236
	vmov.f32 s1, s0
	mov r0, r6
	ldr r1, [sp, #20]
	cmp r1, r6
	bgt label254
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label171
	cmp r1, #1
	bgt label208
	b label206
.p2align 4
label899:
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label176
	vstr s0, [r2, #0]
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	cmp r0, r5
	bgt label207
	b label630
.p2align 4
label909:
	vmov.f32 s1, s0
	mov r0, r6
	ldr r1, [sp, #20]
	cmp r1, r6
	bgt label254
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label171
	cmp r1, #1
	bgt label208
	b label206
.p2align 4
label170:
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label171
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
	b label206
.p2align 4
label905:
	add r7, r7, #1
	ldr r1, [sp, #20]
	cmp r1, r7
	bgt label225
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label207
label904:
	add r4, r4, #1
	ldr r1, [sp, #20]
	cmp r1, r4
	bgt label154
	b label452
.p2align 4
label727:
	mov r0, #0
	vmov.f32 s0, s1
	ldr r1, [sp, #20]
	vmov s2, r0
	mov r0, #1
	cmp r1, r0
	vmov.f32 s1, s2
	bgt label254
	vmov.f32 s0, s2
	vstr s2, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label171
	cmp r1, #1
	bgt label208
	b label206
.p2align 4
label514:
	mov r6, #0
	mov r0, #1
	ldr r7, [sp, #8]
	vmov s0, r6
	cmp r7, r0
	bgt label196
	vmov.f32 s1, s0
	ldr r0, [sp, #16]
	cmp r0, r6
	bgt label176
	vstr s0, [r2, #0]
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
	b label914
.p2align 4
label917:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label207
	b label630
.p2align 4
label908:
	vmov.f32 s0, s1
	vstr s1, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, #1
	bgt label171
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
	b label206
label153:
	add r4, r4, #1
	ldr r1, [sp, #20]
	cmp r1, r4
	bgt label154
	b label452
label104:
	add r6, r6, #1
	ldr r1, [sp, #20]
	cmp r1, r6
	bgt label105
	b label106
label133:
	add r5, r5, #1
	ldr r1, [sp, #20]
	cmp r1, r5
	bgt label134
	b label135
label452:
	movw r3, #:lower16:test_idct
	movt r3, #:upper16:test_idct
	mov r5, #0
	mov r4, r3
	b label156
.p2align 4
label165:
	add r6, r6, #4
.p2align 4
label162:
	mov r0, #32
	bl putch
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #16]
	add r7, r7, #1
	cmp r0, r7
	bgt label165
.p2align 4
label159:
	mov r0, #10
	bl putch
	ldr r1, [sp, #20]
	add r5, r5, #1
	cmp r1, r5
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
	b label162
label148:
	mov r0, #10
	bl putch
	add sp, sp, #24
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
.p2align 4
label915:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label207
label630:
	add r4, r4, #1
	ldr r1, [sp, #20]
	cmp r1, r4
	bgt label154
	b label452
.p2align 4
label911:
	ldr r1, [sp, #20]
	cmp r1, #1
	bgt label208
label206:
	vldr s0, [r2, #0]
	add r5, r5, #1
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r2, #0]
	ldr r0, [sp, #16]
	cmp r0, r5
	bgt label207
	b label630
