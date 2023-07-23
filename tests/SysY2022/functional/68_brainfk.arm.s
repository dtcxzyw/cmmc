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
	bgt label37
	mov r0, #0
	movw r4, #:lower16:program
	mov r6, #0
	movw r5, #:lower16:tape
	movt r4, #:upper16:program
	mov r7, r6
	movt r5, #:upper16:tape
	str r6, [r4, r0, lsl #2]
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label37:
	movw r5, #:lower16:program
	mov r6, #0
	movt r5, #:upper16:program
label32:
	bl getch
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label32
	mov r0, r4
	movw r4, #:lower16:program
	mov r6, #0
	movw r5, #:lower16:tape
	movt r4, #:upper16:program
	mov r7, r6
	movt r5, #:upper16:tape
	str r6, [r4, r0, lsl #2]
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label27:
	bl getch
	str r0, [r5, r6, lsl #2]
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label20:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	bne label92
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label92:
	mov r0, #1
	cmp r0, #0
	bgt label24
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label24:
	sub r7, r7, #1
	ldr r1, [r4, r7, lsl #2]
	cmp r1, #91
	beq label25
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	adds r0, r0, r1
	bgt label24
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label25:
	subs r0, r0, #1
	bgt label24
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label30
label7:
	cmp r0, #62
	beq label8
	cmp r0, #60
	beq label13
	cmp r0, #43
	beq label15
	cmp r0, #45
	beq label29
	cmp r0, #46
	beq label28
	cmp r0, #44
	beq label27
	cmp r0, #93
	beq label20
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label15:
	ldr r0, [r5, r6, lsl #2]
	add r0, r0, #1
	str r0, [r5, r6, lsl #2]
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label8:
	add r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label13:
	sub r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label28:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label29:
	ldr r0, [r5, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r5, r6, lsl #2]
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
