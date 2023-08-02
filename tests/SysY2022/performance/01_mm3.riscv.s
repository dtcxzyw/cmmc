.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
	sd s9, 56(sp)
	sd s2, 64(sp)
	sd s7, 72(sp)
	sd s10, 80(sp)
	sd s8, 88(sp)
	jal getint
	li s7, 5
	li s5, 16
	li s2, 4
	mv s9, zero
pcrel633:
	auipc a1, %pcrel_hi(A)
	addiw s4, a0, -20
	addiw s0, a0, -4
	mv s1, a0
	addi s6, a1, %pcrel_lo(pcrel633)
pcrel634:
	auipc a0, %pcrel_hi(B)
	addi s3, a0, %pcrel_lo(pcrel634)
	bgt s1, zero, label4
label90:
	mv s10, zero
	j label8
.p2align 2
label4:
	slli a0, s9, 12
	mv s10, zero
	add s8, s6, a0
.p2align 2
label5:
	jal getint
	sh2add a1, s10, s8
	addiw s10, s10, 1
	sw a0, 0(a1)
	bgt s1, s10, label5
	addiw s9, s9, 1
	bgt s1, s9, label4
	j label90
label8:
	bgt s1, s10, label76
label10:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel635:
	auipc a2, %pcrel_hi(C)
	addi a0, a2, %pcrel_lo(pcrel635)
	j label11
.p2align 2
label76:
	slli a1, s10, 12
	mv s9, zero
	add s8, s3, a1
.p2align 2
label77:
	jal getint
	sh2add a1, s9, s8
	addiw s9, s9, 1
	sw a0, 0(a1)
	bgt s1, s9, label77
	addiw s10, s10, 1
	bgt s1, s10, label76
	j label10
.p2align 2
label11:
	mv a3, zero
	bgt s1, zero, label15
	j label111
label580:
	mv s6, zero
	mv a2, zero
	j label60
.p2align 2
label308:
	mv t1, zero
.p2align 2
label55:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw t5, 0(t3)
	mulw a6, a3, t5
	addw t6, t4, a6
	sw t6, 0(t2)
	lw t5, 4(t2)
	lw t4, 4(t3)
	mulw a6, a3, t4
	addw a7, t5, a6
	sw a7, 4(t2)
	lw t6, 8(t2)
	lw t4, 8(t3)
	mulw a6, a3, t4
	addw t5, t6, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a3, t6
	addw a6, t4, t5
	sw a6, 12(t2)
	bgt s0, t1, label55
	mv t2, t1
.p2align 2
label57:
	sh2add t3, t2, t0
	sh2add t5, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw a6, 0(t5)
	mulw t4, a3, a6
	addw t6, t1, t4
	sw t6, 0(t3)
	bgt s1, t2, label57
	addiw a5, a5, 1
	bgt s1, a5, label52
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, a0, a5
	bgt s1, a4, label288
label604:
	addiw a1, a1, 1
	blt a1, s7, label11
	j label580
label60:
	bgt s1, a2, label63
	j label75
.p2align 2
label288:
	mv a5, zero
	ble s1, zero, label51
.p2align 2
label52:
	slliw t0, a5, 12
	add t1, s6, t0
	sh2add t2, a4, t1
	lw a3, 0(t2)
	beq a3, zero, label53
	slliw t1, a5, 12
	add t0, s3, t1
	bgt s1, s2, label308
	j label582
.p2align 2
label53:
	addiw a5, a5, 1
	bgt s1, a5, label52
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, a0, a5
	bgt s1, a4, label288
	addiw a1, a1, 1
	blt a1, s7, label11
	j label580
.p2align 2
label15:
	slliw a5, a3, 12
	add a2, a0, a5
	bgt s1, s2, label19
	mv a4, zero
.p2align 2
label16:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label16
	addiw a3, a3, 1
	bgt s1, a3, label15
.p2align 2
label567:
	mv a4, zero
	mv a5, zero
	mv a2, s3
	bgt s1, zero, label166
	j label165
.p2align 2
label19:
	ble s0, s5, label127
	mv a4, zero
