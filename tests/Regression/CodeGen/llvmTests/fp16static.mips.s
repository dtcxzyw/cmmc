.data
.data
.align 4
.globl x
x:
	.4byte	0
.text
.globl foo
foo:
.p2align 2
	lui $t0, %hi(x)
	lwc1 $f4, %lo(x)($t0)
	mul.s $f4, $f4, $f4
	swc1 $f4, %lo(x)($t0)
	jr $ra
	nop
