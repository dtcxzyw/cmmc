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
.globl t1
t1:
pcrel11:
	auipc a0, %pcrel_hi(a)
	lb a0, %pcrel_lo(pcrel11)(a0)
	sext.b a0, a0
	addiw a0, a0, 1
	andi a0, a0, 255
	ret
.globl t2
t2:
pcrel23:
	auipc a0, %pcrel_hi(b)
	lh a0, %pcrel_lo(pcrel23)(a0)
	sext.h a0, a0
	addiw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
	ret
.globl t3
t3:
pcrel34:
	auipc a0, %pcrel_hi(c)
	lw a0, %pcrel_lo(pcrel34)(a0)
	addiw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl t4
t4:
	sext.b a0, a0
	addiw a0, a0, 1
	andi a0, a0, 255
pcrel45:
	auipc a1, %pcrel_hi(a)
	sb a0, %pcrel_lo(pcrel45)(a1)
	ret
.globl t5
t5:
	sext.h a0, a0
	addiw a0, a0, 1
	li a1, 65535
	and a0, a0, a1
pcrel57:
	auipc a1, %pcrel_hi(b)
	sh a0, %pcrel_lo(pcrel57)(a1)
	ret
.globl t6
t6:
	addiw a0, a0, 1
	li a1, 4294967295
	and a0, a0, a1
pcrel68:
	auipc a1, %pcrel_hi(c)
	sw a0, %pcrel_lo(pcrel68)(a1)
	ret
