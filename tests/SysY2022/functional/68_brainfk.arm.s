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
	b label2
label37:
	movw r5, #:lower16:program
	mov r6, #0
	movt r5, #:upper16:program
	b label32
label2:
	movw r4, #:lower16:program
	mov r6, #0
	movw r5, #:lower16:tape
	movt r4, #:upper16:program
	mov r7, r6
	movt r5, #:upper16:tape
	str r6, [r4, r0, lsl #2]
label4:
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label30
	cmp r0, #62
	bne label12
	add r6, r6, #1
label9:
	add r7, r7, #1
	b label4
label12:
	cmp r0, #60
	bne label14
	sub r6, r6, #1
	b label9
label14:
	cmp r0, #43
	bne label16
	ldr r0, [r5, r6, lsl #2]
	add r0, r0, #1
	str r0, [r5, r6, lsl #2]
	b label9
label16:
	cmp r0, #45
	beq label29
	cmp r0, #46
	beq label28
	b label18
label20:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq label9
	mov r0, #1
label21:
	cmp r0, #0
	bgt label24
	b label9
label29:
	ldr r0, [r5, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r5, r6, lsl #2]
	b label9
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label24:
	sub r7, r7, #1
	ldr r1, [r4, r7, lsl #2]
	cmp r1, #91
	bne label26
	sub r0, r0, #1
	b label21
label26:
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	add r0, r0, r1
	b label21
label28:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	b label9
label18:
	cmp r0, #44
	beq label27
	cmp r0, #93
	beq label20
	b label9
label27:
	bl getch
	str r0, [r5, r6, lsl #2]
	b label9
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
	b label4
