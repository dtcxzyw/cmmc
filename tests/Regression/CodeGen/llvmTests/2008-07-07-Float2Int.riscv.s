.data
.text
.globl fptoint
fptoint:
	fcvt.w.s a0, f10, rtz
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl fptouint
fptouint:
	fcvt.w.s a0, f10, rtz
	li a1, 4294967295
	and a0, a0, a1
	ret
