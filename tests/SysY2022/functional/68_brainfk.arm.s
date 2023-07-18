.arch armv7ve
.data
.bss
.align 4
tape:
	.zero	262144
.align 4
program:
	.zero	131072
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #0
	mov r4, r0
	ble label37
	movw r5, #:lower16:program
	mov r6, #0
	movt r5, #:upper16:program
	b label3
label37:
	mov r0, #0
	movw r1, #:lower16:program
	mov r6, #0
	movw r5, #:lower16:tape
	movt r1, #:upper16:program
	mov r7, r6
	movt r5, #:upper16:tape
	str r6, [r1, r0, lsl #2]
	mov r4, r1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r6, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
label322:
	cmp r0, #62
	bne label15
	b label300
label3:
	bl getch
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label47
	b label3
label47:
	mov r0, r4
	movw r1, #:lower16:program
	mov r6, #0
	movw r5, #:lower16:tape
	movt r1, #:upper16:program
	mov r7, r6
	movt r5, #:upper16:tape
	str r6, [r1, r4, lsl #2]
	mov r4, r1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r6, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r1, r6, lsl #2]
	cmp r0, #0
	beq label33
	b label322
label33:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label15:
	cmp r0, #60
	bne label17
	sub r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	b label325
label19:
	cmp r0, #45
	bne label20
	ldr r0, [r5, r7, lsl #2]
	sub r0, r0, #1
	str r0, [r5, r7, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
label325:
	cmp r0, #62
	bne label15
	b label300
label17:
	cmp r0, #43
	bne label19
	ldr r0, [r5, r7, lsl #2]
	add r0, r0, #1
	str r0, [r5, r7, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	b label325
label300:
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	b label325
label21:
	cmp r0, #44
	bne label22
	bl getch
	str r0, [r5, r7, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	b label300
label20:
	cmp r0, #46
	bne label21
	ldr r0, [r5, r7, lsl #2]
	bl putch
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	b label300
label22:
	cmp r0, #93
	bne label12
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	beq label12
	mov r0, #1
	cmp r0, #0
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	b label262
label12:
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label33
	cmp r0, #62
	bne label15
	b label300
label262:
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
label312:
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	b label312
label29:
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	adds r0, r0, r1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	subs r0, r0, #1
	ble label12
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label29
	b label312
