.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r0, #4
label2:
.p2align 4
	add r0, r0, #42
	mov r1, #168
	cmp r0, #99
	movgt r0, r1
	cmp r0, #75
	blt label2
	bx lr
