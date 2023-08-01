.data
.text
.p2align 2
.globl t1
t1:
	sltu $t0, $zero, $a0
	li $t1, 10
	li $v0, 20
	movn $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
.globl t2
t2:
	sltu $t0, $zero, $a0
	li $v0, 20
	movn $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl t3
t3:
	sltu $t0, $zero, $a0
	movn $a2, $a1, $t0
	addu $v0, $a1, $a2
	jr $ra
	nop
.p2align 2
.globl t4
t4:
	sltu $t0, $zero, $a0
	li $t1, -10
	li $v0, -1
	movn $v0, $t1, $t0
	jr $ra
	nop
.p2align 2
.globl t5
t5:
	sltu $t0, $zero, $a0
	li $v0, -2
	movn $v0, $a1, $t0
	jr $ra
	nop
.p2align 2
.globl t6
t6:
	sltu $t0, $zero, $a0
	li $v0, -978945
	movn $v0, $a1, $t0
	jr $ra
	nop
