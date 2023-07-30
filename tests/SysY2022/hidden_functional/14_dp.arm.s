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
	mov r3, #140
	add r2, r6, r0, lsl #3
	cmp r5, r0
	mla r1, r1, r3, r4
	mla r3, r0, r3, r4
	bge label39
	ldr r8, [sp, #4]
	cmn r8, #1
	bgt label68
.p2align 4
label123:
	mov r0, #0
	b label14
.p2align 4
label28:
	mov r7, #1
	b label16
label68:
	mov r1, #0
	mov r0, r1
.p2align 4
label11:
	ldr r2, [sp, #0]
	ldr r2, [r2, r1, lsl #2]
	ldr r8, [sp, #4]
	add r1, r1, #1
	cmp r0, r2
	movle r0, r2
	cmp r8, r1
	bge label11
label14:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label39:
	mov r7, #1
	ldr r8, [sp, #4]
	cmp r8, r7
	bge label6
	add r0, r0, #1
	sub r1, r0, #1
	mov r3, #140
	add r2, r6, r0, lsl #3
	cmp r5, r0
	mla r1, r1, r3, r4
	mla r3, r0, r3, r4
	bge label39
	cmn r8, #1
	bgt label68
	b label123
.p2align 4
label6:
	add r8, r7, #1
	add r10, r1, r7, lsl #2
	and r11, r8, #1
	ldr r9, [r10, #0]
	ldr r11, [r2, r11, lsl #2]
	ldr r10, [r10, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	blt label7
	str r10, [r3, r7, lsl #2]
	mov r7, r8
	ldr r8, [sp, #4]
	cmp r8, r7
	bge label6
	add r0, r0, #1
	sub r1, r0, #1
	mov r3, #140
	add r2, r6, r0, lsl #3
	cmp r5, r0
	mla r1, r1, r3, r4
	mla r3, r0, r3, r4
	bge label39
	cmn r8, #1
	bgt label68
	b label123
.p2align 4
label7:
	str r9, [r3, r7, lsl #2]
	mov r7, r8
	ldr r8, [sp, #4]
	cmp r8, r7
	bge label6
	add r0, r0, #1
	sub r1, r0, #1
	mov r3, #140
	add r2, r6, r0, lsl #3
	cmp r5, r0
	mla r1, r1, r3, r4
	mla r3, r0, r3, r4
	bge label39
	cmn r8, #1
	bgt label68
	b label123
.p2align 4
label16:
	bl getint
	mov r2, #1
	and r1, r0, #1
	add r0, r6, r7, lsl #3
	str r2, [r0, r1, lsl #2]
	mov r1, #140
	mla r1, r7, r1, r4
	add r7, r7, #1
	cmp r5, r7
	ldr r2, [r1, #-140]
	ldr r0, [r0, #4]
	add r0, r2, r0
	str r0, [r1, #0]
	bge label16
	mov r0, #1
	sub r1, r0, #1
	mov r3, #140
	add r2, r6, r0, lsl #3
	cmp r5, r0
	mla r1, r1, r3, r4
	mla r3, r0, r3, r4
	bge label39
	ldr r8, [sp, #4]
	cmn r8, #1
	bgt label68
	b label123
