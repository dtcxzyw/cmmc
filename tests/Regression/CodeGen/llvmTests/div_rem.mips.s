.data
.data
.align 4
.globl iiii
iiii:
	.4byte	103
.align 4
.globl jjjj
jjjj:
	.4byte	4294967292
.align 4
.globl kkkk
kkkk:
	.4byte	0
.align 4
.globl llll
llll:
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
	mfhi $t0
	lui $t1, %hi(llll)
	sw $t0, %lo(llll)($t1)
	jr $ra
	nop
