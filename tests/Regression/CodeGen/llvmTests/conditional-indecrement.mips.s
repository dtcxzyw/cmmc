.data
.text
.globl test1
test1:
.p2align 2
	sltu $t0, $zero, $a0
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test1_commute
test1_commute:
.p2align 2
	sltu $t0, $zero, $a0
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	sltiu $t0, $a0, 1
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test3
test3:
.p2align 2
	sltiu $t0, $a0, 1
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test4
test4:
.p2align 2
	sltu $t0, $zero, $a0
	addu $v0, $a1, $t0
	jr $ra
	nop
.globl test5
test5:
.p2align 2
	sltu $t0, $zero, $a0
	subu $v0, $a1, $t0
	jr $ra
	nop
.globl test6
test6:
.p2align 2
	sltiu $t0, $a0, 1
	subu $v0, $a1, $t0
	jr $ra
	nop
.globl test7
test7:
.p2align 2
	sltiu $t0, $a0, 1
	subu $v0, $a1, $t0
	jr $ra
	nop
.globl test8
test8:
.p2align 2
	sltu $t0, $zero, $a0
	subu $v0, $a1, $t0
	jr $ra
	nop
