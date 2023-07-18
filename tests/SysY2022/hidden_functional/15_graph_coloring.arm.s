.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
graphColoring:
	push { r4, r5, r6, r7, lr }
	cmp r2, #4
	mov r5, r3
	mov r6, r2
	mov r4, r0
	sub sp, sp, #4
	bne label25
	mov r2, #0
	add r3, r0, r2, lsl #4
	cmp r2, #4
	bge label31
	add r0, r2, #1
	mov r1, r0
	cmp r0, #4
	bge label36
	ldr r6, [r3, r0, lsl #2]
	cmp r6, #0
	beq label11
	ldr r6, [r5, r0, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	cmp r6, r7
	bne label11
	b label103
label25:
	mov r7, #1
	cmp r7, #4
	bge label103
	b label17
label103:
	mov r0, #0
	b label2
label36:
	mov r2, r0
	add r3, r4, r0, lsl #4
	cmp r0, #4
	bge label31
	add r0, r0, #1
	mov r1, r0
	cmp r0, #4
	bge label36
	ldr r6, [r3, r0, lsl #2]
	cmp r6, #0
	beq label11
	ldr r6, [r5, r0, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	cmp r6, r7
	bne label11
	b label103
label11:
	add r1, r1, #1
	cmp r1, #4
	bge label36
	ldr r6, [r3, r1, lsl #2]
	cmp r6, #0
	beq label11
	ldr r6, [r5, r1, lsl #2]
	ldr r7, [r5, r2, lsl #2]
	cmp r6, r7
	bne label11
	b label103
label2:
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label17:
	str r7, [r5, r6, lsl #2]
	add r2, r6, #1
	mov r1, #3
	mov r0, r4
	mov r3, r5
	bl graphColoring
	cmp r0, #0
	beq label18
	mov r0, #1
	b label2
label31:
	mov r4, #0
label12:
	ldr r0, [r5, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r4, r4, #1
	cmp r4, #4
	bge label14
	b label12
label18:
	mov r0, #0
	add r7, r7, #1
	str r0, [r5, r6, lsl #2]
	cmp r7, #4
	bge label103
	b label17
label14:
	mov r0, #10
	bl putch
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
	bne label107
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
label107:
	mov r0, #0
	add sp, sp, #84
	pop { pc }
