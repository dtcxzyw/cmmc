.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl unfold1
unfold1:
	slliw a2, a0, 1
	ori a0, a2, 510
	li a2, 4294967295
	addw a1, a0, a1
	and a0, a1, a2
	ret
.globl unfold10
unfold10:
	slliw a2, a0, 10
	lui a0, 1020
	or a3, a2, a0
	li a2, 4294967295
	slt a1, a1, a3
	and a0, a1, a2
	ret
.globl unfold11
unfold11:
	slliw a2, a0, 11
	lui a0, 3968
	addw a3, a2, a0
	li a2, 4294967295
	slt a1, a1, a3
	and a0, a1, a2
	ret
.globl unfold2
unfold2:
	slliw a2, a0, 2
	li a0, 16320
	or a3, a2, a0
	li a2, 4294967295
	subw a1, a1, a3
	and a0, a1, a2
	ret
.globl unfold3
unfold3:
	slliw a2, a0, 4
	lui a3, 255
	or a4, a2, a3
	and a0, a1, a4
	ret
.globl unfold4
unfold4:
	slliw a2, a0, 5
	lui a3, 8160
	or a4, a2, a3
	xor a0, a1, a4
	ret
.globl unfold5
unfold5:
	slliw a2, a0, 6
	li a3, 31744
	addw a4, a2, a3
	or a0, a1, a4
	ret
.globl unfold6
unfold6:
	slliw a2, a0, 8
	lui a3, 496
	addw a4, a2, a3
	and a0, a1, a4
	ret
.globl unfold7
unfold7:
	slliw a2, a0, 1
	andi a0, a2, 512
	li a2, 4294967295
	addw a1, a0, a1
	and a0, a1, a2
	ret
.globl unfold8
unfold8:
	slliw a2, a0, 9
	lui a3, 15872
	addw a4, a2, a3
	xor a0, a1, a4
	ret
.globl unfold9
unfold9:
	slliw a2, a0, 1
	xori a0, a2, 510
	li a2, 4294967295
	addw a1, a0, a1
	and a0, a1, a2
	ret
