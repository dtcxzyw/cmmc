.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
	slliw a0, a0, 3
	addiw a0, a0, 7
	ret
.globl test2
test2:
	li a1, 4
	ble a0, a1, label7
	addiw a1, a0, -5
	addiw a0, a0, -4
	srliw a1, a1, 2
	slliw a1, a1, 2
	subw a1, zero, a1
	addw a0, a1, a0
label7:
	ret
