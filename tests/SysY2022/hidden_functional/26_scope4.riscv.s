.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -8
	li a0, 49
	li a4, 1352
	li a1, 2
	mv a2, zero
	sd ra, 0(sp)
	li a3, 3
	bge zero, a3, label10
label7:
	addiw a3, a1, 10
	addiw a5, a0, 1
	addw a4, a4, a3
	sh1add t0, a5, a4
	addiw a5, a0, 3
	sh1add a4, a0, t0
	sh1add t0, a5, a5
	addiw a5, a0, 6
	addw a4, a4, t0
	li t0, 1
	bne a2, t0, label9
	addiw a3, a0, 17
	addiw a5, a0, 7
	addw a2, a4, a3
	addiw a4, a0, 8
	sh1add a3, a4, a2
	sh1add a2, a5, a3
	addiw a3, a0, 10
	addiw a0, a0, 13
	sh1add a5, a3, a3
	addw a4, a2, a5
	li a2, 2
	li a3, 3
	bge a2, a3, label10
	j label7
label9:
	addiw a1, a0, 7
	addw a3, a3, a4
	addiw a2, a2, 1
	sh1add a4, a1, a3
	addiw a3, a0, 9
	sh1add a1, a5, a4
	sh1add a5, a3, a3
	addw a4, a1, a5
	addiw a1, a0, 13
	mv a0, a1
	li a3, 3
	bge a2, a3, label10
	j label7
label10:
	mv a0, a4
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
