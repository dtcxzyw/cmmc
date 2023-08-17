.data
.data
.p2align 2
.globl j
j:
	.4byte	5
.p2align 2
.globl k
k:
	.4byte	10
.p2align 2
.globl l
l:
	.4byte	20
.p2align 2
.globl m
m:
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
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	sltu $t0, $t1, $t0
	lui $t1, %hi(r1)
	sw $t0, %lo(r1)($t1)
	jr $ra
	nop
