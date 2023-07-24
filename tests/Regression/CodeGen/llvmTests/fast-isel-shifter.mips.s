.data
.text
.globl ashr
ashr:
.p2align 2
	li $v0, -1
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
.p2align 2
	srlv $v0, $a0, $a1
	jr $ra
	nop
.globl lshr
lshr:
.p2align 2
	li $v0, -1
	jr $ra
	nop
.globl lshr_reg
lshr_reg:
.p2align 2
	srlv $v0, $a0, $a1
	jr $ra
	nop
.globl shl
shl:
.p2align 2
	li $v0, -4
	jr $ra
	nop
.globl shl_reg
shl_reg:
.p2align 2
	sllv $v0, $a0, $a1
	jr $ra
	nop
