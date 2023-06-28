.arch armv7ve
.data
.align 4
.globl var
var:
	.4byte	0
.section .rodata
.bss
.text
.syntax unified
.arm
.fpu vfpv4
.globl fn
fn:
	bx lr
