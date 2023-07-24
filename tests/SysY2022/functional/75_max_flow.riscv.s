.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
to:
	.zero	400
.align 4
cap:
	.zero	400
.align 4
rev:
	.zero	400
.text
dfs:
	addi sp, sp, -80
	sd s1, 72(sp)
	mv s1, a0
	sd s6, 64(sp)
	sd s2, 56(sp)
	mv s2, a1
	sd s0, 48(sp)
	mv s0, a2
	sd s5, 40(sp)
	mv s5, a4
	sd s4, 32(sp)
	mv s4, a3
	sd s3, 24(sp)
	sd s8, 16(sp)
	sd s7, 8(sp)
	sd ra, 0(sp)
	bne a0, a1, label4
	mv a0, a2
	j label2
label4:
	sh2add a1, s1, s5
	li a0, 1
	li a2, 40
	mv s6, zero
	sw a0, 0(a1)
pcrel100:
	auipc a1, %pcrel_hi(cap)
	addi a0, a1, %pcrel_lo(pcrel100)
	mul a1, s1, a2
	mv s3, a0
	add s8, a0, a1
pcrel101:
	auipc a0, %pcrel_hi(to)
	addi a2, a0, %pcrel_lo(pcrel101)
	add s7, a2, a1
	j label5
label2:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s8, 16(sp)
	ld s3, 24(sp)
	ld s4, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s2, 56(sp)
	ld s6, 64(sp)
	ld s1, 72(sp)
	addi sp, sp, 80
	ret
label5:
	sh2add a0, s1, s4
	lw a1, 0(a0)
	blt s6, a1, label7
	mv a0, zero
	j label2
label7:
	sh2add a1, s6, s7
	lw a0, 0(a1)
	sh2add a2, a0, s5
	lw a1, 0(a2)
	beq a1, zero, label9
label8:
	addiw s6, s6, 1
	j label5
label9:
	sh2add a2, s6, s8
	lw a1, 0(a2)
	ble a1, zero, label8
	min a2, s0, a1
	mv a1, s2
	mv a3, s4
	mv a4, s5
	jal dfs
	ble a0, zero, label8
	sh2add a1, s6, s8
	lw a3, 0(a1)
	subw a2, a3, a0
pcrel102:
	auipc a3, %pcrel_hi(rev)
	sw a2, 0(a1)
	li a1, 40
	addi a2, a3, %pcrel_lo(pcrel102)
	mul a4, s1, a1
	add a3, a2, a4
	sh2add a4, s6, s7
	sh2add a2, s6, a3
	lw a3, 0(a4)
	lw a2, 0(a2)
	mul a4, a3, a1
	add a3, s3, a4
	sh2add a1, a2, a3
	lw a4, 0(a1)
	addw a2, a0, a4
	sw a2, 0(a1)
	j label2
.globl main
main:
	addi sp, sp, -168
	sd s1, 160(sp)
	addi s1, sp, 0
	sd s6, 152(sp)
	sd s0, 88(sp)
	addi s0, sp, 48
	sd s5, 144(sp)
	sd s2, 40(sp)
	sd s3, 136(sp)
	sd s4, 128(sp)
	sd s8, 120(sp)
	sd s7, 112(sp)
	sd s9, 104(sp)
	sd ra, 96(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s6, a0
pcrel262:
	auipc a0, %pcrel_hi(to)
	addi s3, a0, %pcrel_lo(pcrel262)
pcrel263:
	auipc a0, %pcrel_hi(cap)
	addi s4, a0, %pcrel_lo(pcrel263)
pcrel264:
	auipc a0, %pcrel_hi(rev)
	addi s5, a0, %pcrel_lo(pcrel264)
	mv a0, zero
label104:
	addiw a1, a0, 4
	li a2, 10
	bge a1, a2, label107
	sh2add a0, a0, s0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a0, a1
	j label104
label107:
	sh2add a1, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	blt a0, a1, label107
	bgt s6, zero, label110
	mv a5, zero
	mv a1, zero
	li a0, 4
	li a2, 10
	blt a0, a2, label116
	mv a0, s1
	li a1, 1
	sw zero, 0(s1)
	li a0, 10
	blt a1, a0, label117
	j label119
label110:
	jal getint
	sh2add s7, a0, s0
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	addiw s6, s6, -1
	li a2, 40
	mv a1, a0
	mul a3, s8, a2
	lw a0, 0(s7)
	mul a2, s9, a2
	add a5, s3, a3
	add t0, s4, a2
	sh2add a4, a0, a5
	add a5, s4, a3
	add a3, s5, a3
	sw s9, 0(a4)
	sh2add a4, a0, a5
	sw a1, 0(a4)
	sh2add a1, s9, s0
	sh2add a4, a0, a3
	lw a3, 0(a1)
	sw a3, 0(a4)
	add a4, s3, a2
	add a2, s5, a2
	sh2add a5, a3, a4
	sh2add a4, a3, t0
	sw s8, 0(a5)
	sh2add a3, a3, a2
	sw zero, 0(a4)
	sw a0, 0(a3)
	addi a0, a0, 1
	sw a0, 0(s7)
	lw a2, 0(a1)
	addi a0, a2, 1
	sw a0, 0(a1)
	bgt s6, zero, label110
	mv a5, zero
	mv a1, zero
	li a0, 4
	li a2, 10
	blt a0, a2, label116
	mv a0, s1
	li a1, 1
	sw zero, 0(s1)
	li a0, 10
	blt a1, a0, label117
	j label119
label114:
	addiw a0, a1, 4
	li a2, 10
	blt a0, a2, label116
	sh2add a0, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a0)
	li a0, 10
	blt a1, a0, label117
	j label119
label116:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a0
	j label114
label117:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	sw zero, 0(a0)
	li a0, 10
	blt a1, a0, label117
label119:
	li a0, 1
	mv a1, s2
	lui a2, 458752
	mv a3, s0
	mv a4, s1
	jal dfs
	beq a0, zero, label120
	addw a5, a5, a0
	mv a1, zero
	j label114
label120:
	mv a0, a5
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 96(sp)
	ld s9, 104(sp)
	ld s7, 112(sp)
	ld s8, 120(sp)
	ld s4, 128(sp)
	ld s3, 136(sp)
	ld s2, 40(sp)
	ld s5, 144(sp)
	ld s0, 88(sp)
	ld s6, 152(sp)
	ld s1, 160(sp)
	addi sp, sp, 168
	ret
