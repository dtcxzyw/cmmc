.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	mov r1, r0
	cmp r0, #0
	bne label9
	mov r0, #0
	b label2
label9:
	mov r0, #0
	add r0, r0, #1
	cmp r1, r0
	bne label4
label2:
	bx lr
label4:
	add r0, r0, #1
	cmp r1, r0
	bne label4
	b label2
