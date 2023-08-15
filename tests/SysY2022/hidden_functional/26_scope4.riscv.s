.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -8
	li a2, 49
	li t2, 1352
	li a3, 2
	mv a4, zero
	li a0, 3
	li a1, 1
	sd ra, 0(sp)
	blt zero, a0, label7
	j label10
.p2align 2
label31:
	addw t6, a5, t2
	addiw a4, a2, 9
	addw t3, t4, t6
	mv a2, t1
	sh1add a5, a4, a4
	sh1add a3, t5, t3
	mv a4, t0
	addw t2, a3, a5
	mv a3, t1
	bge t0, a0, label10
.p2align 2
label7:
	addiw a5, a3, 10
	addiw t3, a2, 1
	addiw t4, a2, 3
	addw t1, t2, a5
	sh1add t5, t3, t1
	addiw t3, a2, 7
	sh1add t1, t4, t4
	sh1add t0, a2, t5
	slliw t4, t3, 1
	addiw t5, a2, 6
	addw t2, t0, t1
	addiw t1, a2, 13
	addiw t0, a4, 1
	bne a4, a1, label31
	addiw a4, t2, 10
	addiw t2, a2, 8
	addw t5, t3, a4
	addiw t3, a2, 10
	addw a5, t4, t5
	mv a2, t1
	sh1add t4, t3, t3
	sh1add a4, t2, a5
	addw t2, a4, t4
	mv a4, t0
	blt t0, a0, label7
label10:
	mv a0, t2
	jal putint
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
