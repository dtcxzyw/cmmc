.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test1
test1:
	andi a0, a0, 255
	ret
.p2align 2
.globl test2
test2:
	andi a0, a0, 255
	ret
.p2align 2
.globl test3
test3:
	zext.h a0, a0
	ret
.p2align 2
.globl test4
test4:
	zext.h a0, a0
	ret
.p2align 2
.globl test5
test5:
	ret
