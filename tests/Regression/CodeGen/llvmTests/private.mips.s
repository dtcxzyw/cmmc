.data
.data
.align 4
.globl baz
baz:
	.4byte	4
.text
.globl bar
bar:
	lui $t0, %hi(baz)
	lw $v0, %lo(baz)($t0)
	jr $ra
	nop
.globl foo
foo:
	jr $ra
	nop
