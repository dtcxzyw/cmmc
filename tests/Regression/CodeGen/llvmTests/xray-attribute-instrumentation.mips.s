.data
.section .rodata
.bss
.text
.globl bar
bar:
	sltu $v0, $zero, $a0
	jr $ra
	nop
.globl foo
foo:
	move $v0, $zero
	jr $ra
	nop
