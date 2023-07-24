.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl test_sdiv16
test_sdiv16:
.p2align 2
	sext.h a2, a0
	sext.h a0, a1
	divw a1, a2, a0
	li a2, 65535
	and a0, a1, a2
	ret
.globl test_sdiv32
test_sdiv32:
.p2align 2
	divw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.globl test_sdiv8
test_sdiv8:
.p2align 2
	sext.b a2, a0
	sext.b a3, a1
	divw a1, a2, a3
	andi a0, a1, 255
	ret
.globl test_srem16
test_srem16:
.p2align 2
	sext.h a2, a0
	sext.h a0, a1
	remw a1, a2, a0
	li a2, 65535
	and a0, a1, a2
	ret
.globl test_srem32
test_srem32:
.p2align 2
	remw a2, a0, a1
	li a3, 4294967295
	and a0, a2, a3
	ret
.globl test_srem8
test_srem8:
.p2align 2
	sext.b a2, a0
	sext.b a3, a1
	remw a1, a2, a3
	andi a0, a1, 255
	ret
.globl test_udiv16
test_udiv16:
.p2align 2
	li a2, 65535
	and a1, a1, a2
	and a0, a0, a2
	divw a3, a0, a1
	and a0, a3, a2
	ret
.globl test_udiv32
test_udiv32:
.p2align 2
	divuw a0, a0, a1
	ret
.globl test_udiv8
test_udiv8:
.p2align 2
	andi a2, a0, 255
	andi a3, a1, 255
	divw a1, a2, a3
	andi a0, a1, 255
	ret
.globl test_urem16
test_urem16:
.p2align 2
	li a2, 65535
	and a1, a1, a2
	and a0, a0, a2
	remw a3, a0, a1
	and a0, a3, a2
	ret
.globl test_urem32
test_urem32:
.p2align 2
	remuw a0, a0, a1
	ret
.globl test_urem8
test_urem8:
.p2align 2
	andi a2, a0, 255
	andi a3, a1, 255
	remw a1, a2, a3
	andi a0, a1, 255
	ret
