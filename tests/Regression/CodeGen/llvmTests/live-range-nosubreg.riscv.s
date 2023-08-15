.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 2
.globl a
a:
	.byte	0
	.byte	0
.align 4
.globl c
c:
	.4byte	0
.align 1
.globl d
d:
	.byte	0
.align 4
.globl b
b:
	.4byte	0
.text
.p2align 2
.globl main
main:
pcrel53:
	auipc a0, %pcrel_hi(a)
pcrel54:
	auipc a5, %pcrel_hi(c)
	lh a1, %pcrel_lo(pcrel53)(a0)
	zext.h a4, a1
	addiw a3, a4, 1
	lw a4, %pcrel_lo(pcrel54)(a5)
	zext.h a2, a3
	mv a3, a2
	beq a4, zero, label50
	mv a3, a1
label50:
	zext.h a4, a3
pcrel55:
	auipc a1, %pcrel_hi(d)
	addiw a2, a4, -1
	zext.h a3, a2
	zext.h a5, a2
pcrel56:
	auipc a0, %pcrel_hi(a)
	sh a5, %pcrel_lo(pcrel56)(a0)
	lb a0, %pcrel_lo(pcrel55)(a1)
	andi a4, a0, 255
	subw a2, zero, a4
	beq a3, zero, label26
pcrel57:
	auipc a5, %pcrel_hi(b)
	lw a3, %pcrel_lo(pcrel57)(a5)
	sltu a4, zero, a3
	zext.w a0, a4
label2:
	andi a3, a0, 255
	andi t0, a2, 255
	mv a0, zero
	or a5, a3, t0
	andi a4, a5, 255
pcrel58:
	auipc a1, %pcrel_hi(d)
	sb a4, %pcrel_lo(pcrel58)(a1)
	ret
label26:
	mv a0, zero
	j label2
