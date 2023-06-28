.data
.align 4
.globl i
i:
	.4byte	15
.section .rodata
.bss
.text
.globl f
f:
	lui $t0, %hi(i)
	lw $v0, %lo(i)($t0)
	jr $ra
	nop
