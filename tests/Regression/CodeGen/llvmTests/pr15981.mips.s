.data
.bss
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
.p2align 2
.globl fn1
fn1:
	sltu $t0, $zero, $a1
	subu $t0, $zero, $t0
	and $v0, $a0, $t0
	jr $ra
	nop
.p2align 2
.globl fn2
fn2:
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	lui $t1, %hi(a)
	lw $t2, %lo(a)($t1)
	addiu $t2, $t2, -1
	sltu $t3, $zero, $t2
	subu $t3, $zero, $t3
	and $t0, $t0, $t3
	sw $t2, %lo(a)($t1)
	lui $t1, %hi(c)
	sw $t0, %lo(c)($t1)
	jr $ra
	nop
