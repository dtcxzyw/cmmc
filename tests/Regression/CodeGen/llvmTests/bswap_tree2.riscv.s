.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	andi a2, a0, 255
	li a4, 65280
	slliw a1, a2, 8
	and a3, a0, a4
	lui a4, 4080
	srliw a2, a3, 8
	or a1, a1, a2
	and a2, a0, a4
	lui a4, 1044480
	slliw a3, a2, 8
	or a1, a1, a3
	or a3, a0, a4
	srliw a2, a3, 8
	or a0, a1, a2
	ret
.p2align 2
.globl test2
test2:
	srliw a1, a0, 8
	li a3, 65280
	lui a4, 4080
	slliw a0, a0, 8
	and a2, a1, a3
	and a3, a1, a4
	or a1, a2, a3
	lui a3, 1044480
	and a2, a0, a3
	or a0, a1, a2
	ret
.p2align 2
.globl test3
test3:
	fcvt.w.s a0, f10, rtz
	lui a4, 4080
	zext.w a1, a0
	srliw a3, a1, 8
	slliw a1, a1, 8
	and a2, a3, a4
	lui a4, 1044480
	and a3, a1, a4
	li a4, 65280
	or a1, a2, a3
	and a3, a0, a4
	zext.w a2, a3
	or a0, a1, a2
	ret
