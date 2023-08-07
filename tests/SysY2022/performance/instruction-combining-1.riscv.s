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
	lui a1, 2
	mv s0, a0
	addiw a0, a1, 1823
	jal _sysy_starttime
	lui a2, 262152
	lui a3, 131068
	addiw a1, a2, -1
	addiw a0, a3, 1
	ble s0, zero, label17
	li a4, 4
	bgt s0, a4, label6
	j label21
label3:
	addw a4, a2, a3
	addiw a2, a2, 1
	mul a5, a4, a1
	srli t3, a5, 63
	srai t0, a5, 59
	add t2, t3, t0
	mulw t1, t2, a0
	subw a3, a4, t1
	bgt s0, a2, label3
	mv s0, a3
	j label13
label6:
	addiw a2, s0, -4
	addiw a4, s0, -20
	li a5, 16
	ble a2, a5, label34
	mv a3, zero
	mv a5, zero
.p2align 2
label7:
	addw t0, a3, a5
	mul t1, t0, a1
	srli t3, t1, 63
	srai t2, t1, 59
	add a5, t3, t2
	addiw t3, a3, 1
	mulw t4, a5, a0
	subw t1, t0, t4
	addw a5, t1, t3
	mul t0, a5, a1
	srli t3, t0, 63
	srai t2, t0, 59
	add t4, t3, t2
	addiw t3, a3, 2
	mulw t5, t4, a0
	subw t1, a5, t5
	addw t0, t1, t3
	mul a5, t0, a1
	srli t4, a5, 63
	srai t2, a5, 59
	add t3, t4, t2
	addiw t4, a3, 3
	mulw t5, t3, a0
	subw t1, t0, t5
	addw a5, t1, t4
	mul t0, a5, a1
	srli t3, t0, 63
	srai t2, t0, 59
	add t5, t3, t2
	addiw t3, a3, 4
	mulw t4, t5, a0
	subw t1, a5, t4
	addw t0, t1, t3
	mul a5, t0, a1
	srli t4, a5, 63
	srai t2, a5, 59
	add t1, t4, t2
	addiw t2, a3, 5
	mulw t5, t1, a0
	subw t3, t0, t5
	addw t1, t3, t2
	mul a5, t1, a1
	srli t3, a5, 63
	srai t0, a5, 59
	add t4, t3, t0
	addiw t3, a3, 6
	mulw t5, t4, a0
	subw t2, t1, t5
	addw a5, t2, t3
	mul t0, a5, a1
	srli t5, t0, 63
	srai t1, t0, 59
	add t3, t5, t1
	addiw t5, a3, 7
	mulw t4, t3, a0
	subw t2, a5, t4
	addw t1, t2, t5
	mul a5, t1, a1
	srli t4, a5, 63
	srai t0, a5, 59
	add t3, t4, t0
	addiw t4, a3, 8
	mulw t5, t3, a0
	subw t2, t1, t5
	addw t0, t2, t4
	mul a5, t0, a1
	srli t4, a5, 63
	srai t1, a5, 59
	add t5, t4, t1
	addiw t1, a3, 9
	mulw t2, t5, a0
	subw t3, t0, t2
	addw a5, t3, t1
	mul t0, a5, a1
	srli t5, t0, 63
	srai t2, t0, 59
	add t3, t5, t2
	addiw t5, a3, 10
	mulw t4, t3, a0
	subw t1, a5, t4
	addw t0, t1, t5
	mul a5, t0, a1
	srli t3, a5, 63
	srai t2, a5, 59
	add t4, t3, t2
	addiw t2, a3, 11
	mulw t5, t4, a0
	subw t1, t0, t5
	addw a5, t1, t2
	mul t0, a5, a1
	srli t1, t0, 63
	srai t3, t0, 59
	add t5, t1, t3
	addiw t3, a3, 12
	mulw t4, t5, a0
	subw t2, a5, t4
	addw t0, t2, t3
	mul a5, t0, a1
	srli t4, a5, 63
	srai t1, a5, 59
	add t3, t4, t1
	addiw t4, a3, 13
	mulw t5, t3, a0
	subw t2, t0, t5
	addw a5, t2, t4
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 59
	add t5, t3, t1
	addiw t3, a3, 14
	mulw t4, t5, a0
	subw t2, a5, t4
	addw t1, t2, t3
	mul a5, t1, a1
	srli t3, a5, 63
	srai t0, a5, 59
	add t5, t3, t0
	addiw t3, a3, 15
	addiw a3, a3, 16
	mulw t4, t5, a0
	subw t2, t1, t4
	addw t0, t2, t3
	mul a5, t0, a1
	srli t3, a5, 63
	srai t1, a5, 59
	add t4, t3, t1
	mulw t2, t4, a0
	subw a5, t0, t2
	bgt a4, a3, label7
	mv a4, a5
label10:
	addw t0, a4, a3
	mul a5, t0, a1
	srli a4, a5, 63
	srai t2, a5, 59
	add t4, a4, t2
	addiw t2, a3, 1
	mulw t3, t4, a0
	subw t1, t0, t3
	addw a4, t1, t2
	mul a5, a4, a1
	srli t1, a5, 63
	srai t0, a5, 59
	add t3, t1, t0
	addiw t1, a3, 2
	mulw t2, t3, a0
	subw a5, a4, t2
	addw t0, a5, t1
	mul a4, t0, a1
	srli a5, a4, 63
	srai t2, a4, 59
	add t4, a5, t2
	addiw t2, a3, 3
	addiw a3, a3, 4
	mulw t3, t4, a0
	subw t1, t0, t3
	addw a5, t1, t2
	mul a4, a5, a1
	srli t1, a4, 63
	srai t0, a4, 59
	add t2, t1, t0
	mulw t3, t2, a0
	subw a4, a5, t3
	bgt a2, a3, label10
	mv a2, a3
	mv a3, a4
	j label3
label13:
	lui a1, 2
	addiw a0, a1, 1838
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
label17:
	mv s0, zero
	j label13
label21:
	mv a2, zero
	mv a3, zero
	j label3
label34:
	mv a4, zero
	mv a3, zero
	j label10
