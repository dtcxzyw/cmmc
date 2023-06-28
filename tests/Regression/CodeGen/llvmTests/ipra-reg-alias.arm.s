.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
	add r0, r0, #1
	mov r1, #5
	mul r0, r0, r1
	bx lr
