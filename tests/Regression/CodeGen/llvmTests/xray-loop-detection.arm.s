.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl foo
foo:
	movs r1, r0
	beq label8
	mov r0, #0
label4:
	add r0, r0, #1
	cmp r1, r0
	bne label4
label2:
	bx lr
label8:
	mov r0, #0
	b label2
