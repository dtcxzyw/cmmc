.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl i
i:
	.4byte	0
.align 4
.globl j
j:
	.4byte	0
.text
.p2align 2
.globl main
main:
pcrel17:
	auipc a2, %pcrel_hi(i)
	li a0, 10
	lw a1, %pcrel_lo(pcrel17)(a2)
	beq a1, zero, label15
	li a0, 55
label15:
	zext.w a1, a0
pcrel18:
	auipc a2, %pcrel_hi(j)
	mv a0, zero
	sw a1, %pcrel_lo(pcrel18)(a2)
	ret
