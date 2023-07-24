.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl main
main:
.p2align 4
	mov r0, #0
	bx lr
.globl sum
sum:
.p2align 4
	add r0, r0, r1
	bx lr
