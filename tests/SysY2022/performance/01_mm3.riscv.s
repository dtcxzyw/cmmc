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
pcrel614:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel614)
pcrel615:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel615)
	ble s0, zero, label94
	j label411
label94:
	mv s3, zero
	ble s0, zero, label16
label448:
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	j label13
label16:
	li a0, 65
	jal _sysy_starttime
pcrel616:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel616)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label132
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label27
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label132:
	mv a3, zero
	mv a4, zero
	mv a2, s1
	ble s0, zero, label161
	mv a5, zero
	mv t1, s2
	mv t0, s2
	lw a5, 0(s2)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t1, s2, a5
	mv t0, t1
	lw a5, 0(t1)
	bne a5, zero, label34
	j label425
label161:
	mv a2, zero
	ble s0, zero, label234
	mv a4, zero
	mv a5, zero
	mv a3, s1
	li a4, 4
	ble s0, a4, label51
	mv a5, s1
	sw zero, 0(s1)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label51
	j label581
label234:
	mv a3, zero
	mv a4, zero
	mv a2, a0
	ble s0, zero, label56
	mv a5, zero
	mv t0, s2
	mv t1, s2
	lw a5, 0(s2)
	bne a5, zero, label75
	li a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	mv t1, t0
	lw a5, 0(t0)
	bne a5, zero, label75
	j label441
label56:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label268
	mv a2, zero
	ble s0, zero, label132
	mv a4, zero
	mv a5, zero
	mv a3, a0
	li a4, 4
	ble s0, a4, label27
	mv a5, a0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label268:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label71
	mv a2, zero
	mv a3, zero
	mv a4, zero
	mv a1, s1
	li a2, 4
	ble s0, a2, label66
	j label65
label441:
	addiw a4, a4, 1
	ble s0, a4, label84
label511:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	j label537
label75:
	ble s0, zero, label76
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label327
	j label442
label327:
	mv t1, zero
	mv t2, t0
	mv t5, a2
	lw t3, 0(t0)
	li t1, 1
	lw t4, 0(a2)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t0)
	ble s0, t1, label76
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label76
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label76
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label76
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label76
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label76
	j label81
label442:
	li t1, 4
	mv t3, zero
label78:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 0(t2)
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
	ble s0, t2, label81
	mv t3, t1
	mv t1, t2
	j label78
label81:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t5)
	mulw t6, a5, t4
	addw t3, t3, t6
	sw t3, 0(t2)
	ble s0, t1, label76
	j label81
label84:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label56
	mv a4, zero
	ble s0, zero, label84
	mv a5, zero
	mv t0, s2
	sh2add t1, a3, s2
	lw a5, 0(t1)
	bne a5, zero, label75
	li a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	j label511
label492:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label34
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
	mv a5, zero
	mv t1, s2
	sh2add t0, a3, s2
	lw a5, 0(t0)
	bne a5, zero, label34
	li a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label43
	j label492
label552:
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label34
	j label523
label425:
	addiw a4, a4, 1
	ble s0, a4, label43
	j label492
label537:
	addiw a4, a4, 1
	ble s0, a4, label84
	j label569
label76:
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	addiw a4, a4, 1
	ble s0, a4, label84
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	j label537
label569:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label75
	j label537
label34:
	ble s0, zero, label41
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label182
	li t1, 4
	mv t3, zero
	j label38
label182:
	mv t1, zero
	j label36
label38:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw t5, a5, t6
	addw a6, t4, t5
	sw a6, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw a6, a5, t5
	addw t6, t4, a6
	sw t6, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t6, a5, a6
	addw t5, t4, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t3, a5, t5
	addw t4, t4, t3
	sw t4, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label36
	mv t3, t1
	mv t1, t2
	j label38
label36:
	sh2add t2, t1, t0
	sh2add t5, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t5)
	mulw t4, a5, t6
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label41
	j label36
label41:
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label34
	addiw a4, a4, 1
	ble s0, a4, label43
	slliw a5, a4, 12
	add t1, s2, a5
	sh2add t0, a3, t1
	lw a5, 0(t0)
	bne a5, zero, label34
	j label523
label581:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label51
	j label581
label545:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label47:
	addiw a2, a2, 1
	ble s0, a2, label234
	ble s0, zero, label47
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	li a4, 4
	ble s0, a4, label51
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label51
	j label581
label22:
	addiw a2, a2, 1
	ble s0, a2, label132
	ble s0, zero, label22
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	li a4, 4
	ble s0, a4, label27
	mv a5, a3
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label27
	j label545
label13:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label15
	j label13
label51:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label47
	j label51
label27:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label22
	j label27
label65:
	sh2add a3, a3, a1
	lw t0, 0(a3)
	lw t1, 4(a3)
	addw a5, a4, t0
	lw t0, 8(a3)
	addw a4, a5, t1
	lw t1, 12(a3)
	addw a5, a4, t0
	mv a3, a2
	addw a4, a5, t1
	addiw a2, a2, 4
	ble s0, a2, label66
	j label65
label66:
	sh2add a2, a3, a1
	addiw a3, a3, 1
	lw a5, 0(a2)
	addw a4, a4, a5
	ble s0, a3, label304
	j label66
label304:
	mv s2, a4
label69:
	addiw a0, a0, 1
	ble s0, a0, label71
	ble s0, zero, label69
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	li a2, 4
	ble s0, a2, label66
	j label65
label5:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label5
	j label411
label15:
	addiw s3, s3, 1
	ble s0, s3, label16
	ble s0, zero, label15
	j label448
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
label7:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label5
	j label7
label71:
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
