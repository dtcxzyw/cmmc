.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl src
src:
	.4byte	0
.align 4
.globl dst
dst:
	.4byte	0
.text
.globl imm32_cse
imm32_cse:
pcrel13:
	auipc a0, %pcrel_hi(src)
	li a1, 4099
	lw a0, %pcrel_lo(pcrel13)(a0)
	addw a0, a0, a1
pcrel14:
	auipc a1, %pcrel_hi(dst)
	sw a0, %pcrel_lo(pcrel14)(a1)
	ret
