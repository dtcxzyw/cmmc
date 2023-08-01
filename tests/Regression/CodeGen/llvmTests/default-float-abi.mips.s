.data
.text
.p2align 2
.globl test_abi
test_abi:
	add.s $f0, $f12, $f14
	jr $ra
	nop
