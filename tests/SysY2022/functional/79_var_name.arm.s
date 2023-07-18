.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r0, #1
	sub sp, sp, #84
	mov r6, #0
	mov r5, #2
	str r0, [sp, #0]
	mov r4, sp
	str r5, [r4, #4]
	str r6, [r4, #8]
	str r6, [r4, #12]
	str r6, [r4, #16]
	str r6, [r4, #20]
	str r6, [r4, #24]
	str r6, [r4, #28]
	str r6, [r4, #32]
	str r6, [r4, #36]
	str r6, [r4, #40]
	str r6, [r4, #44]
	str r6, [r4, #48]
	str r6, [r4, #52]
	str r6, [r4, #56]
	str r6, [r4, #60]
	str r6, [r4, #64]
	str r6, [r4, #68]
	str r6, [r4, #72]
	str r6, [r4, #76]
label2:
	add r0, r4, r5, lsl #2
	ldr r8, [r4, r5, lsl #2]
	ldr r7, [r0, #-4]
	ldr r9, [r0, #-8]
	add r1, r8, r7
	add r0, r1, r9
	str r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	add r0, r6, r8
	cmp r5, #20
	add r0, r7, r0
	add r6, r9, r0
	bge label5
	b label2
label5:
	mov r0, r6
	add sp, sp, #84
	pop { r4, r5, r6, r7, r8, r9, pc }
