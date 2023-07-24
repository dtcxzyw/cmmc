.data
.data
.align 4
.globl src
src:
	.4byte	0
.align 4
.globl dst
dst:
	.4byte	0
.text
.globl imm32_cse
imm32_cse:
.p2align 2
	lui $t0, %hi(src)
	lw $t0, %lo(src)($t0)
	addiu $t0, $t0, 4099
	lui $t1, %hi(dst)
	sw $t0, %lo(dst)($t1)
	jr $ra
	nop
