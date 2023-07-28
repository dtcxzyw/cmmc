.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -8
	li a0, 324
	sd ra, 0(sp)
	jal _sysy_starttime
	jal getint
	bgt a0, zero, label2
	mv a2, zero
	j label9
label2:
	li a2, 4
	bgt a0, a2, label18
	mv a1, zero
	mv a2, zero
	j label6
label18:
	mv a3, zero
	mv a1, zero
label3:
	addiw a2, a1, 8
	li a4, 19800
	li t1, -2147450879
	addiw a1, a1, 4
	addw a3, a3, a4
	mul a5, a3, t1
	srli t0, a5, 32
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 15
	add a4, t0, a5
	slliw a5, a4, 16
	subw t0, a5, a4
	subw a3, a3, t0
	bgt a0, a2, label3
	mv a2, a3
label6:
	addiw a1, a1, 1
	li a4, 4950
	li a3, -2147450879
	addw a2, a2, a4
	mul a4, a2, a3
	srli a5, a4, 32
	add a3, a5, a2
	srliw a5, a3, 31
	sraiw a4, a3, 15
	add a3, a5, a4
	slliw t0, a3, 16
	subw a4, t0, a3
	subw a2, a2, a4
	bgt a0, a1, label6
label9:
	mv a0, a2
	jal putint
	li a0, 10
	jal putch
	li a0, 328
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
