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
	lui $t1, %hi(a)
	addiu $t0, $t1, %lo(a)
	lw $t1, %lo(a)($t1)
	lui $t3, %hi(b)
	addiu $t2, $t3, %lo(b)
	lw $t3, %lo(b)($t3)
	bne $t1, $t3, label17
	nop
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	lui $t3, %hi(z1)
	sw $t1, %lo(z1)($t3)
	lw $t1, 0($t2)
	lw $t2, 0($t0)
	bne $t1, $t2, label16
	nop
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	lui $t2, %hi(z2)
	sw $t1, %lo(z2)($t2)
	lui $t1, %hi(c)
	addiu $t2, $t1, %lo(c)
	lw $t1, %lo(c)($t1)
	lw $t3, 0($t0)
	bne $t1, $t3, label9
	nop
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	lui $t3, %hi(z3)
	sw $t1, %lo(z3)($t3)
	lw $t0, 0($t0)
	lw $t1, 0($t2)
	bne $t0, $t1, label64
	nop
	b label130
	nop
label17:
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	lui $t3, %hi(z1)
	sw $t1, %lo(z1)($t3)
	lw $t1, 0($t2)
	lw $t2, 0($t0)
	bne $t1, $t2, label16
	nop
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	lui $t2, %hi(z2)
	sw $t1, %lo(z2)($t2)
	lui $t1, %hi(c)
	addiu $t2, $t1, %lo(c)
	lw $t1, %lo(c)($t1)
	lw $t3, 0($t0)
	bne $t1, $t3, label9
	nop
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	lui $t3, %hi(z3)
	sw $t1, %lo(z3)($t3)
	lw $t0, 0($t0)
	lw $t1, 0($t2)
	bne $t0, $t1, label64
	nop
	b label130
	nop
label9:
	lui $t1, %hi(f)
	lw $t1, %lo(f)($t1)
	lui $t3, %hi(z3)
	sw $t1, %lo(z3)($t3)
	lw $t0, 0($t0)
	lw $t1, 0($t2)
	bne $t0, $t1, label64
	nop
	b label130
	nop
label64:
	lui $t0, %hi(f)
	lw $t0, %lo(f)($t0)
label14:
	lui $t1, %hi(z4)
	sw $t0, %lo(z4)($t1)
	jr $ra
	nop
label130:
	lui $t0, %hi(t)
	lw $t0, %lo(t)($t0)
	b label14
	nop
label16:
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	lui $t2, %hi(z2)
	sw $t1, %lo(z2)($t2)
	lui $t1, %hi(c)
	addiu $t2, $t1, %lo(c)
	lw $t1, %lo(c)($t1)
	lw $t3, 0($t0)
	bne $t1, $t3, label9
	nop
	lui $t1, %hi(t)
	lw $t1, %lo(t)($t1)
	lui $t3, %hi(z3)
	sw $t1, %lo(z3)($t3)
	lw $t0, 0($t0)
	lw $t1, 0($t2)
	bne $t0, $t1, label64
	nop
	b label130
	nop
