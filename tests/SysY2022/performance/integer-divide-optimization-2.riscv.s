.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -16
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	ble s0, zero, label18
	mv a1, zero
	mv t1, zero
	addiw a0, zero, 4
	bge a0, s0, label6
	j label5
label18:
	mv s0, zero
	j label13
label5:
	slliw a2, a1, 1
	srliw a3, a2, 31
	add a2, a2, a3
	sraiw a3, a2, 1
	li a2, 1000
	mulw a4, a3, a2
	li a3, 274877907
	mul a4, a4, a3
	srai a5, a4, 38
	srli a4, a4, 63
	add a5, a4, a5
	li a4, 300
	mulw t2, a5, a4
	li a5, 458129845
	mul t2, t2, a5
	srai t3, t2, 37
	srli t2, t2, 63
	add t2, t2, t3
	addw t3, t1, t2
	li t1, 1073790977
	mul t2, t3, t1
	srai t4, t2, 61
	srli t2, t2, 63
	add t4, t2, t4
	li t2, 2147385347
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a1, 1
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a2
	mul t4, t4, a3
	srai t5, t4, 38
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, a4
	mul t4, t4, a5
	srai t5, t4, 37
	srli t4, t4, 63
	add t4, t4, t5
	addw t3, t3, t4
	mul t4, t3, t1
	srai t5, t4, 61
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a1, 2
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a2
	mul t4, t4, a3
	srai t5, t4, 38
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, a4
	mul t4, t4, a5
	srai t5, t4, 37
	srli t4, t4, 63
	add t4, t4, t5
	addw t3, t3, t4
	mul t4, t3, t1
	srai t5, t4, 61
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw a1, a1, 3
	slliw a1, a1, 1
	srliw t4, a1, 31
	add a1, a1, t4
	sraiw a1, a1, 1
	mulw a1, a1, a2
	mul a1, a1, a3
	srai a2, a1, 38
	srli a1, a1, 63
	add a1, a1, a2
	mulw a1, a1, a4
	mul a1, a1, a5
	srai a2, a1, 37
	srli a1, a1, 63
	add a1, a1, a2
	addw a1, t3, a1
	mul a2, a1, t1
	srai a3, a2, 61
	srli a2, a2, 63
	add a2, a2, a3
	mulw a2, a2, t2
	subw t1, a1, a2
	mv a1, a0
	addiw a0, a0, 4
	bge a0, s0, label6
	j label5
label10:
	slliw a2, a0, 1
	srliw a3, a2, 31
	add a2, a2, a3
	sraiw a2, a2, 1
	li a3, 1000
	mulw a2, a2, a3
	li a3, 274877907
	mul a2, a2, a3
	srai a3, a2, 38
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 300
	mulw a2, a2, a3
	li a3, 458129845
	mul a2, a2, a3
	srai a3, a2, 37
	srli a2, a2, 63
	add a2, a2, a3
	addw a1, a1, a2
	li a2, 1073790977
	mul a2, a1, a2
	srai a3, a2, 61
	srli a2, a2, 63
	add a2, a2, a3
	li a3, 2147385347
	mulw a2, a2, a3
	subw a1, a1, a2
	addiw a0, a0, 1
	bge a0, s0, label111
	j label10
label111:
	mv s0, a1
label13:
	li a0, 1031
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label6:
	addiw a0, a1, 4
	bge a0, s0, label63
	j label9
label63:
	mv a0, a1
	mv a1, t1
	j label10
label9:
	slliw a2, a1, 1
	srliw a3, a2, 31
	add a2, a2, a3
	sraiw a3, a2, 1
	li a2, 1000
	mulw a4, a3, a2
	li a3, 274877907
	mul a4, a4, a3
	srai a5, a4, 38
	srli a4, a4, 63
	add a5, a4, a5
	li a4, 300
	mulw t2, a5, a4
	li a5, 458129845
	mul t2, t2, a5
	srai t3, t2, 37
	srli t2, t2, 63
	add t2, t2, t3
	addw t3, t1, t2
	li t1, 1073790977
	mul t2, t3, t1
	srai t4, t2, 61
	srli t2, t2, 63
	add t4, t2, t4
	li t2, 2147385347
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a1, 1
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a2
	mul t4, t4, a3
	srai t5, t4, 38
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, a4
	mul t4, t4, a5
	srai t5, t4, 37
	srli t4, t4, 63
	add t4, t4, t5
	addw t3, t3, t4
	mul t4, t3, t1
	srai t5, t4, 61
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw t4, a1, 2
	slliw t4, t4, 1
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	mulw t4, t4, a2
	mul t4, t4, a3
	srai t5, t4, 38
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, a4
	mul t4, t4, a5
	srai t5, t4, 37
	srli t4, t4, 63
	add t4, t4, t5
	addw t3, t3, t4
	mul t4, t3, t1
	srai t5, t4, 61
	srli t4, t4, 63
	add t4, t4, t5
	mulw t4, t4, t2
	subw t3, t3, t4
	addiw a1, a1, 3
	slliw a1, a1, 1
	srliw t4, a1, 31
	add a1, a1, t4
	sraiw a1, a1, 1
	mulw a1, a1, a2
	mul a1, a1, a3
	srai a2, a1, 38
	srli a1, a1, 63
	add a1, a1, a2
	mulw a1, a1, a4
	mul a1, a1, a5
	srai a2, a1, 37
	srli a1, a1, 63
	add a1, a1, a2
	addw a1, t3, a1
	mul a2, a1, t1
	srai a3, a2, 61
	srli a2, a2, 63
	add a2, a2, a3
	mulw a2, a2, t2
	subw t1, a1, a2
	mv a1, a0
	addiw a0, a0, 4
	bge a0, s0, label63
	j label9
