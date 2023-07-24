.data
.data
.align 4
.globl a
a:
	.4byte	1
.text
.globl ext
ext:
.p2align 2
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	jr $ra
	nop
.globl main
main:
.p2align 2
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	move $v0, $zero
	jr $ra
	nop
