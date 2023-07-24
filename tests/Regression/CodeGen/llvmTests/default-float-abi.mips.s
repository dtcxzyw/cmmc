.data
.text
.globl test_abi
test_abi:
.p2align 2
	add.s $f0, $f12, $f14
	jr $ra
	nop
