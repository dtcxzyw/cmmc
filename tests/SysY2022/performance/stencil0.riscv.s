.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
image_in:
	.zero	2097152
.align 4
image_out:
	.zero	2097152
.text
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel205:
	auipc a0, %pcrel_hi(image_in)
	addi a0, a0, %pcrel_lo(pcrel205)
	mv s0, a0
	jal getarray
	mv s2, a0
	li a0, 23
	jal _sysy_starttime
pcrel206:
	auipc a0, %pcrel_hi(image_out)
	addi s1, a0, %pcrel_lo(pcrel206)
	li a0, 1
	addiw a1, a0, -1
	li a2, 511
	bge a0, a2, label24
	j label23
label24:
	mv a0, zero
	j label11
label23:
	li a3, 1
	j label4
label8:
	addiw a0, a0, 1
	addiw a1, a0, -1
	li a2, 511
	bge a0, a2, label24
	j label23
label4:
	slliw a4, a3, 9
	addw a2, a0, a4
	sh2add a5, a2, s0
	lw a5, 0(a5)
	slliw a5, a5, 3
	addiw t1, a3, -1
	slliw t1, t1, 9
	addw t2, a1, t1
	sh2add t2, t2, s0
	lw t2, 0(t2)
	subw a5, a5, t2
	addw t1, a0, t1
	sh2add t1, t1, s0
	lw t2, 0(t1)
	subw a5, a5, t2
	lw t1, 4(t1)
	subw a5, a5, t1
	addw a4, a1, a4
	sh2add a4, a4, s0
	lw t1, 0(a4)
	subw a5, a5, t1
	lw a4, 8(a4)
	subw a4, a5, a4
	addiw a3, a3, 1
	slliw a5, a3, 9
	addw t1, a1, a5
	sh2add t1, t1, s0
	lw t1, 0(t1)
	subw a4, a4, t1
	addw a5, a0, a5
	sh2add a5, a5, s0
	lw t1, 0(a5)
	subw a4, a4, t1
	lw a5, 4(a5)
	subw a4, a4, a5
	bge a4, zero, label9
	mv a4, zero
	sh2add a2, a2, s1
	sw zero, 0(a2)
	li a2, 1023
	bge a3, a2, label8
	j label4
label9:
	li a5, 255
	ble a4, a5, label6
	li a4, 255
	sh2add a2, a2, s1
	sw a4, 0(a2)
	li a2, 1023
	bge a3, a2, label8
	j label4
label6:
	sh2add a2, a2, s1
	sw a4, 0(a2)
	li a2, 1023
	bge a3, a2, label8
	j label4
label11:
	slliw a1, a0, 9
	sh2add a2, a1, s0
	lw a2, 0(a2)
	sh2add a1, a1, s1
	sw a2, 0(a1)
	addiw a1, a0, 1
	slliw a1, a1, 9
	addiw a2, a1, -1
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a2, a2, s1
	sw a3, 0(a2)
	sh2add a2, a1, s0
	lw a2, 0(a2)
	sh2add a1, a1, s1
	sw a2, 0(a1)
	addiw a1, a0, 2
	slliw a1, a1, 9
	addiw a2, a1, -1
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a2, a2, s1
	sw a3, 0(a2)
	sh2add a2, a1, s0
	lw a2, 0(a2)
	sh2add a1, a1, s1
	sw a2, 0(a1)
	addiw a1, a0, 3
	slliw a1, a1, 9
	addiw a2, a1, -1
	sh2add a3, a2, s0
	lw a3, 0(a3)
	sh2add a2, a2, s1
	sw a3, 0(a2)
	sh2add a2, a1, s0
	lw a2, 0(a2)
	sh2add a1, a1, s1
	sw a2, 0(a1)
	addiw a0, a0, 4
	slliw a1, a0, 9
	addiw a1, a1, -1
	sh2add a2, a1, s0
	lw a2, 0(a2)
	sh2add a1, a1, s1
	sw a2, 0(a1)
	li a1, 1024
	bge a0, a1, label140
	j label11
label140:
	mv a0, zero
label13:
	sh2add a1, a0, s0
	lw a3, 0(a1)
	sh2add a2, a0, s1
	sw a3, 0(a2)
	li a3, 2095104
	add a4, a1, a3
	lw a4, 0(a4)
	add a5, a2, a3
	sw a4, 0(a5)
	lw a4, 4(a1)
	sw a4, 4(a2)
	addi a3, a3, 4
	add a4, a1, a3
	lw a4, 0(a4)
	add a5, a2, a3
	sw a4, 0(a5)
	lw a4, 8(a1)
	sw a4, 8(a2)
	addi a3, a3, 4
	add a4, a1, a3
	lw a4, 0(a4)
	add a5, a2, a3
	sw a4, 0(a5)
	lw a4, 12(a1)
	sw a4, 12(a2)
	addi a3, a3, 4
	add a1, a1, a3
	lw a1, 0(a1)
	add a2, a2, a3
	sw a1, 0(a2)
	addiw a0, a0, 4
	li a1, 512
	bge a0, a1, label15
	j label13
label15:
	li a0, 59
	jal _sysy_stoptime
	li a0, 524288
	mv a1, s1
	jal putarray
	mv a0, s2
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
