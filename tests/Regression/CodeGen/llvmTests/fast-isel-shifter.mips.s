.data
.section .rodata
.bss
.text
.globl ashr
ashr:
	li $v0, -1
	jr $ra
	nop
.globl ashr_reg
ashr_reg:
	srlv $v0, $a0, $a1
	jr $ra
	nop
.globl lshr
lshr:
	li $v0, -1
	jr $ra
	nop
.globl lshr_reg
lshr_reg:
	srlv $v0, $a0, $a1
	jr $ra
	nop
.globl shl
shl:
	li $v0, -4
	jr $ra
	nop
.globl shl_reg
shl_reg:
	sllv $v0, $a0, $a1
	jr $ra
	nop
