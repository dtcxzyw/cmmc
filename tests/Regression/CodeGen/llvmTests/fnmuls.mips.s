.data
.text
.globl test1
test1:
.p2align 2
	mul.s $f4, $f12, $f14
	neg.s $f0, $f4
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	mul.s $f4, $f12, $f14
	neg.s $f0, $f4
	jr $ra
	nop
