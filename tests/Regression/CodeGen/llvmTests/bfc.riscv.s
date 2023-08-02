.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	lui a2, 1044480
	addiw a1, a2, 15
	and a0, a0, a1
	ret
.p2align 2
.globl f2
f2:
	lui a1, 1046528
	and a0, a0, a1
	ret
.p2align 2
.globl f3
f3:
	lui a2, 1
	addiw a1, a2, -1
	and a0, a0, a1
	ret
