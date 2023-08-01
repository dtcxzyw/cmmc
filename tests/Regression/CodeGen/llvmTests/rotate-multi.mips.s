.data
.text
.p2align 2
.globl f0
f0:
	sll $t0, $a0, 7
	srl $t1, $a0, 25
	or $t0, $t0, $t1
	sll $t1, $a0, 9
	or $t0, $t0, $t1
	srl $t1, $a0, 23
	or $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl f1
f1:
	sll $t0, $a0, 7
	or $t0, $a1, $t0
	sll $t1, $a0, 9
	or $t0, $t0, $t1
	srl $t1, $a0, 23
	or $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl f2
f2:
	sll $t0, $a0, 11
	sll $t1, $a1, 19
	or $t0, $t0, $t1
	srl $t1, $a0, 21
	or $t0, $t0, $t1
	srl $t1, $a1, 13
	or $v0, $t0, $t1
	jr $ra
	nop
.p2align 2
.globl f3
f3:
	sll $t0, $a0, 3
	sll $t1, $a0, 5
	or $t0, $t0, $t1
	sll $t1, $a0, 7
	or $t0, $t0, $t1
	sll $t1, $a0, 13
	or $t0, $t0, $t1
	sll $t1, $a0, 19
	or $t0, $t0, $t1
	srl $t1, $a0, 2
	or $t0, $t0, $t1
	srl $t1, $a0, 15
	or $t0, $t0, $t1
	srl $t1, $a0, 23
	or $t0, $t0, $t1
	srl $t1, $a0, 25
	or $t0, $t0, $t1
	srl $t1, $a0, 30
	or $v0, $t0, $t1
	jr $ra
	nop
