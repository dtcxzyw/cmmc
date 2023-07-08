.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl bare_select
bare_select:
	bne a0, zero, label8
	mv a1, a2
label8:
	mv a0, a1
	ret
.globl bare_select_float
bare_select_float:
	bne a0, zero, label16
	fmv.s f10, f11
label16:
	ret
