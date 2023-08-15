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
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #44
	mov r1, #4
	mov r3, #1
	mov r2, #3
	str r1, [sp, #0]
	mov r4, #0
	mov r0, sp
	str r2, [sp, #4]
	add r1, r0, #4
	mov r2, #9
	str r2, [sp, #8]
	mov r2, #2
	str r2, [sp, #12]
	mov r2, #6
	str r4, [sp, #16]
	str r3, [sp, #20]
	str r2, [sp, #24]
	mov r2, #5
	str r2, [sp, #28]
	mov r2, #7
	str r2, [sp, #32]
	mov r2, #8
	str r2, [sp, #36]
	sub r6, r3, #1
	ldr r5, [r1, #0]
	add r2, r0, r6, lsl #2
	cmn r6, #1
	bgt label8
	movs r7, r4
	bne label19
	b label76
.p2align 4
label8:
	ldr r7, [r2, #0]
	cmp r5, r7
	mov r7, #0
	movwlt r7, #1
	cmp r7, #0
	beq label11
.p2align 4
label19:
	ldr r7, [r2, #0]
	sub r6, r6, #1
	cmn r6, #1
	str r7, [r2, #4]
	sub r2, r2, #4
	bgt label8
	movs r7, r4
	bne label19
	str r5, [r2, #4]
	add r3, r3, #1
	cmp r3, #10
	blt label12
	b label78
.p2align 4
label11:
	str r5, [r2, #4]
	add r3, r3, #1
	cmp r3, #10
	bge label78
.p2align 4
label12:
	add r1, r1, #4
	sub r6, r3, #1
	ldr r5, [r1, #0]
	cmn r6, #1
	add r2, r0, r6, lsl #2
	bgt label8
	movs r7, r4
	bne label19
label76:
	str r5, [r2, #4]
	add r3, r3, #1
	cmp r3, #10
	blt label12
label78:
	mov r5, r0
	mov r6, r4
	b label14
.p2align 4
label17:
	add r5, r5, #4
.p2align 4
label14:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label17
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, pc }
