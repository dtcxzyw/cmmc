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
.p2align 2
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
pcrel113:
	auipc a2, %pcrel_hi(to)
	mv s6, zero
	sw a0, 0(a1)
pcrel114:
	auipc a1, %pcrel_hi(cap)
	addi a0, a1, %pcrel_lo(pcrel114)
	sh2add a1, s1, s1
	mv s3, a0
	sh3add s8, a1, a0
	addi a0, a2, %pcrel_lo(pcrel113)
	sh3add s7, a1, a0
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
	sh2add a2, s6, s7
	lw a0, 0(a2)
	sh2add a1, a0, s5
	lw a2, 0(a1)
	beq a2, zero, label9
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
	lw a2, 0(a1)
	subw a3, a2, a0
pcrel115:
	auipc a2, %pcrel_hi(rev)
	sw a3, 0(a1)
	sh2add a3, s1, s1
	addi a1, a2, %pcrel_lo(pcrel115)
	sh3add a2, a3, a1
	sh2add a3, s6, s7
	sh2add a1, s6, a2
	lw a2, 0(a3)
	sh2add a3, a2, a2
	lw a1, 0(a1)
	sh3add a2, a3, s3
	sh2add a1, a1, a2
	lw a3, 0(a1)
	addw a2, a0, a3
	sw a2, 0(a1)
	j label2
.globl main
main:
.p2align 2
	addi sp, sp, -168
	sd s1, 160(sp)
	addi s1, sp, 0
	sd s6, 152(sp)
	sd s0, 144(sp)
	addi s0, sp, 48
	sd s5, 88(sp)
	sd s2, 136(sp)
	sd s3, 40(sp)
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
pcrel288:
	auipc a0, %pcrel_hi(to)
	addi s3, a0, %pcrel_lo(pcrel288)
pcrel289:
	auipc a0, %pcrel_hi(cap)
	addi s4, a0, %pcrel_lo(pcrel289)
pcrel290:
	auipc a0, %pcrel_hi(rev)
	addi s5, a0, %pcrel_lo(pcrel290)
	mv a0, zero
.p2align 2
label117:
	sh2add a1, a0, s0
	li a2, 10
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	addiw a1, a0, 8
	addiw a0, a0, 4
	blt a1, a2, label117
	sh2add a1, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	bge a0, a1, label121
label119:
	sh2add a1, a0, s0
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	blt a0, a1, label119
label121:
	bgt s6, zero, label122
	mv a5, zero
	mv a0, zero
	mv a1, s1
	li a2, 10
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	li a1, 8
	li a0, 4
	blt a1, a2, label126
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	blt a0, a1, label128
	j label130
.p2align 2
label122:
	jal getint
	sh2add s7, a0, s0
	mv s8, a0
	jal getint
	mv s9, a0
	jal getint
	addiw s6, s6, -1
	sh2add a2, s8, s8
	mv a1, a0
	sh3add a3, a2, s3
	lw a0, 0(s7)
	sh2add a4, a0, a3
	sh3add a3, a2, s4
	sh3add a2, a2, s5
	sw s9, 0(a4)
	sh2add a4, a0, a3
	sh2add a3, a0, a2
	sw a1, 0(a4)
	sh2add a1, s9, s0
	lw a2, 0(a1)
	sw a2, 0(a3)
	sh2add a3, s9, s9
	sh3add t0, a3, s4
	sh3add a4, a3, s3
	sh3add a3, a3, s5
	sh2add a5, a2, a4
	sh2add a4, a2, t0
	sw s8, 0(a5)
	sh2add a2, a2, a3
	sw zero, 0(a4)
	sw a0, 0(a2)
	addi a0, a0, 1
	sw a0, 0(s7)
	lw a2, 0(a1)
	addi a0, a2, 1
	sw a0, 0(a1)
	bgt s6, zero, label122
	mv a5, zero
	mv a0, zero
	mv a1, s1
	li a2, 10
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	li a1, 8
	li a0, 4
	blt a1, a2, label126
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	blt a0, a1, label128
	j label130
.p2align 2
label126:
	sh2add a1, a0, s1
	li a2, 10
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	addiw a1, a0, 8
	addiw a0, a0, 4
	blt a1, a2, label126
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	bge a0, a1, label130
.p2align 2
label128:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	sw zero, 0(a1)
	li a1, 10
	blt a0, a1, label128
label130:
	li a0, 1
	mv a1, s2
	lui a2, 458752
	mv a3, s0
	mv a4, s1
	jal dfs
	beq a0, zero, label131
	addw a5, a5, a0
	mv a0, zero
	j label126
label131:
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
	ld s3, 40(sp)
	ld s2, 136(sp)
	ld s5, 88(sp)
	ld s0, 144(sp)
	ld s6, 152(sp)
	ld s1, 160(sp)
	addi sp, sp, 168
	ret
