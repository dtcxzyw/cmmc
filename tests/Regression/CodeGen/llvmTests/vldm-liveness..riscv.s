.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl t1
t1:
	li a1, 10
	bne a0, zero, label7
	li a1, 20
label7:
	zext.w a0, a1
	ret
.p2align 2
.globl t2
t2:
	mv a2, a1
	bne a0, zero, label14
	li a2, 20
label14:
	mv a0, a2
	ret
.p2align 2
.globl t3
t3:
	mv a3, a1
	bne a0, zero, label23
	mv a3, a2
label23:
	addw a0, a1, a3
	ret
.p2align 2
.globl t4
t4:
	li a1, -10
	bne a0, zero, label30
	li a1, -1
label30:
	zext.w a0, a1
	ret
.p2align 2
.globl t5
t5:
	mv a2, a1
	bne a0, zero, label37
	li a2, -2
label37:
	mv a0, a2
	ret
.p2align 2
.globl t6
t6:
	mv a2, a1
	bne a0, zero, label44
	lui a3, 1048337
	addiw a2, a3, -1
label44:
	mv a0, a2
	ret
