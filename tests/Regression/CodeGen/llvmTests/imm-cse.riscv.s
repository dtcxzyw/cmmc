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
	lw a0, %pcrel_lo(pcrel13)(a0)
	li a1, 4099
	addw a0, a0, a1
pcrel14:
	auipc a1, %pcrel_hi(dst)
	sw a0, %pcrel_lo(pcrel14)(a1)
	ret
