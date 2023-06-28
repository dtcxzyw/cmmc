.data
.text
.globl bar
bar:
	jr $ra
	nop
.globl bar_comdat
bar_comdat:
	jr $ra
	nop
.globl baz
baz:
	jr $ra
	nop
.globl baz_comdat
baz_comdat:
	jr $ra
	nop
.globl foo
foo:
	jr $ra
	nop
.globl quux
quux:
	jr $ra
	nop
.globl quux_comdat
quux_comdat:
	jr $ra
	nop
