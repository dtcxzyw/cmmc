.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_movb
test_movb:
.p2align 2
	ret
.globl test_movb_Os
test_movb_Os:
.p2align 2
	ret
.globl test_movb_Oz
test_movb_Oz:
.p2align 2
	ret
.globl test_movb_hreg
test_movb_hreg:
.p2align 2
	li a1, 65535
	and a3, a0, a1
	andi a0, a0, 255
	sraiw a2, a3, 8
	andi a1, a2, 255
	andi a2, a0, 255
	addw a1, a1, a2
	andi a0, a1, 255
	ret
.globl test_movw
test_movw:
.p2align 2
	ret
