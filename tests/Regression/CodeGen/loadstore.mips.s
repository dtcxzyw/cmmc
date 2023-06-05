.data
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
	move $t1, $t0
	move $v0, $t0
	jr $ra
	nop
.globl sb
sb:
	sb $a1, 1($a0)
	jr $ra
	nop
