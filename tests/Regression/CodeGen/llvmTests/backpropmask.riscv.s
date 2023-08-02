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
pcrel22:
	auipc a1, %pcrel_hi(b)
pcrel23:
	auipc a3, %pcrel_hi(c)
	li a2, -1
	lw a0, %pcrel_lo(pcrel22)(a1)
	lw a1, %pcrel_lo(pcrel23)(a3)
	remw a3, a2, a1
	zext.w a1, a3
	xor a2, a0, a1
pcrel24:
	auipc a1, %pcrel_hi(a)
	andi a0, a2, 255
	sw a0, %pcrel_lo(pcrel24)(a1)
	ret
.p2align 2
.globl PR37667
PR37667:
pcrel48:
	auipc a1, %pcrel_hi(b)
pcrel49:
	auipc a2, %pcrel_hi(d)
pcrel50:
	auipc a3, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel48)(a1)
	lw a1, %pcrel_lo(pcrel49)(a2)
	remuw a0, a0, a1
	lw a1, %pcrel_lo(pcrel50)(a3)
	or a2, a0, a1
pcrel51:
	auipc a1, %pcrel_hi(a)
	andi a0, a2, 255
	sw a0, %pcrel_lo(pcrel51)(a1)
	ret
