.data
.text
.p2align 2
.globl bar
bar:
	jr $ra
	nop
.p2align 2
.globl bar_comdat
bar_comdat:
	jr $ra
	nop
.p2align 2
.globl baz
baz:
	jr $ra
	nop
.p2align 2
.globl baz_comdat
baz_comdat:
	jr $ra
	nop
.p2align 2
.globl foo
foo:
	jr $ra
	nop
.p2align 2
.globl quux
quux:
	jr $ra
	nop
.p2align 2
.globl quux_comdat
quux_comdat:
	jr $ra
	nop
