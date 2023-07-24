.arch armv7ve
.data
.data
.align 4
.globl var
var:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl fn
fn:
.p2align 4
	bx lr
