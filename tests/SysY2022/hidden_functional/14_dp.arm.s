.arch armv7ve
.data
.bss
.align 4
t:
	.zero	8040
.align 4
dp:
	.zero	140700
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, r10, r11, lr }
	sub sp, sp, #12
	bl getint
	movw r4, #:lower16:dp
	mov r5, r0
	movt r4, #:upper16:dp
	mov r0, #140
	mla r2, r5, r0, r4
	str r2, [sp, #0]
	bl getint
	cmp r5, #0
	movw r6, #:lower16:t
	str r0, [sp, #4]
	mov r8, r0
	movt r6, #:upper16:t
	bgt label28
	mov r0, #1
	sub r1, r0, #1
	mov r2, #140
	add r3, r6, r0, lsl #3
	cmp r5, r0
	mla r7, r0, r2, r4
	mla r1, r1, r2, r4
	bge label57
	ldr r8, [sp, #4]
	cmn r8, #1
	bgt label86
label114:
.p2align 4
	mov r0, #0
	b label16
label28:
.p2align 4
	mov r7, #1
	b label2
label86:
	mov r1, #0
	mov r0, r1
label13:
.p2align 4
	ldr r2, [sp, #0]
	ldr r2, [r2, r1, lsl #2]
	ldr r8, [sp, #4]
	add r1, r1, #1
	cmp r0, r2
	movle r0, r2
	cmp r8, r1
	bge label13
label16:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label57:
	mov r2, #1
	ldr r8, [sp, #4]
	cmp r8, r2
	bge label8
	add r0, r0, #1
	sub r1, r0, #1
	mov r2, #140
	add r3, r6, r0, lsl #3
	cmp r5, r0
	mla r7, r0, r2, r4
	mla r1, r1, r2, r4
	bge label57
	cmn r8, #1
	bgt label86
	b label114
label8:
.p2align 4
	add r8, r2, #1
	add r10, r1, r2, lsl #2
	ldr r9, [r1, r2, lsl #2]
	and r11, r8, #1
	ldr r11, [r3, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	blt label9
	str r10, [r7, r2, lsl #2]
	mov r2, r8
	ldr r8, [sp, #4]
	cmp r8, r2
	bge label8
	add r0, r0, #1
	sub r1, r0, #1
	mov r2, #140
	add r3, r6, r0, lsl #3
	cmp r5, r0
	mla r7, r0, r2, r4
	mla r1, r1, r2, r4
	bge label57
	cmn r8, #1
	bgt label86
	b label114
label9:
.p2align 4
	str r9, [r7, r2, lsl #2]
	mov r2, r8
	ldr r8, [sp, #4]
	cmp r8, r2
	bge label8
	add r0, r0, #1
	sub r1, r0, #1
	mov r2, #140
	add r3, r6, r0, lsl #3
	cmp r5, r0
	mla r7, r0, r2, r4
	mla r1, r1, r2, r4
	bge label57
	cmn r8, #1
	bgt label86
	b label114
label2:
.p2align 4
	bl getint
	and r1, r0, #1
	mov r2, #1
	add r0, r6, r7, lsl #3
	str r2, [r0, r1, lsl #2]
	mov r2, #140
	mul r1, r7, r2
	mla r2, r7, r2, r4
	add r7, r7, #1
	cmp r5, r7
	ldr r2, [r2, #-140]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r4, r1]
	bge label2
	mov r0, #1
	sub r1, r0, #1
	mov r2, #140
	add r3, r6, r0, lsl #3
	cmp r5, r0
	mla r7, r0, r2, r4
	mla r1, r1, r2, r4
	bge label57
	ldr r8, [sp, #4]
	cmn r8, #1
	bgt label86
	b label114
