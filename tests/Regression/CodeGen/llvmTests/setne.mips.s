.data
.data
.align 4
.globl i
i:
	.4byte	1
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	1
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
	lui $t1, %hi(k)
	lw $t1, %lo(k)($t1)
	xor $t0, $t0, $t1
	sltu $t0, $zero, $t0
	lui $t1, %hi(r1)
	sw $t0, %lo(r1)($t1)
	jr $ra
	nop
