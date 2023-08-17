.data
.data
.globl x
x:
	.byte	0
.p2align 2
.globl y
y:
	.4byte	0
.p2align 2
.globl z
z:
	.4byte	0
.text
.p2align 2
.globl PR35761
PR35761:
	lui $t0, %hi(x)
	lb $t0, %lo(x)($t0)
	lui $t1, %hi(y)
	lw $t1, %lo(y)($t1)
	ori $t2, $a0, 32767
	xor $t1, $t1, $t2
	andi $t0, $t0, 255
	or $t0, $t1, $t0
	andi $t0, $t0, 255
	lui $t1, %hi(z)
	sw $t0, %lo(z)($t1)
	jr $ra
	nop
