.data
.data
.align 4
.globl g
g:
	.4byte	0
.align 4
.globl G
G:
	.4byte	0
.text
.globl foo
foo:
.p2align 2
	jr $ra
	nop
