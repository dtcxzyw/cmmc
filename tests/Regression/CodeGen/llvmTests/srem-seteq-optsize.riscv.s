.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_minsize
test_minsize:
	li a3, 1717986919
	li a4, 5
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a1, a3, a2
	mulw a2, a1, a4
	subw a1, a0, a2
	li a0, 42
	beq a1, zero, label18
	li a0, -10
label18:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_optsize
test_optsize:
	li a3, 1717986919
	li a4, 5
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 33
	add a1, a3, a2
	mulw a2, a1, a4
	subw a1, a0, a2
	li a0, 42
	beq a1, zero, label36
	li a0, -10
label36:
	li a1, 4294967295
	and a0, a0, a1
	ret
