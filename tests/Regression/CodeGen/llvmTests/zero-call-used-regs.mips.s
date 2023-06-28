.data
.align 4
.globl result
result:
	.4byte	0
.text
.globl all
all:
	move $v0, $a0
	jr $ra
	nop
.globl all_arg
all_arg:
	move $v0, $a0
	jr $ra
	nop
.globl all_gpr
all_gpr:
	move $v0, $a0
	jr $ra
	nop
.globl all_gpr_arg
all_gpr_arg:
	move $v0, $a0
	jr $ra
	nop
.globl main
main:
	move $v0, $zero
	jr $ra
	nop
.globl skip
skip:
	move $v0, $a0
	jr $ra
	nop
.globl used
used:
	move $v0, $a0
	jr $ra
	nop
.globl used_arg
used_arg:
	move $v0, $a0
	jr $ra
	nop
.globl used_gpr
used_gpr:
	move $v0, $a0
	jr $ra
	nop
.globl used_gpr_arg
used_gpr_arg:
	move $v0, $a0
	jr $ra
	nop
