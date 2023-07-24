.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl foo
foo:
	movs r1, r0
	beq label9
	mov r0, #0
	b label4
label9:
	mov r0, #0
label2:
	bx lr
label4:
	add r0, r0, #1
	cmp r1, r0
	bne label4
	b label2
