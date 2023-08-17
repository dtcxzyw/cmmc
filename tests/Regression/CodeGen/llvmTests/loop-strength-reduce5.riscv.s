.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 1
.globl X
X:
	.byte	0
	.byte	0
.p2align 1
.globl Y
Y:
	.byte	0
	.byte	0
.text
.p2align 2
.globl foo
foo:
	ble a0, zero, label5
pcrel39:
	auipc a2, %pcrel_hi(X)
pcrel40:
	auipc a1, %pcrel_hi(Y)
	sh zero, %pcrel_lo(pcrel39)(a2)
	li a2, 1
	sh zero, %pcrel_lo(pcrel40)(a1)
	beq a0, a2, label5
	li a1, 1
label3:
	zext.h a2, a1
pcrel41:
	auipc a5, %pcrel_hi(X)
	zext.h a3, a1
	sh a2, %pcrel_lo(pcrel41)(a5)
	addiw a1, a1, 1
	slliw a4, a3, 2
pcrel42:
	auipc a5, %pcrel_hi(Y)
	zext.h a2, a4
	sh a2, %pcrel_lo(pcrel42)(a5)
	bne a0, a1, label3
label5:
	ret
