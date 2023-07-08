.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
	andi a1, a0, 255
	li a0, 20
	beq a1, zero, label9
	li a0, 10
label9:
	li a1, 4294967295
	and a0, a0, a1
	ret
.globl g
g:
	xori a1, a0, 255
	li a0, 20
	beq a1, zero, label18
	li a0, 10
label18:
	li a1, 4294967295
	and a0, a0, a1
	ret
