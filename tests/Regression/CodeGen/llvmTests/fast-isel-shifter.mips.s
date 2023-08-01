.data
.text
.p2align 2
.globl ashr
ashr:
	li $v0, -1
	jr $ra
	nop
.p2align 2
.globl ashr_reg
ashr_reg:
	srlv $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl lshr
lshr:
	li $v0, -1
	jr $ra
	nop
.p2align 2
.globl lshr_reg
lshr_reg:
	srlv $v0, $a0, $a1
	jr $ra
	nop
.p2align 2
.globl shl
shl:
	li $v0, -4
	jr $ra
	nop
.p2align 2
.globl shl_reg
shl_reg:
	sllv $v0, $a0, $a1
	jr $ra
	nop
