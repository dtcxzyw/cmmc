.data
.bss
.align 4
.globl bar
bar:
	.zero	4
.text
.globl foo
foo:
.p2align 2
	lui $t0, %hi(bar)
	lw $v0, %lo(bar)($t0)
	jr $ra
	nop
