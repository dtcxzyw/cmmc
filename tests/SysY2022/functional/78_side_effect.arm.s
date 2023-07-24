.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, r6, lr }
	mov r5, #5
	mvn r6, #0
	mov r4, #1
	cmn r5, #1
	ble label18
label6:
	adds r0, r6, #1
	bne label15
	add r6, r0, #1
	cmp r6, #14
	blt label9
	adds r1, r0, #2
	bne label12
	mov r0, r1
	add r6, r1, #1
	sub r5, r5, #1
	cmn r5, #1
	bgt label6
	b label18
label15:
	adds r0, r6, #2
	bne label16
	add r6, r0, #1
	cmp r6, #14
	blt label9
	adds r1, r0, #2
	bne label12
	mov r0, r1
	add r6, r1, #1
	sub r5, r5, #1
	cmn r5, #1
	bgt label6
	b label18
label7:
	add r6, r0, #1
	cmp r6, #14
	blt label9
	adds r1, r0, #2
	bne label12
	mov r0, r1
	add r6, r1, #1
	sub r5, r5, #1
	cmn r5, #1
	bgt label6
	b label18
label16:
	adds r6, r6, #3
	bne label17
	mov r0, r6
	b label7
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
label17:
	mov r0, r6
	bl putint
	mov r0, #32
	bl putch
	mov r0, r4
	bl putint
	mov r0, #10
	bl putch
	mov r0, r6
	b label7
label9:
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	sub r5, r5, #1
	lsl r4, r4, #1
	cmn r5, #1
	bgt label6
	b label18
label12:
	add r1, r0, #3
	add r0, r0, #4
	sub r1, r1, r0
	adds r1, r1, #1
	bne label46
	add r6, r0, #1
	sub r5, r5, #1
	cmn r5, #1
	bgt label6
	b label18
label46:
	mov r6, r0
	b label9
