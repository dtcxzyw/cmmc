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
	push { r4, r5, r6, r7, r8, lr }
	bl getint
	mov r5, r0
	bl getint
	cmp r5, #0
	mov r4, r0
	ble label2
	b label30
label2:
	sub r1, r5, #1
	mov r0, #0
	cmp r0, r1
	bne label8
	b label23
label8:
	movw r2, #:lower16:array
	mov r6, r0
	movt r2, #:upper16:array
	ldr r3, [r2, r1, lsl #2]
	mov r5, r2
	mov r2, r0
	cmp r1, r0
	ble label16
	ldr r7, [r5, r0, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r0, lsl #2]
	str r8, [r5, r0, lsl #2]
	str r7, [r5, r0, lsl #2]
	add r6, r0, #1
	add r2, r0, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	b label135
label16:
	ldr r2, [r5, r6, lsl #2]
	cmp r4, r6
	ldr r3, [r5, r1, lsl #2]
	str r3, [r5, r6, lsl #2]
	str r2, [r5, r1, lsl #2]
	bne label20
	mov r4, #0
	cmp r6, r4
	ble label23
label19:
	ldr r0, [r5, r4, lsl #2]
	bl putint
	mov r0, #32
	bl putch
	add r4, r4, #1
	cmp r6, r4
	ble label23
	b label19
label14:
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
label134:
	ldr r8, [r5, r6, lsl #2]
	str r8, [r5, r2, lsl #2]
	str r7, [r5, r6, lsl #2]
	add r6, r6, #1
	add r2, r2, #1
	cmp r1, r2
	ble label16
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	b label134
label135:
	ldr r7, [r5, r2, lsl #2]
	cmp r3, r7
	blt label14
	b label134
label20:
	cmp r4, r6
	bge label21
	sub r1, r6, #1
	cmp r0, r1
	bne label8
	b label23
label21:
	add r0, r6, #1
	cmp r0, r1
	bne label8
label23:
	mov r0, #0
	pop { r4, r5, r6, r7, r8, pc }
label30:
	movw r6, #:lower16:array
	mov r7, #0
	movt r6, #:upper16:array
label25:
	bl getint
	str r0, [r6, r7, lsl #2]
	add r7, r7, #1
	cmp r5, r7
	ble label2
	b label25
