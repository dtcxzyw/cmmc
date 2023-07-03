.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
.globl var32
var32:
	.4byte	0
.text
.globl select_and
select_and:
	sltu a0, a0, a1
	sltu a1, a2, a3
	and a1, a0, a1
	mv a0, a4
	bne a1, zero, label13
	mv a0, a5
label13:
	ret
.globl select_noopt
select_noopt:
	sltu a0, a0, a1
	sltu a1, a1, a2
	or a0, a0, a1
	li a1, 4294967295
	and a1, a0, a1
	mv a0, a3
	sltu a2, zero, a1
	bne a2, zero, label34
	mv a0, a4
label34:
	auipc a2, %pcrel_hi(var32)
	sw a1, %pcrel_lo(label34)(a2)
	ret
.globl select_or
select_or:
	sltu a0, a0, a1
	sltu a1, a2, a3
	or a0, a0, a1
	sltu a1, zero, a0
	mv a0, a4
	bne a1, zero, label50
	mv a0, a5
label50:
	ret
