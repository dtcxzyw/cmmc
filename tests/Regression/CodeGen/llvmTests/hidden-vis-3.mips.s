.data
.section .rodata
.bss
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.text
.globl t
t:
	lui $t0, %hi(y)
	lw $t0, %lo(y)($t0)
	lui $t1, %hi(x)
	lw $t1, %lo(x)($t1)
	addu $v0, $t0, $t1
	jr $ra
	nop
