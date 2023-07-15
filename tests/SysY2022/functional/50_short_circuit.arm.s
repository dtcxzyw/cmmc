.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	push { r4, r5, lr }
	sub sp, sp, #4
	bl getint
	cmp r0, #10
	mov r4, r0
	ble label19
	b label15
label19:
	mov r4, #0
label2:
	bl getint
	cmp r0, #11
	ble label5
	add r4, r4, r0
	mov r0, r4
	bl putint
	b label5
label15:
	mov r0, r4
	bl putint
	b label2
label5:
	bl getint
	cmp r0, #100
	bge label14
label7:
	bl getint
	cmp r0, #101
	bge label13
label9:
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
label14:
	add r4, r4, r0
	mov r0, r4
	bl putint
	b label7
label13:
	add r4, r4, r0
	mov r0, r4
	bl putint
	b label9
