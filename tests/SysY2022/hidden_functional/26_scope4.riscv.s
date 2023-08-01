.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
	li a0, 49
	li a5, 1352
	li a1, 2
	mv a2, zero
	sd ra, 0(sp)
	li a3, 3
	bge zero, a3, label10
.p2align 2
label7:
	addiw a3, a1, 10
	addiw t0, a0, 3
	addiw t2, a0, 6
	li t3, 1
	addw a4, a5, a3
	addiw a5, a0, 1
	sh1add t1, a5, a4
	sh1add a4, a0, t1
	sh1add t1, t0, t0
	addiw t0, a0, 7
	addw a5, a4, t1
	addiw a4, a0, 13
	slliw t1, t0, 1
	beq a2, t3, label8
	addw a5, a3, a5
	addiw a0, a0, 9
	addiw a2, a2, 1
	addw a3, t1, a5
	sh1add a1, t2, a3
	sh1add a3, a0, a0
	mv a0, a4
	addw a5, a1, a3
	mv a1, a4
	li a3, 3
	blt a2, a3, label7
	j label10
.p2align 2
label8:
	addiw a2, a5, 10
	addiw a5, a0, 8
	addw t0, t0, a2
	addiw a0, a0, 10
	addw a3, t1, t0
	sh1add a2, a5, a3
	sh1add a3, a0, a0
	mv a0, a4
	addw a5, a2, a3
	li a2, 2
	li a3, 3
	blt a2, a3, label7
label10:
	mv a0, a5
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
