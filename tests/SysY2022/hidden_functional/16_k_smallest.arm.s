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
.globl main
main:
.p2align 4
	push { r4, r5, r6, r7, r8, r9, lr }
	sub sp, sp, #4
	bl getint
	mov r6, r0
	bl getint
	cmp r6, #0
	movw r4, #:lower16:array
	mov r5, r0
	movt r4, #:upper16:array
	bgt label32
	b label31
label110:
	ldr r3, [r4, r1, lsl #2]
	mov r6, r0
	mov r2, r0
	b label9
label32:
	mov r7, #0
.p2align 4
label24:
	bl getint
	str r0, [r4, r7, lsl #2]
	add r7, r7, #1
	cmp r6, r7
	bgt label24
	sub r1, r6, #1
	mov r0, #0
	cmp r0, r1
	beq label23
	b label110
.p2align 4
label9:
	cmp r1, r2
	ble label43
.p2align 4
label12:
	ldr r7, [r4, r2, lsl #2]
	cmp r3, r7
	bge label13
	add r2, r2, #1
	cmp r1, r2
	bgt label12
	add r2, r4, r6, lsl #2
	cmp r5, r6
	add r7, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	str r3, [r7, #0]
	beq label20
	b label17
.p2align 4
label31:
	sub r1, r6, #1
	mov r0, #0
	cmp r0, r1
	bne label110
label23:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, r8, r9, pc }
.p2align 4
label13:
	add r8, r4, r6, lsl #2
	add r6, r6, #1
	ldr r9, [r8, #0]
	str r9, [r4, r2, lsl #2]
	str r7, [r8, #0]
	add r2, r2, #1
	cmp r1, r2
	bgt label12
	add r2, r4, r6, lsl #2
	cmp r5, r6
	add r7, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	str r3, [r7, #0]
	bne label17
label20:
	cmp r6, #0
	ble label23
	mov r5, #0
.p2align 4
label21:
	ldr r0, [r4, r5, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r5, r5, #1
	cmp r6, r5
	bgt label21
	b label23
.p2align 4
label43:
	add r2, r4, r6, lsl #2
	cmp r5, r6
	add r7, r4, r1, lsl #2
	ldr r3, [r2, #0]
	ldr r8, [r7, #0]
	str r8, [r2, #0]
	str r3, [r7, #0]
	beq label20
label17:
	cmp r5, r6
	blt label19
	add r0, r6, #1
label6:
	cmp r0, r1
	beq label23
	b label110
label19:
	sub r1, r6, #1
	b label6
