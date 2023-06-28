.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl test
test:
	mov r2, r0
	cmp r0, #0
	bge label3
	rsb r0, r0, #0
	mov r2, r1
	cmp r1, #0
	bge label6
	b label29
label3:
	mov r2, r1
	cmp r1, #0
	bge label6
	b label29
label6:
	add r0, r0, r1
	bx lr
label29:
	rsb r1, r2, #0
	b label6
