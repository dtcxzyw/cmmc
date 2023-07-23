.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
graphColoring:
	push { r4, r5, r6, r7, lr }
	cmp r2, #4
	mov r4, r3
	mov r6, r2
	mov r5, r0
	sub sp, sp, #4
	beq label25
	mov r7, #1
	cmp r7, #4
	blt label17
	b label84
label25:
	mov r2, #0
	add r3, r5, r2, lsl #4
	cmp r2, #4
	blt label6
label85:
	mov r5, #0
	b label12
label6:
	add r0, r2, #1
	mov r1, r0
	cmp r0, #4
	blt label9
	mov r2, r0
	add r3, r5, r0, lsl #4
	b label85
label9:
	ldr r6, [r3, r1, lsl #2]
	cmp r6, #0
	bne label10
	add r1, r1, #1
	cmp r1, #4
	blt label9
	mov r2, r0
	add r3, r5, r0, lsl #4
	cmp r0, #4
	blt label6
	b label85
label12:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r5, #4
	blt label12
	mov r0, #10
	bl putch
	mov r0, #1
	b label2
label84:
	mov r0, #0
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label10:
	ldr r6, [r4, r1, lsl #2]
	ldr r7, [r4, r2, lsl #2]
	cmp r6, r7
	beq label84
	add r1, r1, #1
	cmp r1, #4
	blt label9
	mov r2, r0
	add r3, r5, r0, lsl #4
	cmp r0, #4
	blt label6
	b label85
label17:
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
	cmp r7, #4
	blt label17
	b label84
label74:
	mov r0, #1
	b label2
.globl main
main:
	push { lr }
	mov r2, #0
	sub sp, sp, #84
	mov r1, #1
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
	beq label97
label98:
	mov r0, #0
	add sp, sp, #84
	pop { pc }
label97:
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
	b label98
