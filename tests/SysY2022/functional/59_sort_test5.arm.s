.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	sub sp, sp, #40
	mov r2, #8
	mov r0, #4
	mov r1, #3
	mov r4, sp
	str r0, [sp, #0]
	str r1, [r4, #4]
	mov r1, #9
	str r1, [r4, #8]
	mov r1, #2
	str r1, [r4, #12]
	mov r1, #0
	str r1, [r4, #16]
	mov r1, #1
	str r1, [r4, #20]
	mov r1, #6
	str r1, [r4, #24]
	mov r1, #5
	str r1, [r4, #28]
	mov r1, #7
	str r1, [r4, #32]
	str r2, [r4, #36]
	sub r1, r2, #2
	add r3, r2, #1
	mov r2, r0
label5:
.p2align 4
	cmp r3, #10
	blt label8
	sub r0, r0, #1
	cmn r0, #1
	bgt label76
label137:
	mov r0, #9
	ldr r1, [sp, #0]
	mov r3, #1
	ldr r2, [r4, r0, lsl #2]
	str r2, [sp, #0]
	mov r2, #0
	str r1, [r4, r0, lsl #2]
	sub r1, r0, #1
	b label16
label8:
.p2align 4
	cmp r3, #9
	blt label47
	mov r5, #0
	b label9
label47:
.p2align 4
	add r5, r4, r3, lsl #2
	ldr r6, [r4, r3, lsl #2]
	ldr r5, [r5, #4]
	cmp r6, r5
	mov r5, #0
	movwlt r5, #1
label9:
.p2align 4
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	bgt label13
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	b label5
label13:
	sub r0, r0, #1
	cmn r0, #1
	bgt label76
	b label137
label16:
.p2align 4
	cmp r0, r3
	bgt label23
	cmp r1, #0
	bgt label89
label138:
.p2align 4
	mov r5, #0
	b label20
label89:
.p2align 4
	mov r0, r1
	ldr r1, [sp, #0]
	mov r3, #1
	ldr r2, [r4, r0, lsl #2]
	str r2, [sp, #0]
	mov r2, #0
	str r1, [r4, r0, lsl #2]
	sub r1, r0, #1
	cmp r0, r3
	bgt label23
	cmp r1, #0
	bgt label89
	b label138
label20:
.p2align 4
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #10
	bl putch
	add r5, r5, #1
	cmp r5, #10
	blt label20
	mov r0, #0
	add sp, sp, #40
	pop { r4, r5, r6, pc }
label23:
.p2align 4
	cmp r1, r3
	bgt label27
	mov r5, #0
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	bgt label19
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	cmp r0, r5
	bgt label23
	cmp r1, #0
	bgt label89
	b label138
label27:
.p2align 4
	add r5, r4, r3, lsl #2
	ldr r6, [r4, r3, lsl #2]
	ldr r5, [r5, #4]
	cmp r6, r5
	mov r5, #0
	movwlt r5, #1
	add r3, r3, r5
	ldr r5, [r4, r2, lsl #2]
	ldr r6, [r4, r3, lsl #2]
	cmp r5, r6
	bgt label19
	str r6, [r4, r2, lsl #2]
	lsl r2, r3, #1
	str r5, [r4, r3, lsl #2]
	add r5, r2, #1
	mov r2, r3
	mov r3, r5
	cmp r0, r5
	bgt label23
	cmp r1, #0
	bgt label89
	b label138
label19:
.p2align 4
	cmp r1, #0
	bgt label89
	b label138
label76:
.p2align 4
	mov r2, r1
	sub r1, r1, #2
	add r3, r2, #1
	mov r2, r0
	cmp r3, #10
	blt label8
	sub r0, r0, #1
	cmn r0, #1
	bgt label76
	b label137
