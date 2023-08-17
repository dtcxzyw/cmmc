.data
.data
.p2align 2
.globl k
k:
	.4byte	10
.p2align 2
.globl r1
r1:
	.4byte	0
.p2align 2
.globl r2
r2:
	.4byte	0
.p2align 2
.globl r3
r3:
	.4byte	0
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(k)
	lw $t0, %lo(k)($t0)
	li $t1, -32769
	slt $t0, $t1, $t0
	lui $t1, %hi(r1)
	sw $t0, %lo(r1)($t1)
	jr $ra
	nop
