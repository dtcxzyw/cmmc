.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl mulw
mulw:
	mov r2, r0
	mov r3, r1
	cmp r0, r1
	bge label16
	add r1, r0, #1
	cmp r3, r1
	ble label8
	mul r0, r1, r0
	add r1, r1, #1
	cmp r3, r1
	ble label8
	b label35
label16:
	mov r0, #1
	b label8
label35:
	mul r0, r1, r0
	add r1, r1, #1
	cmp r3, r1
	ble label8
	b label36
label8:
	bx lr
label36:
	mul r0, r1, r0
	add r1, r1, #1
	cmp r3, r1
	ble label8
	b label36
