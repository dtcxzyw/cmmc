.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl pass_bool
pass_bool:
.p2align 2
	li a1, 66
	bne a0, zero, label8
	mv a1, zero
label8:
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl ret_true
ret_true:
.p2align 2
	li a0, 1
	ret
