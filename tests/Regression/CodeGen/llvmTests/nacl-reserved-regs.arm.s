.arch armv7ve
.data
.bss
.align 4
.globl var
var:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl f
f:
	bx lr
