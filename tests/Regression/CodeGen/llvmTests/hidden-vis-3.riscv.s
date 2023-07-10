.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
.globl x
x:
	.zero	4
.align 4
.globl y
y:
	.zero	4
.text
.globl t
t:
pcrel13:
	auipc a1, %pcrel_hi(y)
pcrel14:
	auipc a2, %pcrel_hi(x)
	lw a0, %pcrel_lo(pcrel13)(a1)
	lw a1, %pcrel_lo(pcrel14)(a2)
	addw a0, a0, a1
	ret
