.data
.align 4
.globl a
a:
	.4byte	4
.section .rodata
.bss
.text
.globl foo
foo:
	lui $t0, %hi(a)
	lw $v0, %lo(a)($t0)
	jr $ra
	nop
