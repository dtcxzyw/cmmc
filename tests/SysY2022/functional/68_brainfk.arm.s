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
.p2align 4
.globl main
main:
	push { r4, r5, r6, r7, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #0
	movw r4, #:lower16:program
	movt r4, #:upper16:program
	mov r5, r0
	ble label37
	mov r6, r4
	mov r7, #0
.p2align 4
label2:
	bl getch
	str r0, [r6, #0]
	add r0, r7, #1
	cmp r5, r0
	add r6, r4, r0, lsl #2
	ble label5
	mov r7, r0
	b label2
label5:
	mov r0, #0
	movw r5, #:lower16:tape
	movt r5, #:upper16:tape
	str r0, [r6, #0]
	ldr r0, [r4, #0]
	cmp r0, #0
	beq label32
	mov r6, #0
	mov r7, r6
	b label7
.p2align 4
label10:
	add r6, r6, #1
.p2align 4
label11:
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	beq label32
.p2align 4
label7:
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #62
	beq label10
	cmp r0, #60
	beq label15
	cmp r0, #43
	bne label170
	add r0, r5, r6, lsl #2
	add r7, r7, #1
	ldr r1, [r0, #0]
	add r1, r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label32
.p2align 4
label170:
	cmp r0, #45
	bne label173
	add r0, r5, r6, lsl #2
	add r7, r7, #1
	ldr r1, [r0, #0]
	sub r1, r1, #1
	str r1, [r0, #0]
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label32
.p2align 4
label173:
	cmp r0, #46
	bne label176
	ldr r0, [r5, r6, lsl #2]
	bl putch
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label32
label176:
	cmp r0, #44
	beq label29
	cmp r0, #93
	bne label11
	ldr r0, [r5, r6, lsl #2]
	cmp r0, #0
	bne label105
	b label11
label32:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, r6, r7, pc }
label105:
	mov r0, #1
	cmp r0, #0
	bgt label26
	b label11
.p2align 4
label27:
	sub r1, r1, #93
	clz r1, r1
	lsr r1, r1, #5
	adds r0, r0, r1
	ble label11
.p2align 4
label26:
	sub r7, r7, #1
	ldr r1, [r4, r7, lsl #2]
	cmp r1, #91
	bne label27
	subs r0, r0, #1
	bgt label26
	b label11
.p2align 4
label15:
	sub r6, r6, #1
	add r7, r7, #1
	ldr r0, [r4, r7, lsl #2]
	cmp r0, #0
	bne label7
	b label32
label29:
	bl getch
	str r0, [r5, r6, lsl #2]
	b label11
label37:
	mov r6, r4
	b label5
