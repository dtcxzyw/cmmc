.data
.data
.align 4
.globl j
j:
	.4byte	5
.align 4
.globl k
k:
	.4byte	10
.align 4
.globl l
l:
	.4byte	20
.align 4
.globl m
m:
	.4byte	10
.align 4
.globl r1
r1:
	.4byte	0
.align 4
.globl r2
r2:
	.4byte	0
.align 4
.globl r3
r3:
	.4byte	0
.text
.globl test
test:
.p2align 2
	lui $t0, %hi(k)
	lw $t0, %lo(k)($t0)
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	sltu $t0, $t1, $t0
	lui $t1, %hi(r1)
	sw $t0, %lo(r1)($t1)
	jr $ra
	nop
