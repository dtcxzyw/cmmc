.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	sub sp, sp, #40
	mov r4, #0
	mov r1, #4
	mov r0, sp
	mov r3, r4
	str r1, [sp, #0]
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
	mov r1, r0
	cmp r4, #9
	blt label5
label40:
	mov r5, r0
	mov r6, r4
	b label23
.p2align 4
label5:
	add r5, r3, #5
	add r2, r3, #1
	cmp r5, #10
	bge label46
	add r5, r0, r2, lsl #2
	mov r7, r3
	mov r6, r2
.p2align 4
label7:
	ldr r8, [r0, r7, lsl #2]
	ldr r9, [r5, #0]
	cmp r8, r9
	add r8, r6, #1
	movgt r7, r6
	ldr r9, [r0, r7, lsl #2]
	ldr r10, [r0, r8, lsl #2]
	cmp r9, r10
	movgt r7, r8
	add r8, r6, #2
	ldr r9, [r0, r7, lsl #2]
	ldr r10, [r0, r8, lsl #2]
	cmp r9, r10
	movgt r7, r8
	add r8, r6, #3
	ldr r9, [r0, r7, lsl #2]
	add r6, r6, #4
	ldr r10, [r0, r8, lsl #2]
	cmp r9, r10
	movgt r7, r8
	cmp r6, #6
	bge label11
	add r5, r5, #16
	b label7
.p2align 4
label19:
	add r3, r0, r6, lsl #2
	ldr r5, [r3, #0]
	ldr r6, [r1, #0]
	str r6, [r3, #0]
	mov r3, r2
	str r5, [r1, #0]
	add r1, r1, #4
	cmp r2, #9
	blt label5
	b label40
.p2align 4
label23:
	ldr r0, [r5, #0]
	bl putint
	mov r0, #10
	bl putch
	add r6, r6, #1
	cmp r6, #10
	bge label26
	add r5, r5, #4
	b label23
.p2align 4
label11:
	add r5, r0, r6, lsl #2
	mov r8, r6
	mov r6, r7
	ldr r7, [r0, r7, lsl #2]
	ldr r9, [r5, #0]
	cmp r7, r9
	movgt r6, r8
	add r8, r8, #1
	cmp r8, #10
	blt label21
	b label145
.p2align 4
label14:
	ldr r7, [r0, r6, lsl #2]
	ldr r9, [r5, #0]
	cmp r7, r9
	movgt r6, r8
	add r8, r8, #1
	cmp r8, #10
	bge label18
.p2align 4
label21:
	add r5, r5, #4
	b label14
.p2align 4
label18:
	cmp r3, r6
	bne label19
	add r1, r1, #4
	mov r3, r2
	cmp r2, #9
	blt label5
	b label40
.p2align 4
label145:
	cmp r3, r6
	bne label19
	add r1, r1, #4
	mov r3, r2
	cmp r2, #9
	blt label5
	b label40
label26:
	mov r0, r4
	add sp, sp, #40
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label46:
	add r5, r0, r2, lsl #2
	mov r8, r2
	mov r6, r3
	ldr r7, [r0, r3, lsl #2]
	ldr r9, [r5, #0]
	cmp r7, r9
	movgt r6, r2
	add r8, r2, #1
	cmp r8, #10
	blt label21
	b label18
