.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
matrix:
	.zero	80000000
.align 8
a:
	.zero	400000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s2, 32(sp)
	sd s3, 24(sp)
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel221:
	auipc a1, %pcrel_hi(a)
	mv s2, a0
	addi a0, a1, %pcrel_lo(pcrel221)
	mv s3, a0
	jal getarray
	addiw s1, a0, -4
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	ble s2, zero, label7
	addiw a2, s2, -4
pcrel222:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel222)
	li a1, 4
	bgt s2, a1, label51
	mv a2, zero
	j label5
label51:
	mv a1, zero
	j label3
label5:
	sh2add a3, a2, a0
	sw a2, 0(a3)
	addiw a2, a2, 1
	bgt s2, a2, label5
label7:
	bgt s0, zero, label8
	j label194
.p2align 2
label9:
	sh2add a2, a1, s3
	lw a3, 0(a2)
	mv a2, zero
	divw a4, s2, a3
	mv t0, zero
	bgt a4, zero, label86
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
label194:
	mv s0, zero
	j label21
.p2align 2
label86:
	mv a5, zero
	bgt a3, zero, label17
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label86
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
	j label194
.p2align 2
label17:
	blt a2, a5, label19
	mulw t2, a4, a5
	addw t3, t0, a5
	addw t4, a2, t2
	addiw a5, a5, 1
	sh2add t1, t4, a0
	sh2add t4, t3, a0
	lw t2, 0(t4)
	sw t2, 0(t1)
	bgt a3, a5, label17
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label86
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
	j label194
.p2align 2
label19:
	addiw a5, a5, 1
	bgt a3, a5, label17
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label86
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
	j label194
label21:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label23:
	auipc a1, %pcrel_hi(matrix)
	li a2, 4
	addi a0, a1, %pcrel_lo(label23)
	bgt s0, a2, label120
	mv a1, zero
	li a3, 1
	mv a2, zero
	mv a4, zero
	j label24
label120:
	li a1, 4
	li a3, 3
	mv a4, zero
	mv a5, zero
	li t0, 1
	mv a2, a1
	mv t1, zero
	j label29
label24:
	sh2add a5, a2, a0
	addiw a2, a2, 1
	lw t0, 0(a5)
	mulw t1, a1, t0
	addw a1, a1, a3
	addw a4, a4, t1
	addiw a3, a3, 2
	bgt s0, a2, label24
	mv s0, a4
	j label21
label29:
	sh2add t2, a5, a0
	addw t6, t0, t1
	addiw a5, a5, 4
	addiw t0, t0, 8
	lw t3, 0(t2)
	lw t5, 4(t2)
	mulw t4, t5, t6
	addw t6, a2, t1
	mulw t5, t1, t3
	addiw a2, a2, 16
	addw t3, t4, t5
	lw t4, 8(t2)
	lw t2, 12(t2)
	mulw t5, t4, t6
	addiw t6, a3, 6
	addw t3, t3, t5
	addiw a3, a3, 24
	addw t4, t1, t6
	mulw t5, t2, t4
	addw t2, t3, t5
	addiw t3, a1, 12
	addw a4, a4, t2
	addiw a1, a1, 32
	addw t1, t1, t3
	bgt s1, a5, label29
	mv a1, t1
	mv a3, t0
	mv a2, a5
	j label24
label3:
	sh2add a3, a1, a0
	addiw a4, a1, 1
	addiw a5, a1, 2
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 3
	sw a5, 8(a3)
	addiw a1, a1, 4
	sw a4, 12(a3)
	bgt a2, a1, label3
	mv a2, a1
	j label5
label8:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(label8)
	mv a1, zero
	j label9
