.data
.text
.globl f0
f0:
	sll $t0, $a0, 7
	sll $t1, $a0, 9
	or $t0, $t0, $t1
	srl $t1, $a0, 25
	srl $t2, $a0, 23
	or $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl f1
f1:
	sll $t0, $a0, 7
	srl $t1, $a0, 23
	or $t0, $t0, $t1
	sll $t1, $a0, 9
	or $t1, $a1, $t1
	or $v0, $t0, $t1
	jr $ra
	nop
.globl f2
f2:
	sll $t0, $a0, 11
	srl $t1, $a0, 21
	or $t0, $t0, $t1
	sll $t1, $a1, 19
	srl $t2, $a1, 13
	or $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
.globl f3
f3:
	sll $t0, $a0, 3
	sll $t1, $a0, 7
	or $t0, $t0, $t1
	sll $t1, $a0, 19
	or $t0, $t0, $t1
	srl $t1, $a0, 15
	or $t0, $t0, $t1
	srl $t1, $a0, 25
	or $t0, $t0, $t1
	sll $t1, $a0, 5
	sll $t2, $a0, 13
	or $t1, $t1, $t2
	srl $t2, $a0, 2
	or $t1, $t1, $t2
	srl $t2, $a0, 23
	or $t1, $t1, $t2
	srl $t2, $a0, 30
	or $t1, $t1, $t2
	or $v0, $t0, $t1
	jr $ra
	nop
