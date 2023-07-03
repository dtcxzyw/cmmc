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
	ble a0, zero, label13
pcrel36:
	auipc a0, %pcrel_hi(X)
	sh zero, %pcrel_lo(pcrel36)(a0)
	addi a2, a0, %pcrel_lo(pcrel36)
	xori a0, a1, 1
	sltu a0, zero, a0
	bne a0, zero, label19
	j label32
label13:
	mv a0, zero
label7:
	ret
label32:
	li a0, 1
	j label7
label19:
	li a0, 1
	li a3, 65535
	and a3, a0, a3
	sh a3, 0(a2)
	addiw a0, a0, 1
	xor a3, a1, a0
	sltu a3, zero, a3
	bne a3, zero, label5
	j label7
label5:
	li a3, 65535
	and a3, a0, a3
	sh a3, 0(a2)
	addiw a0, a0, 1
	xor a3, a1, a0
	sltu a3, zero, a3
	bne a3, zero, label5
	j label7
