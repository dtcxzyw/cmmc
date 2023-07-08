.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl t1
t1:
	li a1, 10
	bne a0, zero, label8
	li a1, 20
label8:
	li a0, 4294967295
	and a0, a1, a0
	ret
.globl t2
t2:
	bne a0, zero, label15
	li a1, 20
label15:
	mv a0, a1
	ret
.globl t3
t3:
	mv a3, a1
	bne a0, zero, label24
	mv a3, a2
label24:
	addw a0, a1, a3
	ret
.globl t4
t4:
	li a1, -10
	bne a0, zero, label32
	li a1, -1
label32:
	li a0, 4294967295
	and a0, a1, a0
	ret
.globl t5
t5:
	bne a0, zero, label39
	li a1, -2
label39:
	mv a0, a1
	ret
.globl t6
t6:
	bne a0, zero, label46
	li a1, -978945
label46:
	mv a0, a1
	ret
