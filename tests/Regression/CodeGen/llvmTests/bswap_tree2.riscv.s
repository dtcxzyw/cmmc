.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	andi a2, a0, 255
	li a4, 65280
	slliw a1, a2, 8
	and a3, a0, a4
	srliw a2, a3, 8
	lui a3, 4080
	or a1, a1, a2
	and a2, a0, a3
	lui a3, 1044480
	slliw a4, a2, 8
	or a2, a0, a3
	or a1, a1, a4
	srliw a4, a2, 8
	or a0, a1, a4
	ret
.globl test2
test2:
.p2align 2
	srliw a1, a0, 8
	li a3, 65280
	lui a4, 4080
	slliw a0, a0, 8
	and a2, a1, a3
	and a3, a1, a4
	or a1, a2, a3
	lui a2, 1044480
	and a3, a0, a2
	or a0, a1, a3
	ret
.globl test3
test3:
.p2align 2
	fcvt.w.s a1, f10, rtz
	li a0, 4294967295
	lui a5, 4080
	and a2, a1, a0
	srliw a4, a2, 8
	slliw a2, a2, 8
	and a3, a4, a5
	lui a5, 1044480
	and a4, a2, a5
	li a5, 65280
	or a2, a3, a4
	and a1, a1, a5
	and a3, a1, a0
	or a0, a2, a3
	ret
