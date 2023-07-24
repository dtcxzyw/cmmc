.data
.text
.globl fptoint
fptoint:
.p2align 2
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
.globl fptouint
fptouint:
.p2align 2
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
