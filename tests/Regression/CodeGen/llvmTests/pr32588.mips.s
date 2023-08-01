.data
.bss
.align 4
.globl c
c:
	.zero	4
.align 4
.globl b
b:
	.zero	4
.align 4
.globl d
d:
	.zero	4
.text
.p2align 2
.globl fn1
fn1:
	lui $t0, %hi(c)
	lw $t0, %lo(c)($t0)
	sltiu $t0, $t0, 1
	lui $t1, %hi(d)
	sw $t0, %lo(d)($t1)
	jr $ra
	nop
