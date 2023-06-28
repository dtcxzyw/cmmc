.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl addi
addi:
	add r0, r0, #1
	bx lr
