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
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	mov r3, #140
	movw r6, #:lower16:dp
	movt r6, #:upper16:dp
	mov r5, r0
	mla r0, r0, r3, r6
	str r0, [sp, #0]
	bl getint
	mov r4, #1
	cmp r5, #0
	str r0, [sp, #4]
	mov r9, r0
	movw r8, #:lower16:t
	movt r8, #:upper16:t
	ble label40
	add r7, r8, #8
	mov r9, r4
.p2align 4
label3:
	bl getint
	mov r3, #140
	and r0, r0, #1
	str r4, [r7, r0, lsl #2]
	mla r0, r9, r3, r6
	add r9, r9, #1
	cmp r5, r9
	ldr r1, [r0, #-140]
	ldr r2, [r7, #4]
	add r1, r1, r2
	str r1, [r0, #0]
	blt label40
	add r7, r7, #8
	b label3
label40:
	add r0, r8, #8
	add r1, r6, #140
	mov r2, r4
	sub r7, r4, #1
	mov r3, #140
	cmp r5, r4
	mla r3, r7, r3, r6
	blt label12
.p2align 4
label21:
	add r7, r3, #4
	mov r8, r4
	add r3, r1, #4
	ldr r9, [sp, #4]
	cmp r9, r4
	blt label26
.p2align 4
label27:
	add r8, r8, #1
	ldr r9, [r7, #0]
	and r10, r8, #1
	ldr r11, [r0, r10, lsl #2]
	ldr r10, [r7, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	blt label29
	str r10, [r3, #0]
	add r7, r7, #4
	add r3, r3, #4
	ldr r9, [sp, #4]
	cmp r9, r8
	bge label27
	b label125
.p2align 4
label29:
	str r9, [r3, #0]
	add r7, r7, #4
	add r3, r3, #4
	ldr r9, [sp, #4]
	cmp r9, r8
	bge label27
	add r2, r2, #1
	add r0, r0, #8
	add r1, r1, #140
	sub r7, r2, #1
	mov r3, #140
	cmp r5, r2
	mla r3, r7, r3, r6
	bge label21
label12:
	ldr r9, [sp, #4]
	cmn r9, #1
	ble label71
	ldr r0, [sp, #0]
	mov r2, #0
	mov r1, r2
	b label16
.p2align 4
label125:
	add r2, r2, #1
	add r0, r0, #8
	add r1, r1, #140
	sub r7, r2, #1
	mov r3, #140
	cmp r5, r2
	mla r3, r7, r3, r6
	bge label21
	b label12
.p2align 4
label16:
	ldr r3, [r0, #0]
	add r2, r2, #1
	ldr r9, [sp, #4]
	cmp r1, r3
	movle r1, r3
	cmp r9, r2
	blt label78
	add r0, r0, #4
	b label16
label26:
	add r2, r2, #1
	add r0, r0, #8
	add r1, r1, #140
	sub r7, r2, #1
	mov r3, #140
	cmp r5, r2
	mla r3, r7, r3, r6
	bge label21
	b label12
label13:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label78:
	mov r0, r1
	b label13
label71:
	mov r0, #0
	b label13
