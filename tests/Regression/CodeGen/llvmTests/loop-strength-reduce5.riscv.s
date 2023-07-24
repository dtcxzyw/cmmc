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
.p2align 2
	bgt a0, zero, label2
label5:
	ret
label2:
	auipc a2, %pcrel_hi(X)
pcrel39:
	auipc a3, %pcrel_hi(Y)
	li a4, 1
	addi a1, a2, %pcrel_lo(label2)
	sh zero, %pcrel_lo(label2)(a2)
	sh zero, %pcrel_lo(pcrel39)(a3)
	addi a2, a3, %pcrel_lo(pcrel39)
	beq a0, a4, label5
	li a3, 1
label3:
	li a4, 65535
	and t0, a3, a4
	and a5, a3, a4
	addiw a3, a3, 1
	sh a5, 0(a1)
	slliw a5, t0, 2
	and a4, a5, a4
	sh a4, 0(a2)
	bne a0, a3, label3
	j label5
