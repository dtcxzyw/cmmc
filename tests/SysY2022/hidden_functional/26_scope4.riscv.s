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
	blt zero, a0, label7
	j label10
.p2align 2
label30:
	addw t5, a5, t1
	addiw a4, a4, 1
	addiw a5, a2, 9
	addw t2, t3, t5
	mv a2, t0
	sh1add t3, a5, a5
	sh1add a3, t4, t2
	addw t1, a3, t3
	mv a3, t0
	bge a4, a0, label10
.p2align 2
label7:
	addiw a5, a3, 10
	addiw t4, a2, 1
	addiw t3, a2, 3
	addw t2, t1, a5
	sh1add t5, t4, t2
	addiw t2, a2, 7
	sh1add t4, t3, t3
	sh1add t0, a2, t5
	slliw t3, t2, 1
	addw t1, t0, t4
	addiw t0, a2, 13
	addiw t4, a2, 6
	bne a4, a1, label30
	addiw a4, t1, 10
	addiw t1, a2, 8
	addw t4, t2, a4
	addiw t2, a2, 10
	addw a5, t3, t4
	mv a2, t0
	sh1add t3, t2, t2
	sh1add a4, t1, a5
	addw t1, a4, t3
	li a4, 2
	blt a4, a0, label7
label10:
	mv a0, t1
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
