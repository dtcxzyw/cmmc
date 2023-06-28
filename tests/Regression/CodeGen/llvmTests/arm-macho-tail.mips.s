.data
.section .rodata
.bss
.text
.globl bar
bar:
	jr $ra
	nop
.globl foo
foo:
	jr $ra
	nop
.globl one_inst
one_inst:
	jr $ra
	nop
