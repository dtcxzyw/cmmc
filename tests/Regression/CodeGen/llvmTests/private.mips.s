.data
.data
.align 4
.globl baz
baz:
	.4byte	4
.text
.globl bar
bar:
.p2align 2
	lui $t0, %hi(baz)
	lw $v0, %lo(baz)($t0)
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	jr $ra
	nop
