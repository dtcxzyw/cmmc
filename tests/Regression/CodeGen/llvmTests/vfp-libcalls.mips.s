.data
.text
.globl test_call
test_call:
.p2align 2
	add.s $f0, $f12, $f14
	jr $ra
	nop
