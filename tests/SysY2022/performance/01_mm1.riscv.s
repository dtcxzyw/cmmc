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
pcrel590:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel590)
pcrel591:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel591)
	ble s0, zero, label94
	ble s0, zero, label8
	j label411
label94:
	mv s3, zero
	ble s0, zero, label11
	ble s0, zero, label84
	j label448
label11:
	li a0, 65
	jal _sysy_starttime
pcrel592:
	auipc a1, %pcrel_hi(C)
	addi a0, a1, %pcrel_lo(pcrel592)
	mv a1, zero
	mv a2, zero
	ble s0, zero, label118
	ble s0, zero, label17
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label22
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label548
label118:
	mv a3, zero
	slliw a4, zero, 12
	add a2, s1, a4
	ble s0, zero, label147
	mv a4, zero
	ble s0, zero, label79
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label71
	addiw a4, zero, 1
	ble s0, a4, label79
	j label294
label147:
	mv a2, zero
	ble s0, zero, label151
	ble s0, zero, label29
	slliw a4, zero, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label34
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label34
	j label555
label151:
	mv a3, zero
	slliw a4, zero, 12
	add a2, a0, a4
	ble s0, zero, label38
	mv a4, zero
	ble s0, zero, label66
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, zero, t0
	lw a5, 0(t1)
	bne a5, zero, label57
	addiw a4, zero, 1
	ble s0, a4, label66
	j label225
label38:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label185
	mv a2, zero
	ble s0, zero, label118
	ble s0, zero, label17
	slliw a4, zero, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label22
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label548
label185:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label53
	ble s0, zero, label51
	slli a2, zero, 12
	mv a3, zero
	mv a4, zero
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label48
	j label47
label66:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, a0, a4
	ble s0, a3, label38
	mv a4, zero
	ble s0, zero, label66
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label57
	addiw a4, zero, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label57
	j label433
label294:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label71
label440:
	addiw a4, a4, 1
	ble s0, a4, label79
	j label512
label477:
	li t1, 4
	mv t3, zero
	j label75
label71:
	ble s0, zero, label78
	slliw t1, a4, 12
	li t2, 4
	add t0, a0, t1
	ble s0, t2, label313
	j label477
label313:
	mv t1, zero
	j label73
label75:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t6, 4(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 4(t2)
	lw t4, 8(t2)
	lw a6, 8(t3)
	mulw t5, a5, a6
	addw t6, t4, t5
	sw t6, 8(t2)
	lw t4, 12(t2)
	lw t5, 12(t3)
	mulw t6, a5, t5
	addw t3, t4, t6
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label73
	mv t3, t1
	mv t1, t2
	j label75
label79:
	addiw a3, a3, 1
	slliw a4, a3, 12
	add a2, s1, a4
	ble s0, a3, label147
	mv a4, zero
	ble s0, zero, label79
	slliw a5, zero, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label71
	addiw a4, zero, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label71
	j label440
label73:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label78
	j label73
label78:
	addiw a4, a4, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label71
	addiw a4, a4, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label71
	addiw a4, a4, 1
	ble s0, a4, label79
	j label512
label225:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label57
label433:
	addiw a4, a4, 1
	ble s0, a4, label66
	j label504
label57:
	ble s0, zero, label58
	slliw t1, a4, 12
	li t2, 4
	add t0, s1, t1
	ble s0, t2, label244
	li t1, 4
	mv t3, zero
	j label62
label244:
	mv t1, zero
label60:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t6, 0(t4)
	mulw t5, a5, t6
	addw t3, t3, t5
	sw t3, 0(t2)
	ble s0, t1, label58
	j label60
label62:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t6, 0(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t6, a5, t5
	addw a6, t4, t6
	sw a6, 4(t2)
	lw t4, 8(t2)
	lw t6, 8(t3)
	mulw a6, a5, t6
	addw t5, t4, a6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t3)
	mulw t5, a5, t6
	addw t3, t4, t5
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label60
	mv t3, t1
	mv t1, t2
	j label62
label504:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label57
	j label531
label512:
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label71
	addiw a4, a4, 1
	ble s0, a4, label79
	j label512
label531:
	addiw a4, a4, 1
	ble s0, a4, label66
	j label504
label58:
	addiw a4, a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label57
	addiw a4, a4, 1
	ble s0, a4, label66
	slliw a5, a4, 12
	add t0, s2, a5
	sh2add t1, a3, t0
	lw a5, 0(t1)
	bne a5, zero, label57
	addiw a4, a4, 1
	ble s0, a4, label66
	j label504
label555:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label34
	j label555
label548:
	sh2add a5, a5, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label548
label29:
	addiw a2, a2, 1
	ble s0, a2, label151
	ble s0, zero, label29
	slliw a4, a2, 12
	mv a5, zero
	add a3, s1, a4
	addiw a4, zero, 4
	ble s0, a4, label34
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label34
	j label555
label17:
	addiw a2, a2, 1
	ble s0, a2, label118
	ble s0, zero, label17
	slliw a4, a2, 12
	mv a5, zero
	add a3, a0, a4
	addiw a4, zero, 4
	ble s0, a4, label22
	sh2add a5, zero, a3
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label22
	j label548
label34:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label29
	j label34
label22:
	sh2add a4, a5, a3
	addiw a5, a5, 1
	sw zero, 0(a4)
	ble s0, a5, label17
	j label22
label47:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	lw t0, 4(a3)
	addw a4, a4, a5
	addw a5, a4, t0
	lw a4, 8(a3)
	addw t0, a5, a4
	lw a5, 12(a3)
	mv a3, a2
	addw a4, t0, a5
	addiw a2, a2, 4
	ble s0, a2, label48
	j label47
label48:
	sh2add a5, a3, a1
	addiw a3, a3, 1
	lw a2, 0(a5)
	addw a4, a4, a2
	ble s0, a3, label221
	j label48
label221:
	mv s2, a4
label51:
	addiw a0, a0, 1
	ble s0, a0, label53
	ble s0, zero, label51
	slli a2, a0, 12
	mv a3, zero
	mv a4, s2
	add a1, s1, a2
	addiw a2, zero, 4
	ble s0, a2, label48
	j label47
label8:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label8
	j label411
label84:
	addiw s3, s3, 1
	ble s0, s3, label11
	ble s0, zero, label84
	j label448
label411:
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
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
label82:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label82
label53:
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
