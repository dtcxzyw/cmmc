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
	cmn r5, #1
	ble label18
.p2align 4
label6:
	adds r0, r6, #1
	bne label7
	add r6, r0, #1
	sub r5, r5, #1
	cmp r6, #14
	bge label61
.p2align 4
label12:
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	cmn r5, #1
	lsl r4, r4, #1
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
	beq label30
	adds r6, r6, #3
	bne label9
	mov r0, r6
	sub r5, r5, #1
	add r6, r6, #1
	cmp r6, #14
	blt label12
	adds r6, r0, #2
	bne label15
	add r6, r6, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
label30:
	add r6, r0, #1
	sub r5, r5, #1
	cmp r6, #14
	blt label12
	adds r6, r0, #2
	beq label68
.p2align 4
label15:
	add r1, r0, #3
	add r6, r0, #4
	sub r0, r1, r6
	adds r0, r0, #1
	bne label12
	add r6, r6, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
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
	add r6, r6, #1
	sub r5, r5, #1
	cmp r6, #14
	blt label12
	adds r6, r0, #2
	bne label15
	add r6, r6, #1
	cmn r5, #1
	bgt label6
	b label18
.p2align 4
label61:
	adds r6, r0, #2
	bne label15
	add r6, r6, #1
	cmn r5, #1
	bgt label6
	b label18
label68:
	add r6, r6, #1
	cmn r5, #1
	bgt label6
	b label18
