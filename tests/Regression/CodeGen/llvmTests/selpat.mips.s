.data
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
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	lui $t2, %hi(b)
	lw $t2, %lo(b)($t2)
	xor $t2, $t3, $t2
	sltiu $t4, $t2, 1
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z1)
	sw $t2, %lo(z1)($t4)
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t2, %lo(c)($t2)
	xor $t2, $t3, $t2
	sltiu $t2, $t2, 1
	movn $t0, $t1, $t2
	lui $t1, %hi(z3)
	sw $t0, %lo(z3)($t1)
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_seleqk
calc_seleqk:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	xori $t0, $t3, 1
	sltiu $t4, $t0, 1
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z1)
	sw $t2, %lo(z1)($t4)
	xori $t2, $t3, 10
	sltiu $t3, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t3
	lui $t3, %hi(z2)
	sw $t2, %lo(z2)($t3)
	lui $t2, %hi(b)
	lw $t3, %lo(b)($t2)
	xori $t2, $t3, 3
	sltiu $t4, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t4
	lui $t4, %hi(z3)
	sw $t2, %lo(z3)($t4)
	xori $t2, $t3, 10
	sltiu $t2, $t2, 1
	movn $t1, $t0, $t2
	lui $t0, %hi(z4)
	sw $t1, %lo(z4)($t0)
	jr $ra
	nop
.globl calc_seleqz
calc_seleqz:
	lui $t0, %hi(t)
	lw $t1, %lo(t)($t0)
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	lui $t2, %hi(a)
	lw $t2, %lo(a)($t2)
	sltiu $t3, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t3
	lui $t3, %hi(z1)
	sw $t2, %lo(z1)($t3)
	lui $t3, %hi(b)
	lw $t3, %lo(b)($t3)
	sltiu $t4, $t3, 1
	move $t3, $t1
	movn $t3, $t0, $t4
	lui $t4, %hi(z2)
	sw $t3, %lo(z2)($t4)
	lui $t3, %hi(c)
	lw $t3, %lo(c)($t3)
	sltiu $t3, $t3, 1
	movn $t0, $t1, $t3
	lui $t1, %hi(z3)
	sw $t0, %lo(z3)($t1)
	lui $t0, %hi(z4)
	sw $t2, %lo(z4)($t0)
	jr $ra
	nop
.globl calc_selge
calc_selge:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	slt $t0, $t3, $t4
	xori $t5, $t0, 1
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	move $t2, $t1
	movn $t2, $t0, $t5
	lui $t5, %hi(z1)
	sw $t2, %lo(z1)($t5)
	slt $t2, $t4, $t3
	xori $t4, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	slt $t2, $t4, $t3
	xori $t5, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	slt $t2, $t3, $t4
	xori $t2, $t2, 1
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_selgt
calc_selgt:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	slt $t5, $t4, $t3
	lui $t0, %hi(f)
	lw $t1, %lo(f)($t0)
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z1)
	sw $t2, %lo(z1)($t5)
	slt $t4, $t3, $t4
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	slt $t5, $t3, $t4
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	slt $t2, $t4, $t3
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	move $v0, $zero
	jr $ra
	nop
.globl calc_selle
calc_selle:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	slt $t0, $t4, $t3
	xori $t5, $t0, 1
	lui $t0, %hi(t)
	lw $t1, %lo(t)($t0)
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z1)
	sw $t2, %lo(z1)($t5)
	slt $t2, $t3, $t4
	xori $t4, $t2, 1
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	slt $t2, $t3, $t4
	xori $t5, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	slt $t2, $t4, $t3
	xori $t2, $t2, 1
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_selltk
calc_selltk:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	slti $t4, $t3, 10
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z1)
	sw $t2, %lo(z1)($t4)
	lui $t2, %hi(b)
	lw $t2, %lo(b)($t2)
	slti $t4, $t2, 2
	move $t2, $t0
	movn $t2, $t1, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t2, %lo(c)($t2)
	li $t4, 2
	slt $t5, $t4, $t2
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	slt $t2, $t4, $t3
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_selne
calc_selne:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	lui $t2, %hi(b)
	lw $t2, %lo(b)($t2)
	xor $t2, $t3, $t2
	sltu $t4, $zero, $t2
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z1)
	sw $t2, %lo(z1)($t4)
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t2, %lo(c)($t2)
	xor $t2, $t3, $t2
	sltu $t2, $zero, $t2
	movn $t0, $t1, $t2
	lui $t1, %hi(z3)
	sw $t0, %lo(z3)($t1)
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_selnek
calc_selnek:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	xori $t0, $t3, 1
	sltu $t4, $zero, $t0
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z1)
	sw $t2, %lo(z1)($t4)
	xori $t2, $t3, 10
	sltu $t3, $zero, $t2
	move $t2, $t0
	movn $t2, $t1, $t3
	lui $t3, %hi(z2)
	sw $t2, %lo(z2)($t3)
	lui $t2, %hi(b)
	lw $t3, %lo(b)($t2)
	xori $t2, $t3, 3
	sltu $t4, $zero, $t2
	move $t2, $t0
	movn $t2, $t1, $t4
	lui $t4, %hi(z3)
	sw $t2, %lo(z3)($t4)
	xori $t2, $t3, 10
	sltu $t2, $zero, $t2
	movn $t1, $t0, $t2
	lui $t0, %hi(z4)
	sw $t1, %lo(z4)($t0)
	jr $ra
	nop
