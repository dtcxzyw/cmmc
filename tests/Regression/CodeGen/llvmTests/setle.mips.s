.data
.align 4
.globl j
j:
	.4byte	4294967291
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
.section .rodata
.bss
.text
.globl test
test:
	lui $t0, %hi(k)
	lw $t0, %lo(k)($t0)
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	slt $t1, $t0, $t1
	xori $t1, $t1, 1
	lui $t2, %hi(r1)
	sw $t1, %lo(r1)($t2)
	lui $t1, %hi(m)
	lw $t1, %lo(m)($t1)
	slt $t0, $t0, $t1
	xori $t0, $t0, 1
	lui $t1, %hi(r2)
	sw $t0, %lo(r2)($t1)
	jr $ra
	nop
