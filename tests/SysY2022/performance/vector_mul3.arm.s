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
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	mov r0, #62
	sub sp, sp, #12
	bl _sysy_starttime
	mov r1, #0
	movw r8, #:lower16:vectorA
	movt r8, #:upper16:vectorA
	str r8, [sp, #4]
label2:
.p2align 4
	ldr r8, [sp, #4]
	mov r2, #1065353216
	vmov s0, r2
	add r0, r8, r1, lsl #2
	add r1, r1, #16
	vstr s0, [r0, #0]
	vstr s0, [r0, #4]
	vstr s0, [r0, #8]
	vstr s0, [r0, #12]
	vstr s0, [r0, #16]
	vstr s0, [r0, #20]
	vstr s0, [r0, #24]
	vstr s0, [r0, #28]
	vstr s0, [r0, #32]
	vstr s0, [r0, #36]
	vstr s0, [r0, #40]
	vstr s0, [r0, #44]
	vstr s0, [r0, #48]
	vstr s0, [r0, #52]
	vstr s0, [r0, #56]
	vstr s0, [r0, #60]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	blt label2
	movw r8, #:lower16:vectorB
	movw r0, #:lower16:Vectortm
	mov r1, #0
	movt r8, #:upper16:vectorB
	movt r0, #:upper16:Vectortm
	str r8, [sp, #0]
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label11
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label26
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label88
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label11:
.p2align 4
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	blt label15
	mov r4, r7
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label11
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label26
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label88
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label15:
.p2align 4
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label19
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
	b label15
label19:
.p2align 4
	add r4, r3, r7
	add r5, r2, r7
	ldr r8, [sp, #4]
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r2, r4
	vmov s1, r4
	add r4, r8, r7, lsl #2
	add r7, r7, #1
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r7, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label19
	movw r4, #34464
	movt r4, #1
	add r3, r0, r3, lsl #2
	mov r7, r4
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label11
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label26
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label88
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
label67:
	mov r0, #76
	bl _sysy_stoptime
	mov r1, #0
	vmov s0, r1
label68:
.p2align 4
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label71
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
	b label68
label88:
.p2align 4
	add r4, r3, #3
	add r5, r3, #2
	add r2, r3, #1
	movw r6, #34464
	movt r6, #1
	cmp r7, r6
	blt label92
	mov r4, r7
	add r3, r0, r3, lsl #2
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label88
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label92:
.p2align 4
	add r6, r7, #4
	movw r8, #34464
	movt r8, #1
	cmp r6, r8
	bge label95
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
	b label92
label26:
.p2align 4
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label27
	mov r3, r8
	ldr r8, [sp, #0]
	add r4, r8, r2, lsl #2
	mov r8, r3
	add r2, r2, #1
	vstr s0, [r4, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label26
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label88
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label223:
.p2align 4
	add r4, r2, #1
	add r5, r2, #2
	add r6, r2, #3
	b label35
label31:
.p2align 4
	add r4, r2, r5
	add r6, r3, r5
	mul r4, r4, r6
	add r4, r4, r4, lsr #31
	asr r6, r4, #1
	add r4, r5, #1
	add r5, r0, r5, lsl #2
	add r6, r6, r4
	vmov s1, r6
	vldr s2, [r5, #0]
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label240
	movw r3, #34464
	movt r3, #1
	ldr r8, [sp, #0]
	add r4, r8, r2, lsl #2
	mov r8, r3
	add r2, r2, #1
	vstr s0, [r4, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label26
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label88
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label240:
.p2align 4
	mov r5, r4
	b label31
label35:
.p2align 4
	add r7, r2, r8
	add r9, r4, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r7, r7, r9
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r7, r10
	add r10, r5, r8
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
	add r8, r2, r3
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r3, r8
	vldr s2, [r7, #12]
	add r7, r3, #4
	vadd.f32 s0, s0, s1
	vmov s1, r8
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label289
	mov r5, r3
	add r3, r2, #1
	b label31
label289:
.p2align 4
	mov r8, r3
	mov r3, r7
	b label35
label95:
.p2align 4
	add r4, r3, r7
	add r5, r2, r7
	ldr r8, [sp, #0]
	mul r4, r4, r5
	add r4, r4, r4, lsr #31
	asr r4, r4, #1
	add r4, r2, r4
	vmov s1, r4
	add r4, r8, r7, lsl #2
	add r7, r7, #1
	vldr s2, [r4, #0]
	movw r4, #34464
	vcvt.f32.s32 s1, s1
	movt r4, #1
	cmp r7, r4
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label95
	movw r4, #34464
	movt r4, #1
	add r3, r0, r3, lsl #2
	mov r7, r4
	vstr s0, [r3, #0]
	mov r3, r2
	movw r2, #34464
	movt r2, #1
	cmp r3, r2
	blt label88
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label50:
.p2align 4
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label54
	mov r3, r8
	ldr r8, [sp, #4]
	add r4, r8, r2, lsl #2
	mov r8, r3
	add r2, r2, #1
	vstr s0, [r4, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label661:
.p2align 4
	mov r5, r8
	add r3, r2, #1
	b label63
label54:
.p2align 4
	add r3, r8, #4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	bge label661
	add r4, r2, #1
	add r5, r2, #2
	add r6, r2, #3
label56:
.p2align 4
	add r7, r2, r8
	add r9, r4, r8
	add r10, r8, #1
	add r11, r8, #2
	mul r7, r7, r9
	add r7, r7, r7, lsr #31
	asr r7, r7, #1
	add r7, r7, r10
	add r10, r5, r8
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
	add r8, r2, r3
	mul r8, r9, r8
	vcvt.f32.s32 s1, s1
	add r8, r8, r8, lsr #31
	asr r8, r8, #1
	vdiv.f32 s1, s2, s1
	add r8, r3, r8
	vldr s2, [r7, #12]
	add r7, r3, #4
	vadd.f32 s0, s0, s1
	vmov s1, r8
	movw r8, #34464
	movt r8, #1
	cmp r7, r8
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label364
	mov r5, r3
	add r3, r2, #1
	b label63
label364:
.p2align 4
	mov r8, r3
	mov r3, r7
	b label56
label63:
.p2align 4
	add r4, r2, r5
	add r6, r3, r5
	mul r4, r4, r6
	add r4, r4, r4, lsr #31
	asr r6, r4, #1
	add r4, r5, #1
	add r5, r0, r5, lsl #2
	add r6, r6, r4
	vmov s1, r6
	vldr s2, [r5, #0]
	movw r5, #34464
	movt r5, #1
	cmp r4, r5
	vcvt.f32.s32 s1, s1
	vdiv.f32 s1, s2, s1
	vadd.f32 s0, s0, s1
	blt label382
	movw r3, #34464
	movt r3, #1
	ldr r8, [sp, #4]
	add r4, r8, r2, lsl #2
	mov r8, r3
	add r2, r2, #1
	vstr s0, [r4, #0]
	movw r3, #34464
	movt r3, #1
	cmp r2, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label382:
.p2align 4
	mov r5, r4
	b label63
label27:
.p2align 4
	add r3, r8, #4
	movw r4, #34464
	movt r4, #1
	cmp r3, r4
	blt label223
	mov r5, r8
	add r3, r2, #1
	b label31
label5:
.p2align 4
	mov r7, #0
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label11
	mov r8, #0
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label26
	mov r3, r7
	vmov s0, r7
	movw r2, #34464
	movt r2, #1
	cmp r7, r2
	blt label88
	mov r2, r8
	vmov s0, r8
	movw r3, #34464
	movt r3, #1
	cmp r8, r3
	blt label50
	add r1, r1, #1
	cmp r1, #1000
	blt label5
	b label67
label71:
	ldr r8, [sp, #4]
	add r0, r8, r1, lsl #2
	vldr s1, [r0, #0]
	ldr r8, [sp, #0]
	add r0, r8, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r0, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	vmul.f32 s1, s1, s2
	vadd.f32 s0, s0, s1
	blt label71
	mov r1, #0
	vmov s1, r1
label74:
.p2align 4
	add r0, r1, #4
	movw r2, #34464
	movt r2, #1
	cmp r0, r2
	bge label78
	ldr r8, [sp, #0]
	add r1, r8, r1, lsl #2
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
	b label74
label78:
	ldr r8, [sp, #0]
	add r0, r8, r1, lsl #2
	add r1, r1, #1
	vldr s2, [r0, #0]
	movw r0, #34464
	movt r0, #1
	cmp r1, r0
	vmul.f32 s2, s2, s2
	vadd.f32 s1, s1, s2
	blt label78
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
	bne label455
	mov r0, #1065353216
	vmov s1, r0
	b label85
label455:
	mov r0, #1065353216
	vmov.f32 s2, s0
	vmov s1, r0
label82:
.p2align 4
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
	bne label82
label85:
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
