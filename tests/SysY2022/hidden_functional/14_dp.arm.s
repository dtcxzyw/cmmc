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
	mov r10, #140
	movw r8, #:lower16:dp
	movt r8, #:upper16:dp
	mov r5, r0
	mla r6, r0, r10, r8
	bl getint
	mov r4, #1
	movw r9, #:lower16:t
	movt r9, #:upper16:t
	str r0, [sp, #0]
	cmp r5, #0
	ble label40
	add r7, r9, #8
	mov r11, r4
.p2align 4
label3:
	bl getint
	and r0, r0, #1
	str r4, [r7, r0, lsl #2]
	mla r0, r11, r10, r8
	add r11, r11, #1
	cmp r5, r11
	ldr r1, [r0, #-140]
	ldr r2, [r7, #4]
	add r1, r1, r2
	str r1, [r0, #0]
	blt label40
	add r7, r7, #8
	b label3
label40:
	add r1, r8, #140
	add r0, r9, #8
	mov r2, r4
	sub r3, r1, #140
	cmp r5, r4
	bge label22
	b label13
.p2align 4
label30:
	str r9, [r3, #0]
	add r7, r7, #4
	ldr r9, [sp, #0]
	add r3, r3, #4
	cmp r9, r8
	blt label121
.p2align 4
label28:
	add r8, r8, #1
	ldr r9, [r7, #0]
	and r10, r8, #1
	ldr r11, [r0, r10, lsl #2]
	ldr r10, [r7, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	blt label30
	str r10, [r3, #0]
	add r7, r7, #4
	ldr r9, [sp, #0]
	add r3, r3, #4
	cmp r9, r8
	bge label28
	add r2, r2, #1
	add r1, r1, #140
	add r0, r0, #8
	cmp r5, r2
	sub r3, r1, #140
	bge label22
label13:
	ldr r9, [sp, #0]
	cmn r9, #1
	ble label71
	mov r1, #0
	mov r0, r1
	b label17
.p2align 4
label121:
	add r2, r2, #1
	add r1, r1, #140
	add r0, r0, #8
	cmp r5, r2
	sub r3, r1, #140
	blt label13
.p2align 4
label22:
	add r7, r3, #4
	mov r8, r4
	add r3, r1, #4
	ldr r9, [sp, #0]
	cmp r9, r4
	bge label28
	add r2, r2, #1
	add r1, r1, #140
	add r0, r0, #8
	cmp r5, r2
	sub r3, r1, #140
	bge label22
	b label13
.p2align 4
label21:
	add r6, r6, #4
.p2align 4
label17:
	ldr r2, [r6, #0]
	add r1, r1, #1
	ldr r9, [sp, #0]
	cmp r0, r2
	movle r0, r2
	cmp r9, r1
	bge label21
label14:
	add sp, sp, #12
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label71:
	mov r0, #0
	b label14
