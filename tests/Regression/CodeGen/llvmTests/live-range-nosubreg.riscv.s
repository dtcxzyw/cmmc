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
.globl main
main:
pcrel56:
	auipc a0, %pcrel_hi(a)
	li a1, 65535
pcrel57:
	auipc a5, %pcrel_hi(c)
	lh a2, %pcrel_lo(pcrel56)(a0)
	lhu a3, %pcrel_lo(pcrel56)(a0)
	addiw a4, a3, 1
	and a3, a4, a1
	lw a4, %pcrel_lo(pcrel57)(a5)
	beq a4, zero, label55
	mv a3, a2
label55:
	and a4, a3, a1
	addiw a2, a4, -1
	and a3, a2, a1
	and a1, a2, a1
pcrel58:
	auipc a0, %pcrel_hi(a)
	sh a3, %pcrel_lo(pcrel58)(a0)
pcrel59:
	auipc a2, %pcrel_hi(d)
	lb a4, %pcrel_lo(pcrel59)(a2)
	addi a0, a2, %pcrel_lo(pcrel59)
	andi a3, a4, 255
	subw a2, zero, a3
	beq a1, zero, label27
pcrel60:
	auipc a1, %pcrel_hi(b)
	li a4, 4294967295
	lw a5, %pcrel_lo(pcrel60)(a1)
	sltu a3, zero, a5
	and a1, a3, a4
	j label2
label27:
	mv a1, zero
label2:
	andi a3, a1, 255
	andi a4, a2, 255
	or a1, a3, a4
	andi a2, a1, 255
	sb a2, 0(a0)
	mv a0, zero
	ret
