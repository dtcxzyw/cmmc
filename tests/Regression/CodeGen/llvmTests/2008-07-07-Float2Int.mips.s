.data
.text
.p2align 2
.globl fptoint
fptoint:
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
.p2align 2
.globl fptouint
fptouint:
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
