.arch armv7ve
.data
.bss
.align 8
tape:
	.zero	262144
.align 8
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
	movw r4, #:lower16:program
	cmp r0, #0
	mov r5, r0
	movt r4, #:upper16:program
	bgt label38
	mov r5, #0
	mov r6, #0
	mov r7, r6
	str r6, [r4, r5, lsl #2]
	movw r5, #:lower16:tape
	movt r5, #:upper16:tape
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label38:
	mov r6, #0
	b label31
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label31:
	bl getch
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r5, r6
	bgt label31
	mov r6, #0
	mov r7, r6
	str r6, [r4, r5, lsl #2]
	movw r5, #:lower16:tape
	movt r5, #:upper16:tape
	ldr r0, [r4, r6, lsl #2]
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
label16:
	cmp r0, #45
	beq label72
	cmp r0, #46
	beq label28
	cmp r0, #44
	beq label27
	cmp r0, #93
	bne label9
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
	beq label103
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	add r0, r0, r1
	b label21
.p2align 4
label13:
	sub r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label15:
	add r0, r5, r6, lsl #2
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	b label9
label103:
	sub r0, r0, #1
	b label21
label72:
	add r0, r5, r6, lsl #2
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	b label9
label28:
	ldr r0, [r5, r6, lsl #2]
	bl putch
	b label9
label27:
	bl getch
	str r0, [r5, r6, lsl #2]
	b label9
