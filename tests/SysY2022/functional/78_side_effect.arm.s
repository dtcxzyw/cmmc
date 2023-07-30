.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	push { r4, r5, r6, lr }
	mov r5, #5
	mvn r6, #0
	mov r4, #1
	cmn r5, #1
	ble label18
.p2align 4
label6:
	adds r0, r6, #1
	bne label7
	add r6, r0, #1
	sub r5, r5, #1
	cmp r6, #14
	blt label12
	adds r1, r0, #2
	bne label15
	mov r0, r1
	add r6, r1, #1
	cmn r5, #1
	bgt label6
label18:
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
.p2align 4
label7:
	adds r0, r6, #2
	bne label8
	add r6, r0, #1
	sub r5, r5, #1
	cmp r6, #14
	blt label12
	adds r1, r0, #2
	bne label15
	mov r0, r1
	add r6, r1, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
label8:
	adds r6, r6, #3
	bne label9
	mov r0, r6
	b label10
label9:
	mov r0, r6
	bl putint
	mov r0, #32
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, r6
.p2align 4
label10:
	add r6, r0, #1
	sub r5, r5, #1
	cmp r6, #14
	blt label12
	adds r1, r0, #2
	bne label15
	mov r0, r1
	add r6, r1, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
label12:
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	lsl r4, r4, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
label15:
	add r1, r0, #3
	add r0, r0, #4
	sub r1, r1, r0
	adds r1, r1, #1
	bne label56
	add r6, r0, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
label56:
	mov r6, r0
	b label12
