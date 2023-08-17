.arch armv7ve
.data
.bss
.p2align 3
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
	ble label40
	mov r7, r4
	mov r8, #0
.p2align 4
label3:
	bl getint
	str r0, [r7, #0]
	add r0, r8, #1
	cmp r6, r0
	ble label40
	add r7, r7, #4
	mov r8, r0
	b label3
label40:
	sub r1, r6, #1
	mov r0, #0
label11:
	cmp r0, r1
	bne label14
label13:
	mov r0, #0
	pop { r4, r5, r6, r7, r8, r9, r10, pc }
label14:
	ldr r3, [r4, r1, lsl #2]
	cmp r0, r1
	bge label59
	add r2, r4, r0, lsl #2
	mov r7, r0
	mov r6, r0
	ldr r8, [r2, #0]
	cmp r3, r8
	blt label31
.p2align 4
label34:
	add r9, r4, r7, lsl #2
	add r6, r6, #1
	add r7, r7, #1
	cmp r1, r6
	ldr r10, [r9, #0]
	str r10, [r2, #0]
	str r8, [r9, #0]
	ble label15
.p2align 4
label33:
	add r2, r2, #4
	ldr r8, [r2, #0]
	cmp r3, r8
	bge label34
	add r6, r6, #1
	cmp r1, r6
	bgt label33
label15:
	add r2, r4, r7, lsl #2
	cmp r5, r7
	add r6, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r6, #0]
	str r8, [r2, #0]
	str r3, [r6, #0]
	bne label17
	cmp r7, #0
	ble label13
	mov r5, #0
	b label22
.p2align 4
label25:
	add r4, r4, #4
.p2align 4
label22:
	ldr r0, [r4, #0]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r7, r5
	bgt label25
	b label13
label17:
	cmp r5, r7
	blt label18
	add r0, r7, #1
	b label11
label31:
	add r6, r6, #1
	cmp r1, r6
	bgt label33
	b label15
label59:
	mov r7, r0
	b label15
label18:
	sub r1, r7, #1
	b label11
