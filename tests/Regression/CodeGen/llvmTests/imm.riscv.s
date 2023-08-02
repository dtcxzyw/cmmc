.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	lui a2, 983040
	addiw a1, a2, 15
	addw a0, a0, a1
	ret
.p2align 2
.globl test2
test2:
	lui a1, 16
	addiw a0, a1, -3
	ret
.p2align 2
.globl test3
test3:
	lui a2, 16
	addiw a1, a2, -3
	or a0, a0, a1
	ret
