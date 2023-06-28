.data
.text
.globl test1
test1:
	li $t0, 16711935
	and $v0, $a0, $t0
	jr $ra
	nop
.globl test10
test10:
	srl $t0, $a0, 12
	li $t1, 458759
	and $t0, $t0, $t1
	srl $t1, $a0, 7
	li $t2, 16253176
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test11
test11:
	andi $t0, $a0, 3
	li $t1, 65537
	sllv $t0, $t1, $t0
	sra $t0, $t0, 1
	li $t1, 458759
	and $v0, $t0, $t1
	jr $ra
	nop
.globl test2
test2:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $v0, $t0, $t1
	jr $ra
	nop
.globl test3
test3:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $v0, $t0, $t1
	jr $ra
	nop
.globl test4
test4:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $v0, $t0, $t1
	jr $ra
	nop
.globl test5
test5:
	srl $t0, $a0, 8
	li $t1, 16711935
	and $v0, $t0, $t1
	jr $ra
	nop
.globl test6
test6:
	srl $t0, $a0, 16
	andi $t0, $t0, 255
	sll $t1, $a0, 16
	li $t2, 16711680
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test7
test7:
	srl $t0, $a0, 16
	andi $t0, $t0, 255
	sll $t1, $a0, 16
	li $t2, 16711680
	and $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test8
test8:
	sll $t0, $a0, 8
	li $t1, 16711680
	and $t0, $t0, $t1
	srl $t1, $a0, 24
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test9
test9:
	sll $t0, $a0, 8
	li $t1, 16711680
	and $t0, $t0, $t1
	srl $t1, $a0, 24
	or $v0, $t0, $t1
	jr $ra
	nop
