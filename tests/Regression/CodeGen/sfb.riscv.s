.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	beq a1, zero, label8
	addiw a0, a0, 10
label8:
	ret
.globl test2
test2:
.p2align 2
	addiw a2, a0, 10
	bne a1, zero, label17
	mv a0, a2
label17:
	ret
.globl test3
test3:
.p2align 2
	addiw a2, a0, 10
	mv a0, a2
	bne a1, zero, label26
	mv a0, zero
label26:
	ret
.globl test4
test4:
.p2align 2
	addiw a2, a0, 10
	mv a0, zero
	bne a1, zero, label35
	mv a0, a2
label35:
	ret
.globl test5
test5:
.p2align 2
	li a1, 1000000007
	bge a0, zero, label44
	addw a0, a0, a1
label44:
	ret
