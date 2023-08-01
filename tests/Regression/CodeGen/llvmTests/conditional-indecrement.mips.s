.data
.text
.p2align 2
.globl test1
test1:
	sltu $t0, $zero, $a0
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test1_commute
test1_commute:
	sltu $t0, $zero, $a0
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	sltiu $t0, $a0, 1
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test3
test3:
	sltiu $t0, $a0, 1
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test4
test4:
	sltu $t0, $zero, $a0
	addu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test5
test5:
	sltu $t0, $zero, $a0
	subu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test6
test6:
	sltiu $t0, $a0, 1
	subu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test7
test7:
	sltiu $t0, $a0, 1
	subu $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl test8
test8:
	sltu $t0, $zero, $a0
	subu $v0, $a1, $t0
	jr $ra
	nop
