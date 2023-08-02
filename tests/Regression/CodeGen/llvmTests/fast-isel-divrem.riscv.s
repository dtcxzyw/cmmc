.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl test_sdiv16
test_sdiv16:
	sext.h a2, a0
	sext.h a3, a1
	divw a1, a2, a3
	zext.h a0, a1
	ret
.p2align 2
.globl test_sdiv32
test_sdiv32:
	divw a2, a0, a1
	zext.w a0, a2
	ret
.p2align 2
.globl test_sdiv8
test_sdiv8:
	sext.b a2, a0
	sext.b a3, a1
	divw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl test_srem16
test_srem16:
	sext.h a2, a0
	sext.h a3, a1
	remw a1, a2, a3
	zext.h a0, a1
	ret
.p2align 2
.globl test_srem32
test_srem32:
	remw a2, a0, a1
	zext.w a0, a2
	ret
.p2align 2
.globl test_srem8
test_srem8:
	sext.b a2, a0
	sext.b a3, a1
	remw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl test_udiv16
test_udiv16:
	zext.h a2, a0
	zext.h a3, a1
	divw a1, a2, a3
	zext.h a0, a1
	ret
.p2align 2
.globl test_udiv32
test_udiv32:
	divuw a0, a0, a1
	ret
.p2align 2
.globl test_udiv8
test_udiv8:
	andi a2, a0, 255
	andi a3, a1, 255
	divw a1, a2, a3
	andi a0, a1, 255
	ret
.p2align 2
.globl test_urem16
test_urem16:
	zext.h a2, a0
	zext.h a3, a1
	remw a1, a2, a3
	zext.h a0, a1
	ret
.p2align 2
.globl test_urem32
test_urem32:
	remuw a0, a0, a1
	ret
.p2align 2
.globl test_urem8
test_urem8:
	andi a2, a0, 255
	andi a3, a1, 255
	remw a1, a2, a3
	andi a0, a1, 255
	ret
