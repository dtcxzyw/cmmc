.data
.text
.globl test
test:
.p2align 2
	mul.s $f0, $f12, $f14
	jr $ra
	nop
.globl test2
test2:
.p2align 2
	mov.s $f0, $f12
	jr $ra
	nop
