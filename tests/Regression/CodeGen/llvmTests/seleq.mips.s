.data
.align 4
.globl t
t:
	.4byte	10
.align 4
.globl f
f:
	.4byte	199
.align 4
.globl a
a:
	.4byte	1
.align 4
.globl b
b:
	.4byte	10
.align 4
.globl c
c:
	.4byte	1
.align 4
.globl z1
z1:
	.4byte	0
.align 4
.globl z2
z2:
	.4byte	0
.align 4
.globl z3
z3:
	.4byte	0
.align 4
.globl z4
z4:
	.4byte	0
.text
.globl calc_seleq
calc_seleq:
	lui $t0, %hi(a)
	addiu $t1, $t0, %lo(a)
	lw $t0, %lo(a)($t0)
	lui $t3, %hi(b)
	addiu $t2, $t3, %lo(b)
	lw $t3, %lo(b)($t3)
	xor $t0, $t0, $t3
	sltu $t0, $zero, $t0
	bne $t0, $zero, label14
	nop
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	b label3
	nop
label14:
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
label3:
	lui $t3, %hi(z1)
	sw $t0, %lo(z1)($t3)
	lw $t0, 0($t2)
	lw $t3, 0($t1)
	xor $t0, $t0, $t3
	sltiu $t4, $t0, 1
	lui $t0, %hi(f)
	addiu $t0, $t0, %lo(f)
	lui $t1, %hi(t)
	addiu $t1, $t1, %lo(t)
	move $t2, $t1
	movn $t2, $t0, $t4
	lw $t2, 0($t2)
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	xor $t2, $t4, $t3
	sltiu $t5, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t5
	lw $t2, 0($t2)
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	xor $t2, $t3, $t4
	sltiu $t2, $t2, 1
	movn $t0, $t1, $t2
	lw $t0, 0($t0)
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
