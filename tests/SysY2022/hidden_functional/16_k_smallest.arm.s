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
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r6, r0
	bl getint
	cmp r6, #0
	movw r4, #:lower16:array
	movt r4, #:upper16:array
	mov r5, r0
	bgt label32
label31:
	sub r1, r6, #1
	mov r0, #0
	b label8
label32:
	mov r7, #0
.p2align 4
label2:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label2
	b label31
label8:
	cmp r0, r1
	beq label25
	ldr r3, [r4, r1, lsl #2]
	mov r6, r0
	mov r2, r0
	cmp r1, r0
	ble label18
.p2align 4
label14:
	ldr r7, [r4, r2, lsl #2]
	cmp r3, r7
	bge label15
	add r2, r2, #1
	cmp r1, r2
	bgt label14
	b label18
.p2align 4
label15:
	add r8, r4, r6, lsl #2
	add r6, r6, #1
	ldr r9, [r8, #0]
	str r9, [r4, r2, lsl #2]
	str r7, [r8, #0]
	add r2, r2, #1
	cmp r1, r2
	bgt label14
label18:
	add r2, r4, r6, lsl #2
	cmp r5, r6
	add r7, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	str r3, [r7, #0]
	beq label22
	bge label20
	sub r1, r6, #1
	b label8
label22:
	cmp r6, #0
	ble label25
	mov r5, #0
.p2align 4
label23:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r6, r5
	bgt label23
label25:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
label20:
	add r0, r6, #1
	b label8
