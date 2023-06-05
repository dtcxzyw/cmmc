.data
.align 4
.globl y
y:
	.zero	4
.align 4
.globl arr
arr:
	.zero	400
.text
.globl load
load:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	lw $t2, 0($t1)
	move $v0, $t2
	jr $ra
	nop
.globl store
store:
	sll $t0, $a1, 2
	addu $t1, $a0, $t0
	sw $a2, 0($t1)
	jr $ra
	nop
.globl gep_const
gep_const:
	lw $t0, 12($a0)
	move $v0, $t0
	jr $ra
	nop
.globl lb
lb:
	lb $t0, 1($a0)
	move $v0, $t0
	jr $ra
	nop
.globl sb
sb:
	sb $a1, 1($a0)
	jr $ra
	nop
.globl global_addressing_scalar
global_addressing_scalar:
	lui $t0, %hi(y)
	lw $t1, %lo(y)($t0)
	move $v0, $t1
	jr $ra
	nop
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t1, $t0, %lo(arr)
	sll $t2, $a0, 2
	addu $t3, $t1, $t2
	lw $t4, 0($t3)
	move $v0, $t4
	jr $ra
	nop
