.arch armv7ve
.data
.bss
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
	movw r7, #:lower16:a
	movt r7, #:upper16:a
	mov r0, r7
	mov r4, r7
	bl getarray
	sub r8, r0, #1
	mov r5, r0
	add r0, r0, r0, lsr #31
	asr r6, r0, #1
	mov r0, #59
	bl _sysy_starttime
	mov r1, r7
	mov r2, #0
	mov r0, r8
	ldr r3, [r7, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r2
	ble label15
	add r8, r2, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r2
	ble label15
	b label176
label162:
	cmp r7, r8
	ble label15
label176:
	add r8, r8, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	b label190
label15:
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r2
	ble label15
	add r8, r2, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	b label162
label18:
	cmp r6, r8
	ble label20
	add r2, r8, #1
	add r1, r4, r2, lsl #2
	ldr r3, [r1, #0]
	add r7, r0, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r2
	ble label15
	add r8, r2, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	b label162
label20:
	mov r0, #61
	bl _sysy_stoptime
	mov r0, r5
	mov r1, r4
	bl putarray
	ldr r0, [r4, r6, lsl #2]
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label11:
	cmp r7, r8
	ble label15
	add r8, r8, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r2
	ble label15
	add r8, r2, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
label134:
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	b label148
label190:
	cmp r7, r8
	bne label21
	b label201
label21:
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	str r10, [r4, r8, lsl #2]
	str r9, [r4, r7, lsl #2]
	cmp r8, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r8
	ble label15
	add r8, r8, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r1, #0]
	add r7, r8, #1
	mov r8, r2
	cmp r2, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r2
	ble label15
	add r8, r2, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	b label190
label201:
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	b label134
label148:
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	b label162
label8:
	cmp r8, r7
	bge label11
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	ble label8
	cmp r7, r8
	ble label15
	add r8, r8, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	bgt label11
	cmp r7, r8
	bne label21
	str r3, [r1, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r1, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	b label134
