.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	sub sp, sp, #40
	mov r0, #111
	mov r4, sp
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #111
	bl putch
	mov r0, #107
	bl putch
	mov r0, #10
	bl putch
	mov r0, #1065353216
	mov r6, #0
	vmov s0, r0
	mov r0, #1073741824
	vstr s0, [sp, #0]
	vmov s0, r0
	vstr s0, [r4, #4]
	vmov s0, r6
	vstr s0, [r4, #8]
	vstr s0, [r4, #12]
	vstr s0, [r4, #16]
	vstr s0, [r4, #20]
	vstr s0, [r4, #24]
	vstr s0, [r4, #28]
	vstr s0, [r4, #32]
	vstr s0, [r4, #36]
	mov r0, r4
	bl getfarray
	mov r7, #1
	mov r5, r0
label2:
	bl getfloat
	movw r1, #4059
	vcvt.s32.f32 s1, s0
	movt r1, #16457
	vcvt.f32.s32 s2, s1
	vmov r0, s1
	vmov s1, r1
	mul r0, r0, r0
	vmul.f32 s3, s2, s1
	vmul.f32 s2, s3, s2
	vmov s3, r0
	mov r0, #1056964608
	vcvt.f32.s32 s3, s3
	vmul.f32 s3, s3, s1
	vmul.f32 s1, s0, s1
	vadd.f32 s2, s2, s3
	vmul.f32 s1, s1, s0
	vmov s3, r0
	add r0, r4, r6, lsl #2
	vmul.f32 s2, s2, s3
	vcvt.s32.f32 s2, s2
	vmov r8, s2
	vldr s2, [r0, #0]
	vadd.f32 s0, s2, s0
	vstr s0, [r0, #0]
	vmov.f32 s0, s1
	bl putfloat
	mov r0, #32
	bl putch
	mov r0, r8
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	movw r0, #0
	vmov s0, r7
	movt r0, #16672
	vmov s1, r0
	movw r0, #51712
	movt r0, #15258
	vcvt.f32.s32 s0, s0
	vmul.f32 s0, s0, s1
	vcvt.s32.f32 s0, s0
	vmov r7, s0
	cmp r7, r0
	bge label5
	b label2
label5:
	mov r0, r5
	mov r1, r4
	bl putfarray
	add sp, sp, #40
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
