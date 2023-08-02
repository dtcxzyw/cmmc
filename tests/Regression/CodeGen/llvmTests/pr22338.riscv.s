.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl fn
fn:
	xori a3, a1, 1
	li a1, 2
	sltiu a4, a3, 1
	zext.w a2, a4
	bne a2, zero, label18
	mv a1, zero
label18:
	zext.w a1, a1
	xori a0, a0, 1
	sltu a2, zero, a0
	zext.w a3, a2
	sllw a1, a3, a1
	zext.w a0, a1
	ret
