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
	lui $t0, %hi(a)
	lw $t1, %lo(a)($t0)
	addiu $t1, $t1, -1
	sw $t1, %lo(a)($t0)
	beq $t1, $zero, label18
	nop
	lui $t0, %hi(b)
	lw $t0, %lo(b)($t0)
	b label9
	nop
label18:
	move $t0, $zero
label9:
	lui $t1, %hi(c)
	sw $t0, %lo(c)($t1)
	jr $ra
	nop
