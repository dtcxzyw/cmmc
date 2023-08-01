.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, lr }
	mov r3, #6
	sub sp, sp, #44
	mov r6, #8
	mov r1, #4
	mov r0, #3
	mov r2, #9
	str r1, [sp, #0]
	mov r4, #0
	mov r5, sp
	str r0, [sp, #4]
	mov r0, #2
	str r2, [sp, #8]
	str r0, [sp, #12]
	mov r0, #1
	str r4, [sp, #16]
	str r0, [sp, #20]
	str r3, [sp, #24]
	mov r3, #5
	str r3, [sp, #28]
	mov r3, #7
	str r3, [sp, #32]
	str r6, [sp, #36]
	sub r3, r6, #2
	add r7, r6, #1
	mov r6, r1
	cmp r7, #10
	bge label13
.p2align 4
label8:
	cmp r7, #9
	bge label46
	add r8, r5, r7, lsl #2
	ldr r9, [r8, #0]
	ldr r8, [r8, #4]
	cmp r9, r8
	mov r8, #0
	movwlt r8, #1
	add r7, r7, r8
	ldr r8, [r5, r6, lsl #2]
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	bgt label13
	str r9, [r5, r6, lsl #2]
	lsl r6, r7, #1
	str r8, [r5, r7, lsl #2]
	add r8, r6, #1
	mov r6, r7
	mov r7, r8
	cmp r8, #10
	blt label8
.p2align 4
label13:
	sub r1, r1, #1
	cmn r1, #1
	ble label75
	mov r6, r3
	sub r3, r3, #2
	add r7, r6, #1
	mov r6, r1
	cmp r7, #10
	blt label8
	b label13
.p2align 4
label46:
	mov r8, r4
	add r7, r7, r4
	ldr r8, [r5, r6, lsl #2]
	ldr r9, [r5, r7, lsl #2]
	cmp r8, r9
	bgt label13
	str r9, [r5, r6, lsl #2]
	lsl r6, r7, #1
	str r8, [r5, r7, lsl #2]
	add r8, r6, #1
	mov r6, r7
	mov r7, r8
	cmp r8, #10
	blt label8
	b label13
label75:
	mov r1, r2
	add r2, r5, r2, lsl #2
	ldr r3, [sp, #0]
	ldr r6, [r2, #0]
	str r6, [sp, #0]
	mov r6, r0
	str r3, [r2, #0]
	mov r3, r4
	sub r2, r1, #1
	cmp r1, r0
	bgt label23
.p2align 4
label19:
	cmp r2, #0
	ble label88
	mov r1, r2
	add r2, r5, r2, lsl #2
	ldr r3, [sp, #0]
	ldr r6, [r2, #0]
	str r6, [sp, #0]
	mov r6, r0
	str r3, [r2, #0]
	mov r3, r4
	sub r2, r1, #1
	cmp r1, r0
	ble label19
.p2align 4
label23:
	cmp r2, r6
	ble label100
	add r7, r5, r6, lsl #2
	ldr r8, [r7, #0]
	ldr r7, [r7, #4]
	cmp r8, r7
	mov r7, #0
	movwlt r7, #1
	add r6, r6, r7
	ldr r7, [r5, r3, lsl #2]
	ldr r8, [r5, r6, lsl #2]
	cmp r7, r8
	bgt label19
	str r8, [r5, r3, lsl #2]
	lsl r3, r6, #1
	str r7, [r5, r6, lsl #2]
	add r7, r3, #1
	mov r3, r6
	mov r6, r7
	cmp r1, r7
	bgt label23
	b label19
.p2align 4
label100:
	mov r7, r4
	add r6, r6, r4
	ldr r7, [r5, r3, lsl #2]
	ldr r8, [r5, r6, lsl #2]
	cmp r7, r8
	bgt label19
	str r8, [r5, r3, lsl #2]
	lsl r3, r6, #1
	str r7, [r5, r6, lsl #2]
	add r7, r3, #1
	mov r3, r6
	mov r6, r7
	cmp r1, r7
	bgt label23
	b label19
label88:
	mov r6, r4
.p2align 4
label20:
	ldr r0, [r5, r6, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label20
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, pc }
