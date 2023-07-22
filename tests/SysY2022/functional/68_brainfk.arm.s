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
	b label32
label37:
	mov r0, #0
	movw r4, #:lower16:program
	mov r7, #0
	movw r5, #:lower16:tape
	movt r4, #:upper16:program
	mov r6, r7
	movt r5, #:upper16:tape
	str r7, [r4, r0, lsl #2]
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
label321:
	cmp r0, #62
	bne label12
	b label299
label32:
	bl getch
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	ble label128
	b label32
label128:
	mov r0, r4
	movw r4, #:lower16:program
	mov r7, #0
	movw r5, #:lower16:tape
	movt r4, #:upper16:program
	mov r6, r7
	movt r5, #:upper16:tape
	str r7, [r4, r0, lsl #2]
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	b label321
label324:
	cmp r0, #62
	bne label12
	b label299
label12:
	cmp r0, #60
	bne label14
	sub r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	b label324
label14:
	cmp r0, #43
	bne label16
	ldr r0, [r5, r7, lsl #2]
	add r0, r0, #1
	str r0, [r5, r7, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	b label324
label299:
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	b label324
label16:
	cmp r0, #45
	bne label17
	ldr r0, [r5, r7, lsl #2]
	sub r0, r0, #1
	str r0, [r5, r7, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	b label324
label17:
	cmp r0, #46
	bne label18
	ldr r0, [r5, r7, lsl #2]
	bl putch
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	b label299
label18:
	cmp r0, #44
	bne label19
	bl getch
	str r0, [r5, r7, lsl #2]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	b label299
label19:
	cmp r0, #93
	bne label9
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	beq label9
	mov r0, #1
	cmp r0, #0
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	b label261
label26:
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	adds r0, r0, r1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	b label311
label9:
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	b label299
label261:
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
label311:
	subs r0, r0, #1
	ble label9
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	bne label26
	b label311
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
