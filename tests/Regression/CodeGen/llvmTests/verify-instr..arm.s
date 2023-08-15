.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl mulw
mulw:
	mov r3, r0
	mov r2, r1
	cmp r0, r1
	bge label14
	add r1, r0, #1
	cmp r2, r1
	ble label6
label3:
	mul r0, r1, r0
	add r1, r1, #1
	cmp r2, r1
	bgt label3
	b label6
label14:
	mov r0, #1
label6:
	bx lr
