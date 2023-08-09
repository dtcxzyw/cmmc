.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #10
	mov r4, r0
	ble label18
	bl putint
label3:
	bl getint
	cmp r0, #11
	ble label6
	add r4, r4, r0
	mov r0, r4
	bl putint
label6:
	bl getint
	cmp r0, #100
	blt label8
	add r4, r4, r0
	mov r0, r4
	bl putint
label8:
	bl getint
	cmp r0, #101
	blt label10
	add r4, r4, r0
	mov r0, r4
	bl putint
label10:
	add r5, r4, #99
	mov r0, r5
	bl putint
	cmp r5, #0
	bne label12
	add r0, r4, #199
	bl putint
label12:
	mov r0, #0
	add sp, sp, #4
	pop { r4, r5, pc }
label18:
	mov r4, #0
	b label3
