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
	sub sp, sp, #12
	mov r0, r4
	bl getarray
	str r0, [sp, #0]
	mov r0, #59
	bl _sysy_starttime
	mov r2, r4
	ldr r0, [sp, #0]
	sub r1, r0, #1
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	mov r0, r1
	mov r1, #0
	ldr r3, [r4, #0]
	add r6, r0, #1
	mov r7, r1
label8:
	cmp r6, r7
	bgt label22
.p2align 4
label11:
	cmp r6, r7
	bgt label21
	b label14
.p2align 4
label39:
	add r8, r4, r6, lsl #2
	add r9, r4, r7, lsl #2
	ldr r10, [r9, #0]
	ldr r11, [r8, #0]
	str r11, [r9, #0]
	str r10, [r8, #0]
	cmp r6, r7
	bgt label22
	b label11
.p2align 4
label21:
	add r7, r7, #1
	ldr r8, [r4, r7, lsl #2]
	cmp r3, r8
	ble label14
	cmp r6, r7
	bgt label21
	b label14
.p2align 4
label22:
	sub r6, r6, #1
	ldr r8, [r4, r6, lsl #2]
	cmp r3, r8
	bgt label11
	cmp r6, r7
	bgt label22
	b label11
.p2align 4
label14:
	cmp r6, r7
	bne label39
	str r3, [r2, #0]
	add r6, r4, r7, lsl #2
	cmp r5, r7
	ldr r8, [r6, #0]
	str r8, [r2, #0]
	str r3, [r6, #0]
	blt label47
	bgt label18
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
label47:
	mov r0, r7
	ldr r3, [r2, #0]
	add r6, r7, #1
	mov r7, r1
	cmp r6, r1
	bgt label22
	b label11
label18:
	add r1, r7, #1
	add r2, r4, r1, lsl #2
	ldr r3, [r2, #0]
	add r6, r0, #1
	mov r7, r1
	b label8
