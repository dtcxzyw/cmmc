.data
.bss
.align 4
.globl x
x:
	.zero	4
.text
.p2align 2
.globl test
test:
	lui $t0, %hi(x)
	lw $t0, %lo(x)($t0)
	sll $v0, $t0, 1
	jr $ra
	nop
