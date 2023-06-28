.data
.text
.globl f1
f1:
	li $v0, -1
	jr $ra
	nop
.globl f10
f10:
	li $t0, -2
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl f2
f2:
	li $t0, -1
	xor $v0, $a0, $t0
	jr $ra
	nop
.globl f3
f3:
	sll $t0, $a0, 2
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f4
f4:
	andi $t0, $a1, 255
	sllv $t0, $a0, $t0
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f5
f5:
	srl $t0, $a0, 2
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f6
f6:
	andi $t0, $a1, 255
	srlv $t0, $a0, $t0
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f7
f7:
	srl $t0, $a0, 2
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f8
f8:
	andi $t0, $a1, 255
	srlv $t0, $a0, $t0
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f9
f9:
	li $v0, -3
	jr $ra
	nop
