.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl fn
fn:
	xori a4, a1, 1
	li a2, 2
	sltiu a5, a4, 1
	zext.w a3, a5
	bne a3, zero, label18
	mv a2, zero
label18:
	zext.w a1, a2
	xori a3, a0, 1
	sltu a4, zero, a3
	zext.w a2, a4
	sllw a5, a2, a1
	zext.w a0, a5
	ret
