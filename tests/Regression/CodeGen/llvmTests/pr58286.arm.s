.arch armv7ve
.data
.bss
.p2align 2
.globl var
var:
	.zero	4
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl func
func:
	bx lr
.p2align 4
.globl shrink_wrap
shrink_wrap:
	bx lr
