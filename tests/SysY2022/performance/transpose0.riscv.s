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
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s0, 24(sp)
	sd s1, 32(sp)
	jal getint
pcrel239:
	auipc a1, %pcrel_hi(a)
	mv s2, a0
	addi a0, a1, %pcrel_lo(pcrel239)
	mv s3, a0
	jal getarray
	addiw s1, a0, -8
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel240:
	auipc a1, %pcrel_hi(matrix)
	addi a2, a1, %pcrel_lo(pcrel240)
	ble s2, zero, label7
	addiw a1, s2, -8
	li a3, 8
	ble s2, a3, label53
	mv a0, zero
.p2align 2
label3:
	sh2add a3, a0, a2
	addiw a4, a0, 1
	addiw a5, a0, 2
	addiw t0, a0, 3
	sw a0, 0(a3)
	sw a4, 4(a3)
	addiw a4, a0, 4
	sw a5, 8(a3)
	addiw a5, a0, 5
	sw t0, 12(a3)
	sw a4, 16(a3)
	addiw a4, a0, 6
	sw a5, 20(a3)
	addiw a5, a0, 7
	sw a4, 24(a3)
	addiw a0, a0, 8
	sw a5, 28(a3)
	bgt a1, a0, label3
label5:
	sh2add a1, a0, a2
	sw a0, 0(a1)
	addiw a0, a0, 1
	bgt s2, a0, label5
label7:
	ble s0, zero, label19
	mv a5, zero
.p2align 2
label9:
	sh2add a0, a5, s3
	lw a1, 0(a0)
	mv a0, zero
	divw a3, s2, a1
	mv a4, zero
	ble a3, zero, label94
.p2align 2
label95:
	mv t0, zero
	bgt a1, zero, label17
	j label220
.p2align 2
label226:
	addiw a0, a0, 1
	mulw a4, a1, a0
	bgt a3, a0, label95
	addiw a5, a5, 1
	bgt s0, a5, label9
label19:
	bgt s0, zero, label22
	j label120
label20:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s1, 32(sp)
	addi sp, sp, 40
	ret
label22:
	li a1, 8
	ble s0, a1, label125
	li a0, 8
	li a1, 7
	li a3, 6
	li a4, 5
	li a5, 4
	li t1, 3
	mv t4, zero
	mv t3, zero
	li t0, 1
	mv t2, a5
	mv t5, zero
.p2align 2
label23:
	sh2add t6, t3, a2
	addw s2, t0, t5
	addiw t3, t3, 8
	addiw t0, t0, 16
	lw a6, 0(t6)
	lw a7, 4(t6)
	mulw s3, t5, a6
	mulw a7, a7, s2
	addw s2, t2, t5
	addw a6, a7, s3
	addiw t2, t2, 32
	addiw s3, t1, 6
	lw a7, 8(t6)
	addiw t1, t1, 48
	mulw a7, a7, s2
	addw s2, t5, s3
	addw a6, a6, a7
	addiw s3, a5, 12
	lw a7, 12(t6)
	addiw a5, a5, 64
	mulw a7, a7, s2
	addw s2, t5, s3
	addw a6, a6, a7
	lw a7, 16(t6)
	mulw a7, a7, s2
	addiw s2, a4, 20
	addw a6, a6, a7
	addiw a4, a4, 80
	addw s3, t5, s2
	lw a7, 20(t6)
	mulw a7, a7, s3
	addiw s3, a3, 30
	addw a6, a6, a7
	addiw a3, a3, 96
	addw s2, t5, s3
	lw a7, 24(t6)
	lw t6, 28(t6)
	mulw a7, a7, s2
	addw a6, a6, a7
	addiw a7, a1, 42
	addiw a1, a1, 112
	addw s2, t5, a7
	mulw t6, t6, s2
	addw a6, a6, t6
	addiw t6, a0, 56
	addw t4, t4, a6
	addiw a0, a0, 128
	addw t5, t5, t6
	bgt s1, t3, label23
label35:
	sh2add a0, t3, a2
	addiw t3, t3, 1
	lw a1, 0(a0)
	mulw a3, t5, a1
	addw t5, t5, t0
	addw t4, t4, a3
	addiw t0, t0, 2
	bgt s0, t3, label35
	mv s0, t4
	j label20
.p2align 2
label17:
	addiw t1, t0, 1
	blt a0, t0, label110
	mulw t3, a3, t0
	addw t0, a4, t0
	addw t4, a0, t3
	sh2add t2, t4, a2
	sh2add t4, t0, a2
	mv t0, t1
	lw t3, 0(t4)
	sw t3, 0(t2)
	bgt a1, t1, label17
	j label226
.p2align 2
label110:
	mv t0, t1
	bgt a1, t1, label17
	addiw a0, a0, 1
	mulw a4, a1, a0
	bgt a3, a0, label95
	addiw a5, a5, 1
	bgt s0, a5, label9
	j label19
.p2align 2
label220:
	addiw a0, a0, 1
	mulw a4, a1, a0
	bgt a3, a0, label95
	addiw a5, a5, 1
	bgt s0, a5, label9
	j label19
label94:
	addiw a5, a5, 1
	bgt s0, a5, label9
	j label19
label120:
	mv s0, zero
	j label20
label53:
	mv a0, zero
	j label5
label125:
	mv t5, zero
	li t0, 1
	mv t3, zero
	mv t4, zero
	j label35
