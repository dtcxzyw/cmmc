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
	adds r0, r6, #1
	beq label7
	adds r0, r6, #2
	beq label7
	adds r6, r6, #3
	beq label58
	b label17
label7:
	add r6, r0, #1
	cmp r6, #14
	bge label9
	b label13
label11:
	add r6, r6, #1
	sub r5, r5, #1
	cmn r5, #1
	ble label18
	adds r0, r6, #1
	beq label7
	adds r0, r6, #2
	beq label7
	adds r6, r6, #3
	beq label58
	b label17
label13:
	mov r0, r6
	bl putint
	mov r0, #10
	bl putch
	sub r5, r5, #1
	lsl r4, r4, #1
	cmn r5, #1
	ble label18
	adds r0, r6, #1
	beq label7
	adds r0, r6, #2
	beq label7
	adds r6, r6, #3
	beq label58
	b label17
label58:
	mov r0, r6
	add r6, r6, #1
	cmp r6, #14
	bge label9
	b label13
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
	add r6, r6, #1
	cmp r6, #14
	bge label9
	b label13
label9:
	adds r6, r0, #2
	beq label11
	add r1, r0, #3
	add r6, r0, #4
	sub r0, r1, r6
	adds r0, r0, #1
	beq label11
	b label13
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