.p2align 2
label20:
	sh2add a5, a4, a2
	addiw a4, a4, 16
	sd zero, 0(a5)
	sd zero, 8(a5)
	sd zero, 16(a5)
	sd zero, 24(a5)
	sd zero, 32(a5)
	sd zero, 40(a5)
	sd zero, 48(a5)
	sd zero, 56(a5)
	bgt s4, a4, label20
.p2align 2
label22:
	sh2add a5, a4, a2
	addiw a4, a4, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt s0, a4, label22
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label16
.p2align 2
label569:
	addiw a3, a3, 1
	bgt s1, a3, label15
	j label567
.p2align 2
label166:
	mv a5, zero
	bgt s1, zero, label28
	j label169
.p2align 2
label572:
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, s3, a5
	bgt s1, a4, label166
	mv a3, zero
	bgt s1, zero, label38
	j label233
.p2align 2
label28:
	slliw t1, a5, 12
	add t0, s6, t1
	sh2add t2, a4, t0
	lw a3, 0(t2)
	beq a3, zero, label29
	add t0, a0, t1
	bgt s1, s2, label185
	j label571
.p2align 2
label29:
	addiw a5, a5, 1
	bgt s1, a5, label28
	j label572
.p2align 2
label185:
	mv t1, zero
.p2align 2
label31:
	sh2add t2, t1, t0
	sh2add t3, t1, a2
	lw t4, 0(t2)
	addiw t1, t1, 4
	lw t5, 0(t3)
	mulw a6, a3, t5
	addw a7, t4, a6
	sw a7, 0(t2)
	lw t6, 4(t2)
	lw t5, 4(t3)
	mulw t4, a3, t5
	addw a6, t6, t4
	sw a6, 4(t2)
	lw t5, 8(t2)
	lw t4, 8(t3)
	mulw t6, a3, t4
	addw a6, t5, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw a6, a3, t6
	addw t5, t4, a6
	sw t5, 12(t2)
	bgt s0, t1, label31
	mv t2, t1
.p2align 2
label33:
	sh2add t3, t2, t0
	sh2add t6, t2, a2
	lw t1, 0(t3)
	addiw t2, t2, 1
	lw t4, 0(t6)
	mulw t5, a3, t4
	addw a6, t1, t5
	sw a6, 0(t3)
	bgt s1, t2, label33
	addiw a5, a5, 1
	bgt s1, a5, label28
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, s3, a5
	bgt s1, a4, label166
label597:
	mv a3, zero
	bgt s1, zero, label38
label233:
	mv a4, zero
	mv a5, zero
	mv a2, a0
	bgt s1, zero, label288
	j label287
.p2align 2
label38:
	slliw a4, a3, 12
	add a2, s3, a4
	ble s1, s2, label238
	ble s0, s5, label241
	mv a4, zero
.p2align 2
label40:
	sh2add a5, a4, a2
	addiw a4, a4, 16
	sd zero, 0(a5)
	sd zero, 8(a5)
	sd zero, 16(a5)
	sd zero, 24(a5)
	sd zero, 32(a5)
	sd zero, 40(a5)
	sd zero, 48(a5)
	sd zero, 56(a5)
	bgt s4, a4, label40
.p2align 2
label42:
	sh2add a5, a4, a2
	addiw a4, a4, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt s0, a4, label42
	mv a5, a4
.p2align 2
label44:
	sh2add t0, a5, a2
	addiw a5, a5, 1
	sw zero, 0(t0)
	bgt s1, a5, label44
.p2align 2
label46:
	addiw a3, a3, 1
	bgt s1, a3, label38
.p2align 2
label579:
	mv a4, zero
	mv a5, zero
	mv a2, a0
	bgt s1, zero, label288
label287:
	addiw a1, a1, 1
	blt a1, s7, label11
	j label580
.p2align 2
label582:
	mv t2, zero
	mv t3, t0
	mv t5, a2
	lw t1, 0(t0)
	li t2, 1
	lw a6, 0(a2)
	mulw t4, a3, a6
	addw t6, t1, t4
	sw t6, 0(t0)
	bgt s1, t2, label57
	addiw a5, a5, 1
	bgt s1, a5, label52
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, a0, a5
	bgt s1, a4, label288
	j label604
