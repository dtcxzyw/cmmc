.data
.align 4
.globl counter
counter:
	.4byte	0
.section .rodata
.bss
.text
.globl foo
foo:
	li $t0, 5
	lui $t1, %hi(counter)
	sw $t0, %lo(counter)($t1)
	jr $ra
	nop
