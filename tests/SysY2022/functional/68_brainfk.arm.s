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
	ble label37
	mov r6, #0
	b label31
label4:
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
.p2align 4
label31:
	bl getch
	str r0, [r4, r6, lsl #2]
	add r6, r6, #1
	cmp r5, r6
	bgt label31
	mov r7, #0
	mov r6, r7
	str r7, [r4, r5, lsl #2]
	movw r5, #:lower16:tape
	movt r5, #:upper16:tape
	b label4
.p2align 4
label7:
	cmp r0, #62
	bne label52
	add r7, r7, #1
.p2align 4
label9:
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
label30:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
.p2align 4
label52:
	cmp r0, #60
	beq label13
	cmp r0, #43
	bne label164
	add r0, r5, r7, lsl #2
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label164:
	cmp r0, #45
	bne label167
	add r0, r5, r7, lsl #2
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label167:
	cmp r0, #46
	bne label18
	ldr r0, [r5, r7, lsl #2]
	bl putch
	b label9
label18:
	cmp r0, #44
	beq label27
	cmp r0, #93
	beq label20
	b label9
.p2align 4
label13:
	sub r7, r7, #1
	add r6, r6, #1
	ldr r0, [r4, r6, lsl #2]
	cmp r0, #0
	bne label7
	b label30
label20:
	ldr r0, [r5, r7, lsl #2]
	cmp r0, #0
	beq label9
	mov r0, #1
	cmp r0, #0
	ble label9
label24:
	sub r6, r6, #1
	ldr r1, [r4, r6, lsl #2]
	cmp r1, #91
	beq label26
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	adds r0, r0, r1
	bgt label24
	b label9
label26:
	subs r0, r0, #1
	bgt label24
	b label9
label37:
	mov r5, #0
	mov r7, #0
	mov r6, r7
	str r7, [r4, r5, lsl #2]
	movw r5, #:lower16:tape
	movt r5, #:upper16:tape
	b label4
label27:
	bl getch
	str r0, [r5, r7, lsl #2]
	b label9
