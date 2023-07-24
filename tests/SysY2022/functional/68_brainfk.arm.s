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
.p2align 4
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
	b label4
label37:
	movw r5, #:lower16:program
	mov r6, #0
	movt r5, #:upper16:program
	b label32
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
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
.p2align 4
label4:
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label30
.p2align 4
label7:
	cmp r0, #62
	beq label8
	cmp r0, #60
	beq label13
	cmp r0, #43
	beq label15
	b label16
.p2align 4
label8:
	add r6, r6, #1
.p2align 4
label9:
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
.p2align 4
label13:
	sub r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label16:
	cmp r0, #45
	beq label73
	cmp r0, #46
	beq label28
	cmp r0, #44
	beq label27
	cmp r0, #93
	beq label20
	b label9
label27:
	bl getch
	str r0, [r5, r6, lsl #2]
	b label9
label20:
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq label9
	mov r0, #1
label21:
	cmp r0, #0
	ble label9
	sub r7, r7, #1
	ldr r1, [r4, r7, lsl #2]
	cmp r1, #91
	beq label25
	b label103
label15:
	ldr r0, [r5, r6, lsl #2]
	add r0, r0, #1
	str r0, [r5, r6, lsl #2]
	b label9
label103:
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	add r0, r0, r1
	b label21
label25:
	sub r0, r0, #1
	b label21
label73:
	ldr r0, [r5, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r5, r6, lsl #2]
	b label9
label28:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	b label9
