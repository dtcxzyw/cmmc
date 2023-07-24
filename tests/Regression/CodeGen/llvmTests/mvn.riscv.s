.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f1
f1:
.p2align 2
	li a0, -1
	ret
.globl f10
f10:
.p2align 2
	xori a2, a0, -2
	li a3, 4294967295
	sltiu a1, a2, 1
	and a0, a1, a3
	ret
.globl f2
f2:
.p2align 2
	xori a0, a0, -1
	ret
.globl f3
f3:
.p2align 2
	slliw a1, a0, 2
	xori a0, a1, -1
	ret
.globl f4
f4:
.p2align 2
	andi a2, a1, 255
	sllw a3, a0, a2
	xori a0, a3, -1
	ret
.globl f5
f5:
.p2align 2
	srliw a1, a0, 2
	xori a0, a1, -1
	ret
.globl f6
f6:
.p2align 2
	andi a2, a1, 255
	srlw a3, a0, a2
	xori a0, a3, -1
	ret
.globl f7
f7:
.p2align 2
	srliw a1, a0, 2
	xori a0, a1, -1
	ret
.globl f8
f8:
.p2align 2
	andi a2, a1, 255
	srlw a3, a0, a2
	xori a0, a3, -1
	ret
.globl f9
f9:
.p2align 2
	li a0, -3
	ret
