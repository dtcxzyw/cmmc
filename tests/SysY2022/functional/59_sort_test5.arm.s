.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[40] RegSpill[0] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #44
	mov r1, #3
	mov r4, #6
	mov r8, #0
	mov r3, #9
	mov r2, #4
	mov r0, sp
	str r2, [sp, #0]
	str r1, [sp, #4]
	mov r1, #2
	str r3, [sp, #8]
	str r1, [sp, #12]
	mov r1, #1
	str r8, [sp, #16]
	str r1, [sp, #20]
	str r4, [sp, #24]
	mov r4, #5
	str r4, [sp, #28]
	mov r4, #7
	str r4, [sp, #32]
	mov r4, #8
	str r4, [sp, #36]
	b label2
.p2align 4
label12:
	sub r2, r2, #1
	cmn r2, #1
	ble label13
.p2align 4
label2:
	lsl r4, r2, #1
	add r5, r4, #1
	mov r4, r2
	cmp r5, #10
	bge label12
.p2align 4
label7:
	add r6, r0, r5, lsl #2
	cmp r5, #9
	bge label54
	add r7, r0, r5, lsl #2
	ldr r8, [r7, #0]
	ldr r7, [r7, #4]
	ldr r9, [r0, r4, lsl #2]
	cmp r8, r7
	mov r8, #0
	movwlt r8, #1
	ldr r10, [r6, r8, lsl #2]
	mov r7, r8
	cmp r9, r10
	bgt label12
	add r5, r5, r8
	str r10, [r0, r4, lsl #2]
	lsl r8, r5, #1
	mov r4, r5
	str r9, [r6, r7, lsl #2]
	add r8, r8, #1
	cmp r8, #10
	mov r5, r8
	blt label7
	b label12
.p2align 4
label54:
	mov r8, #0
	ldr r9, [r0, r4, lsl #2]
	mov r7, r8
	ldr r10, [r6, r8, lsl #2]
	cmp r9, r10
	bgt label12
	add r5, r5, r8
	str r10, [r0, r4, lsl #2]
	lsl r8, r5, #1
	mov r4, r5
	str r9, [r6, r7, lsl #2]
	add r8, r8, #1
	cmp r8, #10
	mov r5, r8
	blt label7
	b label12
label13:
	add r2, r0, #36
	ldr r4, [sp, #0]
	mov r8, #0
	mov r6, r1
	ldr r5, [r2, #0]
	str r5, [sp, #0]
	mov r5, r8
	str r4, [r2, #0]
	sub r4, r3, #1
	cmp r3, r1
	bgt label20
.p2align 4
label25:
	cmp r4, #0
	ble label126
	sub r2, r2, #4
	mov r3, r4
	mov r8, #0
	mov r6, r1
	ldr r4, [sp, #0]
	cmp r3, r1
	ldr r5, [r2, #0]
	str r5, [sp, #0]
	mov r5, r8
	str r4, [r2, #0]
	sub r4, r3, #1
	ble label25
.p2align 4
label20:
	add r7, r0, r6, lsl #2
	cmp r4, r6
	bgt label24
	mov r8, #0
	ldr r10, [r0, r5, lsl #2]
	mov r9, r8
	ldr r8, [r7, r8, lsl #2]
	cmp r10, r8
	bgt label25
	add r6, r6, r9
	str r8, [r0, r5, lsl #2]
	lsl r11, r6, #1
	mov r5, r6
	str r10, [r7, r9, lsl #2]
	add r11, r11, #1
	cmp r3, r11
	mov r6, r11
	bgt label20
	b label25
.p2align 4
label24:
	add r8, r0, r6, lsl #2
	ldr r9, [r8, #0]
	ldr r8, [r8, #4]
	ldr r10, [r0, r5, lsl #2]
	cmp r9, r8
	mov r8, #0
	movwlt r8, #1
	mov r9, r8
	ldr r8, [r7, r8, lsl #2]
	cmp r10, r8
	bgt label25
	add r6, r6, r9
	str r8, [r0, r5, lsl #2]
	lsl r11, r6, #1
	mov r5, r6
	str r10, [r7, r9, lsl #2]
	add r11, r11, #1
	cmp r3, r11
	mov r6, r11
	bgt label20
	b label25
label126:
	mov r4, r0
	mov r8, #0
	b label28
.p2align 4
label31:
	add r4, r4, #4
.p2align 4
label28:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #10
	bl putch
	add r8, r8, #1
	cmp r8, #10
	blt label31
	mov r8, #0
	add sp, sp, #44
	mov r0, r8
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
