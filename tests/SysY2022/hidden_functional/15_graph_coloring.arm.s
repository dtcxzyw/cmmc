.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
graphColoring:
.p2align 4
	push { r4, r5, r6, r7, lr }
	mov r4, r3
	cmp r2, #4
	mov r6, r2
	mov r5, r0
	sub sp, sp, #4
	beq label25
	mov r7, #1
	b label13
label25:
	mov r2, #0
label2:
	add r3, r5, r2, lsl #4
	cmp r2, #4
	blt label31
	mov r5, #0
	b label4
label31:
	add r0, r2, #1
	mov r1, r0
	b label8
label4:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r5, #4
	blt label4
	mov r0, #10
	bl putch
	mov r0, #1
	b label17
label8:
	cmp r1, #4
	blt label10
	mov r2, r0
	b label2
label10:
	ldr r6, [r3, r1, lsl #2]
	cmp r6, #0
	bne label12
label50:
	add r1, r1, #1
	b label8
label12:
	ldr r6, [r4, r1, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r6, r7
	bne label50
label62:
	mov r0, #0
	b label17
label13:
	cmp r7, #4
	bge label62
	str r7, [r4, r6, lsl #2]
	add r2, r6, #1
	mov r1, #3
	mov r0, r5
	mov r3, r4
	bl graphColoring
	cmp r0, #0
	bne label74
	mov r0, #0
	add r7, r7, #1
	str r0, [r4, r6, lsl #2]
	b label13
label74:
	mov r0, #1
label17:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.globl main
main:
.p2align 4
	push { lr }
	mov r2, #0
	mov r1, #1
	sub sp, sp, #84
	str r2, [sp, #16]
	add r0, sp, #16
	mov r3, sp
	str r1, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #12]
	str r1, [r0, #16]
	str r2, [r0, #20]
	str r1, [r0, #24]
	str r2, [r0, #28]
	str r1, [r0, #32]
	str r1, [r0, #36]
	str r2, [r0, #40]
	str r1, [r0, #44]
	str r1, [r0, #48]
	str r2, [r0, #52]
	str r1, [r0, #56]
	mov r1, #3
	str r2, [r0, #60]
	str r2, [sp, #0]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #12]
	bl graphColoring
	cmp r0, #0
	beq label92
label93:
	mov r0, #0
	add sp, sp, #84
	pop { pc }
label92:
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
	b label93
