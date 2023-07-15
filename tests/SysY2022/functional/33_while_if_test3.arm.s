.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	mov r0, #4
label2:
	add r0, r0, #42
	mov r1, #168
	cmp r0, #99
	movgt r0, r1
	cmp r0, #75
	bge label4
	b label2
label4:
	bx lr
