.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl x
x:
	.zero	4
.text
.globl test
test:
pcrel8:
	auipc a0, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel8)(a0)
	slliw a0, a0, 1
	ret