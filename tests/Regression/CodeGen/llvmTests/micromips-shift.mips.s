.data
.align 4
.globl a
a:
	.4byte	10
.align 4
.globl b
b:
	.4byte	0
.align 4
.globl c
c:
	.4byte	10
.align 4
.globl d
d:
	.4byte	0
.align 4
.globl i
i:
	.4byte	10654
.align 4
.globl j
j:
	.4byte	0
.align 4
.globl m
m:
	.4byte	10
.align 4
.globl n
n:
	.4byte	0
.section .rodata
.bss
.text
.globl shift_left
shift_left:
	lui $t0, %hi(a)
	lw $t0, %lo(a)($t0)
	sll $t0, $t0, 4
	lui $t1, %hi(b)
	sw $t0, %lo(b)($t1)
	lui $t0, %hi(c)
	lw $t0, %lo(c)($t0)
	sll $t0, $t0, 10
	lui $t1, %hi(d)
	sw $t0, %lo(d)($t1)
	move $v0, $zero
	jr $ra
	nop
.globl shift_right
shift_right:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	srl $t0, $t0, 4
	lui $t1, %hi(j)
	sw $t0, %lo(j)($t1)
	lui $t0, %hi(m)
	lw $t0, %lo(m)($t0)
	srl $t0, $t0, 10
	lui $t1, %hi(n)
	sw $t0, %lo(n)($t1)
	move $v0, $zero
	jr $ra
	nop
