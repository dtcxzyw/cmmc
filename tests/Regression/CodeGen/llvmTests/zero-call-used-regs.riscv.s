.data
.data
.align 4
.globl result
result:
	.4byte	0
.text
.globl all
all:
	ret
.globl all_arg
all_arg:
	ret
.globl all_gpr
all_gpr:
	ret
.globl all_gpr_arg
all_gpr_arg:
	ret
.globl main
main:
	mv a0, zero
	ret
.globl skip
skip:
	ret
.globl used
used:
	ret
.globl used_arg
used_arg:
	ret
.globl used_gpr
used_gpr:
	ret
.globl used_gpr_arg
used_gpr_arg:
	ret
