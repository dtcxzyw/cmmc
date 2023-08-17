.data
.data
.p2align 2
.globl iiii
iiii:
	.4byte	100
.p2align 2
.globl jjjj
jjjj:
	.4byte	4294967292
.p2align 2
.globl kkkk
kkkk:
	.4byte	0
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(iiii)
	lw $t0, %lo(iiii)($t0)
	lui $t1, %hi(jjjj)
	lw $t1, %lo(jjjj)($t1)
	div $zero, $t0, $t1
	mflo $t0
	lui $t1, %hi(kkkk)
	sw $t0, %lo(kkkk)($t1)
	jr $ra
	nop
