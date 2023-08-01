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
	mov r5, #0
	mov r4, sp
	str r0, [sp, #0]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #9
	str r0, [sp, #8]
	mov r0, #2
	str r0, [sp, #12]
	mov r0, #1
	str r5, [sp, #16]
	str r0, [sp, #20]
	mov r0, #6
	str r0, [sp, #24]
	mov r0, #5
	str r0, [sp, #28]
	mov r0, #7
	str r0, [sp, #32]
	mov r0, #8
	str r0, [sp, #36]
	mov r0, r5
	cmp r5, #9
	blt label4
label28:
	mov r6, r5
	b label13
.p2align 4
label4:
	add r2, r0, #5
	add r1, r0, #1
	cmp r2, #10
	bge label34
	mov r3, r0
	mov r2, r1
.p2align 4
label5:
	ldr r6, [r4, r3, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r6, r7
	add r6, r2, #1
	movgt r3, r2
	ldr r7, [r4, r3, lsl #2]
	ldr r8, [r4, r6, lsl #2]
	cmp r7, r8
	movgt r3, r6
	add r6, r2, #2
	ldr r7, [r4, r3, lsl #2]
	ldr r8, [r4, r6, lsl #2]
	cmp r7, r8
	movgt r3, r6
	add r6, r2, #3
	ldr r7, [r4, r3, lsl #2]
	add r2, r2, #4
	ldr r8, [r4, r6, lsl #2]
	cmp r7, r8
	movgt r3, r6
	cmp r2, #6
	blt label5
.p2align 4
label8:
	ldr r6, [r4, r3, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r6, r7
	movgt r3, r2
	add r2, r2, #1
	cmp r2, #10
	blt label8
.p2align 4
label11:
	cmp r0, r3
	bne label12
	mov r0, r1
	cmp r1, #9
	blt label4
	b label28
.p2align 4
label12:
	add r2, r4, r3, lsl #2
	add r0, r4, r0, lsl #2
	ldr r3, [r2, #0]
	ldr r6, [r0, #0]
	str r6, [r2, #0]
	str r3, [r0, #0]
	mov r0, r1
	cmp r1, #9
	blt label4
	b label28
.p2align 4
label13:
	ldr r0, [r4, r6, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label13
	mov r0, r5
	add sp, sp, #40
	pop { r4, r5, r6, r7, r8, pc }
label34:
	mov r2, r1
	mov r3, r0
	ldr r6, [r4, r0, lsl #2]
	ldr r7, [r4, r1, lsl #2]
	cmp r6, r7
	movgt r3, r1
	add r2, r1, #1
	cmp r2, #10
	blt label8
	b label11
