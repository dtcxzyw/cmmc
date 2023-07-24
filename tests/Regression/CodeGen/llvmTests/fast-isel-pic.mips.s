.data
.data
.align 4
.globl g
g:
	.4byte	0
.bss
.align 4
.globl i
i:
	.zero	4
.text
.globl LoadGV
LoadGV:
.p2align 2
	lui $t0, %hi(g)
	lw $v0, %lo(g)($t0)
	jr $ra
	nop
.globl LoadIndirectSymbol
LoadIndirectSymbol:
.p2align 2
	lui $t0, %hi(i)
	lw $v0, %lo(i)($t0)
	jr $ra
	nop
