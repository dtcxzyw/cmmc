.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	andi a2, a0, 255
	li t0, 255
	slliw a1, a2, 8
	slli a5, t0, 8
	and a4, a0, a5
	lui a5, 4080
	srliw a3, a4, 8
	and a4, a0, a5
	or a2, a1, a3
	lui a5, 1044480
	slliw a3, a4, 8
	or a4, a0, a5
	or a1, a2, a3
	srliw a2, a4, 8
	or a0, a1, a2
	ret
.p2align 2
.globl test2
test2:
	srliw a1, a0, 8
	li a4, 255
	lui t0, 4080
	slli a2, a4, 8
	and a5, a1, t0
	slliw a4, a0, 8
	and a3, a1, a2
	lui t0, 1044480
	or a2, a3, a5
	and a1, a4, t0
	or a0, a2, a1
	ret
.p2align 2
.globl test3
test3:
	fcvt.w.s a1, f10, rtz
	lui a5, 4080
	lui t0, 1044480
	zext.w a0, a1
	slliw a4, a0, 8
	srliw a2, a0, 8
	li a0, 255
	and a3, a2, a5
	and a5, a4, t0
	slli a4, a0, 8
	or a2, a3, a5
	and a3, a1, a4
	zext.w a5, a3
	or a0, a2, a5
	ret
