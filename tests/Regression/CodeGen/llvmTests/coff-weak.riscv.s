.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl bar
bar:
.p2align 2
	ret
.globl bar_comdat
bar_comdat:
.p2align 2
	ret
.globl baz
baz:
.p2align 2
	ret
.globl baz_comdat
baz_comdat:
.p2align 2
	ret
.globl foo
foo:
.p2align 2
	ret
.globl quux
quux:
.p2align 2
	ret
.globl quux_comdat
quux_comdat:
.p2align 2
	ret
