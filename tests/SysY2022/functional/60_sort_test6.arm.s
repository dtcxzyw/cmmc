.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r3, #0
	mov r2, #4
	sub sp, sp, #120
	str r2, [sp, #80]
	add r1, sp, #80
	add r4, sp, #40
	mov r0, sp
	mov r2, #3
	str r2, [r1, #4]
	mov r2, #9
	str r2, [r1, #8]
	mov r2, #2
	str r2, [r1, #12]
	mov r2, #1
	str r3, [r1, #16]
	str r2, [r1, #20]
	mov r2, #6
	str r2, [r1, #24]
	mov r2, #5
	str r2, [r1, #28]
	mov r2, #7
	str r2, [r1, #32]
	mov r2, #8
	str r2, [r1, #36]
	str r3, [sp, #0]
	str r3, [r0, #4]
	str r3, [r0, #8]
	str r3, [r0, #12]
	str r3, [r0, #16]
	str r3, [r0, #20]
	str r3, [r0, #24]
	str r3, [r0, #28]
	str r3, [r0, #32]
	str r3, [r0, #36]
	add r2, r3, #4
	cmp r2, #10
	bge label5
label4:
	add r5, r1, r3, lsl #2
	ldr r3, [r1, r3, lsl #2]
	ldr r6, [r0, r3, lsl #2]
	add r6, r6, #1
	str r6, [r0, r3, lsl #2]
	ldr r3, [r5, #4]
	ldr r6, [r0, r3, lsl #2]
	add r6, r6, #1
	str r6, [r0, r3, lsl #2]
	ldr r3, [r5, #8]
	ldr r6, [r0, r3, lsl #2]
	add r6, r6, #1
	str r6, [r0, r3, lsl #2]
	ldr r3, [r5, #12]
	ldr r5, [r0, r3, lsl #2]
	add r5, r5, #1
	str r5, [r0, r3, lsl #2]
	mov r3, r2
	add r2, r2, #4
	cmp r2, #10
	bge label5
	b label4
label5:
	ldr r2, [r1, r3, lsl #2]
	add r3, r3, #1
	cmp r3, #10
	ldr r5, [r0, r2, lsl #2]
	add r5, r5, #1
	str r5, [r0, r2, lsl #2]
	bge label7
	b label5
label7:
	ldr r2, [r0, #4]
	ldr r3, [sp, #0]
	add r2, r2, r3
	str r2, [r0, #4]
	ldr r3, [r0, #8]
	add r2, r2, r3
	str r2, [r0, #8]
	ldr r3, [r0, #12]
	add r2, r2, r3
	str r2, [r0, #12]
	ldr r3, [r0, #16]
	add r2, r2, r3
	str r2, [r0, #16]
	ldr r3, [r0, #20]
	add r2, r2, r3
	str r2, [r0, #20]
	ldr r3, [r0, #24]
	add r2, r2, r3
	str r2, [r0, #24]
	ldr r3, [r0, #28]
	add r2, r2, r3
	str r2, [r0, #28]
	ldr r3, [r0, #32]
	add r2, r2, r3
	str r2, [r0, #32]
	ldr r3, [r0, #36]
	add r2, r2, r3
	mov r3, #10
	str r2, [r0, #36]
	subs r2, r3, #4
	ble label11
label10:
	sub r5, r3, #1
	add r3, r1, r5, lsl #2
	ldr r5, [r1, r5, lsl #2]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r4, r6, lsl #2]
	ldr r5, [r3, #-4]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r4, r6, lsl #2]
	ldr r5, [r3, #-8]
	ldr r6, [r0, r5, lsl #2]
	sub r6, r6, #1
	str r6, [r0, r5, lsl #2]
	str r5, [r4, r6, lsl #2]
	ldr r3, [r3, #-12]
	ldr r5, [r0, r3, lsl #2]
	sub r5, r5, #1
	str r5, [r0, r3, lsl #2]
	str r3, [r4, r5, lsl #2]
	mov r3, r2
	subs r2, r2, #4
	ble label11
	b label10
label11:
	subs r3, r3, #1
	ldr r2, [r1, r3, lsl #2]
	ldr r5, [r0, r2, lsl #2]
	sub r5, r5, #1
	str r5, [r0, r2, lsl #2]
	str r2, [r4, r5, lsl #2]
	ble label161
	b label11
label161:
	mov r5, #0
label13:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	bge label15
	b label13
label15:
	mov r0, #0
	add sp, sp, #120
	pop { r4, r5, r6, pc }
