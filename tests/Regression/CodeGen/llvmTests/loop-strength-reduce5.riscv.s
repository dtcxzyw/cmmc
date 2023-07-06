.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.align 2
.globl Y
Y:
	.byte	0
	.byte	0
.text
.globl foo
foo:
	ble a0, zero, label4
	mv a1, zero
	li a2, 65535
pcrel34:
	auipc a4, %pcrel_hi(X)
	and a3, zero, a2
	addiw a1, zero, 1
	sh a3, %pcrel_lo(pcrel34)(a4)
	slliw a3, a3, 2
	and a2, a3, a2
pcrel35:
	auipc a3, %pcrel_hi(Y)
	sh a2, %pcrel_lo(pcrel35)(a3)
	bne a0, a1, label2
	j label4
label2:
	li a2, 65535
pcrel36:
	auipc a4, %pcrel_hi(X)
	and a3, a1, a2
	addiw a1, a1, 1
	sh a3, %pcrel_lo(pcrel36)(a4)
	slliw a3, a3, 2
	and a2, a3, a2
pcrel37:
	auipc a3, %pcrel_hi(Y)
	sh a2, %pcrel_lo(pcrel37)(a3)
	bne a0, a1, label2
label4:
	ret
