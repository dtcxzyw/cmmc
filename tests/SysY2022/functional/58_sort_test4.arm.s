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
	mov r1, #1
	mov r0, #4
	mov r4, sp
	str r0, [sp, #0]
	mov r0, #3
	str r0, [r4, #4]
	mov r0, #9
	str r0, [r4, #8]
	mov r0, #2
	str r0, [r4, #12]
	mov r0, #0
	str r0, [r4, #16]
	str r1, [r4, #20]
	mov r1, #6
	str r1, [r4, #24]
	mov r1, #5
	str r1, [r4, #28]
	mov r1, #7
	str r1, [r4, #32]
	mov r1, #8
	str r1, [r4, #36]
	cmp r0, #9
	bge label29
label4:
	add r1, r0, #1
	mov r5, r0
	mov r3, r1
	b label5
label29:
	mov r5, #0
	b label14
label5:
	add r2, r3, #4
	cmp r2, #10
	blt label8
	ldr r2, [r4, r5, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r2, r6
	movgt r5, r3
	add r3, r3, #1
	cmp r3, #10
	blt label9
	cmp r0, r5
	bne label13
	mov r0, r1
	cmp r1, #9
	blt label4
	b label29
label8:
	ldr r6, [r4, r5, lsl #2]
	ldr r7, [r4, r3, lsl #2]
	cmp r6, r7
	add r6, r3, #1
	movgt r5, r3
	ldr r7, [r4, r5, lsl #2]
	ldr r8, [r4, r6, lsl #2]
	cmp r7, r8
	movgt r5, r6
	add r6, r3, #2
	ldr r7, [r4, r5, lsl #2]
	add r3, r3, #3
	ldr r8, [r4, r6, lsl #2]
	cmp r7, r8
	movgt r5, r6
	ldr r6, [r4, r5, lsl #2]
	ldr r7, [r4, r3, lsl #2]
	cmp r6, r7
	movgt r5, r3
	mov r3, r2
	b label5
label9:
	ldr r2, [r4, r5, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r2, r6
	movgt r5, r3
	add r3, r3, #1
	cmp r3, #10
	blt label9
	cmp r0, r5
	bne label13
	mov r0, r1
	cmp r1, #9
	blt label4
	b label29
label13:
	ldr r2, [r4, r5, lsl #2]
	ldr r3, [r4, r0, lsl #2]
	str r3, [r4, r5, lsl #2]
	str r2, [r4, r0, lsl #2]
	mov r0, r1
	cmp r1, #9
	blt label4
	b label29
label14:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label14
	mov r0, #0
	add sp, sp, #40
	pop { r4, r5, r6, r7, r8, pc }
