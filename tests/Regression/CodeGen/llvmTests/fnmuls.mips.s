.data
.text
.p2align 2
.globl test1
test1:
	mul.s $f4, $f12, $f14
	neg.s $f0, $f4
	jr $ra
	nop
.p2align 2
.globl test2
test2:
	mul.s $f4, $f12, $f14
	neg.s $f0, $f4
	jr $ra
	nop
