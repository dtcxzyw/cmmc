.arch armv7ve
.data
.bss
.align 8
array:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, r8, r9, r10, lr }
	bl getint
	mov r6, r0
	bl getint
	cmp r6, #0
	movw r4, #:lower16:array
	movt r4, #:upper16:array
	mov r5, r0
	ble label38
	mov r7, r4
	mov r8, #0
.p2align 4
label3:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r6, r0
	ble label38
	add r7, r7, #4
	mov r8, r0
	b label3
label38:
	sub r1, r6, #1
	mov r0, #0
label11:
	cmp r0, r1
	beq label13
	ldr r3, [r4, r1, lsl #2]
	add r2, r4, r0, lsl #2
	mov r6, r0
	mov r7, r0
	cmp r1, r0
	ble label23
.p2align 4
label19:
	ldr r8, [r2, #0]
	cmp r3, r8
	bge label20
	add r7, r7, #1
	add r2, r2, #4
	cmp r1, r7
	bgt label19
	b label23
.p2align 4
label20:
	add r9, r4, r6, lsl #2
	add r6, r6, #1
	ldr r10, [r9, #0]
	str r10, [r2, #0]
	str r8, [r9, #0]
	add r7, r7, #1
	add r2, r2, #4
	cmp r1, r7
	bgt label19
label23:
	add r2, r4, r6, lsl #2
	cmp r5, r6
	add r7, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	str r3, [r7, #0]
	bne label24
	cmp r6, #0
	ble label13
	mov r5, #0
.p2align 4
label29:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r6, r5
	ble label13
	add r4, r4, #4
	b label29
label24:
	cmp r5, r6
	blt label26
	add r0, r6, #1
	b label11
label13:
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label26:
	sub r1, r6, #1
	b label11
