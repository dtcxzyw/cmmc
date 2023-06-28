.data
.text
.globl f0
f0:
	sll $t0, $a0, 7
	srl $t3, $a0, 25
	sll $t1, $a0, 9
	srl $t2, $a0, 23
	or $t0, $t0, $t3
	or $t0, $t0, $t1
	or $v0, $t0, $t2
	jr $ra
	nop
.globl f1
f1:
	sll $t2, $a0, 7
	sll $t0, $a0, 9
	srl $t1, $a0, 23
	or $t2, $a1, $t2
	or $t0, $t2, $t0
	or $v0, $t0, $t1
	jr $ra
	nop
.globl f2
f2:
	sll $t0, $a0, 11
	sll $t3, $a1, 19
	srl $t1, $a0, 21
	srl $t2, $a1, 13
	or $t0, $t0, $t3
	or $t0, $t0, $t1
	or $v0, $t0, $t2
	jr $ra
	nop
.globl f3
f3:
	sll $t0, $a0, 3
	sll $t8, $a0, 5
	sll $t4, $a0, 7
	sll $t6, $a0, 13
	sll $t5, $a0, 19
	srl $t3, $a0, 2
	srl $t9, $a0, 15
	srl $t1, $a0, 23
	srl $t2, $a0, 25
	srl $t7, $a0, 30
	or $t0, $t0, $t8
	or $t0, $t0, $t4
	or $t0, $t0, $t6
	or $t0, $t0, $t5
	or $t0, $t0, $t3
	or $t0, $t0, $t9
	or $t0, $t0, $t1
	or $t0, $t0, $t2
	or $v0, $t0, $t7
	jr $ra
	nop
