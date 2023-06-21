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
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl load_byte
load_byte:
	addu $t0, $a0, $a1
	lb $v0, 0($t0)
	jr $ra
	nop
.globl load_float
load_float:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lwc1 $f0, 0($t0)
	jr $ra
	nop
.globl store
store:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	sw $a2, 0($t0)
	jr $ra
	nop
.globl store_float
store_float:
	mtc1 $a2, $f4
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	swc1 $f4, 0($t0)
	jr $ra
	nop
.globl gep_const
gep_const:
	lw $v0, 12($a0)
	jr $ra
	nop
.globl gep1
gep1:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl gep2
gep2:
	addiu $t0, $a1, 3
	sll $t0, $t0, 2
	addu $t0, $a0, $t0
	lw $v0, 0($t0)
	jr $ra
	nop
.globl gepseq
gepseq:
	sll $t0, $a1, 2
	addu $t0, $a0, $t0
	lw $t0, 0($t0)
	addiu $t1, $a1, 1
	sll $t1, $t1, 2
	addu $t1, $a0, $t1
	lw $t1, 0($t1)
	addiu $t2, $a1, 2
	sll $t2, $t2, 2
	addu $t2, $a0, $t2
	lw $t2, 0($t2)
	addiu $t3, $a1, 3
	sll $t3, $t3, 2
	addu $t3, $a0, $t3
	lw $t3, 0($t3)
	addu $t0, $t0, $t1
	addu $t0, $t0, $t2
	addu $v0, $t0, $t3
	jr $ra
	nop
.globl lb
lb:
	lb $v0, 1($a0)
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
	lw $v0, %lo(y)($t0)
	jr $ra
	nop
.globl global_addressing_array
global_addressing_array:
	lui $t0, %hi(arr)
	addiu $t0, $t0, %lo(arr)
	sll $t1, $a0, 2
	addu $t0, $t0, $t1
	lw $v0, 0($t0)
	jr $ra
	nop
