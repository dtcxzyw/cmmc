.data
.text
.p2align 2
.globl imm1
imm1:
	move $v0, $zero
	jr $ra
	nop
.p2align 2
.globl imm2
imm2:
	li $v0, 1
	jr $ra
	nop
.p2align 2
.globl imm3
imm3:
	li $v0, -1
	jr $ra
	nop
.p2align 2
.globl imm4
imm4:
	li $v0, 32000
	jr $ra
	nop
.p2align 2
.globl test_large
test_large:
	li $t0, 1000000
	sw $t0, 0($a0)
	li $t0, 2000000
	sw $t0, 4($a0)
	li $t0, 3000000
	sw $t0, 8($a0)
	li $t0, 4000000
	sw $t0, 12($a0)
	li $t0, 5000000
	sw $t0, 16($a0)
	li $t0, 6000000
	sw $t0, 20($a0)
	li $t0, 7000000
	sw $t0, 24($a0)
	li $t0, 8000000
	sw $t0, 28($a0)
	li $t0, 9000000
	sw $t0, 32($a0)
	li $t0, 10000000
	sw $t0, 36($a0)
	jr $ra
	nop
