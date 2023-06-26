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
	mov r0, #59
	bl _sysy_starttime
	sub r3, r5, #1
	add r0, r5, r5, lsr #31
	asr r6, r0, #1
	mov r2, #0
	add r7, r4, r2, lsl #2
	ldr r8, [r7, #0]
	add r1, r3, #1
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
	b label128
label167:
	add r0, r0, #1
	ldr r9, [r4, r0, lsl #2]
	cmp r9, r8
	blt label10
	b label180
label128:
	mov r3, r0
	ldr r8, [r7, #0]
	add r1, r0, #1
	mov r0, r2
	cmp r2, r1
	bge label10
	b label141
label154:
	cmp r0, r1
	bge label14
	b label167
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
	ldr r8, [r7, #0]
	add r1, r0, #1
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
	b label128
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
	ldr r8, [r7, #0]
	add r1, r0, #1
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
	ldr r8, [r7, #0]
	add r1, r0, #1
	mov r0, r2
	cmp r2, r1
	bge label10
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	b label154
label141:
	sub r1, r1, #1
	ldr r9, [r4, r1, lsl #2]
	cmp r9, r8
	bge label7
	b label154
label17:
	cmp r0, r6
	bge label19
	add r2, r0, #1
	add r7, r4, r2, lsl #2
	ldr r8, [r7, #0]
	add r1, r3, #1
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
	ldr r8, [r7, #0]
	add r1, r0, #1
	mov r0, r2
	cmp r2, r1
	bge label10
	b label141
label19:
	mov r0, #61
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	ldr r0, [r4, r6, lsl #2]
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	mov r2, #256
	mul r1, r1, r2
	sub r0, r0, r1
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
	ldr r8, [r7, #0]
	add r1, r0, #1
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
label180:
	cmp r0, r1
	bne label20
	str r8, [r7, #0]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r7, #0]
	str r8, [r4, r0, lsl #2]
	cmp r0, r6
	ble label17
	b label128
