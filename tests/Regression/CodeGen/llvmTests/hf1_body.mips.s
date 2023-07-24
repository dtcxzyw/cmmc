.data
.bss
.align 4
.globl x
x:
	.zero	4
.text
.globl v_sf
v_sf:
.p2align 2
	lui $t0, %hi(x)
	swc1 $f12, %lo(x)($t0)
	jr $ra
	nop
