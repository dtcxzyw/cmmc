.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl hoge
hoge:
	li a1, -1
	li a2, 4294967295
	sllw a3, a1, a0
	xori a0, a3, -1
	and a3, a0, a2
	li a2, 3840
	slliw a1, a3, 8
	and a0, a1, a2
	ret
