.arch armv7ve
.data
.bss
.align 8
a:
	.zero	40000000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	sub sp, sp, #4
	mov r0, r4
	bl getarray
	mov r5, r0
	mov r0, #59
	bl _sysy_starttime
	add r1, r5, r5, lsr #31
	sub r0, r5, #1
	asr r6, r1, #1
	mov r1, #0
	ldr r2, [r4, r1, lsl #2]
	add r3, r0, #1
	mov r7, r1
label7:
	cmp r3, r7
	ble label11
.p2align 4
label10:
	sub r3, r3, #1
	ldr r8, [r4, r3, lsl #2]
	cmp r2, r8
	bgt label11
	cmp r3, r7
	bgt label10
.p2align 4
label11:
	cmp r3, r7
	ble label15
.p2align 4
label14:
	add r7, r7, #1
	ldr r8, [r4, r7, lsl #2]
	cmp r2, r8
	bgt label52
.p2align 4
label15:
	cmp r3, r7
	bne label56
	add r3, r4, r1, lsl #2
	cmp r6, r7
	add r8, r4, r7, lsl #2
	str r2, [r3, #0]
	ldr r9, [r8, #0]
	str r9, [r3, #0]
	str r2, [r8, #0]
	blt label66
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
	add sp, sp, #4
	ldr r0, [r4, r6, lsl #2]
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label52:
	cmp r3, r7
	bgt label14
	b label15
.p2align 4
label56:
	add r8, r4, r3, lsl #2
	add r9, r4, r7, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r8, #0]
	str r11, [r9, #0]
	str r10, [r8, #0]
	cmp r3, r7
	bgt label10
	b label11
label66:
	mov r0, r7
	ldr r2, [r4, r1, lsl #2]
	add r3, r7, #1
	mov r7, r1
	cmp r3, r1
	bgt label10
	b label11
