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
	sub sp, sp, #12
	movt r4, #:upper16:a
	mov r0, r4
	bl getarray
	sub r6, r0, #1
	str r0, [sp, #0]
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	mov r0, #59
	bl _sysy_starttime
	mov r1, r4
	mov r2, #0
	mov r0, r6
	ldr r3, [r4, #0]
	add r6, r6, #1
	mov r7, r2
label8:
	cmp r6, r7
	bgt label11
	b label12
.p2align 4
label17:
	str r3, [r1, #0]
	add r6, r4, r7, lsl #2
	cmp r5, r7
	ldr r8, [r6, #0]
	str r8, [r1, #0]
	str r3, [r6, #0]
	blt label55
	ble label20
	add r2, r7, #1
	add r1, r4, r2, lsl #2
	ldr r3, [r1, #0]
	add r6, r0, #1
	mov r7, r2
	b label8
.p2align 4
label11:
	sub r6, r6, #1
	ldr r8, [r4, r6, lsl #2]
	cmp r3, r8
	bgt label12
	cmp r6, r7
	bgt label11
.p2align 4
label12:
	cmp r6, r7
	bgt label22
.p2align 4
label15:
	cmp r6, r7
	beq label17
	b label47
.p2align 4
label22:
	add r7, r7, #1
	ldr r8, [r4, r7, lsl #2]
	cmp r3, r8
	ble label15
	cmp r6, r7
	bgt label22
	b label15
label20:
	mov r0, #61
	bl _sysy_stoptime
	ldr r0, [sp, #0]
	mov r1, r4
	bl putarray
	add sp, sp, #12
	ldr r0, [r4, r5, lsl #2]
	asr r1, r0, #31
	add r1, r0, r1, lsr #24
	asr r1, r1, #8
	sub r0, r0, r1, lsl #8
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
.p2align 4
label47:
	add r8, r4, r6, lsl #2
	add r9, r4, r7, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r8, #0]
	str r11, [r9, #0]
	str r10, [r8, #0]
	cmp r6, r7
	bgt label11
	b label12
label55:
	mov r0, r7
	ldr r3, [r1, #0]
	add r6, r7, #1
	mov r7, r2
	cmp r6, r2
	bgt label11
	b label12
