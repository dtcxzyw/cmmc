.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl M
M:
	.4byte	0
.align 4
.globl total
total:
	.4byte	0
.align 4
.globl g
g:
	.4byte	0
.text
.globl foo
foo:
pcrel48:
	auipc a0, %pcrel_hi(M)
	lw a0, %pcrel_lo(pcrel48)(a0)
	mv a1, a0
	ble a0, zero, label8
pcrel49:
	auipc a0, %pcrel_hi(total)
	addi a2, a0, %pcrel_lo(pcrel49)
	lw a0, %pcrel_lo(pcrel49)(a0)
	li a3, 1
	ble a1, a3, label23
label3:
	li a4, 4294967295
	and a3, a3, a4
	srliw a5, a3, 31
	add a5, a3, a5
	sraiw a5, a5, 1
	and a0, a0, a4
	addw a0, a5, a0
	addiw a3, a3, 1
	ble a1, a3, label23
	j label3
label8:
	ret
label23:
	li a1, 4294967295
	and a0, a0, a1
	sw a0, 0(a2)
	j label8
.globl goo
goo:
pcrel105:
	auipc a0, %pcrel_hi(M)
	lw a0, %pcrel_lo(pcrel105)(a0)
	mv a1, a0
	ble a0, zero, label57
pcrel106:
	auipc a0, %pcrel_hi(total)
	addi a2, a0, %pcrel_lo(pcrel106)
	lw a3, %pcrel_lo(pcrel106)(a0)
	mv a0, a3
	li a4, 4294967295
	and a4, a3, a4
pcrel107:
	auipc a5, %pcrel_hi(g)
	addi a3, a5, %pcrel_lo(pcrel107)
	sw a4, %pcrel_lo(pcrel107)(a5)
	li a4, 1
	ble a1, a4, label75
label52:
	li a5, 4294967295
	and a4, a4, a5
	srliw t0, a4, 31
	add t0, a4, t0
	sraiw t0, t0, 1
	and a0, a0, a5
	addw a0, t0, a0
	and a5, a0, a5
	sw a5, 0(a3)
	addiw a4, a4, 1
	ble a1, a4, label75
	j label52
label57:
	ret
label75:
	li a1, 4294967295
	and a0, a0, a1
	sw a0, 0(a2)
	j label57
