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
.p2align 2
.globl main
main:
	addi sp, sp, -40
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s0, 24(sp)
	sd s1, 32(sp)
	jal getint
pcrel199:
	auipc a1, %pcrel_hi(a)
	mv s2, a0
	addi s3, a1, %pcrel_lo(pcrel199)
	mv a0, s3
	jal getarray
	addiw s1, a0, -4
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
pcrel200:
	auipc a1, %pcrel_hi(matrix)
	addi a2, a1, %pcrel_lo(pcrel200)
	ble s2, zero, label7
	addiw a1, s2, -4
	li a3, 4
	ble s2, a3, label49
	mv a0, zero
.p2align 2
label3:
	sh2add a3, a0, a2
	addiw a4, a0, 1
	addiw a5, a0, 2
	sw a0, 0(a3)
	sw a4, 4(a3)
	addiw a4, a0, 3
	sw a5, 8(a3)
	addiw a0, a0, 4
	sw a4, 12(a3)
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
	ble a3, zero, label82
.p2align 2
label83:
	mv t0, zero
	ble a1, zero, label180
.p2align 2
label17:
	addiw t1, t0, 1
	blt a0, t0, label98
	mulw t4, a3, t0
	addw t3, a0, t4
	addw t4, a4, t0
	sh2add t2, t3, a2
	sh2add t0, t4, a2
	lw t3, 0(t0)
	mv t0, t1
	sw t3, 0(t2)
	bgt a1, t1, label17
	j label186
.p2align 2
label98:
	mv t0, t1
	bgt a1, t1, label17
	addiw a0, a0, 1
	mulw a4, a1, a0
	bgt a3, a0, label83
	addiw a5, a5, 1
	bgt s0, a5, label9
label19:
	bgt s0, zero, label22
	j label108
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
	li a1, 4
	ble s0, a1, label113
	li a0, 4
	li a1, 3
	mv t0, zero
	mv a5, zero
	li a4, 1
	mv a3, a0
	mv t1, zero
.p2align 2
label23:
	sh2add t2, a5, a2
	addw a6, a4, t1
	addiw a5, a5, 4
	addiw a4, a4, 8
	lw t3, 0(t2)
	lw t4, 4(t2)
	mulw t6, t1, t3
	mulw t5, t4, a6
	lw t4, 8(t2)
	addw t3, t5, t6
	lw t2, 12(t2)
	addw t5, a3, t1
	addiw a3, a3, 16
	mulw t6, t4, t5
	addiw t5, a1, 6
	addw t3, t3, t6
	addiw a1, a1, 24
	addw t4, t1, t5
	mulw t2, t2, t4
	addw t3, t3, t2
	addiw t2, a0, 12
	addw t0, t0, t3
	addiw a0, a0, 32
	addw t1, t1, t2
	bgt s1, a5, label23
label31:
	sh2add a0, a5, a2
	addiw a5, a5, 1
	lw a3, 0(a0)
	mulw a1, t1, a3
	addw t1, t1, a4
	addw t0, t0, a1
	addiw a4, a4, 2
	bgt s0, a5, label31
	mv s0, t0
	j label20
.p2align 2
label186:
	addiw a0, a0, 1
	mulw a4, a1, a0
	bgt a3, a0, label83
	addiw a5, a5, 1
	bgt s0, a5, label9
	j label19
.p2align 2
label180:
	addiw a0, a0, 1
	mulw a4, a1, a0
	bgt a3, a0, label83
	addiw a5, a5, 1
	bgt s0, a5, label9
	j label19
label82:
	addiw a5, a5, 1
	bgt s0, a5, label9
	j label19
label108:
	mv s0, zero
	j label20
label49:
	mv a0, zero
	j label5
label113:
	mv t1, zero
	li a4, 1
	mv a5, zero
	mv t0, zero
	j label31
