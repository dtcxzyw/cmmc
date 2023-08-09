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
	b label2
label18:
	add r1, r0, #3
	add r6, r0, #4
	sub r0, r1, r6
	adds r0, r0, #1
	beq label19
label11:
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	lsl r4, r4, #1
.p2align 4
label13:
	sub r5, r5, #1
	cmn r5, #1
	ble label16
.p2align 4
label2:
	adds r0, r6, #1
	beq label23
	adds r0, r6, #2
	bne label7
label9:
	add r6, r0, #1
	cmp r6, #14
	blt label11
label38:
	adds r6, r0, #2
	bne label18
	add r6, r6, #1
	b label13
label23:
	add r6, r0, #1
	cmp r6, #14
	blt label11
	b label38
label16:
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
label7:
	adds r6, r6, #3
	bne label8
	mov r0, r6
	b label9
label19:
	add r6, r6, #1
	sub r5, r5, #1
	cmn r5, #1
	bgt label2
	b label16
label8:
	mov r0, r6
	bl putint
	mov r0, #32
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, r6
	b label9
