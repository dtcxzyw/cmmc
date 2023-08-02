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
.p2align 2
.globl imm32_cse
imm32_cse:
pcrel14:
	auipc a1, %pcrel_hi(src)
	lui a3, 1
pcrel15:
	auipc a4, %pcrel_hi(dst)
	addiw a2, a3, 3
	lw a0, %pcrel_lo(pcrel14)(a1)
	addw a1, a0, a2
	sw a1, %pcrel_lo(pcrel15)(a4)
	ret
