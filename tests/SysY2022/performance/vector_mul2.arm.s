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
	sub sp, sp, #20
	bl _sysy_starttime
	mov r0, #0
	movw r7, #:lower16:vectorA
	movt r7, #:upper16:vectorA
	str r7, [sp, #4]
label2:
	ldr r7, [sp, #4]
	mov r2, #1065353216
	vmov s0, r2
	add r1, r7, r0, lsl #2
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
	movw r7, #:lower16:vectorB
	movw r4, #:lower16:Vectortm
	mov r0, #0
	movt r7, #:upper16:vectorB
	movt r4, #:upper16:Vectortm
	str r7, [sp, #0]
	str r4, [sp, #8]
	mov r1, #0
	mov r6, r1
	vmov s0, r1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label123
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r1, r5
	bge label19
	add r5, r1, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label18
label123:
	mov r1, #0
	mov r8, r1
	vmov s0, r1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label202
	add r3, r1, #4
	add r5, r1, #3
	add r6, r1, #2
	add r2, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r1, r4
	bge label86
	add r7, r1, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label82
	b label85
label18:
	add r7, r1, r6
	add r8, r2, r6
	add r9, r4, r6
	mul r7, r7, r8
	mul r8, r8, r9
	add r7, r7, r7, lsr #31
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	add r7, r7, #1
	add r8, r8, #1
	add r7, r1, r7
	add r8, r1, r8
	vmov s1, r7
	ldr r7, [sp, #4]
	vcvt.f32.s32 s1, s1
	add r7, r7, r6, lsl #2
	add r6, r3, r6
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mul r8, r9, r6
	add r8, r8, r8, lsr #31
	vcvt.f32.s32 s1, s1
	asr r8, r8, #1
	add r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r1, r8
	vldr s2, [r7, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r1, r5
	mul r6, r6, r8
	vcvt.f32.s32 s1, s1
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	vdiv.f32 s1, s2, s1
	add r6, r6, #1
	vldr s2, [r7, #12]
	add r6, r1, r6
	vadd.f32 s0, s0, s1
	vmov s1, r6
	mov r6, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label18
label19:
	ldr r4, [sp, #8]
	add r1, r4, r1, lsl #2
	vstr s0, [r1, #0]
	mov r1, r2
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label123
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label19
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label18
label202:
	mov r1, #0
	mov r6, r1
	vmov s0, r1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label208
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r1, r5
	bge label68
	add r5, r1, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label74
	b label77
label208:
	mov r1, #0
	mov r8, r1
	vmov s0, r1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label45
	add r3, r1, #4
	add r5, r1, #3
	add r6, r1, #2
	add r2, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r1, r4
	bge label35
	add r7, r1, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label42
label41:
	add r4, r1, r8
	add r9, r2, r8
	add r11, r6, r8
	mul r4, r4, r9
	add r9, r8, #1
	add r10, r1, r9
	add r4, r4, r4, lsr #31
	mul r10, r10, r11
	asr r4, r4, #1
	add r11, r5, r8
	add r4, r4, #1
	add r10, r10, r10, lsr #31
	add r4, r8, r4
	vmov s1, r4
	asr r10, r10, #1
	ldr r4, [sp, #8]
	add r10, r10, #2
	add r10, r8, r10
	add r4, r4, r8, lsl #2
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r8, #2
	add r10, r1, r10
	mul r10, r10, r11
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	vdiv.f32 s1, s2, s1
	asr r10, r10, #1
	vldr s2, [r4, #8]
	add r10, r10, #2
	add r10, r9, r10
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r8, #3
	add r8, r3, r8
	add r10, r1, r10
	mul r8, r10, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r4, #12]
	add r8, r8, #3
	add r8, r9, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label42
	b label41
label45:
	add r0, r0, #1
	cmp r0, #1000
	bge label46
	mov r1, #0
	mov r6, r1
	vmov s0, r1
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label123
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r1, r5
	bge label19
	add r5, r1, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label18
label15:
	add r3, r6, #1
	add r5, r1, r6
	ldr r7, [sp, #4]
	add r4, r1, r3
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r4, #1
	add r4, r1, r4
	vmov s1, r4
	add r4, r7, r6, lsl #2
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r3, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label154
	mov r6, r3
	b label15
label154:
	mov r6, r3
	ldr r4, [sp, #8]
	add r1, r4, r1, lsl #2
	vstr s0, [r1, #0]
	mov r1, r2
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label123
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label19
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label15
	b label18
label85:
	add r4, r1, r8
	add r9, r2, r8
	add r11, r6, r8
	mul r4, r4, r9
	add r9, r8, #1
	add r10, r1, r9
	add r4, r4, r4, lsr #31
	mul r10, r10, r11
	asr r4, r4, #1
	add r11, r5, r8
	add r4, r4, #1
	add r10, r10, r10, lsr #31
	add r4, r8, r4
	vmov s1, r4
	asr r10, r10, #1
	ldr r4, [sp, #8]
	add r10, r10, #2
	add r10, r8, r10
	add r4, r4, r8, lsl #2
	vcvt.f32.s32 s1, s1
	vldr s2, [r4, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r4, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r8, #2
	add r10, r1, r10
	mul r10, r10, r11
	vcvt.f32.s32 s1, s1
	add r10, r10, r10, lsr #31
	vdiv.f32 s1, s2, s1
	asr r10, r10, #1
	vldr s2, [r4, #8]
	add r10, r10, #2
	add r10, r9, r10
	vadd.f32 s0, s0, s1
	vmov s1, r10
	add r10, r8, #3
	add r8, r3, r8
	add r10, r1, r10
	mul r8, r10, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	vdiv.f32 s1, s2, s1
	asr r8, r8, #1
	vldr s2, [r4, #12]
	add r8, r8, #3
	add r8, r9, r8
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mov r8, r7
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r7, r7, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label82
	b label85
label82:
	add r3, r1, r8
	add r4, r2, r8
	mul r3, r3, r4
	ldr r4, [sp, #8]
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r3, #1
	add r3, r8, r3
	vmov s1, r3
	add r3, r4, r8, lsl #2
	add r8, r8, #1
	vldr s2, [r3, #0]
	movw r3, #34464
	vcvt.f32.s32 s1, s1
	movt r3, #1
	cmp r8, r3
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label86
	b label82
label86:
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
	vstr s0, [r1, #0]
	mov r1, r2
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label202
	add r3, r1, #4
	add r5, r1, #3
	add r6, r1, #2
	add r2, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label86
	add r7, r8, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label82
	b label85
label68:
	ldr r4, [sp, #8]
	add r1, r4, r1, lsl #2
	vstr s0, [r1, #0]
	mov r1, r2
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label208
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label68
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label74
label77:
	add r7, r1, r6
	add r8, r2, r6
	add r9, r4, r6
	mul r7, r7, r8
	mul r8, r8, r9
	add r7, r7, r7, lsr #31
	add r8, r8, r8, lsr #31
	asr r7, r7, #1
	asr r8, r8, #1
	add r7, r7, #1
	add r8, r8, #1
	add r7, r1, r7
	add r8, r1, r8
	vmov s1, r7
	ldr r7, [sp, #0]
	vcvt.f32.s32 s1, s1
	add r7, r7, r6, lsl #2
	add r6, r3, r6
	vldr s2, [r7, #0]
	vdiv.f32 s1, s2, s1
	vldr s2, [r7, #4]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	mul r8, r9, r6
	add r8, r8, r8, lsr #31
	vcvt.f32.s32 s1, s1
	asr r8, r8, #1
	add r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r1, r8
	vldr s2, [r7, #8]
	vadd.f32 s0, s0, s1
	vmov s1, r8
	add r8, r1, r5
	mul r6, r6, r8
	vcvt.f32.s32 s1, s1
	add r6, r6, r6, lsr #31
	asr r6, r6, #1
	vdiv.f32 s1, s2, s1
	add r6, r6, #1
	vldr s2, [r7, #12]
	add r6, r1, r6
	vadd.f32 s0, s0, s1
	vmov s1, r6
	mov r6, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	add r5, r5, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label74
	b label77
label74:
	add r3, r6, #1
	add r5, r1, r6
	ldr r7, [sp, #0]
	add r4, r1, r3
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r4, #1
	add r4, r1, r4
	vmov s1, r4
	add r4, r7, r6, lsl #2
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r3, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label455
	mov r6, r3
	b label74
label455:
	mov r6, r3
	ldr r4, [sp, #8]
	add r1, r4, r1, lsl #2
	vstr s0, [r1, #0]
	mov r1, r2
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label208
	add r3, r1, #3
	add r4, r1, #2
	add r2, r1, #1
	movw r5, #34464
	movt r5, #1
	cmp r6, r5
	bge label68
	add r5, r6, #4
	movw r7, #34464
	movt r7, #1
	cmp r5, r7
	bge label74
	b label77
label35:
	ldr r7, [sp, #4]
	add r1, r7, r1, lsl #2
	vstr s0, [r1, #0]
	mov r1, r2
	movw r2, #34464
	movt r2, #1
	cmp r1, r2
	bge label45
	add r3, r1, #4
	add r5, r1, #3
	add r6, r1, #2
	add r2, r1, #1
	movw r4, #34464
	movt r4, #1
	cmp r8, r4
	bge label35
	add r7, r8, #4
	movw r4, #34464
	movt r4, #1
	cmp r7, r4
	bge label42
	b label41
label42:
	add r3, r1, r8
	add r4, r2, r8
	mul r3, r3, r4
	ldr r4, [sp, #8]
	add r3, r3, r3, lsr #31
	asr r3, r3, #1
	add r3, r3, #1
	add r3, r8, r3
	vmov s1, r3
	add r3, r4, r8, lsl #2
	add r8, r8, #1
	vldr s2, [r3, #0]
	movw r3, #34464
	vcvt.f32.s32 s1, s1
	movt r3, #1
	cmp r8, r3
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	bge label35
	b label42
label46:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label51
label50:
	ldr r7, [sp, #4]
	add r2, r7, r1, lsl #2
	vldr s1, [r2, #0]
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
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
	bge label51
	b label50
label51:
	ldr r7, [sp, #4]
	add r0, r7, r1, lsl #2
	vldr s1, [r0, #0]
	ldr r7, [sp, #0]
	add r0, r7, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r0, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	bge label345
	b label51
label345:
	mov r1, #0
	vmov s1, r1
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label58
label57:
	ldr r7, [sp, #0]
	add r1, r7, r1, lsl #2
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
	bge label58
	b label57
label58:
	ldr r7, [sp, #0]
	add r0, r7, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r0, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	bge label61
	b label58
label61:
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
	beq label393
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
	b label62
label393:
	mov r0, #1065353216
	vmov s1, r0
label65:
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
	add sp, sp, #20
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label62:
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
	beq label65
	b label62
