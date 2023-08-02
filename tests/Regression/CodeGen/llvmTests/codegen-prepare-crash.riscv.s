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
pcrel11:
	auipc a4, %pcrel_hi(g)
	zext.w a1, a2
	addi a3, a4, %pcrel_lo(pcrel11)
	sh2add a2, a1, a3
	sw a0, 0(a2)
	ret
