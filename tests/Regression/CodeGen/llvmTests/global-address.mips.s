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
.p2align 2
.globl foo
foo:
	jr $ra
	nop
