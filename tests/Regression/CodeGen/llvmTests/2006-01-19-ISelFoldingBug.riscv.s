.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 2
.globl A
A:
	.zero	4
.text
.p2align 2
.globl test5
test5:
	andi a2, a1, 255
	li t0, 32
pcrel17:
	auipc a1, %pcrel_hi(A)
	subw a5, t0, a2
	zext.w a4, a5
	lw a5, %pcrel_lo(pcrel17)(a1)
	srlw a3, a0, a4
	sllw a4, a5, a2
	or a0, a3, a4
	sw a0, %pcrel_lo(pcrel17)(a1)
	ret
