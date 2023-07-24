.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl f
f:
.p2align 2
	andi a2, a0, 255
	li a1, 20
	beq a2, zero, label9
	li a1, 10
label9:
	li a2, 4294967295
	and a0, a1, a2
	ret
.globl g
g:
.p2align 2
	xori a2, a0, 255
	li a1, 20
	beq a2, zero, label18
	li a1, 10
label18:
	li a2, 4294967295
	and a0, a1, a2
	ret
