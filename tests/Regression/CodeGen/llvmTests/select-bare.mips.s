.data
.text
.globl bare_select
bare_select:
.p2align 2
	sltu $t0, $zero, $a0
	move $v0, $a2
	movn $v0, $a1, $t0
	jr $ra
	nop
.globl bare_select_float
bare_select_float:
.p2align 2
	mtc1 $a2, $f4
	sltu $t0, $zero, $a0
	mov.s $f0, $f14
	movz.s $f0, $f4, $t0
	jr $ra
	nop
