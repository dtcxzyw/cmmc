.arch armv7ve
.data
.text
.syntax unified
.arm
.fpu vfpv4
.globl dont_crash
dont_crash:
.p2align 4
	bx lr
.globl main128
main128:
.p2align 4
	mov r0, #0
	bx lr
.globl main4k
main4k:
.p2align 4
	mov r0, #0
	bx lr
.globl main4k_win64
main4k_win64:
.p2align 4
	mov r0, #0
	bx lr
