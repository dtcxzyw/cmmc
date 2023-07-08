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
	movw r8, #:lower16:vectorA
	movt r8, #:upper16:vectorA
	str r8, [sp, #4]
label2:
	ldr r8, [sp, #4]
	mov r2, #1065353216
	vmov s0, r2
	add r1, r8, r0, lsl #2
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
	movw r8, #:lower16:vectorB
	movw r0, #:lower16:Vectortm
	mov r1, #0
	movt r8, #:upper16:vectorB
	movt r0, #:upper16:Vectortm
	str r8, [sp, #0]
	mov r3, #0
	mov r7, r3
	vmov s0, r3
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r3, r6
	bge label12
	add r6, r3, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label149
	b label18
label133:
	mov r2, #0
	mov r8, r2
	vmov s0, r2
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label212
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label218
	add r5, r2, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label223
label690:
	add r3, r2, #1
	add r4, r2, #2
	add r6, r2, #3
	b label29
label149:
	mov r4, r7
	b label19
label212:
	mov r3, #0
	mov r7, r3
	vmov s0, r3
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label297
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r3, r6
	bge label89
	add r6, r3, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label526
	b label95
label18:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label149
	b label18
label19:
	add r5, r3, r4
	add r6, r2, r4
	ldr r8, [sp, #4]
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	add r5, r8, r4, lsl #2
	add r4, r4, #1
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label208
	b label19
label208:
	mov r7, r4
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label12
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label149
	b label18
label297:
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
	bge label437
	add r5, r2, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label74
	b label683
label50:
	add r1, r1, #1
	cmp r1, #1000
	bge label51
	mov r3, #0
	mov r7, r3
	vmov s0, r3
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r3, r6
	bge label12
	add r6, r3, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label149
	b label18
label526:
	mov r4, r7
label96:
	add r5, r3, r4
	add r6, r2, r4
	ldr r8, [sp, #0]
	mul r5, r5, r6
	add r5, r5, r5, lsr #31
	asr r5, r5, #1
	add r5, r2, r5
	vmov s1, r5
	add r5, r8, r4, lsl #2
	add r4, r4, #1
	vldr s2, [r5, #0]
	movw r5, #34464
	vcvt.f32.s32 s1, s1
	movt r5, #1
	cmp r4, r5
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label585
	b label96
label585:
	mov r7, r4
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label297
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label89
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label526
	b label95
label12:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label133
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label12
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label149
	b label18
label223:
	add r3, r2, #1
	mov r4, r8
	b label36
label29:
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
	bge label272
	mov r8, r5
	mov r5, r7
	b label29
label272:
	mov r8, r5
	b label223
label36:
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
	bge label39
	mov r4, r5
	b label36
label89:
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	bge label297
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	bge label89
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label526
label95:
	add r8, r3, r7
	add r9, r2, r7
	add r10, r7, #1
	mul r8, r8, r9
	add r10, r2, r10
	mul r9, r9, r10
	add r8, r8, r8, lsr #31
	add r10, r5, r7
	add r9, r9, r9, lsr #31
	asr r8, r8, #1
	add r8, r2, r8
	asr r9, r9, #1
	vmov s1, r8
	add r9, r2, r9
	ldr r8, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r8, r8, r7, lsl #2
	vldr s2, [r8, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r8, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #2
	add r9, r2, r9
	mul r9, r9, r10
	vcvt.f32.s32 s1, s1
	add r9, r9, r9, lsr #31
	vdiv.f32 s1, s2, s1
	asr r9, r9, #1
	vldr s2, [r8, #8]
	add r9, r2, r9
	vadd.f32 s0, s0, s1
	vmov s1, r9
	add r9, r7, #3
	add r7, r4, r7
	add r9, r2, r9
	mul r7, r9, r7
	vcvt.f32.s32 s1, s1
	add r7, r7, r7, lsr #31
	vdiv.f32 s1, s2, s1
	asr r7, r7, #1
	vldr s2, [r8, #12]
	add r7, r2, r7
	vadd.f32 s0, s0, s1
	vmov s1, r7
	mov r7, r6
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r6, r6, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label526
	b label95
label218:
	mov r5, r8
	ldr r8, [sp, #0]
	add r3, r8, r2, lsl #2
	mov r8, r5
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label212
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label218
	add r5, r5, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label223
	b label690
label39:
	ldr r8, [sp, #0]
	add r3, r8, r2, lsl #2
	mov r8, r5
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label212
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label218
	add r5, r5, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label223
	b label690
label74:
	add r3, r2, #1
	mov r4, r8
label77:
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
	bge label85
	mov r4, r5
	b label77
label85:
	ldr r8, [sp, #4]
	add r3, r8, r2, lsl #2
	mov r8, r5
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label50
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label437
	add r5, r5, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label74
label683:
	add r3, r2, #1
	add r4, r2, #2
	add r6, r2, #3
	b label81
label437:
	mov r5, r8
	ldr r8, [sp, #4]
	add r3, r8, r2, lsl #2
	mov r8, r5
	add r2, r2, #1
	vstr s0, [r3, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	bge label50
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label437
	add r5, r5, #4
	movw r3, #34464
	movt r3, #1
	cmp r5, r3
	bge label74
	b label683
label81:
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
	bge label508
	mov r8, r5
	mov r5, r7
	b label81
label508:
	mov r8, r5
	add r3, r2, #1
	mov r4, r5
	b label77
label51:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label315
	b label71
label315:
	mov r0, r1
label55:
	ldr r8, [sp, #4]
	add r1, r8, r0, lsl #2
	vldr s1, [r1, #0]
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label328
	b label55
label328:
	mov r0, #0
	vmov s1, r0
	add r1, r0, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label61
	b label70
label71:
	ldr r8, [sp, #4]
	add r2, r8, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	bge label315
	b label71
label61:
	ldr r8, [sp, #0]
	add r1, r8, r0, lsl #2
	add r0, r0, #1
	vldr s2, [r1, #0]
	movw r1, #34464
	movt r1, #1
	cmp r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label64
	b label61
label64:
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
	beq label359
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label65
label359:
	mov r0, #1065353216
	vmov s1, r0
	b label68
label65:
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
	beq label68
	b label65
label68:
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
label70:
	ldr r8, [sp, #0]
	add r0, r8, r0, lsl #2
	vldr s2, [r0, #0]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #4]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #8]
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	vldr s2, [r0, #12]
	mov r0, r1
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	add r1, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label61
	b label70
