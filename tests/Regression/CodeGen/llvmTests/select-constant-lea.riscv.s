.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl select_unsigned_lt_10_8_13
select_unsigned_lt_10_8_13:
	sltiu a1, a0, 10
	li a0, 8
	bne a1, zero, label8
	li a0, 13
label8:
	li a1, 4294967295
	and a0, a0, a1
	ret
