.data
.text
.globl unfold1
unfold1:
	sll $t0, $a0, 1
	ori $t0, $t0, 510
	addu $v0, $t0, $a1
	jr $ra
	nop
.globl unfold10
unfold10:
	sll $t0, $a0, 10
	li $t1, 4177920
	or $t0, $t0, $t1
	slt $v0, $a1, $t0
	jr $ra
	nop
.globl unfold11
unfold11:
	sll $t0, $a0, 11
	li $t1, 16252928
	addu $t0, $t0, $t1
	slt $v0, $a1, $t0
	jr $ra
	nop
.globl unfold2
unfold2:
	sll $t0, $a0, 2
	ori $t0, $t0, 16320
	subu $v0, $a1, $t0
	jr $ra
	nop
.globl unfold3
unfold3:
	sll $t0, $a0, 4
	li $t1, 1044480
	or $t0, $t0, $t1
	and $v0, $t0, $a1
	jr $ra
	nop
.globl unfold4
unfold4:
	sll $t0, $a0, 5
	li $t1, 33423360
	or $t0, $t0, $t1
	xor $v0, $t0, $a1
	jr $ra
	nop
.globl unfold5
unfold5:
	sll $t0, $a0, 6
	addiu $t0, $t0, 31744
	or $v0, $t0, $a1
	jr $ra
	nop
.globl unfold6
unfold6:
	sll $t0, $a0, 8
	li $t1, 2031616
	addu $t0, $t0, $t1
	and $v0, $t0, $a1
	jr $ra
	nop
.globl unfold7
unfold7:
	sll $t0, $a0, 1
	andi $t0, $t0, 512
	addu $v0, $t0, $a1
	jr $ra
	nop
.globl unfold8
unfold8:
	sll $t0, $a0, 9
	li $t1, 65011712
	addu $t0, $t0, $t1
	xor $v0, $t0, $a1
	jr $ra
	nop
.globl unfold9
unfold9:
	sll $t0, $a0, 1
	xori $t0, $t0, 510
	addu $v0, $t0, $a1
	jr $ra
	nop
