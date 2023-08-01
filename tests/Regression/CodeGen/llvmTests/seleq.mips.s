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
.p2align 2
.globl calc_seleq
calc_seleq:
	lui $t0, %hi(a)
	lw $t1, %lo(a)($t0)
	lui $t0, %hi(b)
	lw $t2, %lo(b)($t0)
	bne $t1, $t2, label29
	nop
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	b label2
	nop
label29:
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
label2:
	lui $t3, %hi(z1)
	sw $t0, %lo(z1)($t3)
	bne $t1, $t2, label35
	nop
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
	b label5
	nop
label35:
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
label5:
	lui $t2, %hi(z2)
	sw $t0, %lo(z2)($t2)
	lui $t0, %hi(c)
	lw $t2, %lo(c)($t0)
	bne $t1, $t2, label45
	nop
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	b label8
	nop
label45:
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
label8:
	lui $t3, %hi(z3)
	sw $t0, %lo(z3)($t3)
	bne $t1, $t2, label52
	nop
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	b label11
	nop
label52:
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
label11:
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
