.data
.text
.globl ashr
ashr:
	li a0, -1
	ret
.globl ashr_reg
ashr_reg:
	srlw a0, a0, a1
	ret
.globl lshr
lshr:
	li a0, -1
	ret
.globl lshr_reg
lshr_reg:
	srlw a0, a0, a1
	ret
.globl shl
shl:
	li a0, -4
	ret
.globl shl_reg
shl_reg:
	sllw a0, a0, a1
	ret
