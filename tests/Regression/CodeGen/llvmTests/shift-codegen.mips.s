.data
.align 4
.globl Y
Y:
	.4byte	0
.align 4
.globl X
X:
	.4byte	0
.text
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
.globl fn2
fn2:
	sll $t0, $a1, 3
	or $v0, $a0, $t0
	jr $ra
	nop
