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
	lui a3, 262156
	lui a2, 524264
	addiw a1, a3, 1
	addiw a0, a2, 3
	bgt s0, zero, label4
	j label15
label2:
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
label4:
	addiw a2, s0, -4
	li a5, 4
	ble s0, a5, label20
	mv a5, zero
	mv a4, zero
	mv a3, zero
.p2align 2
label5:
	srliw t1, a3, 31
	addiw a4, a4, 4
	add t2, a3, t1
	sraiw t3, t2, 1
	addw t0, a5, t3
	mul t1, t0, a1
	srli t4, t1, 63
	srai t2, t1, 61
	add a5, t4, t2
	addiw t2, a3, 2
	srliw t4, t2, 31
	mulw t3, a5, a0
	subw t1, t0, t3
	add t3, t2, t4
	sraiw t5, t3, 1
	addw a5, t1, t5
	mul t0, a5, a1
	srli t1, t0, 63
	srai t2, t0, 61
	add t3, t1, t2
	addiw t1, a3, 4
	srliw t5, t1, 31
	mulw t4, t3, a0
	add t2, t1, t5
	subw t0, a5, t4
	sraiw t3, t2, 1
	addw a5, t0, t3
	mul t1, a5, a1
	srli t0, t1, 63
	srai t2, t1, 61
	add t3, t0, t2
	addiw t2, a3, 6
	addiw a3, a3, 8
	srliw t5, t2, 31
	mulw t4, t3, a0
	add t3, t2, t5
	subw t1, a5, t4
	sraiw t4, t3, 1
	addw t0, t1, t4
	mul a5, t0, a1
	srli t3, a5, 63
	srai t2, a5, 61
	add t1, t3, t2
	mulw t4, t1, a0
	subw a5, t0, t4
	bgt a2, a4, label5
	mv a2, a5
label9:
	srliw t0, a3, 31
	addiw a4, a4, 1
	add t1, a3, t0
	addiw a3, a3, 2
	sraiw t2, t1, 1
	addw a5, a2, t2
	mul t0, a5, a1
	srli t3, t0, 63
	srai t1, t0, 61
	add t2, t3, t1
	mulw t4, t2, a0
	subw a2, a5, t4
	bgt s0, a4, label9
	mv s0, a2
	j label2
label15:
	mv s0, zero
	j label2
label20:
	mv a3, zero
	mv a4, zero
	mv a2, zero
	j label9
