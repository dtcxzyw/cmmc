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
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
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
	mov r0, r7
	mov r1, #0
	ldr r2, [r4, r1, lsl #2]
	add r3, r7, #1
	mov r7, r1
label7:
	cmp r7, r3
	bge label11
	sub r3, r3, #1
	ldr r8, [r4, r3, lsl #2]
	cmp r2, r8
	ble label7
label11:
	cmp r3, r7
	ble label15
	add r7, r7, #1
	ldr r8, [r4, r7, lsl #2]
	cmp r2, r8
	bgt label11
label15:
	cmp r3, r7
	bne label57
	str r2, [r4, r1, lsl #2]
	ldr r3, [r4, r7, lsl #2]
	str r3, [r4, r1, lsl #2]
	str r2, [r4, r7, lsl #2]
	cmp r6, r7
	bge label18
	mov r0, r7
	ldr r2, [r4, r1, lsl #2]
	add r3, r7, #1
	mov r7, r1
	b label7
label18:
	cmp r6, r7
	ble label20
	add r1, r7, #1
	ldr r2, [r4, r1, lsl #2]
	add r3, r0, #1
	mov r7, r1
	b label7
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
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label57:
	ldr r8, [r4, r7, lsl #2]
	ldr r9, [r4, r3, lsl #2]
	str r9, [r4, r7, lsl #2]
	str r8, [r4, r3, lsl #2]
	b label7
