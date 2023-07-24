.data
.text
.globl test
test:
.p2align 2
	div.s $f0, $f12, $f14
	jr $ra
	nop
