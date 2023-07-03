.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl A
A:
	.zero	4
.text
.globl test5
test5:
	andi a1, a1, 255
	li a2, 32
	li a3, 4294967295
	subw a2, a2, a1
	and a2, a2, a3
	srlw a0, a0, a2
pcrel18:
	auipc a2, %pcrel_hi(A)
	lw a3, %pcrel_lo(pcrel18)(a2)
	sllw a1, a3, a1
	or a0, a0, a1
	sw a0, %pcrel_lo(pcrel18)(a2)
	ret
