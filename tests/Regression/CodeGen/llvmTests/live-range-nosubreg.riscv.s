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
	auipc a2, %pcrel_hi(a)
	li a3, 65535
pcrel57:
	auipc a4, %pcrel_hi(c)
	lh a1, %pcrel_lo(pcrel56)(a2)
	lhu a0, %pcrel_lo(pcrel56)(a2)
	lw a4, %pcrel_lo(pcrel57)(a4)
	addiw a0, a0, 1
	sltiu a4, a4, 1
	and a0, a0, a3
	bne a4, zero, label55
	mv a0, a1
label55:
	and a0, a0, a3
	addiw a0, a0, -1
	and a1, a0, a3
pcrel58:
	auipc a2, %pcrel_hi(a)
	sh a1, %pcrel_lo(pcrel58)(a2)
pcrel59:
	auipc a2, %pcrel_hi(d)
	addi a0, a2, %pcrel_lo(pcrel59)
	lb a2, %pcrel_lo(pcrel59)(a2)
	andi a2, a2, 255
	subw a2, zero, a2
	bne a1, zero, label27
	mv a1, zero
	j label2
label27:
	auipc a1, %pcrel_hi(b)
	li a3, 4294967295
	lw a1, %pcrel_lo(label27)(a1)
	sltu a1, zero, a1
	and a1, a1, a3
label2:
	andi a1, a1, 255
	andi a2, a2, 255
	or a1, a1, a2
	andi a1, a1, 255
	sb a1, 0(a0)
	mv a0, zero
	ret
