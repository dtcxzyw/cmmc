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
.p2align 2
.globl t1
t1:
	jr $ra
	nop
.p2align 2
.globl t2
t2:
	jr $ra
	nop
