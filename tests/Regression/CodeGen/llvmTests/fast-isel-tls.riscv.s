.data
.data
.align 4
.globl v
v:
	.4byte	0
.text
.globl f
f:
pcrel8:
	auipc a0, %pcrel_hi(v)
	lw a0, %pcrel_lo(pcrel8)(a0)
	addiw a0, a0, 1
	ret
.globl f_alias
f_alias:
pcrel16:
	auipc a0, %pcrel_hi(v)
	lw a0, %pcrel_lo(pcrel16)(a0)
	addiw a0, a0, 1
	ret
