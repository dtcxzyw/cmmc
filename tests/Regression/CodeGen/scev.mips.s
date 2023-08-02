.data
.text
.p2align 2
.globl foo4
foo4:
	blez $a1, label24
	nop
	addiu $t0, $a1, -4
	blez $t0, label32
	nop
	addiu $t1, $a1, -4
	addiu $t3, $a1, -20
	addiu $t0, $t1, -16
	blez $t0, label4
	nop
	move $t0, $a0
	move $t2, $zero
	move $t4, $zero
.p2align 2
label12:
	sw $t2, 0($t0)
	addiu $t5, $t2, 4
	sw $t5, 4($t0)
	addiu $t5, $t2, 8
	sw $t5, 8($t0)
	addiu $t5, $t2, 12
	sw $t5, 12($t0)
	addiu $t5, $t2, 16
	sw $t5, 16($t0)
	addiu $t5, $t2, 20
	sw $t5, 20($t0)
	addiu $t5, $t2, 24
	sw $t5, 24($t0)
	addiu $t5, $t2, 28
	sw $t5, 28($t0)
	addiu $t5, $t2, 32
	sw $t5, 32($t0)
	addiu $t5, $t2, 36
	sw $t5, 36($t0)
	addiu $t5, $t2, 40
	sw $t5, 40($t0)
	addiu $t5, $t2, 44
	sw $t5, 44($t0)
	addiu $t5, $t2, 48
	sw $t5, 48($t0)
	addiu $t5, $t2, 52
	sw $t5, 52($t0)
	addiu $t5, $t2, 56
	sw $t5, 56($t0)
	addiu $t5, $t2, 60
	sw $t5, 60($t0)
	addiu $t4, $t4, 16
	addiu $t2, $t2, 64
	subu $t5, $t3, $t4
	blez $t5, label16
	nop
	addiu $t0, $t0, 64
	b label12
	nop
label16:
	sll $t0, $t4, 2
	addu $t0, $a0, $t0
label5:
	sw $t2, 0($t0)
	addiu $t3, $t2, 4
	sw $t3, 4($t0)
	addiu $t3, $t2, 8
	sw $t3, 8($t0)
	addiu $t3, $t2, 12
	sw $t3, 12($t0)
	addiu $t4, $t4, 4
	addiu $t2, $t2, 16
	subu $t3, $t1, $t4
	blez $t3, label9
	nop
	addiu $t0, $t0, 16
	b label5
	nop
label9:
	sll $t0, $t4, 2
	addu $a0, $a0, $t0
label19:
	sw $t2, 0($a0)
	addiu $t4, $t4, 1
	addiu $t2, $t2, 4
	subu $t0, $a1, $t4
	blez $t0, label24
	nop
	addiu $a0, $a0, 4
	b label19
	nop
label24:
	jr $ra
	nop
label4:
	move $t0, $a0
	move $t4, $zero
	move $t2, $zero
	b label5
	nop
label32:
	move $t2, $zero
	move $t4, $zero
	b label19
	nop
