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
	addi sp, sp, -32
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s0, 8(sp)
	sd ra, 0(sp)
	jal getint
pcrel214:
	auipc a1, %pcrel_hi(a)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel214)
	mv s2, a0
	jal getarray
	mv s0, a0
	li a0, 28
	jal _sysy_starttime
	ble s1, zero, label7
pcrel215:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(pcrel215)
	li a1, 4
	bgt s1, a1, label46
	mv a2, zero
	j label5
label46:
	mv a1, zero
label3:
	sh2add a2, a1, a0
	addiw a4, a1, 1
	addiw a3, a1, 2
	sw a1, 0(a2)
	sw a4, 4(a2)
	addiw a4, a1, 3
	sw a3, 8(a2)
	addiw a3, a1, 8
	sw a4, 12(a2)
	addiw a2, a1, 4
	ble s1, a3, label5
	mv a1, a2
	j label3
label5:
	sh2add a3, a2, a0
	sw a2, 0(a3)
	addiw a2, a2, 1
	bgt s1, a2, label5
label7:
	bgt s0, zero, label8
	j label194
.p2align 2
label9:
	sh2add a2, a1, s2
	lw a3, 0(a2)
	mv a2, zero
	divw a4, s1, a3
	mv t0, zero
	bgt a4, zero, label82
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
label194:
	mv s0, zero
	j label21
.p2align 2
label82:
	mv a5, zero
	bgt a3, zero, label16
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label82
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
	j label194
.p2align 2
label16:
	blt a2, a5, label17
	mulw t2, a4, a5
	addw t3, a2, t2
	addw t2, t0, a5
	sh2add t1, t3, a0
	addiw a5, a5, 1
	sh2add t4, t2, a0
	lw t3, 0(t4)
	sw t3, 0(t1)
	bgt a3, a5, label16
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label82
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
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label23:
	auipc a1, %pcrel_hi(matrix)
	li a2, 4
	addi a0, a1, %pcrel_lo(label23)
	bgt s0, a2, label116
	mv a1, zero
	li a4, 1
	mv a3, zero
	mv a2, zero
	j label29
label116:
	mv a2, zero
	mv a1, zero
	li a3, 1
	mv a4, zero
label24:
	sh2add a5, a1, a0
	addw t3, a3, a4
	lw t0, 0(a5)
	lw t2, 4(a5)
	mulw t1, t2, t3
	addiw t3, a3, 1
	mulw t2, a4, t0
	addw t0, t1, t2
	lw t2, 8(a5)
	sh1add t1, t3, a4
	mulw t3, t1, t2
	sh1add t2, a3, a3
	addw t0, t0, t3
	addiw t3, t2, 6
	lw t2, 12(a5)
	addw t1, a4, t3
	mulw t3, t1, t2
	addw a5, t0, t3
	slliw t0, a3, 2
	addw a2, a2, a5
	addiw a3, a3, 8
	addi a5, t0, 12
	addiw t0, a1, 8
	addw a4, a4, a5
	addiw a5, a1, 4
	bgt s0, t0, label150
	mv a1, a4
	mv a4, a3
	mv a3, a5
	j label29
label150:
	mv a1, a5
	j label24
label29:
	sh2add t0, a3, a0
	addiw a3, a3, 1
	lw a5, 0(t0)
	mulw t1, a1, a5
	addw a1, a1, a4
	addw a2, a2, t1
	addiw a4, a4, 2
	bgt s0, a3, label29
	mv s0, a2
	j label21
.p2align 2
label17:
	addiw a5, a5, 1
	bgt a3, a5, label16
	addiw a2, a2, 1
	mulw t0, a3, a2
	bgt a4, a2, label82
	addiw a1, a1, 1
	bgt s0, a1, label9
	bgt s0, zero, label23
	j label194
label8:
	auipc a1, %pcrel_hi(matrix)
	addi a0, a1, %pcrel_lo(label8)
	mv a1, zero
	j label9
