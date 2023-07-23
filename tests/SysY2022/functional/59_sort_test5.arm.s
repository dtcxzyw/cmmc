.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r2, #8
	mov r0, #4
	mov r1, #3
	mov r4, sp
	str r0, [sp, #0]
	str r1, [r4, #4]
	mov r1, #9
	str r1, [r4, #8]
	mov r1, #2
	str r1, [r4, #12]
	mov r1, #0
	str r1, [r4, #16]
	mov r1, #1
	str r1, [r4, #20]
	mov r1, #6
	str r1, [r4, #24]
	mov r1, #5
	str r1, [r4, #28]
	mov r1, #7
	str r1, [r4, #32]
	str r2, [r4, #36]
	sub r1, r2, #2
	add r3, r2, #1
	mov r2, r0
	cmp r3, #10
	bge label13
	cmp r3, #9
	bge label47
	b label137
label13:
	sub r0, r0, #1
	cmn r0, #1
	ble label76
	mov r2, r1
	sub r1, r1, #2
	add r3, r2, #1
	mov r2, r0
	cmp r3, #10
	bge label13
	cmp r3, #9
	bge label47
label137:
	add r5, r4, r3, lsl #2
	ldr r6, [r4, r3, lsl #2]
	ldr r5, [r5, #4]
	cmp r6, r5
	mov r5, #0
	movwlt r5, #1
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	ble label11
	sub r0, r0, #1
	cmn r0, #1
	ble label76
	mov r2, r1
	sub r1, r1, #2
	add r3, r2, #1
	mov r2, r0
	cmp r3, #10
	bge label13
	cmp r3, #9
	bge label47
	b label137
label47:
	mov r5, #0
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	ble label11
	sub r0, r0, #1
	cmn r0, #1
	ble label76
	mov r2, r1
	sub r1, r1, #2
	add r3, r2, #1
	mov r2, r0
	cmp r3, #10
	bge label13
	cmp r3, #9
	bge label47
	b label137
label76:
	mov r0, #9
	ldr r1, [sp, #0]
	mov r3, #1
	ldr r2, [r4, r0, lsl #2]
	str r2, [sp, #0]
	mov r2, #0
	str r1, [r4, r0, lsl #2]
	sub r1, r0, #1
	cmp r0, r3
	ble label19
	cmp r1, r3
	ble label101
	b label142
label89:
	mov r5, #0
label20:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	bge label22
	b label20
label101:
	mov r5, #0
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	ble label26
	cmp r1, #0
	ble label89
	mov r0, r1
	ldr r1, [sp, #0]
	mov r3, #1
	ldr r2, [r4, r0, lsl #2]
	str r2, [sp, #0]
	mov r2, #0
	str r1, [r4, r0, lsl #2]
	sub r1, r0, #1
	cmp r0, r3
	ble label19
	cmp r1, r3
	ble label101
	b label142
label26:
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	cmp r0, r5
	ble label19
	cmp r1, r5
	ble label101
label142:
	add r5, r4, r3, lsl #2
	ldr r6, [r4, r3, lsl #2]
	ldr r5, [r5, #4]
	cmp r6, r5
	mov r5, #0
	movwlt r5, #1
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	ble label26
	cmp r1, #0
	ble label89
	mov r0, r1
	ldr r1, [sp, #0]
	mov r3, #1
	ldr r2, [r4, r0, lsl #2]
	str r2, [sp, #0]
	mov r2, #0
	str r1, [r4, r0, lsl #2]
	sub r1, r0, #1
	cmp r0, r3
	ble label19
	cmp r1, r3
	ble label101
	b label142
label19:
	cmp r1, #0
	ble label89
	mov r0, r1
	ldr r1, [sp, #0]
	mov r3, #1
	ldr r2, [r4, r0, lsl #2]
	str r2, [sp, #0]
	mov r2, #0
	str r1, [r4, r0, lsl #2]
	sub r1, r0, #1
	cmp r0, r3
	ble label19
	cmp r1, r3
	ble label101
	b label142
label11:
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	cmp r5, #10
	bge label13
	cmp r5, #9
	bge label47
	b label137
label22:
	mov r0, #0
	add sp, sp, #40
	pop { r4, r5, r6, pc }
