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
.globl main
main:
pcrel17:
	auipc a2, %pcrel_hi(i)
	li a0, 10
	lw a1, %pcrel_lo(pcrel17)(a2)
	beq a1, zero, label16
	li a0, 55
label16:
	li a1, 4294967295
pcrel18:
	auipc a2, %pcrel_hi(j)
	and a0, a0, a1
	sw a0, %pcrel_lo(pcrel18)(a2)
	mv a0, zero
	ret
