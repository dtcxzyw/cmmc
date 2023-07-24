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
.p2align 2
	mv a1, a0
	bgt a0, zero, label2
	mv a0, zero
label5:
	ret
label2:
	auipc a0, %pcrel_hi(X)
	li a3, 1
	sh zero, %pcrel_lo(label2)(a0)
	addi a2, a0, %pcrel_lo(label2)
	beq a1, a3, label17
	li a0, 1
	j label3
label17:
	li a0, 1
	j label5
label3:
	li a4, 65535
	and a3, a0, a4
	addiw a0, a0, 1
	sh a3, 0(a2)
	bne a1, a0, label3
	j label5
