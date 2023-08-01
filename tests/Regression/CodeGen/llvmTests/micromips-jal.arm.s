.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl main
main:
	mov r0, #0
	bx lr
.p2align 4
.globl sum
sum:
	add r0, r0, r1
	bx lr
