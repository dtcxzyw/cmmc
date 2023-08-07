.arch armv7ve
.data
.bss
.align 8
y:
	.zero	8192
.align 8
x:
	.zero	8192
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r4, r0
	mov r0, #22
	bl _sysy_starttime
	mov r5, #0
	mov r3, #1065353216
	movw r2, #:lower16:x
	movt r2, #:upper16:x
	movw r0, #:lower16:y
	movt r0, #:upper16:y
	vmov s2, r5
	vmov s0, r3
	sub r1, r4, #4
	mov r6, r5
	mov r8, r5
	vmov.f32 s1, s2
label2:
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	bge label39
.p2align 4
label8:
	movw r7, #26215
	movt r7, #26214
	smmul r7, r6, r7
	asr r9, r7, #2
	add r7, r9, r7, lsr #31
	add r7, r7, r7, lsl #2
	sub r7, r6, r7, lsl #1
	cmp r7, #0
	movw r7, #52429
	movt r7, #15948
	vmov s3, r7
	movw r7, #52429
	movt r7, #15820
	vadd.f32 s0, s0, s3
	vmov s3, r3
	vmovne.f32 s0, s3
	vmov s3, r7
	vadd.f32 s2, s2, s3
	vmov s3, r5
	vmovne.f32 s2, s3
	cmp r4, r8
	ble label73
	add r7, r8, #4
	cmp r4, r7
	ble label78
	add r7, r2, r8, lsl #2
	b label15
.p2align 4
label145:
	vadd.f32 s1, s1, s3
	add r6, r6, #1
	mov r8, r7
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	blt label8
label39:
	movw r0, #39872
	movt r0, #22690
	movw r1, #14269
	movt r1, #46470
	vmov s0, r0
	movw r0, #14269
	movt r0, #13702
	vsub.f32 s0, s1, s0
	vmov s1, r0
	mov r0, #0
	vcmp.f32 s0, s1
	vmov s1, r1
	vmrs APSR_nzcv, FPSCR
	movwls r0, #1
	vcmp.f32 s0, s1
	mov r4, r0
	vmrs APSR_nzcv, FPSCR
	orrge r4, r0, #1
	mov r0, #39
	bl _sysy_stoptime
	cmp r4, #0
	beq label40
	mov r0, r5
	bl putint
	mov r0, r5
	b label42
.p2align 4
label15:
	vmov s3, r8
	add r9, r0, r8, lsl #2
	add r10, r8, #1
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #0]
	vstr s3, [r9, #0]
	vmov s3, r10
	add r10, r8, #2
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #4]
	vstr s3, [r9, #4]
	vmov s3, r10
	add r10, r8, #3
	add r8, r8, #4
	cmp r1, r8
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #8]
	vstr s3, [r9, #8]
	vmov s3, r10
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #12]
	vstr s3, [r9, #12]
	ble label119
	add r7, r7, #16
	b label15
.p2align 4
label10:
	vmov s3, r8
	add r9, r0, r8, lsl #2
	add r8, r8, #1
	cmp r4, r8
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #0]
	vstr s3, [r9, #0]
	bgt label13
	b label88
label222:
	vmov s3, r5
	add r6, r6, #1
	mov r8, r7
	vadd.f32 s1, s1, s3
	b label2
.p2align 4
label13:
	add r7, r7, #4
	b label10
.p2align 4
label119:
	add r7, r2, r8, lsl #2
	vmov s3, r8
	add r9, r0, r8, lsl #2
	add r8, r8, #1
	cmp r4, r8
	vcvt.f32.s32 s3, s3
	vadd.f32 s4, s2, s3
	vadd.f32 s3, s0, s3
	vstr s4, [r7, #0]
	vstr s3, [r9, #0]
	bgt label13
	movs r7, r4
	bgt label23
	b label222
.p2align 4
label88:
	movs r7, r4
	ble label222
.p2align 4
label23:
	cmp r4, #4
	ble label134
	vmov s3, r5
	mov r8, r2
	mov r9, r5
.p2align 4
label31:
	vldr s4, [r8, #0]
	add r10, r0, r9, lsl #2
	add r9, r9, #4
	vldr s5, [r10, #0]
	cmp r1, r9
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vldr s4, [r8, #4]
	vldr s5, [r10, #4]
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vldr s4, [r8, #8]
	vldr s5, [r10, #8]
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	vldr s4, [r8, #12]
	vldr s5, [r10, #12]
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	ble label179
	add r8, r8, #16
	b label31
.p2align 4
label24:
	vldr s4, [r8, #0]
	add r10, r0, r9, lsl #2
	add r9, r9, #1
	vldr s5, [r10, #0]
	cmp r4, r9
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	ble label145
.p2align 4
label28:
	add r8, r8, #4
	b label24
.p2align 4
label179:
	add r8, r2, r9, lsl #2
	add r10, r0, r9, lsl #2
	vldr s4, [r8, #0]
	add r9, r9, #1
	vldr s5, [r10, #0]
	cmp r4, r9
	vmul.f32 s4, s4, s5
	vadd.f32 s3, s3, s4
	bgt label28
	vadd.f32 s1, s1, s3
	add r6, r6, #1
	mov r8, r7
	movw r7, #41248
	movt r7, #7
	cmp r6, r7
	blt label8
	b label39
label73:
	mov r7, r8
	cmp r4, #0
	bgt label23
	b label222
label40:
	mov r0, #1
	bl putint
	mov r0, #1
label42:
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label134:
	vmov s3, r5
	mov r8, r2
	mov r9, r5
	b label24
label78:
	add r7, r2, r8, lsl #2
	b label10
