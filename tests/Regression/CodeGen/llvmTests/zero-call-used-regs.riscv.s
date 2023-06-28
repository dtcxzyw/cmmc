.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
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
