.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl f1
f1:
	li a0, -1
	ret
.p2align 2
.globl f10
f10:
	xori a2, a0, -2
	li a3, 4294967295
	sltiu a1, a2, 1
	and a0, a1, a3
	ret
.p2align 2
.globl f2
f2:
	xori a0, a0, -1
	ret
.p2align 2
.globl f3
f3:
	slliw a1, a0, 2
	xori a0, a1, -1
	ret
.p2align 2
.globl f4
f4:
	andi a2, a1, 255
	sllw a3, a0, a2
	xori a0, a3, -1
	ret
.p2align 2
.globl f5
f5:
	srliw a1, a0, 2
	xori a0, a1, -1
	ret
.p2align 2
.globl f6
f6:
	andi a2, a1, 255
	srlw a3, a0, a2
	xori a0, a3, -1
	ret
.p2align 2
.globl f7
f7:
	srliw a1, a0, 2
	xori a0, a1, -1
	ret
.p2align 2
.globl f8
f8:
	andi a2, a1, 255
	srlw a3, a0, a2
	xori a0, a3, -1
	ret
.p2align 2
.globl f9
f9:
	li a0, -3
	ret
