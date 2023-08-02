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
	sub sp, sp, #40
	mov r0, #4
	mov r4, #0
	mov r2, sp
	str r0, [sp, #0]
	mov r3, r4
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #12]
	mov r0, #1
	str r4, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	rsb r0, r4, #10
	cmp r4, #9
	sub r0, r0, #1
	blt label10
label4:
	mov r5, r2
	mov r6, r4
	b label5
.p2align 4
label10:
	mov r1, r2
	mov r5, r4
	cmp r0, r4
	ble label43
.p2align 4
label14:
	ldr r6, [r1, #0]
	add r5, r5, #1
	ldr r7, [r1, #4]
	cmp r6, r7
	bgt label15
	add r1, r1, #4
	cmp r0, r5
	bgt label14
	b label72
.p2align 4
label15:
	add r8, r1, #4
	str r6, [r1, #4]
	str r7, [r1, #0]
	mov r1, r8
	cmp r0, r5
	bgt label14
	add r3, r3, #1
	rsb r0, r3, #10
	cmp r3, #9
	sub r0, r0, #1
	blt label10
	b label4
.p2align 4
label5:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label9
	add r5, r5, #4
	b label5
label9:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
label72:
	add r3, r3, #1
	rsb r0, r3, #10
	cmp r3, #9
	sub r0, r0, #1
	blt label10
	b label4
label43:
	add r3, r3, #1
	rsb r0, r3, #10
	cmp r3, #9
	sub r0, r0, #1
	blt label10
	b label4
