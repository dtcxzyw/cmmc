.data
.data
.p2align 2
.globl src
src:
	.4byte	0
.p2align 2
.globl dst
dst:
	.4byte	0
.text
.p2align 2
.globl imm32_cse
imm32_cse:
	lui $t0, %hi(src)
	lw $t0, %lo(src)($t0)
	addiu $t0, $t0, 4099
	lui $t1, %hi(dst)
	sw $t0, %lo(dst)($t1)
	jr $ra
	nop
