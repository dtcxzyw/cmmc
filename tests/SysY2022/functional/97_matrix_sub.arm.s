.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, lr }
	sub sp, sp, #56
	mov r4, #0
	mov r8, sp
	add r6, sp, #24
	vmov s0, r4
	add r5, sp, #40
	mov r7, r4
	vstr s0, [sp, #0]
	vstr s0, [sp, #24]
	vstr s0, [sp, #40]
	vstr s0, [sp, #4]
	vstr s0, [sp, #28]
	vstr s0, [sp, #44]
	vstr s0, [sp, #8]
	vstr s0, [sp, #32]
	vstr s0, [sp, #48]
label2:
	add r0, r8, r7, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r7, r7, #1
	cmp r7, #3
	blt label2
	mov r0, #10
	bl putch
	mov r7, r4
label5:
	add r0, r6, r7, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r7, r7, #1
	cmp r7, #3
	blt label5
	mov r0, #10
	bl putch
	mov r6, r4
label8:
	add r0, r5, r6, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r6, r6, #1
	cmp r6, #3
	blt label8
	mov r0, #10
	bl putch
	add sp, sp, #56
	mov r0, r4
	pop { r4, r5, r6, r7, r8, pc }
