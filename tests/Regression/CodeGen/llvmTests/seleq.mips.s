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
.p2align 2
	lui $t0, %hi(a)
	lw $t3, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t4, %lo(b)($t0)
	lui $t0, %hi(f)
	addiu $t1, $t0, %lo(f)
	lui $t0, %hi(t)
	addiu $t2, $t0, %lo(t)
	bne $t3, $t4, label29
	nop
	lw $t0, 0($t1)
	b label2
	nop
label29:
	lw $t0, 0($t2)
label2:
	lui $t5, %hi(z1)
	sw $t0, %lo(z1)($t5)
	bne $t3, $t4, label35
	nop
	lw $t0, 0($t1)
	b label5
	nop
label35:
	lw $t0, 0($t2)
label5:
	lui $t4, %hi(z2)
	sw $t0, %lo(z2)($t4)
	lui $t0, %hi(c)
	lw $t4, %lo(c)($t0)
	bne $t3, $t4, label45
	nop
	lw $t0, 0($t2)
	b label8
	nop
label45:
	lw $t0, 0($t1)
label8:
	lui $t5, %hi(z3)
	sw $t0, %lo(z3)($t5)
	bne $t3, $t4, label52
	nop
	lw $t0, 0($t2)
	b label11
	nop
label52:
	lw $t0, 0($t1)
label11:
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
