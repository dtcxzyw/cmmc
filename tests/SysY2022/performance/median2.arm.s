.arch armv7ve
.data
.align 4
a:
	.zero	40000000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	movw r0, #:lower16:a
	movt r0, #:upper16:a
	mov r4, r0
	bl getarray
	mov r5, r0
	sub r7, r0, #1
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, #59
	bl _sysy_starttime
	mov r3, r7
	mov r2, #0
	add r7, r4, r2, lsl #2
	add r1, r3, #1
	ldr r8, [r7, #0]
	mov r0, r2
label7:
	cmp r0, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	cmp r0, r1
	bge label14
	add r0, r0, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	b label127
label166:
	add r0, r0, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	b label179
label127:
	mov r3, r0
	add r1, r0, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	b label140
label153:
	cmp r0, r1
	bge label14
	b label166
label10:
	cmp r0, r1
	bge label14
	add r0, r0, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	mov r3, r0
	add r1, r0, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	cmp r2, r1
	bge label14
	add r0, r2, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	b label127
label14:
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	mov r3, r0
	add r1, r0, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	cmp r2, r1
	bge label14
	add r0, r2, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	mov r3, r0
	add r1, r0, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	b label153
label140:
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	b label153
label17:
	cmp r0, r6
	bge label19
	add r2, r0, #1
	add r7, r4, r2, lsl #2
	add r1, r3, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	cmp r2, r1
	bge label14
	add r0, r2, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	mov r3, r0
	add r1, r0, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	b label140
label19:
	mov r0, #61
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	ldr r0, [r4, r6, lsl #2]
	mov r1, #256
	asr r2, r0, #31
	add r2, r0, r2, lsr #24
	asr r2, r2, #8
	mls r0, r2, r1, r0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label20:
	ldr r9, [r4, r0, lsl #2]
	ldr r10, [r4, r1, lsl #2]
	str r10, [r4, r0, lsl #2]
	str r9, [r4, r1, lsl #2]
	cmp r0, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	cmp r0, r1
	bge label14
	add r0, r0, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	mov r3, r0
	add r1, r0, #1
	ldr r8, [r7, #0]
	mov r0, r2
	cmp r2, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	cmp r2, r1
	bge label14
	add r0, r2, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
label179:
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	b label127
