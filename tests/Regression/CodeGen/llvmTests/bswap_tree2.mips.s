.data
.text
.globl test1
test1:
	andi $t0, $a0, 255
	sll $t0, $t0, 8
	li $t1, 16711680
	and $t1, $a0, $t1
	sll $t1, $t1, 8
	or $t0, $t0, $t1
	andi $t1, $a0, 65280
	srl $t1, $t1, 8
	li $t2, -16777216
	or $t2, $a0, $t2
	srl $t2, $t2, 8
	or $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl test2
test2:
	srl $t0, $a0, 8
	andi $t1, $t0, 65280
	sll $t2, $a0, 8
	li $t3, -16777216
	and $t2, $t2, $t3
	or $t1, $t1, $t2
	li $t2, 16711680
	and $t0, $t0, $t2
	or $v0, $t1, $t0
	jr $ra
	nop
.globl test3
test3:
	trunc.w.s $f4, $f12
	mfc1 $t0, $f4
	srl $t1, $t0, 8
	li $t2, 16711680
	and $t1, $t1, $t2
	andi $t2, $t0, 65280
	or $t1, $t1, $t2
	sll $t0, $t0, 8
	li $t2, -16777216
	and $t0, $t0, $t2
	or $v0, $t1, $t0
	jr $ra
	nop
