.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	andi a2, a0, 255
	lui a4, 4080
	slliw a1, a2, 8
	and a3, a0, a4
	li a4, 65280
	slliw a2, a3, 8
	and a3, a0, a4
	or a1, a1, a2
	lui a4, 1044480
	srliw a2, a3, 8
	or a0, a0, a4
	srliw a3, a0, 8
	or a2, a2, a3
	or a0, a1, a2
	ret
.globl test2
test2:
	srliw a1, a0, 8
	li a3, 65280
	lui a4, 1044480
	slliw a0, a0, 8
	and a2, a1, a3
	and a3, a0, a4
	or a0, a2, a3
	lui a2, 4080
	and a1, a1, a2
	or a0, a0, a1
	ret
.globl test3
test3:
	fcvt.w.s a2, f10, rtz
	li a1, 4294967295
	lui t0, 4080
	li a5, 65280
	and a0, a2, a1
	and a2, a2, a5
	srliw a4, a0, 8
	slliw a0, a0, 8
	and a3, a4, t0
	and a4, a2, a1
	or a1, a3, a4
	lui a3, 1044480
	and a2, a0, a3
	or a0, a1, a2
	ret
