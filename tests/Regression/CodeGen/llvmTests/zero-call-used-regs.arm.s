.arch armv7ve
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
	bx lr
.globl all_arg
all_arg:
	bx lr
.globl all_gpr
all_gpr:
	bx lr
.globl all_gpr_arg
all_gpr_arg:
	bx lr
.globl main
main:
	mov r0, #0
	bx lr
.globl skip
skip:
	bx lr
.globl used
used:
	bx lr
.globl used_arg
used_arg:
	bx lr
.globl used_gpr
used_gpr:
	bx lr
.globl used_gpr_arg
used_gpr_arg:
	bx lr
