.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl bar
bar:
	ret
.p2align 2
.globl bar_comdat
bar_comdat:
	ret
.p2align 2
.globl baz
baz:
	ret
.p2align 2
.globl baz_comdat
baz_comdat:
	ret
.p2align 2
.globl foo
foo:
	ret
.p2align 2
.globl quux
quux:
	ret
.p2align 2
.globl quux_comdat
quux_comdat:
	ret
