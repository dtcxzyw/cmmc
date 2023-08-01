.data
.text
.p2align 2
.globl test_call
test_call:
	add.s $f0, $f12, $f14
	jr $ra
	nop
