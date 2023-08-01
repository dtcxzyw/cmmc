.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl A
A:
	.zero	4
.text
.p2align 2
.globl test5
test5:
	andi a2, a1, 255
	li a3, 32
	li a4, 4294967295
	subw a1, a3, a2
	and a3, a1, a4
pcrel18:
	auipc a1, %pcrel_hi(A)
	srlw a0, a0, a3
	lw a3, %pcrel_lo(pcrel18)(a1)
	sllw a2, a3, a2
	or a0, a0, a2
	sw a0, %pcrel_lo(pcrel18)(a1)
	ret
