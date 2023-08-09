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
	sub sp, sp, #4
	bl getint
	movw r10, #:lower16:dp
	movt r10, #:upper16:dp
	mov r6, r0
	mov r0, #140
	mla r7, r6, r0, r10
	bl getint
	mov r5, #1
	cmp r6, #0
	movw r9, #:lower16:t
	movt r9, #:upper16:t
	mov r4, r0
	ble label39
	add r8, r10, #140
	mov r11, r5
.p2align 4
label3:
	bl getint
	and r1, r0, #1
	add r0, r9, r11, lsl #3
	add r11, r11, #1
	str r5, [r0, r1, lsl #2]
	cmp r6, r11
	ldr r1, [r8, #-140]
	ldr r0, [r0, #4]
	add r0, r1, r0
	str r0, [r8, #0]
	blt label39
	add r8, r8, #140
	b label3
label39:
	add r2, r10, #140
	add r0, r9, #8
	mov r3, r5
	sub r1, r2, #140
	cmp r6, r5
	bge label21
	b label12
.p2align 4
label27:
	str r9, [r1, #140]
	cmp r4, r8
	add r1, r1, #4
	blt label117
.p2align 4
label26:
	add r8, r8, #1
	ldr r9, [r1, #0]
	and r10, r8, #1
	ldr r11, [r0, r10, lsl #2]
	ldr r10, [r1, #-4]
	add r9, r9, r11
	add r10, r11, r10
	cmp r10, r9
	blt label27
	str r10, [r1, #140]
	cmp r4, r8
	add r1, r1, #4
	bge label26
	add r3, r3, #1
	add r2, r2, #140
	add r0, r0, #8
	cmp r6, r3
	sub r1, r2, #140
	bge label21
label12:
	cmn r4, #1
	ble label69
	mov r1, #0
	mov r0, r1
	b label16
.p2align 4
label117:
	add r3, r3, #1
	add r2, r2, #140
	add r0, r0, #8
	cmp r6, r3
	sub r1, r2, #140
	blt label12
.p2align 4
label21:
	add r1, r1, #4
	mov r8, r5
	cmp r4, r5
	bge label26
	add r3, r3, #1
	add r2, r2, #140
	add r0, r0, #8
	cmp r6, r3
	sub r1, r2, #140
	bge label21
	b label12
.p2align 4
label20:
	add r7, r7, #4
.p2align 4
label16:
	ldr r2, [r7, #0]
	add r1, r1, #1
	cmp r0, r2
	movle r0, r2
	cmp r4, r1
	bge label20
label13:
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, r10, r11, pc }
label69:
	mov r0, #0
	b label13
