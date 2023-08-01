.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl b
b:
	.4byte	918
.align 4
.globl d
d:
	.4byte	8089
.align 4
.globl c
c:
	.4byte	0
.align 4
.globl a
a:
	.4byte	0
.text
.p2align 2
.globl PR37060
PR37060:
pcrel23:
	auipc a2, %pcrel_hi(b)
pcrel24:
	auipc a1, %pcrel_hi(c)
	li a3, -1
	lw a0, %pcrel_lo(pcrel23)(a2)
	lw a2, %pcrel_lo(pcrel24)(a1)
	remw a1, a3, a2
	li a2, 4294967295
	and a3, a1, a2
pcrel25:
	auipc a2, %pcrel_hi(a)
	xor a1, a0, a3
	andi a0, a1, 255
	sw a0, %pcrel_lo(pcrel25)(a2)
	ret
.p2align 2
.globl PR37667
PR37667:
pcrel49:
	auipc a2, %pcrel_hi(b)
pcrel50:
	auipc a1, %pcrel_hi(d)
	lw a0, %pcrel_lo(pcrel49)(a2)
	lw a2, %pcrel_lo(pcrel50)(a1)
pcrel51:
	auipc a1, %pcrel_hi(c)
	remuw a0, a0, a2
	lw a2, %pcrel_lo(pcrel51)(a1)
pcrel52:
	auipc a1, %pcrel_hi(a)
	or a3, a0, a2
	andi a0, a3, 255
	sw a0, %pcrel_lo(pcrel52)(a1)
	ret
