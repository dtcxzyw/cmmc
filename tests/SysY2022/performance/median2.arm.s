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
	mov r2, r7
	mov r3, #0
	add r1, r7, #1
	ldr r7, [r4, r3, lsl #2]
	mov r0, r3
	cmp r3, r1
	bge label11
	sub r1, r1, #1
	ldr r8, [r4, r1, lsl #2]
	cmp r8, r7
	bge label7
	cmp r3, r1
	bge label15
	add r0, r3, #1
	ldr r8, [r4, r0, lsl #2]
	cmp r8, r7
	blt label11
label109:
	cmp r0, r1
	bne label21
	b label17
label11:
	cmp r0, r1
	bge label15
	add r0, r0, #1
	ldr r8, [r4, r0, lsl #2]
	cmp r8, r7
	blt label11
	cmp r0, r1
	bne label21
	b label17
label98:
	add r0, r0, #1
	ldr r8, [r4, r0, lsl #2]
	cmp r8, r7
	blt label11
	b label109
label17:
	str r7, [r4, r3, lsl #2]
	ldr r1, [r4, r0, lsl #2]
	str r1, [r4, r3, lsl #2]
	str r7, [r4, r0, lsl #2]
	cmp r0, r6
	ble label18
	mov r2, r0
	add r1, r0, #1
	ldr r7, [r4, r3, lsl #2]
	mov r0, r3
	cmp r3, r1
	bge label11
	sub r1, r1, #1
	ldr r8, [r4, r1, lsl #2]
	cmp r8, r7
	bge label7
	cmp r3, r1
	bge label15
	add r0, r3, #1
	ldr r8, [r4, r0, lsl #2]
	cmp r8, r7
	blt label11
	b label109
label18:
	cmp r0, r6
	bge label20
	add r3, r0, #1
	add r1, r2, #1
	ldr r7, [r4, r3, lsl #2]
	mov r0, r3
	cmp r3, r1
	bge label11
	sub r1, r1, #1
	ldr r8, [r4, r1, lsl #2]
	cmp r8, r7
	bge label7
	cmp r3, r1
	bge label15
	b label98
label20:
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
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label15:
	cmp r0, r1
	bne label21
	b label17
label21:
	ldr r8, [r4, r0, lsl #2]
	ldr r9, [r4, r1, lsl #2]
	str r9, [r4, r0, lsl #2]
	str r8, [r4, r1, lsl #2]
	cmp r0, r1
	bge label11
	sub r1, r1, #1
	ldr r8, [r4, r1, lsl #2]
	cmp r8, r7
	bge label7
	cmp r0, r1
	bge label15
	add r0, r0, #1
	ldr r8, [r4, r0, lsl #2]
	cmp r8, r7
	blt label11
	cmp r0, r1
	bne label21
	b label17
label7:
	cmp r0, r1
	bge label11
	sub r1, r1, #1
	ldr r8, [r4, r1, lsl #2]
	cmp r8, r7
	bge label7
	cmp r0, r1
	bge label15
	b label98
