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
.globl PR37060
PR37060:
pcrel23:
	auipc a0, %pcrel_hi(b)
	lw a0, %pcrel_lo(pcrel23)(a0)
pcrel24:
	auipc a1, %pcrel_hi(c)
	lw a1, %pcrel_lo(pcrel24)(a1)
	li a2, -1
	remw a1, a2, a1
	li a2, 4294967295
	and a1, a1, a2
	xor a0, a0, a1
	andi a0, a0, 255
pcrel25:
	auipc a1, %pcrel_hi(a)
	sw a0, %pcrel_lo(pcrel25)(a1)
	ret
.globl PR37667
PR37667:
pcrel49:
	auipc a0, %pcrel_hi(b)
	lw a0, %pcrel_lo(pcrel49)(a0)
pcrel50:
	auipc a1, %pcrel_hi(d)
	lw a1, %pcrel_lo(pcrel50)(a1)
	remuw a0, a0, a1
pcrel51:
	auipc a1, %pcrel_hi(c)
	lw a1, %pcrel_lo(pcrel51)(a1)
	or a0, a0, a1
	andi a0, a0, 255
pcrel52:
	auipc a1, %pcrel_hi(a)
	sw a0, %pcrel_lo(pcrel52)(a1)
	ret
