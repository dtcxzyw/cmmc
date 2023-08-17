.data
.data
.p2align 2
.globl result
result:
	.4byte	0
.text
.p2align 2
.globl all
all:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl all_arg
all_arg:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl all_gpr
all_gpr:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl all_gpr_arg
all_gpr_arg:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl skip
skip:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl used
used:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl used_arg
used_arg:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl used_gpr
used_gpr:
	move $v0, $a0
	jr $ra
	nop
.p2align 2
.globl used_gpr_arg
used_gpr_arg:
	move $v0, $a0
	jr $ra
	nop
