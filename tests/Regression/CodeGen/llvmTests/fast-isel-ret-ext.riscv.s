.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test1
test1:
.p2align 2
	andi a0, a0, 255
	ret
.globl test2
test2:
.p2align 2
	andi a0, a0, 255
	ret
.globl test3
test3:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl test4
test4:
.p2align 2
	li a1, 65535
	and a0, a0, a1
	ret
.globl test5
test5:
.p2align 2
	ret
