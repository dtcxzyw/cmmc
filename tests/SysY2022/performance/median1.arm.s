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
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	movw r4, #:lower16:a
	movt r4, #:upper16:a
	sub sp, sp, #12
	mov r0, r4
	bl getarray
	str r0, [sp, #0]
	mov r0, #59
	bl _sysy_starttime
	mov r2, #0
	ldr r0, [sp, #0]
	sub r1, r0, #1
	add r0, r0, r0, lsr #31
	asr r5, r0, #1
	mov r0, r1
	mov r1, r4
	ldr r3, [r4, #0]
	add r6, r0, #1
	mov r7, r2
	b label8
label17:
	str r3, [r1, #0]
	add r6, r4, r7, lsl #2
	cmp r5, r7
	ldr r9, [r6, #0]
	str r9, [r1, #0]
	str r3, [r6, #0]
	bge label18
	mov r0, r7
	ldr r3, [r1, #0]
	add r6, r7, #1
	mov r7, r2
.p2align 4
label8:
	cmp r6, r7
	ble label11
.p2align 4
label22:
	sub r6, r6, #1
	ldr r8, [r4, r6, lsl #2]
	cmp r3, r8
	ble label8
	cmp r6, r7
	bgt label14
	b label15
.p2align 4
label11:
	cmp r6, r7
	ble label15
.p2align 4
label14:
	add r7, r7, #1
	ldr r8, [r4, r7, lsl #2]
	cmp r3, r8
	bgt label11
.p2align 4
label15:
	add r8, r4, r7, lsl #2
	cmp r6, r7
	beq label17
	add r10, r4, r6, lsl #2
	ldr r9, [r8, #0]
	ldr r11, [r10, #0]
	str r11, [r8, #0]
	str r9, [r10, #0]
	bgt label22
	b label11
label18:
	cmp r5, r7
	ble label20
	add r2, r7, #1
	add r1, r8, #4
	add r6, r0, #1
	mov r7, r2
	ldr r3, [r1, #0]
	b label8
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
