.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	add r2, r0, #1
	cmp r1, #39
	ble label11
label2:
	bx lr
label11:
	mov r0, r2
	add r2, r2, #1
	cmp r1, #40
	blt label11
	b label2
