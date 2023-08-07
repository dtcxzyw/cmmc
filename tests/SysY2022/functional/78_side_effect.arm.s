.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r5, #5
	mvn r6, #0
	mov r4, #1
.p2align 4
label2:
	adds r0, r6, #1
	bne label18
.p2align 4
label6:
	add r6, r0, #1
	cmp r6, #14
	bge label28
label8:
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	lsl r4, r4, #1
.p2align 4
label10:
	sub r5, r5, #1
	cmn r5, #1
	bgt label2
label13:
	mov r0, r6
	bl putint
	mov r0, #32
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, r6
	pop { r4, r5, r6, pc }
label18:
	adds r0, r6, #2
	beq label6
	adds r6, r6, #3
	beq label58
	mov r0, r6
	bl putint
	mov r0, #32
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, r6
	b label6
label28:
	adds r6, r0, #2
	bne label15
	add r6, r6, #1
	b label10
label15:
	add r1, r0, #3
	add r6, r0, #4
	sub r0, r1, r6
	adds r0, r0, #1
	bne label8
	add r6, r6, #1
	sub r5, r5, #1
	cmn r5, #1
	bgt label2
	b label13
label58:
	mov r0, r6
	b label6
