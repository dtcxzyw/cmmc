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
.globl func
func:
.p2align 4
	bx lr
.globl shrink_wrap
shrink_wrap:
.p2align 4
	bx lr
