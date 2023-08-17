.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.globl a
a:
	.byte	1
.p2align 1
.globl b
b:
	.byte	2
	.byte	0
.p2align 2
.globl c
c:
	.4byte	4
.text
.p2align 2
.globl t1
t1:
pcrel11:
	auipc a0, %pcrel_hi(a)
	lb a2, %pcrel_lo(pcrel11)(a0)
	sext.b a3, a2
	addiw a1, a3, 1
	andi a0, a1, 255
	ret
.p2align 2
.globl t2
t2:
pcrel22:
	auipc a0, %pcrel_hi(b)
	lh a2, %pcrel_lo(pcrel22)(a0)
	sext.h a3, a2
	addiw a1, a3, 1
	zext.h a0, a1
	ret
.p2align 2
.globl t3
t3:
pcrel32:
	auipc a3, %pcrel_hi(c)
	lw a2, %pcrel_lo(pcrel32)(a3)
	addiw a1, a2, 1
	zext.w a0, a1
	ret
.p2align 2
.globl t4
t4:
	sext.b a2, a0
pcrel43:
	auipc a0, %pcrel_hi(a)
	addiw a3, a2, 1
	andi a1, a3, 255
	sb a1, %pcrel_lo(pcrel43)(a0)
	ret
.p2align 2
.globl t5
t5:
	sext.h a2, a0
pcrel54:
	auipc a0, %pcrel_hi(b)
	addiw a3, a2, 1
	zext.h a1, a3
	sh a1, %pcrel_lo(pcrel54)(a0)
	ret
.p2align 2
.globl t6
t6:
	addiw a2, a0, 1
pcrel64:
	auipc a3, %pcrel_hi(c)
	zext.w a1, a2
	sw a1, %pcrel_lo(pcrel64)(a3)
	ret
