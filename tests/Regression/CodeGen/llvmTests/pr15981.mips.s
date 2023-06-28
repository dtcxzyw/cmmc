.data
.align 4
.globl a
a:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl c
c:
	.zero	4
.text
.globl fn1
fn1:
	sltu $t0, $zero, $a1
	move $v0, $zero
	movn $v0, $a0, $t0
	jr $ra
	nop
.globl fn2
fn2:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	lui $t1, %hi(a)
	lw $t2, %lo(a)($t1)
	addiu $t2, $t2, -1
	sw $t2, %lo(a)($t1)
	sltu $t2, $zero, $t2
	move $t1, $zero
	movn $t1, $t0, $t2
	lui $t0, %hi(c)
	sw $t1, %lo(c)($t0)
	jr $ra
	nop
