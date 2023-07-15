.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -8
	li a0, 49
	li a4, 1352
	li a2, 2
	mv a1, zero
	sd ra, 0(sp)
	li a3, 3
	bge zero, a3, label10
label7:
	addiw a3, a2, 10
	addiw a5, a0, 1
	addw a4, a4, a3
	sh1add t0, a5, a4
	addiw a5, a0, 3
	sh1add a4, a0, t0
	sh1add t0, a5, a5
	addiw a5, a0, 6
	addw a4, a4, t0
	li t0, 1
	bne a1, t0, label9
	addiw t0, a0, 17
	addiw a5, a0, 8
	addiw a1, a1, 1
	addw a3, a4, t0
	addiw t0, a0, 7
	sh1add a4, a5, a3
	addiw a5, a0, 10
	sh1add a3, t0, a4
	addiw a0, a0, 13
	sh1add t0, a5, a5
	addw a4, a3, t0
	li a3, 3
	bge a1, a3, label10
	j label7
label9:
	addiw a2, a0, 7
	addw a3, a3, a4
	addiw a1, a1, 1
	sh1add a4, a2, a3
	addiw a3, a0, 9
	sh1add a2, a5, a4
	sh1add a5, a3, a3
	addw a4, a2, a5
	addiw a2, a0, 13
	mv a0, a2
	li a3, 3
	bge a1, a3, label10
	j label7
label10:
	mv a0, a4
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
