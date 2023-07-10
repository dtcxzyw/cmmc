.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 2
.globl X
X:
	.byte	0
	.byte	0
.text
.globl foo
foo:
	mv a1, a0
	ble a0, zero, label11
pcrel34:
	auipc a3, %pcrel_hi(X)
	sh zero, %pcrel_lo(pcrel34)(a3)
	addi a2, a3, %pcrel_lo(pcrel34)
	li a3, 1
	bne a0, a3, label17
	j label31
label11:
	mv a0, zero
	j label5
label17:
	li a0, 1
label3:
	li a4, 65535
	and a3, a0, a4
	addiw a0, a0, 1
	sh a3, 0(a2)
	bne a1, a0, label3
	j label5
label31:
	li a0, 1
label5:
	ret
