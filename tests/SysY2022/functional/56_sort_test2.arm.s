.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #44
	mov r0, #4
	mov r1, #6
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
	mov r0, #1
	str r0, [r4, #20]
	str r1, [r4, #24]
	mov r1, #5
	str r1, [r4, #28]
	mov r1, #7
	str r1, [r4, #32]
	mov r1, #8
	str r1, [r4, #36]
	cmp r0, #10
	bge label26
	ldr r1, [r4, r0, lsl #2]
	sub r2, r0, #1
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	b label120
label26:
	mov r5, #0
	b label10
label9:
	add r2, r2, #1
	add r0, r0, #1
	str r1, [r4, r2, lsl #2]
	cmp r0, #10
	bge label26
	ldr r1, [r4, r0, lsl #2]
	sub r2, r0, #1
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
label121:
	ldr r3, [r4, r2, lsl #2]
	cmp r1, r3
	bge label9
	b label114
label120:
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	b label121
label114:
	add r5, r2, #1
	sub r2, r2, #1
	str r3, [r4, r5, lsl #2]
	cmn r2, #1
	ble label9
	b label121
label10:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	bge label12
	b label10
label12:
	mov r0, #0
	add sp, sp, #44
	pop { r4, r5, pc }
