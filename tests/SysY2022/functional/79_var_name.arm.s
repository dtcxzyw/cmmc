.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #84
	mov r1, #1
	mov r6, #0
	mov r5, #2
	str r1, [sp, #0]
	mov r0, sp
	str r5, [sp, #4]
	add r4, r0, #8
	str r6, [sp, #8]
	str r6, [sp, #12]
	str r6, [sp, #16]
	str r6, [sp, #20]
	str r6, [sp, #24]
	str r6, [sp, #28]
	str r6, [sp, #32]
	str r6, [sp, #36]
	str r6, [sp, #40]
	str r6, [sp, #44]
	str r6, [sp, #48]
	str r6, [sp, #52]
	str r6, [sp, #56]
	str r6, [sp, #60]
	str r6, [sp, #64]
	str r6, [sp, #68]
	str r6, [sp, #72]
	str r6, [sp, #76]
.p2align 4
label2:
	ldr r7, [r4, #0]
	ldr r8, [r4, #-4]
	ldr r9, [r4, #-8]
	add r0, r7, r8
	add r0, r0, r9
	str r0, [r4, #0]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	add r0, r6, r7
	cmp r5, #20
	add r0, r8, r0
	add r6, r9, r0
	bge label7
	add r4, r4, #4
	b label2
label7:
	mov r0, r6
	add sp, sp, #84
	pop { r4, r5, r6, r7, r8, r9, pc }
