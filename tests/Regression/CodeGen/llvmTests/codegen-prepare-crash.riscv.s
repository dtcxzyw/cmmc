.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl g
g:
	.zero	40
.text
.globl f
f:
	addiw a1, a0, 4
	li a2, 4294967295
	and a1, a1, a2
pcrel11:
	auipc a2, %pcrel_hi(g)
	addi a2, a2, %pcrel_lo(pcrel11)
	slli a1, a1, 2
	add a1, a2, a1
	sw a0, 0(a1)
	ret
