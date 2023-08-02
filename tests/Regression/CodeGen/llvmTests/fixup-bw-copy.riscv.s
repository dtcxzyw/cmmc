.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_movb
test_movb:
	ret
.p2align 2
.globl test_movb_Os
test_movb_Os:
	ret
.p2align 2
.globl test_movb_Oz
test_movb_Oz:
	ret
.p2align 2
.globl test_movb_hreg
test_movb_hreg:
	zext.h a4, a0
	andi a2, a0, 255
	sraiw a3, a4, 8
	andi a4, a2, 255
	andi a1, a3, 255
	addw a3, a1, a4
	andi a0, a3, 255
	ret
.p2align 2
.globl test_movw
test_movw:
	ret
