.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
.globl g
g:
	.zero	40
.text
.p2align 2
.globl f
f:
	addiw a2, a0, 4
	li a3, 4294967295
pcrel12:
	auipc a4, %pcrel_hi(g)
	and a1, a2, a3
	addi a2, a4, %pcrel_lo(pcrel12)
	sh2add a1, a1, a2
	sw a0, 0(a1)
	ret
