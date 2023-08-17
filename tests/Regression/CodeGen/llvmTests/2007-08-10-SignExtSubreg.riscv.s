.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.p2align 2
.globl X
X:
	.4byte	0
.text
.p2align 2
.globl _Z3fooi
_Z3fooi:
	andi a2, a0, 255
pcrel11:
	auipc a4, %pcrel_hi(X)
	sext.b a3, a2
	sw a0, %pcrel_lo(pcrel11)(a4)
	zext.w a1, a3
	mv a0, a1
	ret
