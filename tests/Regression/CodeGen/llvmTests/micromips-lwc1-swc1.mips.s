.data
.bss
.align 4
.globl gf0
gf0:
	.zero	4
.text
.globl test_lwc1
test_lwc1:
.p2align 2
	lui $t0, %hi(gf0)
	lwc1 $f0, %lo(gf0)($t0)
	jr $ra
	nop
.globl test_swc1
test_swc1:
.p2align 2
	lui $t0, %hi(gf0)
	swc1 $f12, %lo(gf0)($t0)
	jr $ra
	nop
