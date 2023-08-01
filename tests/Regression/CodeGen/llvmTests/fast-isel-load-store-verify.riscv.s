.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 1
.globl a
a:
	.byte	1
.align 2
.globl b
b:
	.byte	2
	.byte	0
.align 4
.globl c
c:
	.4byte	4
.text
.p2align 2
.globl t1
t1:
pcrel11:
	auipc a1, %pcrel_hi(a)
	lb a0, %pcrel_lo(pcrel11)(a1)
	sext.b a2, a0
	addiw a1, a2, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl t2
t2:
pcrel23:
	auipc a1, %pcrel_hi(b)
	li a3, 65535
	lh a0, %pcrel_lo(pcrel23)(a1)
	sext.h a2, a0
	addiw a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl t3
t3:
pcrel34:
	auipc a2, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel34)(a2)
	li a2, 4294967295
	addiw a1, a0, 1
	and a0, a1, a2
	ret
.p2align 2
.globl t4
t4:
	sext.b a1, a0
	addiw a2, a1, 1
pcrel45:
	auipc a1, %pcrel_hi(a)
	andi a0, a2, 255
	sb a0, %pcrel_lo(pcrel45)(a1)
	ret
.p2align 2
.globl t5
t5:
	sext.h a2, a0
	li a3, 65535
	addiw a1, a2, 1
	and a0, a1, a3
pcrel57:
	auipc a1, %pcrel_hi(b)
	sh a0, %pcrel_lo(pcrel57)(a1)
	ret
.p2align 2
.globl t6
t6:
	addiw a1, a0, 1
	li a2, 4294967295
	and a0, a1, a2
pcrel68:
	auipc a1, %pcrel_hi(c)
	sw a0, %pcrel_lo(pcrel68)(a1)
	ret
