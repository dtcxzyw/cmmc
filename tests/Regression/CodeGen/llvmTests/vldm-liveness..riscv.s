.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t1
t1:
	li a1, 10
	bne a0, zero, label8
	li a1, 20
label8:
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl t2
t2:
	bne a0, zero, label16
	li a1, 20
label16:
	mv a0, a1
	ret
.p2align 2
.globl t3
t3:
	mv a3, a1
	bne a0, zero, label26
	mv a3, a2
label26:
	addw a0, a1, a3
	ret
.p2align 2
.globl t4
t4:
	li a1, -10
	bne a0, zero, label35
	li a1, -1
label35:
	li a2, 4294967295
	and a0, a1, a2
	ret
.p2align 2
.globl t5
t5:
	bne a0, zero, label43
	li a1, -2
label43:
	mv a0, a1
	ret
.p2align 2
.globl t6
t6:
	bne a0, zero, label51
	li a1, -978945
label51:
	mv a0, a1
	ret
