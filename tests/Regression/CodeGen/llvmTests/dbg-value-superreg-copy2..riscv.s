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
	auipc a2, %pcrel_hi(b)
pcrel23:
	auipc a3, %pcrel_hi(c)
	li a5, -1
	lw a0, %pcrel_lo(pcrel22)(a2)
	lw a1, %pcrel_lo(pcrel23)(a3)
	remw a4, a5, a1
	zext.w a2, a4
pcrel24:
	auipc a4, %pcrel_hi(a)
	xor a3, a0, a2
	andi a1, a3, 255
	sw a1, %pcrel_lo(pcrel24)(a4)
	ret
.p2align 2
.globl PR37667
PR37667:
pcrel48:
	auipc a0, %pcrel_hi(b)
pcrel49:
	auipc a2, %pcrel_hi(d)
pcrel50:
	auipc a4, %pcrel_hi(c)
	lw a1, %pcrel_lo(pcrel48)(a0)
	lw a3, %pcrel_lo(pcrel49)(a2)
	lw a2, %pcrel_lo(pcrel50)(a4)
pcrel51:
	auipc a4, %pcrel_hi(a)
	remuw a0, a1, a3
	or a3, a0, a2
	andi a1, a3, 255
	sw a1, %pcrel_lo(pcrel51)(a4)
	ret
