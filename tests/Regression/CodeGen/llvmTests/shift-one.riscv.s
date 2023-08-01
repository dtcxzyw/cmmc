.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl x
x:
	.zero	4
.text
.p2align 2
.globl test
test:
pcrel8:
	auipc a1, %pcrel_hi(x)
	lw a2, %pcrel_lo(pcrel8)(a1)
	slliw a0, a2, 1
	ret
