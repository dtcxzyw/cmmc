.data
.bss
.align 4
.globl var
var:
	.zero	4
.text
.globl func
func:
	lui $t0, %hi(var)
	lw $t1, %lo(var)($t0)
	sw $t1, %lo(var)($t0)
	jr $ra
	nop
.globl shrink_wrap
shrink_wrap:
	beq $a0, $zero, label14
	nop
	b label9
	nop
label14:
	lui $t0, %hi(var)
	lw $t1, %lo(var)($t0)
	sw $t1, %lo(var)($t0)
label9:
	jr $ra
	nop
