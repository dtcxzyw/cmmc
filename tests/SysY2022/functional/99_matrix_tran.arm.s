.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[48] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, lr }
	sub sp, sp, #56
	mov r4, #0
	mov r0, #1065353216
	mov r6, sp
	vmov s2, r4
	add r7, sp, #24
	add r5, sp, #40
	vmov s0, r0
	mov r8, r4
	mov r0, #1073741824
	vmov s1, r0
	vstr s0, [sp, #32]
	vstr s1, [sp, #44]
	vstr s2, [sp, #4]
	vstr s2, [sp, #8]
	vstr s0, [sp, #24]
	vstr s1, [sp, #40]
	vstr s0, [sp, #28]
	vstr s1, [sp, #48]
	vstr s2, [sp, #0]
label2:
	vldr s0, [r6, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r8, r8, #1
	cmp r8, #3
	bge label5
	add r6, r6, #4
	b label2
label5:
	mov r0, #10
	bl putch
	mov r6, r7
	mov r7, r4
label6:
	vldr s0, [r6, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r7, r7, #1
	cmp r7, #3
	bge label10
	add r6, r6, #4
	b label6
label10:
	mov r0, #10
	bl putch
	mov r6, r4
label11:
	vldr s0, [r5, #0]
	vcvt.s32.f32 s0, s0
	vmov r0, s0
	bl putint
	add r6, r6, #1
	cmp r6, #3
	bge label15
	add r5, r5, #4
	b label11
label15:
	mov r0, #10
	bl putch
	add sp, sp, #56
	mov r0, r4
	pop { r4, r5, r6, r7, r8, pc }
