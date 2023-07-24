.data
.data
.align 4
.globl result
result:
	.4byte	0
.text
.globl all
all:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl all_arg
all_arg:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl all_gpr
all_gpr:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl all_gpr_arg
all_gpr_arg:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl main
main:
.p2align 2
	move $v0, $zero
	jr $ra
	nop
.globl skip
skip:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl used
used:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl used_arg
used_arg:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl used_gpr
used_gpr:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
.globl used_gpr_arg
used_gpr_arg:
.p2align 2
	move $v0, $a0
	jr $ra
	nop
