.data
.section .rodata
.bss
.text
.globl fptoint
fptoint:
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
.globl fptouint
fptouint:
	trunc.w.s $f4, $f12
	mfc1 $v0, $f4
	jr $ra
	nop
