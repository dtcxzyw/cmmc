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
	bgt label2
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
	beq label33
.p2align 4
label10:
	cmp r0, #62
	beq label11
	cmp r0, #60
	beq label16
	cmp r0, #43
	beq label18
	b label19
.p2align 4
label11:
	add r6, r6, #1
.p2align 4
label12:
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label10
label33:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label16:
	sub r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label10
	b label33
label19:
	cmp r0, #45
	beq label83
	cmp r0, #46
	beq label31
	cmp r0, #44
	beq label30
	cmp r0, #93
	bne label12
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	beq label12
	mov r0, #1
label24:
	cmp r0, #0
	ble label12
	sub r7, r7, #1
	ldr r1, [r4, r7, lsl #2]
	cmp r1, #91
	beq label114
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	add r0, r0, r1
	b label24
label18:
	ldr r0, [r5, r6, lsl #2]
	add r0, r0, #1
	str r0, [r5, r6, lsl #2]
	b label12
label114:
	sub r0, r0, #1
	b label24
label83:
	ldr r0, [r5, r6, lsl #2]
	sub r0, r0, #1
	str r0, [r5, r6, lsl #2]
	b label12
label31:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	b label12
label2:
	movw r5, #:lower16:program
	mov r6, #0
	movt r5, #:upper16:program
.p2align 4
label3:
	bl getch
	str r0, [r5, r6, lsl #2]
	add r6, r6, #1
	cmp r4, r6
	bgt label3
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
	bne label10
	b label33
label30:
	bl getch
	str r0, [r5, r6, lsl #2]
	b label12
