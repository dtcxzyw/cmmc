.data
.bss
.align 4
.globl bar
bar:
	.zero	4
.text
.p2align 2
.globl foo
foo:
	lui $t0, %hi(bar)
	lw $v0, %lo(bar)($t0)
	jr $ra
	nop
