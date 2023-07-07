.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl unfold1
unfold1:
	slliw a0, a0, 1
	ori a0, a0, 510
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl unfold10
unfold10:
	slliw a0, a0, 10
	lui a2, 1020
	or a0, a0, a2
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl unfold11
unfold11:
	slliw a0, a0, 11
	lui a2, 3968
	addw a0, a0, a2
	slt a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl unfold2
unfold2:
	slliw a0, a0, 2
	li a2, 16320
	or a0, a0, a2
	subw a0, a1, a0
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl unfold3
unfold3:
	slliw a0, a0, 4
	lui a2, 255
	or a0, a0, a2
	and a0, a1, a0
	ret
.globl unfold4
unfold4:
	slliw a0, a0, 5
	lui a2, 8160
	or a0, a0, a2
	xor a0, a1, a0
	ret
.globl unfold5
unfold5:
	slliw a0, a0, 6
	li a2, 31744
	addw a0, a0, a2
	or a0, a1, a0
	ret
.globl unfold6
unfold6:
	slliw a0, a0, 8
	lui a2, 496
	addw a0, a0, a2
	and a0, a1, a0
	ret
.globl unfold7
unfold7:
	slliw a0, a0, 1
	andi a0, a0, 512
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl unfold8
unfold8:
	slliw a0, a0, 9
	lui a2, 15872
	addw a0, a0, a2
	xor a0, a1, a0
	ret
.globl unfold9
unfold9:
	slliw a0, a0, 1
	xori a0, a0, 510
	addw a0, a0, a1
	li a1, 4294967295
	and a0, a0, a1
	ret
