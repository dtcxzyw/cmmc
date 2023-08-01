.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
	li a2, 49
	li t1, 1352
	li a3, 2
	mv a4, zero
	li a0, 3
	li a1, 1
	sd ra, 0(sp)
	bge zero, a0, label10
.p2align 2
label7:
	addiw a5, a3, 10
	addiw t2, a2, 3
	addiw t4, a2, 6
	addw t0, t1, a5
	addiw t1, a2, 1
	sh1add t3, t1, t0
	sh1add t0, a2, t3
	sh1add t3, t2, t2
	addiw t2, a2, 7
	addw t1, t0, t3
	addiw t0, a2, 13
	slliw t3, t2, 1
	beq a4, a1, label8
	addw t1, a5, t1
	addiw a2, a2, 9
	addiw a4, a4, 1
	addw a5, t3, t1
	sh1add a3, t4, a5
	sh1add a5, a2, a2
	mv a2, t0
	addw t1, a3, a5
	mv a3, t0
	blt a4, a0, label7
	j label10
.p2align 2
label8:
	addiw t1, t1, 10
	addw a4, t2, t1
	addiw t1, a2, 8
	addw a5, t3, a4
	addiw a2, a2, 10
	sh1add a4, t1, a5
	sh1add a5, a2, a2
	mv a2, t0
	addw t1, a4, a5
	li a4, 2
	blt a4, a0, label7
label10:
	mv a0, t1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
