.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl fptoint
fptoint:
.p2align 2
	fcvt.w.s a1, f10, rtz
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl fptouint
fptouint:
.p2align 2
	fcvt.w.s a1, f10, rtz
	li a2, 4294967295
	and a0, a1, a2
	ret
