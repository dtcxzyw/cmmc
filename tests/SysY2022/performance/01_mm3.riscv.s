.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	4194304
.align 4
B:
	.zero	4194304
.align 4
C:
	.zero	4194304
.text
.globl main
main:
	addi sp, sp, -56
	sd s0, 48(sp)
	sd s5, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s4, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s4, zero
	mv s0, a0
pcrel610:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel610)
pcrel611:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel611)
	ble s0, zero, label94
	ble s0, zero, label8
	j label411
label94:
	mv s3, zero
	ble s0, zero, label16
	ble s0, zero, label15
	j label448
label16:
	li a0, 65
	jal _sysy_starttime
pcrel612:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel612)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label132
	ble s0, zero, label22
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label27
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label132:
	mv a3, zero
	slliw a4, zero, 12
	add a2, s1, a4
	ble s0, zero, label161
	mv a4, zero
	ble s0, zero, label43
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	j label424
label493:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
label523:
	addiw a4, a4, 1
	ble s0, a4, label43
	j label552
label43:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label161
	mv a4, zero
	ble s0, zero, label43
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, zero, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	j label493
label552:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	j label523
label424:
	addiw a4, a4, 1
	ble s0, a4, label43
	j label493
label161:
	mv a2, zero
	ble s0, zero, label234
	ble s0, zero, label84
	slliw a4, zero, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label81
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label81
	j label580
label234:
	mv a3, zero
	slliw a4, zero, 12
	add a2, a0, a4
	ble s0, zero, label48
	mv a4, zero
	ble s0, zero, label76
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, zero, 1
	ble s0, a4, label76
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label76
label507:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	j label534
label76:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label48
	mv a4, zero
	ble s0, zero, label76
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, zero, 1
	ble s0, a4, label76
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label76
	j label507
label67:
	ble s0, zero, label68
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label304
	j label440
label304:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t5, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	j label73
label440:
	li t1, 4
	mv t3, zero
label70:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label73
	mv t3, t1
	mv t1, t2
	j label70
label73:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label68
	j label73
label68:
	addiw a4, a4, 1
	ble s0, a4, label76
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label76
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	addiw a4, a4, 1
	ble s0, a4, label76
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
label534:
	addiw a4, a4, 1
	ble s0, a4, label76
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label67
	j label534
label35:
	ble s0, zero, label36
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label184
	li t1, 4
	mv t3, zero
label40:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw a6, 0(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t5, a5, t3
	addw t4, t4, t5
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label38
	mv t3, t1
	mv t1, t2
	j label40
label38:
	sh2add t2, t1, t0
	sh2add t6, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t6)
	mulw t5, a5, t4
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label36
	j label38
label36:
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label35
	j label523
label184:
	mv t1, zero
	j label38
label580:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label81
	j label580
label545:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	j label24
label22:
	addiw a2, a2, 1
	ble s0, a2, label132
	ble s0, zero, label22
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label27
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label24:
	addiw a4, a5, 4
	ble s0, a4, label27
	j label545
label81:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label84
	j label81
label84:
	addiw a2, a2, 1
	ble s0, a2, label234
	ble s0, zero, label84
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label81
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label81
	j label580
label48:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label245
	mv a2, zero
	ble s0, zero, label132
	ble s0, zero, label22
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label27
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label245:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label63
	ble s0, zero, label53
	slli a2, zero, 12
	mv a3, zero
	mv a4, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label60
	j label59
label63:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s4, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	addi sp, sp, 56
	ret
label27:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label22
	j label27
label59:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	lw t1, 4(a3)
	addw a4, a4, a5
	addw t0, a4, t1
	lw a4, 8(a3)
	addw a5, t0, a4
	lw t0, 12(a3)
	mv a3, a2
	addw a4, a5, t0
	addiw a2, a2, 4
	ble s0, a2, label60
	j label59
label60:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	ble s0, a3, label282
	j label60
label282:
	mv s2, a4
	addiw a0, a0, 1
	ble s0, a0, label63
	ble s0, zero, label53
	slli a2, a0, 12
	mv a3, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label60
	j label59
label53:
	addiw a0, a0, 1
	ble s0, a0, label63
	ble s0, zero, label53
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label60
	j label59
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
	j label6
label8:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label8
	j label411
label6:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label8
	j label6
label448:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	j label13
label15:
	addiw s3, s3, 1
	ble s0, s3, label16
	ble s0, zero, label15
	j label448
label13:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label15
	j label13
