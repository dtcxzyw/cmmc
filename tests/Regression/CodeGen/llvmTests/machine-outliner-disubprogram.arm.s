.arch armv7ve
.data
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl f1
f1:
	mov r0, #16
	bx lr
.globl f2
f2:
	mov r0, #16
	bx lr
.globl f3
f3:
	mov r0, #16
	bx lr
.globl f4
f4:
	bx lr
.globl f5
f5:
	bx lr
.globl f6
f6:
	bx lr
.globl main
main:
	mov r0, #0
	bx lr
