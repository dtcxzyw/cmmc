.arch armv7ve
.data
.bss
.align 4
array:
	.zero	4000
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r5, r0
	bl getint
	cmp r5, #0
	mov r4, r0
	ble label30
	movw r6, #:lower16:array
	mov r7, #0
	movt r6, #:upper16:array
	b label25
label35:
	movw r5, #:lower16:array
	mov r6, r0
	mov r2, r0
	movt r5, #:upper16:array
	ldr r3, [r5, r1, lsl #2]
	cmp r1, r0
	bgt label12
	ldr r2, [r5, r0, lsl #2]
	cmp r4, r0
	ldr r3, [r5, r1, lsl #2]
	str r3, [r5, r0, lsl #2]
	str r2, [r5, r1, lsl #2]
	beq label69
	blt label81
label110:
	add r0, r6, #1
	b label6
.p2align 4
label12:
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	bge label13
	add r2, r2, #1
	cmp r1, r2
	bgt label12
	ldr r2, [r5, r6, lsl #2]
	cmp r4, r6
	ldr r3, [r5, r1, lsl #2]
	str r3, [r5, r6, lsl #2]
	str r2, [r5, r1, lsl #2]
	beq label69
	blt label81
	b label110
label69:
	mov r4, #0
	b label17
label81:
	sub r1, r6, #1
	b label6
label23:
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
.p2align 4
label25:
	bl getint
	str r0, [r6, r7, lsl #2]
	add r7, r7, #1
	cmp r5, r7
	bgt label25
	sub r1, r5, #1
	mov r0, #0
	cmp r0, r1
	beq label23
	b label35
.p2align 4
label13:
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	bgt label12
	ldr r2, [r5, r6, lsl #2]
	cmp r4, r6
	ldr r3, [r5, r1, lsl #2]
	str r3, [r5, r6, lsl #2]
	str r2, [r5, r1, lsl #2]
	beq label69
	blt label81
	b label110
.p2align 4
label17:
	cmp r6, r4
	ble label23
	ldr r0, [r5, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r4, r4, #1
	b label17
label6:
	cmp r0, r1
	beq label23
	b label35
label30:
	sub r1, r5, #1
	mov r0, #0
	b label6
