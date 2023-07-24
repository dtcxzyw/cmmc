.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl addi
addi:
.p2align 4
	add r0, r0, #1
	bx lr
