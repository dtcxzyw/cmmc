.data
.data
.p2align 2
.globl g
g:
	.4byte	0
.bss
.p2align 2
.globl i
i:
	.zero	4
.text
.p2align 2
.globl LoadGV
LoadGV:
	lui $t0, %hi(g)
	lw $v0, %lo(g)($t0)
	jr $ra
	nop
.p2align 2
.globl LoadIndirectSymbol
LoadIndirectSymbol:
	lui $t0, %hi(i)
	lw $v0, %lo(i)($t0)
	jr $ra
	nop
