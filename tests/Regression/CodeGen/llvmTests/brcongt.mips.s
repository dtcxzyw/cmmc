.data
.align 4
.globl i
i:
	.4byte	5
.align 4
.globl j
j:
	.4byte	10
.align 4
.globl k
k:
	.4byte	5
.align 4
.globl result
result:
	.4byte	0
.section .rodata
.bss
.text
.globl test
test:
	lui $t0, %hi(i)
	lw $t0, %lo(i)($t0)
	lui $t1, %hi(j)
	lw $t1, %lo(j)($t1)
	subu $t0, $t0, $t1
	blez $t0, label14
	nop
	b label2
	nop
label14:
	li $t0, 1
	lui $t1, %hi(result)
	sw $t0, %lo(result)($t1)
label2:
	jr $ra
	nop
