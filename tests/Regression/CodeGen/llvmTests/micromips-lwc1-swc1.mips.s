.data
.bss
.p2align 2
.globl gf0
gf0:
	.zero	4
.text
.p2align 2
.globl test_lwc1
test_lwc1:
	lui $t0, %hi(gf0)
	lwc1 $f0, %lo(gf0)($t0)
	jr $ra
	nop
.p2align 2
.globl test_swc1
test_swc1:
	lui $t0, %hi(gf0)
	swc1 $f12, %lo(gf0)($t0)
	jr $ra
	nop