.p2align 2
label571:
	mv t2, zero
	mv t3, t0
	mv t6, a2
	lw t1, 0(t0)
	li t2, 1
	lw t4, 0(a2)
	mulw t5, a3, t4
	addw a6, t1, t5
	sw a6, 0(t0)
	bgt s1, t2, label33
	addiw a5, a5, 1
	bgt s1, a5, label28
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, s3, a5
	bgt s1, a4, label166
	j label597
.p2align 2
label63:
	slli a3, a2, 12
	add a0, s3, a3
	bgt s1, s2, label64
	mv a1, zero
	mv a3, s6
	mv a5, a0
	li a1, 1
	lw a4, 0(a0)
	addw a3, s6, a4
	bgt s1, a1, label71
	j label74
.p2align 2
label64:
	ble s0, s5, label368
	mv a1, zero
	mv a4, s6
	j label68
.p2align 2
label65:
	sh2add a3, a1, a0
	addiw a1, a1, 4
	lw a5, 0(a3)
	lw t3, 4(a3)
	addw t0, a4, a5
	lw t2, 8(a3)
	addw t1, t0, t3
	lw t0, 12(a3)
	addw a5, t1, t2
	addw a4, a5, t0
	bgt s0, a1, label65
	mv a3, a4
	sh2add a5, a1, a0
	addiw a1, a1, 1
	lw a4, 0(a5)
	addw a3, a3, a4
	bgt s1, a1, label71
	j label587
.p2align 2
label68:
	sh2add a3, a1, a0
	lw t0, 0(a3)
	addiw a1, a1, 16
	lw t2, 4(a3)
	addw a5, a4, t0
	lw a4, 8(a3)
	addw t1, a5, t2
	lw t2, 12(a3)
	addw t0, t1, a4
	lw t1, 16(a3)
	addw a5, t0, t2
	lw t2, 20(a3)
	addw a4, a5, t1
	lw t3, 24(a3)
	addw t0, a4, t2
	lw t2, 28(a3)
	addw t1, t0, t3
	lw t0, 32(a3)
	addw a5, t1, t2
	lw t2, 36(a3)
	addw a4, a5, t0
	lw t3, 40(a3)
	addw t1, a4, t2
	lw t2, 44(a3)
	addw t0, t1, t3
	lw t1, 48(a3)
	addw a5, t0, t2
	lw t2, 52(a3)
	addw a4, a5, t1
	lw t1, 56(a3)
	addw t0, a4, t2
	lw t2, 60(a3)
	addw a5, t0, t1
	addw a4, a5, t2
	bgt s4, a1, label68
	j label65
.p2align 2
label71:
	sh2add a5, a1, a0
	addiw a1, a1, 1
	lw a4, 0(a5)
	addw a3, a3, a4
	bgt s1, a1, label71
.p2align 2
label74:
	addiw a2, a2, 1
	mv s6, a3
	bgt s1, a2, label63
label75:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s6
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s7, 72(sp)
	ld s10, 80(sp)
	ld s8, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
label51:
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, a0, a5
	bgt s1, a4, label288
	addiw a1, a1, 1
	blt a1, s7, label11
	j label580
.p2align 2
label238:
	mv a5, zero
	mv t0, a2
	li a5, 1
	sw zero, 0(a2)
	bgt s1, a5, label44
	addiw a3, a3, 1
	bgt s1, a3, label38
	j label579
.p2align 2
label241:
	mv a4, zero
	mv a5, a2
	li a4, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt s0, a4, label42
	mv a5, a4
	sh2add t0, a4, a2
	addiw a5, a4, 1
	sw zero, 0(t0)
	bgt s1, a5, label44
	j label46
.p2align 2
label127:
	mv a4, zero
	mv a5, a2
	li a4, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	bgt s0, a4, label22
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	bgt s1, a4, label16
	j label569
.p2align 2
label587:
	addiw a2, a2, 1
	mv s6, a3
	bgt s1, a2, label63
	j label75
label165:
	mv a3, zero
	bgt s1, zero, label38
	j label233
.p2align 2
label169:
	addiw a4, a4, 1
	slliw a5, a4, 12
	add a2, s3, a5
	bgt s1, a4, label166
	j label165
label111:
	mv a4, zero
	mv a5, zero
	mv a2, s3
	bgt s1, zero, label166
	j label165
label368:
	mv a4, s6
	mv a1, zero
	j label65
