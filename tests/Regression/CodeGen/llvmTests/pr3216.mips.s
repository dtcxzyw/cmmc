.data
.data
.align 1
.globl foo
foo:
	.byte	127
.text
.globl main
main:
.p2align 2
	lui $t0, %hi(foo)
	lb $t0, %lo(foo)($t0)
	andi $t0, $t0, 255
	sra $t0, $t0, 5
	andi $t0, $t0, 7
	sll $t0, $t0, 5
	sra $t0, $t0, 5
	sll $t0, $t0, 24
	sra $v0, $t0, 24
	jr $ra
	nop
