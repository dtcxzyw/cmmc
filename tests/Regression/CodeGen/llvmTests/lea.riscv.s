.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	slliw a1, a0, 3
	addiw a0, a1, 7
	ret
.p2align 2
.globl test2
test2:
	li a1, 4
	ble a0, a1, label7
	addiw a4, a0, -5
	srliw a2, a4, 2
	addiw a4, a0, -4
	slli a3, a2, 2
	subw a1, zero, a3
	addw a0, a1, a4
label7:
	ret
