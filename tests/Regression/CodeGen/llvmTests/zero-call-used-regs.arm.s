.arch armv7ve
.data
.data
.align 4
.globl result
result:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.globl all
all:
.p2align 4
	bx lr
.globl all_arg
all_arg:
.p2align 4
	bx lr
.globl all_gpr
all_gpr:
.p2align 4
	bx lr
.globl all_gpr_arg
all_gpr_arg:
.p2align 4
	bx lr
.globl main
main:
.p2align 4
	mov r0, #0
	bx lr
.globl skip
skip:
.p2align 4
	bx lr
.globl used
used:
.p2align 4
	bx lr
.globl used_arg
used_arg:
.p2align 4
	bx lr
.globl used_gpr
used_gpr:
.p2align 4
	bx lr
.globl used_gpr_arg
used_gpr_arg:
.p2align 4
	bx lr
