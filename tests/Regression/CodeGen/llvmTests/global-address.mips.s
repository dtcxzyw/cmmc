.data
.data
.p2align 2
.globl g
g:
	.4byte	0
.p2align 2
.globl G
G:
	.4byte	0
.text
.p2align 2
.globl foo
foo:
	jr $ra
	nop
