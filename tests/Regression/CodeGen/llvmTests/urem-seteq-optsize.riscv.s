.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_minsize
test_minsize:
	li a2, 5
	remuw a1, a0, a2
	li a0, 42
	beq a1, zero, label10
	li a0, -10
label10:
	li a1, 4294967295
	and a0, a0, a1
	ret
.p2align 2
.globl test_optsize
test_optsize:
	li a2, 5
	remuw a1, a0, a2
	li a0, 42
	beq a1, zero, label21
	li a0, -10
label21:
	li a1, 4294967295
	and a0, a0, a1
	ret
