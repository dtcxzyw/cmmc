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
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #44
	mov r1, #4
	mov r4, #0
	mov r0, sp
	str r1, [sp, #0]
	mov r2, r4
	mov r3, r0
	mov r1, #3
	str r1, [sp, #4]
	mov r1, #9
	str r1, [sp, #8]
	mov r1, #2
	str r1, [sp, #12]
	mov r1, #1
	str r4, [sp, #16]
	str r1, [sp, #20]
	mov r1, #6
	str r1, [sp, #24]
	mov r1, #5
	str r1, [sp, #28]
	mov r1, #7
	str r1, [sp, #32]
	mov r1, #8
	str r1, [sp, #36]
	add r1, r4, #1
	cmp r1, #10
	blt label16
	b label47
.p2align 4
label127:
	cmp r2, r7
	beq label154
.p2align 4
label15:
	add r2, r0, r7, lsl #2
	cmp r1, #9
	ldr r5, [r2, #0]
	ldr r6, [r3, #0]
	str r6, [r2, #0]
	str r5, [r3, #0]
	bge label8
.p2align 4
label14:
	add r3, r3, #4
	mov r2, r1
	add r1, r1, #1
	cmp r1, #10
	bge label47
.p2align 4
label16:
	add r5, r2, #4
	cmp r5, #10
	bge label72
	add r5, r0, r1, lsl #2
	mov r7, r2
	mov r6, r1
	b label18
.p2align 4
label22:
	add r5, r5, #16
.p2align 4
label18:
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r5, #0]
	cmp r8, r9
	movgt r7, r6
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r5, #4]
	cmp r8, r9
	add r8, r6, #1
	movgt r7, r8
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r5, #8]
	cmp r8, r9
	add r8, r6, #2
	movgt r7, r8
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r5, #12]
	cmp r8, r9
	add r8, r6, #3
	add r6, r6, #4
	movgt r7, r8
	cmp r6, #7
	blt label22
	mov r8, r7
	cmp r6, #10
	bge label114
.p2align 4
label27:
	add r5, r0, r6, lsl #2
	mov r7, r8
.p2align 4
label28:
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r5, #0]
	cmp r8, r9
	movgt r7, r6
	add r6, r6, #1
	cmp r6, #10
	bge label127
	add r5, r5, #4
	b label28
label114:
	cmp r2, r7
	bne label15
label7:
	cmp r1, #9
	blt label14
	b label8
label72:
	mov r8, r2
	mov r6, r1
	mov r7, r4
	cmp r1, #10
	blt label27
	b label114
label8:
	mov r5, r0
	mov r6, r4
	b label9
.p2align 4
label13:
	add r5, r5, #4
.p2align 4
label9:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	blt label13
	mov r0, r4
	add sp, sp, #44
	pop { r4, r5, r6, r7, r8, r9, pc }
label154:
	cmp r1, #9
	blt label14
	b label8
label47:
	mov r7, r2
	cmp r2, r2
	bne label15
	b label7