.globl calc_selnez
calc_selnez:
	lui $t0, %hi(f)
	lw $t1, %lo(f)($t0)
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	lui $t2, %hi(a)
	lw $t2, %lo(a)($t2)
	sltu $t3, $zero, $t2
	move $t2, $t0
	movn $t2, $t1, $t3
	lui $t3, %hi(z1)
	sw $t2, %lo(z1)($t3)
	lui $t3, %hi(b)
	lw $t3, %lo(b)($t3)
	sltu $t4, $zero, $t3
	move $t3, $t1
	movn $t3, $t0, $t4
	lui $t4, %hi(z2)
	sw $t3, %lo(z2)($t4)
	lui $t3, %hi(c)
	lw $t3, %lo(c)($t3)
	sltu $t3, $zero, $t3
	movn $t0, $t1, $t3
	lui $t1, %hi(z3)
	sw $t0, %lo(z3)($t1)
	lui $t0, %hi(z4)
	sw $t2, %lo(z4)($t0)
	jr $ra
	nop
.globl calc_selnez2
calc_selnez2:
	lui $t0, %hi(f)
	lw $t1, %lo(f)($t0)
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	lui $t2, %hi(a)
	lw $t2, %lo(a)($t2)
	sltu $t3, $zero, $t2
	move $t2, $t0
	movn $t2, $t1, $t3
	lui $t3, %hi(z1)
	sw $t2, %lo(z1)($t3)
	lui $t3, %hi(b)
	lw $t3, %lo(b)($t3)
	sltu $t4, $zero, $t3
	move $t3, $t1
	movn $t3, $t0, $t4
	lui $t4, %hi(z2)
	sw $t3, %lo(z2)($t4)
	lui $t3, %hi(c)
	lw $t3, %lo(c)($t3)
	sltu $t3, $zero, $t3
	movn $t0, $t1, $t3
	lui $t1, %hi(z3)
	sw $t0, %lo(z3)($t1)
	lui $t0, %hi(z4)
	sw $t2, %lo(z4)($t0)
	jr $ra
	nop
.globl calc_seluge
calc_seluge:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	sltu $t0, $t3, $t4
	xori $t5, $t0, 1
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	move $t2, $t1
	movn $t2, $t0, $t5
	lui $t5, %hi(z1)
	sw $t2, %lo(z1)($t5)
	sltu $t2, $t4, $t3
	xori $t4, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	sltu $t2, $t4, $t3
	xori $t5, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	sltu $t2, $t3, $t4
	xori $t2, $t2, 1
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_selugt
calc_selugt:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	sltu $t5, $t4, $t3
	lui $t0, %hi(f)
	lw $t1, %lo(f)($t0)
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z1)
	sw $t2, %lo(z1)($t5)
	sltu $t4, $t3, $t4
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	sltu $t5, $t3, $t4
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	sltu $t2, $t4, $t3
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
.globl calc_selule
calc_selule:
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	sltu $t0, $t4, $t3
	xori $t5, $t0, 1
	lui $t0, %hi(t)
	lw $t1, %lo(t)($t0)
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z1)
	sw $t2, %lo(z1)($t5)
	sltu $t2, $t3, $t4
	xori $t4, $t2, 1
	move $t2, $t1
	movn $t2, $t0, $t4
	lui $t4, %hi(z2)
	sw $t2, %lo(z2)($t4)
	lui $t2, %hi(c)
	lw $t4, %lo(c)($t2)
	sltu $t2, $t3, $t4
	xori $t5, $t2, 1
	move $t2, $t0
	movn $t2, $t1, $t5
	lui $t5, %hi(z3)
	sw $t2, %lo(z3)($t5)
	sltu $t2, $t4, $t3
	xori $t2, $t2, 1
	movn $t0, $t1, $t2
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
