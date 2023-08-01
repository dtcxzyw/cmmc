.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
graphColoring:
	push { r4, r5, r6, r7, lr }
	mov r5, r3
	cmp r2, #4
	mov r6, r2
	mov r4, r0
	sub sp, sp, #4
	beq label25
	mov r7, #1
label15:
	cmp r7, #4
	bge label53
	str r7, [r5, r6, lsl #2]
	add r2, r6, #1
	mov r1, #3
	mov r0, r4
	mov r3, r5
	bl graphColoring
	cmp r0, #0
	beq label73
	mov r0, #1
	b label2
label25:
	mov r2, #0
label4:
	cmp r2, #4
	bge label28
	add r3, r4, r2, lsl #4
	add r0, r2, #1
	mov r1, r0
label7:
	cmp r1, #4
	bge label35
	ldr r6, [r3, r1, lsl #2]
	cmp r6, #0
	bne label10
label42:
	add r1, r1, #1
	b label7
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label10:
	ldr r6, [r5, r1, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	cmp r6, r7
	bne label42
label53:
	mov r0, #0
	b label2
label28:
	mov r4, #0
label12:
	ldr r0, [r5, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r4, r4, #1
	cmp r4, #4
	blt label12
	mov r0, #10
	bl putch
	mov r0, #1
	b label2
label73:
	mov r0, #0
	add r7, r7, #1
	str r0, [r5, r6, lsl #2]
	b label15
label35:
	mov r2, r0
	b label4
.p2align 4
.globl main
main:
	push { r4, lr }
	mov r4, #0
	mov r1, #1
	sub sp, sp, #80
	add r3, sp, #64
	mov r0, sp
	str r4, [sp, #0]
	str r1, [sp, #4]
	str r1, [sp, #8]
	str r1, [sp, #12]
	str r1, [sp, #16]
	str r4, [sp, #20]
	str r1, [sp, #24]
	str r4, [sp, #28]
	str r1, [sp, #32]
	str r1, [sp, #36]
	str r4, [sp, #40]
	str r1, [sp, #44]
	str r1, [sp, #48]
	str r4, [sp, #52]
	str r1, [sp, #56]
	mov r1, #3
	str r4, [sp, #60]
	str r4, [sp, #64]
	str r4, [sp, #68]
	str r4, [sp, #72]
	str r4, [sp, #76]
	mov r2, r4
	bl graphColoring
	cmp r0, #0
	bne label98
	mov r0, #78
	bl putch
	mov r0, #111
	bl putch
	mov r0, #116
	bl putch
	mov r0, #32
	bl putch
	mov r0, #101
	bl putch
	mov r0, #120
	bl putch
	mov r0, #105
	bl putch
	mov r0, #115
	bl putch
	mov r0, #116
	bl putch
label98:
	mov r0, r4
	add sp, sp, #80
	pop { r4, pc }
