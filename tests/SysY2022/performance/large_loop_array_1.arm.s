.arch armv7ve
.data
.bss
.align 4
y:
	.zero	8192
.align 4
x:
	.zero	8192
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, lr }
	vpush { s16 }
	bl getint
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	mov r2, #1065353216
	mov r3, #0
	movw r1, #:lower16:y
	movw r0, #:lower16:x
	vmov s0, r2
	vmov s16, r3
	movt r1, #:upper16:y
	movt r0, #:upper16:x
	mov r2, r3
	vmov.f32 s1, s16
	movw r5, #41248
	movt r5, #7
	cmp r3, r5
	bge label8
.p2align 4
label13:
	movw r5, #26215
	movt r5, #26214
	smmul r5, r2, r5
	asr r6, r5, #2
	add r5, r6, r5, lsr #31
	add r5, r5, r5, lsl #2
	sub r5, r2, r5, lsl #1
	cmp r5, #0
	movw r5, #52429
	movt r5, #15948
	vmov s2, r5
	mov r5, #1065353216
	vadd.f32 s0, s0, s2
	vmov s2, r5
	movw r5, #52429
	movt r5, #15820
	vmovne.f32 s0, s2
	vmov s2, r5
	mov r5, #0
	vadd.f32 s1, s1, s2
	vmov s2, r5
	vmovne.f32 s1, s2
	cmp r4, r3
	bgt label14
	cmp r4, #0
	bgt label23
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r5, #41248
	movt r5, #7
	cmp r2, r5
	blt label13
	b label8
.p2align 4
label24:
	add r6, r0, r5, lsl #2
	add r7, r1, r5, lsl #2
	vldr s3, [r6, #0]
	vldr s4, [r7, #0]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r6, #4]
	vldr s4, [r7, #4]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r6, #8]
	vldr s4, [r7, #8]
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	vldr s3, [r6, #12]
	add r6, r5, #8
	vldr s4, [r7, #12]
	cmp r4, r6
	add r5, r5, #4
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label24
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	add r5, r5, #1
	vldr s4, [r6, #0]
	cmp r4, r5
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label27
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r5, #41248
	movt r5, #7
	cmp r2, r5
	blt label13
	b label8
.p2align 4
label27:
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	add r5, r5, #1
	vldr s4, [r6, #0]
	cmp r4, r5
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label27
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r5, #41248
	movt r5, #7
	cmp r2, r5
	blt label13
	b label8
.p2align 4
label14:
	add r5, r3, #4
	cmp r4, r5
	bgt label15
.p2align 4
label17:
	vmov s2, r3
	add r5, r0, r3, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r5, #0]
	add r5, r1, r3, lsl #2
	add r3, r3, #1
	vstr s2, [r5, #0]
	cmp r4, r3
	bgt label17
	movs r3, r4
	bgt label23
	mov r5, #0
	vmov s2, r5
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r5, #41248
	movt r5, #7
	cmp r2, r5
	blt label13
	b label8
.p2align 4
label23:
	cmp r4, #4
	bgt label132
	mov r5, #0
	vmov s2, r5
	add r6, r0, r5, lsl #2
	vldr s3, [r6, #0]
	add r6, r1, r5, lsl #2
	add r5, r5, #1
	vldr s4, [r6, #0]
	cmp r4, r5
	vmul.f32 s3, s3, s4
	vadd.f32 s2, s2, s3
	bgt label27
	vadd.f32 s16, s16, s2
	add r2, r2, #1
	movw r5, #41248
	movt r5, #7
	cmp r2, r5
	blt label13
	b label8
.p2align 4
label132:
	mov r5, #0
	vmov s2, r5
	b label24
.p2align 4
label15:
	vmov s2, r3
	add r5, r0, r3, lsl #2
	add r7, r3, #1
	add r6, r1, r3, lsl #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r5, #0]
	vstr s2, [r6, #0]
	vmov s2, r7
	add r7, r3, #2
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r5, #4]
	vstr s2, [r6, #4]
	vmov s2, r7
	add r7, r3, #3
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r5, #8]
	vstr s2, [r6, #8]
	vmov s2, r7
	vcvt.f32.s32 s2, s2
	vadd.f32 s3, s1, s2
	vadd.f32 s2, s0, s2
	vstr s3, [r5, #12]
	add r5, r3, #8
	vstr s2, [r6, #12]
	cmp r4, r5
	add r3, r3, #4
	bgt label15
	b label17
label8:
	mov r0, #39
	bl _sysy_stoptime
	movw r0, #39872
	movw r1, #14269
	movt r0, #22690
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vmov s1, r0
	mov r0, #0
	vsub.f32 s0, s16, s0
	vcmp.f32 s0, s1
	vmov s1, r1
	mov r1, #0
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	vmrs APSR_nzcv, FPSCR
	movwge r1, #1
	orrs r0, r0, r1
	bne label12
	mov r0, #1
	bl putint
	mov r0, #1
label10:
	vpop { s16 }
	pop { r4, r5, r6, r7, pc }
label12:
	mov r0, #0
	bl putint
	mov r0, #0
	b label10
