.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #60
	mov r0, #1065353216
	mov r6, #0
	add r7, sp, #32
	vmov s0, r0
	add r5, sp, #16
	mov r4, sp
	vmov s2, r6
	mov r0, #1073741824
	vmov s1, r0
	vstr s0, [r5, #8]
	vstr s1, [r4, #4]
	vstr s2, [r7, #4]
	vstr s2, [r7, #8]
	vstr s0, [sp, #16]
	vstr s1, [sp, #0]
	vstr s0, [r5, #4]
	vstr s1, [r4, #8]
	vstr s2, [sp, #32]
label2:
	add r0, r7, r6, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r6, r6, #1
	cmp r6, #3
	blt label2
	mov r0, #10
	bl putch
	mov r6, #0
label5:
	add r0, r5, r6, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r6, r6, #1
	cmp r6, #3
	blt label5
	mov r0, #10
	bl putch
	mov r5, #0
label8:
	add r0, r4, r5, lsl #2
	vldr s0, [r0, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r5, r5, #1
	cmp r5, #3
	blt label8
	mov r0, #10
	bl putch
	add sp, sp, #60
	mov r0, #0
	pop { r4, r5, r6, r7, pc }
