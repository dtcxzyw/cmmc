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
