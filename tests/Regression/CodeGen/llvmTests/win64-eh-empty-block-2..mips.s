.data
.align 1
.globl x
x:
	.byte	0
.align 4
.globl y
y:
	.4byte	0
.align 4
.globl z
z:
	.4byte	0
.text
.globl PR35761
PR35761:
	lui $t0, %hi(x)
	lb $t0, %lo(x)($t0)
	andi $t0, $t0, 255
	ori $t1, $a0, 32767
	lui $t2, %hi(y)
	lw $t2, %lo(y)($t2)
	xor $t1, $t2, $t1
	or $t0, $t0, $t1
	andi $t0, $t0, 255
	andi $t0, $t0, 255
	li $t1, 4194303
	and $t0, $t0, $t1
	lui $t1, %hi(z)
	sw $t0, %lo(z)($t1)
	jr $ra
	nop
