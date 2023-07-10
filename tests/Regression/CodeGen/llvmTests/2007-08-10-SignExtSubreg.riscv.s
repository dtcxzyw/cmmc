.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl X
X:
	.4byte	0
.text
.globl _Z3fooi
_Z3fooi:
	andi a1, a0, 255
	li a3, 4294967295
	sext.b a2, a1
	and a1, a2, a3
pcrel12:
	auipc a2, %pcrel_hi(X)
	sw a0, %pcrel_lo(pcrel12)(a2)
	mv a0, a1
	ret
