.arch armv7ve
.data
.bss
.align 4
Vectortm:
	.zero	400000
.align 4
vectorB:
	.zero	400000
.align 4
vectorA:
	.zero	400000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #12
	bl _sysy_starttime
	mov r0, #0
	movw r9, #:lower16:vectorA
	movt r9, #:upper16:vectorA
	str r9, [sp, #4]
label2:
	ldr r9, [sp, #4]
	mov r2, #1065353216
	vmov s0, r2
	add r1, r9, r0, lsl #2
	add r0, r0, #16
	vstr s0, [r1, #0]
	vstr s0, [r1, #4]
	vstr s0, [r1, #8]
	vstr s0, [r1, #12]
	vstr s0, [r1, #16]
	vstr s0, [r1, #20]
	vstr s0, [r1, #24]
	vstr s0, [r1, #28]
	vstr s0, [r1, #32]
	vstr s0, [r1, #36]
	vstr s0, [r1, #40]
	vstr s0, [r1, #44]
	vstr s0, [r1, #48]
	vstr s0, [r1, #52]
	vstr s0, [r1, #56]
	vstr s0, [r1, #60]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	bge label4
	b label2
label4:
	movw r9, #:lower16:vectorB
	movw r0, #:lower16:Vectortm
	mov r1, #0
	movt r9, #:upper16:vectorB
	movt r0, #:upper16:Vectortm
	str r9, [sp, #0]
	mov r3, #0
	mov r8, r3
	vmov s0, r3
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r3, r7
	bge label12
	add r7, r3, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label19
	b label18
label133:
	mov r2, #0
	mov r8, r2
	vmov s0, r2
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label208
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label39
	add r5, r2, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label28
	b label685
label18:
	add r9, r3, r8
	add r10, r2, r8
	add r11, r6, r8
	mul r9, r9, r10
	mul r10, r10, r11
	add r9, r9, r9, lsr #31
	add r10, r10, r10, lsr #31
	asr r9, r9, #1
	asr r10, r10, #1
	add r9, r2, r9
	add r10, r2, r10
	vmov s1, r9
	ldr r9, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r9, r9, r8, lsl #2
	vldr s2, [r9, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r9, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r8
	add r8, r4, r8
	mul r11, r11, r10
	mul r8, r10, r8
	add r11, r11, r11, lsr #31
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r11, r11, #1
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	add r11, r2, r11
	vldr s2, [r9, #8]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r11
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r9, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r7, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label19
	b label18
label12:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label12
	add r7, r8, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label19
	b label18
label19:
	add r4, r3, r8
	add r5, r2, r8
	ldr r9, [sp, #4]
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r2, r4
	vmov s1, r4
	add r4, r9, r8, lsl #2
	add r8, r8, #1
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r8, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label204
	b label19
label204:
	movw r8, #34464
	movt r8, #1
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label12
	add r7, r8, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label19
	b label18
label208:
	mov r3, #0
	mov r8, r3
	vmov s0, r3
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label293
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r3, r7
	bge label89
	add r7, r3, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label95
	b label98
label39:
	ldr r9, [sp, #0]
	add r3, r9, r2, lsl #2
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label208
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	bge label39
	add r5, r8, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label28
	b label685
label293:
	mov r2, #0
	mov r8, r2
	vmov s0, r2
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label50
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label73
	add r5, r2, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label77
	b label678
label50:
	add r1, r1, #1
	cmp r1, #1000
	bge label51
	mov r3, #0
	mov r8, r3
	vmov s0, r3
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r3, r7
	bge label12
	add r7, r3, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label19
	b label18
label98:
	add r9, r3, r8
	add r10, r2, r8
	add r11, r6, r8
	mul r9, r9, r10
	mul r10, r10, r11
	add r9, r9, r9, lsr #31
	add r10, r10, r10, lsr #31
	asr r9, r9, #1
	asr r10, r10, #1
	add r9, r2, r9
	add r10, r2, r10
	vmov s1, r9
	ldr r9, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r9, r9, r8, lsl #2
	vldr s2, [r9, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r9, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r5, r8
	add r8, r4, r8
	mul r11, r11, r10
	mul r8, r10, r8
	add r11, r11, r11, lsr #31
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r11, r11, #1
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	add r11, r2, r11
	vldr s2, [r9, #8]
	add r8, r2, r8
	vadd.f32 s0, s0, s1
	vmov s1, r11
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vldr s2, [r9, #12]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r7, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label95
	b label98
label95:
	add r4, r3, r8
	add r5, r2, r8
	ldr r9, [sp, #0]
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r2, r4
	vmov s1, r4
	add r4, r9, r8, lsl #2
	add r8, r8, #1
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r8, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label539
	b label95
label539:
	movw r8, #34464
	movt r8, #1
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label293
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label89
	add r7, r8, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label95
	b label98
label89:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label293
	add r4, r3, #4
	add r5, r3, #3
	add r6, r3, #2
	add r2, r3, #1
	movw r7, #34464
	movt r7, #1
	cmp r8, r7
	bge label89
	add r7, r8, #4
	movw r9, #34464
	movt r9, #1
	cmp r7, r9
	bge label95
	b label98
label678:
	add r3, r2, #1
	add r4, r2, #2
	add r6, r2, #3
	b label84
label80:
	add r5, r2, r4
	add r6, r3, r4
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r6, r5, #1
	add r5, r4, #1
	add r4, r0, r4, lsl #2
	add r6, r6, r5
	vmov s1, r6
	vldr s2, [r4, #0]
	movw r4, #34464
	movt r4, #1
	cmp r5, r4
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label458
	mov r4, r5
	b label80
label458:
	movw r8, #34464
	movt r8, #1
	ldr r9, [sp, #4]
	add r3, r9, r2, lsl #2
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label50
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	bge label73
	add r5, r8, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label77
	b label678
label84:
	add r7, r2, r8
	add r9, r3, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r7, r7, r9
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r7, r10
	add r10, r4, r8
	vmov s1, r7
	mul r9, r9, r10
	add r7, r0, r8, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r7, #0]
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	add r9, r9, r11
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	add r8, r8, #3
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r8, r10, r8
	vldr s2, [r7, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r2, r5
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r5, r8
	vldr s2, [r7, #12]
	add r7, r5, #4
	vadd.f32 s0, s0, s1
	vmov s1, r8
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label507
	mov r8, r5
	mov r5, r7
	b label84
label507:
	mov r8, r5
	add r3, r2, #1
	mov r4, r5
	b label80
label73:
	ldr r9, [sp, #4]
	add r3, r9, r2, lsl #2
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label50
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	bge label73
	add r5, r8, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label77
	b label678
label28:
	add r3, r2, #1
	mov r4, r8
label31:
	add r5, r2, r4
	add r6, r3, r4
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r6, r5, #1
	add r5, r4, #1
	add r4, r0, r4, lsl #2
	add r6, r6, r5
	vmov s1, r6
	vldr s2, [r4, #0]
	movw r4, #34464
	movt r4, #1
	cmp r5, r4
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label236
	mov r4, r5
	b label31
label236:
	movw r8, #34464
	movt r8, #1
	ldr r9, [sp, #0]
	add r3, r9, r2, lsl #2
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label208
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	bge label39
	add r5, r8, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label28
	b label685
label77:
	add r3, r2, #1
	mov r4, r8
	b label80
label685:
	add r3, r2, #1
	add r4, r2, #2
	add r6, r2, #3
label35:
	add r7, r2, r8
	add r9, r3, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r7, r7, r9
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r7, r10
	add r10, r4, r8
	vmov s1, r7
	mul r9, r9, r10
	add r7, r0, r8, lsl #2
	add r9, r9, r9, lsr #31
	vldr s2, [r7, #0]
	vcvt.f32.s32 s1, s1
	asr r9, r9, #1
	add r9, r9, r11
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r6, r8
	add r8, r8, #3
	mul r10, r10, r9
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	asr r10, r10, #1
	vdiv.f32 s1, s2, s1
	add r8, r10, r8
	vldr s2, [r7, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r2, r5
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r5, r8
	vldr s2, [r7, #12]
	add r7, r5, #4
	vadd.f32 s0, s0, s1
	vmov s1, r8
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label285
	mov r8, r5
	mov r5, r7
	b label35
label285:
	mov r8, r5
	add r3, r2, #1
	mov r4, r5
	b label31
label51:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label56
	b label55
label56:
	ldr r9, [sp, #4]
	add r0, r9, r1, lsl #2
	vldr s1, [r0, #0]
	ldr r9, [sp, #0]
	add r0, r9, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r0, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label350
	b label56
label350:
	mov r1, #0
	vmov s1, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label63
label62:
	ldr r9, [sp, #0]
	add r1, r9, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label63
	b label62
label55:
	ldr r9, [sp, #4]
	add r2, r9, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r9, [sp, #0]
	add r1, r9, r1, lsl #2
	vldr s2, [r1, #0]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #4]
	vldr s2, [r1, #4]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #8]
	vldr s2, [r1, #8]
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	vldr s1, [r2, #12]
	vldr s2, [r1, #12]
	mov r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	add r0, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label56
	b label55
label63:
	ldr r9, [sp, #0]
	add r0, r9, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r0, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label66
	b label63
label66:
	vdiv.f32 s0, s0, s1
	mov r0, #1065353216
	movw r1, #14269
	vmov s1, r0
	movt r1, #46470
	movw r0, #14269
	movt r0, #13702
	vmov s2, r0
	mov r0, #0
	vsub.f32 s1, s1, s0
	vcmp.f32 s1, s2
	vmov s2, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s1, s2
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label398
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label69
label398:
	mov r0, #1065353216
	vmov s1, r0
	b label67
label69:
	vadd.f32 s1, s1, s2
	mov r0, #1056964608
	movw r1, #14269
	vmov s2, r0
	movt r1, #46470
	movw r0, #14269
	movt r0, #13702
	vmov s4, r0
	mov r0, #0
	vmul.f32 s1, s1, s2
	vdiv.f32 s2, s0, s1
	vsub.f32 s3, s1, s2
	vcmp.f32 s3, s4
	vmov s4, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwgt r0, #1
	vcmp.f32 s3, s4
	vmrs APSR_nzcv, FPSCR
	movwmi r1, #1
	orrs r0, r0, r1
	beq label67
	b label69
label67:
	mov r0, #1065353216
	movw r1, #14269
	vmov s0, r0
	movt r1, #46470
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s0, s1, s0
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	and r0, r0, r1
	bl putint
	mov r0, #10
	bl putch
	add sp, sp, #12
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
