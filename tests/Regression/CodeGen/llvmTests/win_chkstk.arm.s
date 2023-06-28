.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl dont_crash
dont_crash:
	bx lr
.globl main128
main128:
	mov r0, #0
	bx lr
.globl main4k
main4k:
	mov r0, #0
	bx lr
.globl main4k_win64
main4k_win64:
	mov r0, #0
	bx lr
