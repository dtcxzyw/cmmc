.data
.data
.align 4
.globl a
a:
	.4byte	1
.text
.globl ext
ext:
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	jr $ra
	nop
.globl foo
foo:
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	jr $ra
	nop
.globl main
main:
	lui $t0, %hi(a)
	sw $zero, %lo(a)($t0)
	move $v0, $zero
	jr $ra
	nop
