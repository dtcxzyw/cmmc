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
.p2align 2
.globl foo
foo:
	ble a0, zero, label5
pcrel42:
	auipc a2, %pcrel_hi(X)
pcrel43:
	auipc a1, %pcrel_hi(Y)
	sh zero, %pcrel_lo(pcrel42)(a2)
	li a2, 1
	sh zero, %pcrel_lo(pcrel43)(a1)
	beq a0, a2, label5
	li a1, 1
label3:
	li a2, 65535
pcrel44:
	auipc a5, %pcrel_hi(X)
	and a4, a1, a2
	and a3, a1, a2
	addiw a1, a1, 1
	sh a3, %pcrel_lo(pcrel44)(a5)
	slliw a3, a4, 2
pcrel45:
	auipc a4, %pcrel_hi(Y)
	and a2, a3, a2
	sh a2, %pcrel_lo(pcrel45)(a4)
	bne a0, a1, label3
label5:
	ret
