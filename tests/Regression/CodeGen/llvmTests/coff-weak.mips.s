.data
.text
.globl bar
bar:
.p2align 2
	jr $ra
	nop
.globl bar_comdat
bar_comdat:
.p2align 2
	jr $ra
	nop
.globl baz
baz:
.p2align 2
	jr $ra
	nop
.globl baz_comdat
baz_comdat:
.p2align 2
	jr $ra
	nop
.globl foo
foo:
.p2align 2
	jr $ra
	nop
.globl quux
quux:
.p2align 2
	jr $ra
	nop
.globl quux_comdat
quux_comdat:
.p2align 2
	jr $ra
	nop
