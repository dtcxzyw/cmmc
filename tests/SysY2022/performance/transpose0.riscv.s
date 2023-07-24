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
	addi sp, sp, -32
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel187:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel187)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	bgt s1, zero, label2
	j label8
label3:
	addiw a2, a1, 4
	ble s1, a2, label6
	sh2add a3, a1, a0
	addiw a4, a1, 1
	addiw a5, a1, 2
	sw a1, 0(a3)
	sw a4, 4(a3)
	addiw a4, a1, 3
	sw a5, 8(a3)
	mv a1, a2
	sw a4, 12(a3)
	j label3
label6:
	sh2add a2, a1, a0
	sw a1, 0(a2)
	addiw a1, a1, 1
	bgt s1, a1, label6
label8:
	bgt s0, zero, label9
	j label171
label10:
	sh2add a2, a1, s2
	lw a3, 0(a2)
	mv a2, zero
	divw a4, s1, a3
	mv t0, zero
	bgt a4, zero, label79
	addiw a1, a1, 1
	bgt s0, a1, label10
	bgt s0, zero, label106
label171:
	mv s0, zero
	j label22
label79:
	mv a5, zero
	bgt a3, zero, label16
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label79
	addiw a1, a1, 1
	bgt s0, a1, label10
	bgt s0, zero, label106
	j label171
label16:
	blt a2, a5, label17
	mulw t2, a4, a5
	addw t3, t0, a5
	addw t4, a2, t2
	addiw a5, a5, 1
	sh2add t2, t3, a0
	sh2add t1, t4, a0
	lw t4, 0(t2)
	sw t4, 0(t1)
	bgt a3, a5, label16
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label79
	addiw a1, a1, 1
	bgt s0, a1, label10
	bgt s0, zero, label106
	j label171
label17:
	addiw a5, a5, 1
	bgt a3, a5, label16
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label79
	addiw a1, a1, 1
	bgt s0, a1, label10
	ble s0, zero, label171
label106:
	auipc a1, %pcrel_hi(matrix)
	li a2, 1
	mv a5, zero
	addi a0, a1, %pcrel_lo(label106)
	mv a4, zero
	mv a1, zero
	j label25
label22:
	li a0, 47
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label25:
	addiw a3, a5, 4
	ble s0, a3, label31
	sh2add a5, a5, a0
	addw t3, a1, a2
	lw t0, 0(a5)
	lw t2, 4(a5)
	mulw t0, a1, t0
	mulw t1, t2, t3
	addiw t3, a1, 2
	addw t2, a4, t0
	sh1add t0, a2, t3
	addw a4, t1, t2
	lw t1, 8(a5)
	lw a5, 12(a5)
	mulw t2, t0, t1
	sh1add t1, a2, a2
	addw a4, a4, t2
	addiw t2, a1, 6
	addw t0, t1, t2
	mulw t1, t0, a5
	addiw a5, a1, 12
	addw a4, a4, t1
	sh2add a1, a2, a5
	mv a5, a3
	addiw a2, a2, 8
	j label25
label31:
	sh2add t0, a5, a0
	addiw a5, a5, 1
	lw a3, 0(t0)
	mulw t1, a1, a3
	addw a1, a1, a2
	addw a4, a4, t1
	addiw a2, a2, 2
	bgt s0, a5, label31
	mv s0, a4
	j label22
label9:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(label9)
	mv a1, zero
	j label10
label2:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(label2)
	mv a1, zero
	j label3
