.data
.text
.p2align 2
.globl test
test:
	div.s $f0, $f12, $f14
	jr $ra
	nop
