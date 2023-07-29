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
.globl main
main:
.p2align 4
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
	mov r2, r7
	mov r1, #0
	mov r0, r8
	ldr r3, [r7, #0]
	add r7, r8, #1
	mov r8, r1
.p2align 4
label8:
	cmp r7, r8
	bgt label11
	beq label17
label100:
	ldr r9, [r4, r8, lsl #2]
	ldr r10, [r4, r7, lsl #2]
	str r10, [r4, r8, lsl #2]
	str r9, [r4, r7, lsl #2]
	b label8
.p2align 4
label12:
	cmp r7, r8
	bgt label22
	beq label17
	b label100
.p2align 4
label15:
	cmp r7, r8
	beq label17
	b label100
.p2align 4
label22:
	add r8, r8, #1
	ldr r9, [r4, r8, lsl #2]
	cmp r3, r9
	ble label15
	b label12
.p2align 4
label11:
	sub r7, r7, #1
	ldr r9, [r4, r7, lsl #2]
	cmp r3, r9
	bgt label12
	cmp r7, r8
	bgt label11
	bne label100
label17:
	str r3, [r2, #0]
	cmp r6, r8
	ldr r7, [r4, r8, lsl #2]
	str r7, [r2, #0]
	str r3, [r4, r8, lsl #2]
	bge label18
	mov r0, r8
	ldr r3, [r2, #0]
	add r7, r8, #1
	mov r8, r1
	b label8
label18:
	cmp r6, r8
	bgt label19
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
label19:
	add r1, r8, #1
	add r2, r4, r1, lsl #2
	ldr r3, [r2, #0]
	add r7, r0, #1
	mov r8, r1
	b label8
