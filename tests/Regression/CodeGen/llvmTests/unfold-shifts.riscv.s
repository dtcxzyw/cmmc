.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl unfold1
unfold1:
	slliw a2, a0, 1
	ori a3, a2, 510
	addw a1, a3, a1
	zext.w a0, a1
	ret
.p2align 2
.globl unfold10
unfold10:
	slliw a2, a0, 10
	lui a0, 1020
	or a3, a2, a0
	slt a1, a1, a3
	zext.w a0, a1
	ret
.p2align 2
.globl unfold11
unfold11:
	slliw a2, a0, 11
	lui a0, 3968
	addw a3, a2, a0
	slt a1, a1, a3
	zext.w a0, a1
	ret
.p2align 2
.globl unfold2
unfold2:
	slliw a2, a0, 2
	li a3, 255
	slli a0, a3, 6
	or a2, a2, a0
	subw a1, a1, a2
	zext.w a0, a1
	ret
.p2align 2
.globl unfold3
unfold3:
	slliw a2, a0, 4
	lui a4, 255
	or a3, a2, a4
	and a0, a1, a3
	ret
.p2align 2
.globl unfold4
unfold4:
	slliw a2, a0, 5
	lui a4, 8160
	or a3, a2, a4
	xor a0, a1, a3
	ret
.p2align 2
.globl unfold5
unfold5:
	slliw a2, a0, 6
	li a0, 31
	slli a3, a0, 10
	addw a2, a2, a3
	or a0, a1, a2
	ret
.p2align 2
.globl unfold6
unfold6:
	slliw a2, a0, 8
	lui a4, 496
	addw a3, a2, a4
	and a0, a1, a3
	ret
.p2align 2
.globl unfold7
unfold7:
	slliw a2, a0, 1
	andi a3, a2, 512
	addw a1, a3, a1
	zext.w a0, a1
	ret
.p2align 2
.globl unfold8
unfold8:
	slliw a2, a0, 9
	lui a4, 15872
	addw a3, a2, a4
	xor a0, a1, a3
	ret
.p2align 2
.globl unfold9
unfold9:
	slliw a2, a0, 1
	xori a3, a2, 510
	addw a1, a3, a1
	zext.w a0, a1
	ret
