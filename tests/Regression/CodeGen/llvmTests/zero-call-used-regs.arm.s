.arch armv7ve
.data
.data
.p2align 2
.globl result
result:
	.4byte	0
.text
.syntax unified
.arm
.fpu vfpv4
.p2align 4
.globl all
all:
	bx lr
.p2align 4
.globl all_arg
all_arg:
	bx lr
.p2align 4
.globl all_gpr
all_gpr:
	bx lr
.p2align 4
.globl all_gpr_arg
all_gpr_arg:
	bx lr
.p2align 4
.globl main
main:
	mov r0, #0
	bx lr
.p2align 4
.globl skip
skip:
	bx lr
.p2align 4
.globl used
used:
	bx lr
.p2align 4
.globl used_arg
used_arg:
	bx lr
.p2align 4
.globl used_gpr
used_gpr:
	bx lr
.p2align 4
.globl used_gpr_arg
used_gpr_arg:
	bx lr
