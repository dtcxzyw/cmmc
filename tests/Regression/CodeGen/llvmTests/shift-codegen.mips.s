.data
.data
.p2align 2
.globl Y
Y:
	.4byte	0
.p2align 2
.globl X
X:
	.4byte	0
.text
.p2align 2
.globl fn1
fn1:
	lui $t0, %hi(Y)
	lw $t0, %lo(Y)($t0)
	sll $t1, $t0, 3
	lui $t0, %hi(X)
	lw $t2, %lo(X)($t0)
	or $t1, $t1, $t2
	sw $t1, %lo(X)($t0)
	jr $ra
	nop
.p2align 2
.globl fn2
fn2:
	sll $t0, $a1, 3
	or $v0, $a0, $t0
	jr $ra
	nop
