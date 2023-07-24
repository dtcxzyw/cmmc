.data
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	99
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.text
.globl test
test:
.p2align 2
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	sltiu $t0, $t0, 1
	lui $t1, %hi(r1)
	sw $t0, %lo(r1)($t1)
	lui $t0, %hi(j)
	lw $t0, %lo(j)($t0)
	xori $t0, $t0, 99
	sltiu $t0, $t0, 1
	lui $t1, %hi(r2)
	sw $t0, %lo(r2)($t1)
	jr $ra
	nop
