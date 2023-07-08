.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_minsize
test_minsize:
	li a1, 1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 5
	mulw a1, a1, a2
	subw a1, a0, a1
	li a0, 42
	beq a1, zero, label18
	li a0, -10
label18:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl test_optsize
test_optsize:
	li a1, 1717986919
	mul a1, a0, a1
	srai a2, a1, 33
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 5
	mulw a1, a1, a2
	subw a1, a0, a1
	li a0, 42
	beq a1, zero, label36
	li a0, -10
label36:
	li a1, 4294967295
	and a0, a0, a1
	ret
