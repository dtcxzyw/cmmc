.arch armv7ve
.data
.bss
.align 8
t:
	.zero	8040
.align 8
dp:
	.zero	140700
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	@ stack usage: CalleeArg[0] Local[0] RegSpill[4] CalleeSaved[0]
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r10, #:lower16:dp
	movt r10, #:upper16:dp
	mov r5, r0
	mov r0, #140
	mla r6, r5, r0, r10
	bl getint
	mov r4, #1
	cmp r5, #0
	str r0, [sp, #0]
	mov r9, r0
	movw r7, #:lower16:t
	movt r7, #:upper16:t
	ble label2
	add r8, r10, #140
	mov r9, r4
	b label12
.p2align 4
label15:
	add r8, r8, #140
.p2align 4
label12:
	bl getint
	and r1, r0, #1
	add r0, r7, r9, lsl #3
	add r9, r9, #1
	str r4, [r0, r1, lsl #2]
	cmp r5, r9
	ldr r1, [r8, #-140]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r8, #0]
	bge label15
	add r2, r10, #140
	mov r3, r4
	add r0, r7, r4, lsl #3
	sub r1, r2, #140
	ldr r9, [sp, #0]
	cmp r9, #0
	bgt label22
	b label20
.p2align 4
label26:
	add r1, r1, #4
.p2align 4
label23:
	add r8, r8, #1
	ldr r9, [r1, #0]
	and r10, r8, #1
	ldr r11, [r0, r10, lsl #2]
	ldr r10, [r1, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	movle r10, r9
	str r10, [r1, #140]
	ldr r9, [sp, #0]
	cmp r9, r8
	bge label26
	add r3, r3, #1
	cmp r5, r3
	blt label2
.p2align 4
label21:
	add r2, r2, #140
	add r0, r7, r3, lsl #3
	ldr r9, [sp, #0]
	sub r1, r2, #140
	cmp r9, #0
	ble label20
.p2align 4
label22:
	add r1, r1, #4
	mov r8, r4
	b label23
label2:
	ldr r9, [sp, #0]
	cmn r9, #1
	ble label40
	mov r1, #0
	mov r0, r1
.p2align 4
label6:
	ldr r2, [r6, #0]
	add r1, r1, #1
	ldr r9, [sp, #0]
	cmp r0, r2
	movle r0, r2
	cmp r9, r1
	blt label3
	add r6, r6, #4
	b label6
label3:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label20:
	add r3, r3, #1
	cmp r5, r3
	bge label21
	b label2
label40:
	mov r0, #0
	b label3
