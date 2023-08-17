.data
.data
.p2align 2
.globl a
a:
	.4byte	1
.text
.p2align 2
.globl ext
ext:
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	jr $ra
	nop
.p2align 2
.globl foo
foo:
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	jr $ra
	nop
.p2align 2
.globl main
main:
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	move $v0, $zero
	jr $ra
	nop
