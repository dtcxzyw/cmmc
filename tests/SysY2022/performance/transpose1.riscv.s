.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
matrix:
	.zero	80000000
.align 4
a:
	.zero	400000
.text
.globl main
main:
.p2align 2
	addi sp, sp, -48
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s0, 24(sp)
	sd s1, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel222:
	auipc a1, %pcrel_hi(a)
	mv s2, a0
	addi a0, a1, %pcrel_lo(pcrel222)
	mv s3, a0
	jal getarray
	addiw s4, s2, -4
	addiw s1, a0, -4
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	bgt s2, zero, label32
label2:
	bgt s0, zero, label3
	j label195
label32:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(label32)
	li a1, 4
	bgt s2, a1, label144
	mv a2, zero
	j label33
label144:
	mv a1, zero
	j label35
label33:
	sh2add a3, a2, a0
	sw a2, 0(a3)
	addiw a2, a2, 1
	bgt s2, a2, label33
	j label2
label35:
	sh2add a3, a1, a0
	addiw a2, a1, 1
	addiw a5, a1, 2
	addiw a4, a1, 3
	sw a1, 0(a3)
	sw a2, 4(a3)
	addiw a2, a1, 4
	sw a5, 8(a3)
	sw a4, 12(a3)
	ble s4, a2, label33
	mv a1, a2
	j label35
.p2align 2
label4:
	sh2add a2, a1, s3
	lw a3, 0(a2)
	mv a2, zero
	divw a4, s2, a3
	mv t0, zero
	bgt a4, zero, label60
	addiw a1, a1, 1
	bgt s0, a1, label4
	bgt s0, zero, label16
label195:
	mv s0, zero
	j label30
.p2align 2
label12:
	blt a2, a5, label14
	mulw t3, a4, a5
	addw t2, a2, t3
	addw t3, t0, a5
	sh2add t1, t2, a0
	addiw a5, a5, 1
	sh2add t4, t3, a0
	lw t2, 0(t4)
	sw t2, 0(t1)
	bgt a3, a5, label12
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label60
	addiw a1, a1, 1
	bgt s0, a1, label4
	bgt s0, zero, label16
	j label195
.p2align 2
label14:
	addiw a5, a5, 1
	bgt a3, a5, label12
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label60
	addiw a1, a1, 1
	bgt s0, a1, label4
	ble s0, zero, label195
label16:
	auipc a1, %pcrel_hi(matrix)
	li a2, 4
	addi a0, a1, %pcrel_lo(label16)
	bgt s0, a2, label93
	mv a1, zero
	li a3, 1
	mv a2, zero
	mv a4, zero
	j label17
label93:
	li a1, 4
	li a3, 3
	mv a4, zero
	mv a5, zero
	li t0, 1
	mv a2, a1
	mv t1, zero
	j label22
label17:
	sh2add a5, a2, a0
	addiw a2, a2, 1
	lw t1, 0(a5)
	mulw t0, a1, t1
	addw a1, a1, a3
	addw a4, a4, t0
	addiw a3, a3, 2
	bgt s0, a2, label17
	mv s0, a4
label30:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label60:
	mv a5, zero
	bgt a3, zero, label12
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label60
	addiw a1, a1, 1
	bgt s0, a1, label4
	bgt s0, zero, label16
	j label195
label22:
	sh2add t2, a5, a0
	addw t6, t0, t1
	addiw a5, a5, 4
	addiw t0, t0, 8
	lw t3, 0(t2)
	lw t4, 4(t2)
	mulw a6, t1, t3
	mulw t5, t4, t6
	addw t6, a2, t1
	addw t3, t5, a6
	lw t4, 8(t2)
	addiw a2, a2, 16
	lw t2, 12(t2)
	mulw t5, t4, t6
	addiw t4, a3, 6
	addw t3, t3, t5
	addiw a3, a3, 24
	addw t5, t1, t4
	mulw t2, t2, t5
	addw t3, t3, t2
	addiw t2, a1, 12
	addw a4, a4, t3
	addiw a1, a1, 32
	addw t1, t1, t2
	bgt s1, a5, label22
	mv a1, t1
	mv a3, t0
	mv a2, a5
	j label17
label3:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(label3)
	mv a1, zero
	j label4
