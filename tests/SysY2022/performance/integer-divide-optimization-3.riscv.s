.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	mv s0, a0
	li a0, 1016
	jal _sysy_starttime
	lui a2, 262156
	lui a3, 524264
	addiw a1, a2, 1
	addiw a0, a3, 3
	ble s0, zero, label20
	li a4, 4
	ble s0, a4, label24
	addiw a2, s0, -4
	addiw a4, s0, -20
	li a3, 16
	ble a2, a3, label30
	mv a3, zero
	mv a5, zero
	mv t0, zero
.p2align 2
label4:
	addw t0, a3, t0
	addiw a6, a3, 9
	addiw a5, a5, 16
	mul t1, t0, a1
	srli t5, t1, 63
	srai t2, t1, 61
	add t6, t5, t2
	addiw t5, a3, 1
	mulw t4, t6, a0
	subw t3, t0, t4
	addw t2, t3, t5
	mul t0, t2, a1
	srli t5, t0, 63
	srai t1, t0, 61
	add t6, t5, t1
	addiw t5, a3, 2
	mulw t4, t6, a0
	subw t3, t2, t4
	addw t1, t3, t5
	mul t0, t1, a1
	srli t6, t0, 63
	srai t4, t0, 61
	add t5, t6, t4
	addiw t4, a3, 3
	mulw t3, t5, a0
	subw t2, t1, t3
	addw t0, t2, t4
	mul t1, t0, a1
	srli t5, t1, 63
	srai t3, t1, 61
	add t2, t5, t3
	addiw t5, a3, 4
	mulw t4, t2, a0
	subw t1, t0, t4
	addw t2, t1, t5
	mul t0, t2, a1
	srli t6, t0, 63
	srai t3, t0, 61
	add t1, t6, t3
	addiw t3, a3, 5
	mulw t5, t1, a0
	subw t4, t2, t5
	addw t1, t4, t3
	mul t0, t1, a1
	srli t4, t0, 63
	srai t2, t0, 61
	add t5, t4, t2
	addiw t4, a3, 6
	mulw t6, t5, a0
	subw t3, t1, t6
	addw t0, t3, t4
	mul t1, t0, a1
	srli t4, t1, 63
	srai t2, t1, 61
	add t6, t4, t2
	addiw t4, a3, 7
	mulw t5, t6, a0
	subw t3, t0, t5
	addw t1, t3, t4
	mul t0, t1, a1
	srli t4, t0, 63
	srai t2, t0, 61
	add t5, t4, t2
	addiw t4, a3, 8
	mulw t6, t5, a0
	subw t3, t1, t6
	addw t2, t3, t4
	mul t0, t2, a1
	srli t4, t0, 63
	srai t1, t0, 61
	add t5, t4, t1
	mulw t6, t5, a0
	subw t3, t2, t6
	addw t0, t3, a6
	mul t1, t0, a1
	srli t3, t1, 63
	srai t4, t1, 61
	add t6, t3, t4
	addiw t4, a3, 10
	mulw t5, t6, a0
	subw t2, t0, t5
	addw t1, t2, t4
	mul t0, t1, a1
	srli t5, t0, 63
	srai t3, t0, 61
	add t6, t5, t3
	addiw t5, a3, 11
	mulw t4, t6, a0
	subw t2, t1, t4
	addw t0, t2, t5
	mul t1, t0, a1
	srli t2, t1, 63
	srai t3, t1, 61
	add t5, t2, t3
	addiw t3, a3, 12
	mulw t4, t5, a0
	subw t1, t0, t4
	addw t2, t1, t3
	mul t0, t2, a1
	srli t1, t0, 63
	srai t4, t0, 61
	add t5, t1, t4
	addiw t4, a3, 13
	mulw t6, t5, a0
	subw t3, t2, t6
	addw t1, t3, t4
	mul t0, t1, a1
	srli t4, t0, 63
	srai t2, t0, 61
	add t6, t4, t2
	addiw t4, a3, 14
	mulw t5, t6, a0
	subw t3, t1, t5
	addw t0, t3, t4
	mul t1, t0, a1
	srli t4, t1, 63
	srai t2, t1, 61
	add t5, t4, t2
	addiw t4, a3, 15
	addiw a3, a3, 16
	mulw t6, t5, a0
	subw t3, t0, t6
	addw t1, t3, t4
	mul t0, t1, a1
	srli t5, t0, 63
	srai t2, t0, 61
	add t4, t5, t2
	mulw t3, t4, a0
	subw t0, t1, t3
	bgt a4, a5, label4
	mv a4, a5
	j label8
label101:
	mv t0, a5
label8:
	addw a5, t0, a3
	addiw a4, a4, 4
	mul t1, a5, a1
	srli t0, t1, 63
	srai t3, t1, 61
	add t4, t0, t3
	addiw t3, a3, 1
	mulw t5, t4, a0
	subw t2, a5, t5
	addw t0, t2, t3
	mul a5, t0, a1
	srli t3, a5, 63
	srai t1, a5, 61
	add t5, t3, t1
	addiw t3, a3, 2
	mulw t4, t5, a0
	subw t2, t0, t4
	addw a5, t2, t3
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 61
	add t4, t3, t1
	addiw t3, a3, 3
	addiw a3, a3, 4
	mulw t5, t4, a0
	subw t2, a5, t5
	addw t0, t2, t3
	mul a5, t0, a1
	srli t4, a5, 63
	srai t1, a5, 61
	add t2, t4, t1
	mulw t3, t2, a0
	subw a5, t0, t3
	bgt a2, a4, label101
	mv a2, a3
	mv a3, a4
	mv a4, a5
label12:
	addw a5, a2, a4
	addiw a3, a3, 1
	addiw a2, a2, 1
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 61
	add t2, t3, t1
	mulw t4, t2, a0
	subw a4, a5, t4
	bgt s0, a3, label12
	mv s0, a4
label16:
	li a0, 1031
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
label30:
	mv t0, zero
	mv a4, zero
	mv a3, zero
	j label8
label20:
	mv s0, zero
	j label16
label24:
	mv a2, zero
	mv a3, zero
	mv a4, zero
	j label12
