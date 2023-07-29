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
.p2align 4
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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	vpush { s16, s17, s18, s19 }
	sub sp, sp, #12
	bl getint
	str r0, [sp, #0]
	bl getint
	mov r4, #0
	movw r5, #:lower16:test_block
	str r0, [sp, #4]
	movt r5, #:upper16:test_block
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label49
label54:
	ldr r0, [sp, #0]
	movw r4, #:lower16:test_dct
	mov r3, #0
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
	add r1, r4, r3, lsl #5
	vmov s0, r3
	ldr r0, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r0, r3
	bgt label167
	mov r5, #0
	cmp r0, r5
	bgt label79
	b label83
.p2align 4
label62:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label64
	add r6, r6, #1
	ldr r0, [sp, #0]
	cmp r0, r6
	bgt label62
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	add r3, r3, #1
	add r1, r4, r3, lsl #5
	vmov s0, r3
	ldr r0, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r0, r3
	bgt label167
	mov r5, #0
	cmp r0, r5
	bgt label79
	b label83
.p2align 4
label68:
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
	vmul.f32 s0, s16, s0
	vmul.f32 s0, s0, s3
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
	add r0, r7, r8, lsl #2
	vldr s1, [r0, #0]
	vmul.f32 s7, s1, s5
	beq label71
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label71:
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
	add r8, r8, #1
	add r0, r1, r2, lsl #2
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label68
	add r6, r6, #1
	ldr r0, [sp, #0]
	cmp r0, r6
	bgt label62
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	add r3, r3, #1
	add r1, r4, r3, lsl #5
	vmov s0, r3
	ldr r0, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r0, r3
	bgt label167
	mov r5, #0
	cmp r0, r5
	ble label83
.p2align 4
label79:
	add r6, r4, r5, lsl #5
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label80
	mov r7, #1
	b label81
.p2align 4
label80:
	mov r0, #10
	bl putch
	add r5, r5, #1
	ldr r0, [sp, #0]
	cmp r0, r5
	bgt label79
	b label83
.p2align 4
label81:
	mov r0, #32
	bl putch
	add r0, r6, r7, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r0, r7
	bgt label81
	b label80
label83:
	mov r0, #10
	bl putch
	mov r7, #0
	ldr r0, [sp, #0]
	movw r5, #:lower16:test_idct
	movt r5, #:upper16:test_idct
	sub r3, r0, #4
	ldr r0, [sp, #4]
	sub r6, r0, #4
	vmov s0, r7
	mov r0, #1056964608
	add r1, r5, r7, lsl #5
	vmov s1, r0
	ldr r0, [sp, #0]
	vcvt.f32.s32 s0, s0
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label320
	mov r4, #0
	cmp r0, r4
	bgt label88
	b label92
.p2align 4
label64:
	vmov s0, r6
	mov r0, #1056964608
	movw r7, #4059
	vmov s1, r0
	movt r7, #49353
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
	vmov s1, r7
	mov r7, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwmi r7, #1
	orrs r0, r0, r7
	add r7, r5, r6, lsl #5
	bne label65
	b label66
.p2align 4
label320:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label96
	add r7, r7, #1
	vmov s0, r7
	mov r0, #1056964608
	add r1, r5, r7, lsl #5
	vmov s1, r0
	ldr r0, [sp, #0]
	vcvt.f32.s32 s0, s0
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label320
	mov r4, #0
	cmp r0, r4
	ble label92
.p2align 4
label88:
	add r6, r5, r4, lsl #5
	vldr s0, [r6, #0]
	bl putfloat
	ldr r0, [sp, #4]
	cmp r0, #1
	ble label89
	mov r7, #1
	b label90
.p2align 4
label89:
	mov r0, #10
	bl putch
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label88
	b label92
.p2align 4
label90:
	mov r0, #32
	bl putch
	add r0, r6, r7, lsl #2
	vldr s0, [r0, #0]
	bl putfloat
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r0, r7
	bgt label90
	b label89
.p2align 4
label342:
	add r7, r7, #1
	vmov s0, r7
	mov r0, #1056964608
	add r1, r5, r7, lsl #5
	vmov s1, r0
	ldr r0, [sp, #0]
	vcvt.f32.s32 s0, s0
	cmp r0, r7
	vadd.f32 s0, s0, s1
	vmul.f32 s4, s17, s0
	bgt label320
	mov r4, #0
	cmp r0, r4
	bgt label88
	b label92
.p2align 4
label623:
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label96
	b label342
.p2align 4
label515:
	add r0, r1, r2, lsl #2
	vldr s1, [r0, #0]
	mov r0, #1
	b label128
.p2align 4
label124:
	add r8, r4, r0, lsl #5
	vldr s1, [r8, #0]
	mov r8, #1056964608
	vmov s2, r8
	add r8, r1, r2, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	add r8, r0, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label532
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label98
	mov r8, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label110
	b label623
.p2align 4
label532:
	mov r0, r8
	b label124
.p2align 4
label128:
	add r8, r4, r0, lsl #5
	mov r9, #1056964608
	add r0, r0, #4
	vmov s0, r9
	vldr s2, [r8, #0]
	cmp r3, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #32]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #64]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #96]
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	ble label124
	vmov.f32 s1, s0
	b label128
.p2align 4
label110:
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label112
	add r8, r8, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label110
	b label411
.p2align 4
label115:
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
	beq label118
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
	vmul.f32 s0, s7, s0
	vadd.f32 s6, s6, s0
	vstr s6, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r10
	bgt label115
	add r8, r8, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label110
	b label411
.p2align 4
label96:
	add r0, r1, r2, lsl #2
	vldr s0, [r4, #0]
	mov r8, #1048576000
	vmov s1, r8
	vmul.f32 s0, s0, s1
	vstr s0, [r0, #0]
	mov r0, #1056964608
	vmov s0, r2
	vmov s1, r0
	ldr r0, [sp, #0]
	vcvt.f32.s32 s0, s0
	cmp r0, #1
	vadd.f32 s0, s0, s1
	vmul.f32 s3, s16, s0
	bgt label122
	ldr r0, [sp, #4]
	cmp r0, #1
	bgt label98
	mov r8, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label110
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label96
	b label342
.p2align 4
label622:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	b label124
.p2align 4
label104:
	add r8, r4, r0, lsl #2
	vldr s1, [r8, #0]
	mov r8, #1056964608
	vmov s2, r8
	add r8, r1, r2, lsl #2
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vstr s0, [r8, #0]
	add r8, r0, #1
	ldr r0, [sp, #4]
	cmp r0, r8
	bgt label408
	mov r8, #1
	ldr r0, [sp, #0]
	cmp r0, r8
	bgt label110
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label96
	b label342
.p2align 4
label408:
	mov r0, r8
	b label104
.p2align 4
label122:
	ldr r0, [sp, #0]
	cmp r0, #5
	bgt label515
	b label622
.p2align 4
label98:
	ldr r0, [sp, #4]
	cmp r0, #5
	ble label363
	add r0, r1, r2, lsl #2
	vldr s1, [r0, #0]
	mov r0, #1
.p2align 4
label100:
	add r8, r4, r0, lsl #2
	mov r9, #1056964608
	add r0, r0, #4
	vmov s0, r9
	vldr s2, [r8, #0]
	cmp r6, r0
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #4]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #8]
	vmul.f32 s2, s2, s0
	vadd.f32 s1, s1, s2
	vldr s2, [r8, #12]
	vmul.f32 s0, s2, s0
	vadd.f32 s0, s1, s0
	ble label104
	vmov.f32 s1, s0
	b label100
.p2align 4
label411:
	add r0, r1, r2, lsl #2
	add r2, r2, #1
	vldr s0, [r0, #0]
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s18
	vadd.f32 s0, s0, s0
	vdiv.f32 s0, s0, s19
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label96
	b label342
.p2align 4
label112:
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
	add r9, r4, r8, lsl #5
	beq label113
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label113:
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
	add r0, r1, r2, lsl #2
	mov r10, #1
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label115
.p2align 4
label65:
	movw r0, #4059
	movt r0, #16585
	vmov s1, r0
	vdiv.f32 s2, s0, s1
	vcvt.s32.f32 s2, s2
	vcvt.f32.s32 s2, s2
	vmul.f32 s1, s2, s1
	vsub.f32 s0, s0, s1
.p2align 4
label66:
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
	mov r8, #0
	add r0, r1, r2, lsl #2
	vmov.f32 s5, s0
	vldr s6, [r0, #0]
	b label68
.p2align 4
label59:
	add r0, r1, r2, lsl #2
	mov r6, #0
	vmov s0, r6
	vstr s0, [r0, #0]
	vmov s0, r2
	vcvt.f32.s32 s3, s0
	ldr r0, [sp, #0]
	cmp r0, r6
	bgt label62
	add r2, r2, #1
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	add r3, r3, #1
	add r1, r4, r3, lsl #5
	vmov s0, r3
	ldr r0, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r0, r3
	bgt label167
	mov r5, #0
	cmp r0, r5
	bgt label79
	b label83
.p2align 4
label49:
	ldr r0, [sp, #4]
	cmp r0, #0
	bgt label141
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label49
	b label54
.p2align 4
label52:
	bl getfloat
	add r0, r6, r7, lsl #2
	add r7, r7, #1
	vstr s0, [r0, #0]
	ldr r0, [sp, #4]
	cmp r0, r7
	bgt label52
	add r4, r4, #1
	ldr r0, [sp, #0]
	cmp r0, r4
	bgt label49
	b label54
label167:
	mov r2, #0
	ldr r0, [sp, #4]
	cmp r0, r2
	bgt label59
	add r3, r3, #1
	add r1, r4, r3, lsl #5
	vmov s0, r3
	ldr r0, [sp, #0]
	vcvt.f32.s32 s4, s0
	cmp r0, r3
	bgt label167
	mov r5, #0
	cmp r0, r5
	bgt label79
	b label83
.p2align 4
label363:
	add r0, r1, r2, lsl #2
	vldr s0, [r0, #0]
	mov r0, #1
	b label104
label92:
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	vpop { s16, s17, s18, s19 }
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label141:
	add r6, r5, r4, lsl #5
	mov r7, #0
	b label52
