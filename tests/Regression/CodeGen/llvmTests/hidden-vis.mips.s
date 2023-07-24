.data
.data
.align 4
.globl a
a:
	.4byte	0
.bss
.align 4
.globl b
b:
	.zero	4
.text
.globl t1
t1:
.p2align 2
	jr $ra
	nop
.globl t2
t2:
.p2align 2
	jr $ra
	nop
