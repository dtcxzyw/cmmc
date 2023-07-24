.data
.text
.globl f1
f1:
.p2align 2
	li $v0, -1
	jr $ra
	nop
.globl f10
f10:
.p2align 2
	li $t0, -2
	xor $t0, $a0, $t0
	sltiu $v0, $t0, 1
	jr $ra
	nop
.globl f2
f2:
.p2align 2
	li $t0, -1
	xor $v0, $a0, $t0
	jr $ra
	nop
.globl f3
f3:
.p2align 2
	sll $t0, $a0, 2
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f4
f4:
.p2align 2
	andi $t0, $a1, 255
	sllv $t0, $a0, $t0
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f5
f5:
.p2align 2
	srl $t0, $a0, 2
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f6
f6:
.p2align 2
	andi $t0, $a1, 255
	srlv $t0, $a0, $t0
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f7
f7:
.p2align 2
	srl $t0, $a0, 2
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f8
f8:
.p2align 2
	andi $t0, $a1, 255
	srlv $t0, $a0, $t0
	li $t1, -1
	xor $v0, $t0, $t1
	jr $ra
	nop
.globl f9
f9:
.p2align 2
	li $v0, -3
	jr $ra
	nop
