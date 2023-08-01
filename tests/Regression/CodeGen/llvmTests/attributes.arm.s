.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl addi
addi:
	add r0, r0, #1
	bx lr
