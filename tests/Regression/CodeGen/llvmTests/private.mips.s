.data
.data
.p2align 2
.globl baz
baz:
	.4byte	4
.text
.p2align 2
.globl bar
bar:
	lui $t0, %hi(baz)
	lw $v0, %lo(baz)($t0)
	jr $ra
	nop
.p2align 2
.globl foo
foo:
	jr $ra
	nop
