.data
.section .rodata
.bss
.text
.globl bare_select
bare_select:
	sltu $t0, $zero, $a0
	movn $a2, $a1, $t0
	move $v0, $a2
	jr $ra
	nop
.globl bare_select_float
bare_select_float:
	mtc1 $a2, $f4
	sltu $t0, $zero, $a0
	mov.s $f0, $f14
	movz.s $f0, $f4, $t0
	jr $ra
	nop
