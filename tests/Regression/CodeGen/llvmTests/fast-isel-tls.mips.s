.data
.data
.align 4
.globl v
v:
	.4byte	0
.text
.globl f
f:
	lui $t0, %hi(v)
	lw $t0, %lo(v)($t0)
	addiu $v0, $t0, 1
	jr $ra
	nop
.globl f_alias
f_alias:
	lui $t0, %hi(v)
	lw $t0, %lo(v)($t0)
	addiu $v0, $t0, 1
	jr $ra
	nop
