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
pcrel623:
	auipc a0, %pcrel_hi(A)
	addi s2, a0, %pcrel_lo(pcrel623)
pcrel624:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(pcrel624)
	ble s0, zero, label94
	ble s0, zero, label84
	slli a0, zero, 12
	mv s5, zero
	add s3, s2, a0
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label501
label94:
	mv s3, zero
	ble s0, zero, label11
	ble s0, zero, label10
	slli a0, zero, 12
	mv s5, zero
	add s4, s1, a0
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	j label502
label11:
	li a0, 65
	jal _sysy_starttime
	mv a1, zero
pcrel625:
	auipc a0, %pcrel_hi(C)
	addi a0, a0, %pcrel_lo(pcrel625)
	mv a3, zero
	ble s0, zero, label118
	ble s0, zero, label23
	j label415
label118:
	mv a3, zero
	slliw a2, zero, 12
	add a2, s1, a2
	ble s0, zero, label147
	mv a4, zero
	ble s0, zero, label38
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, zero, 1
	ble s0, a4, label38
	j label150
label29:
	ble s0, zero, label36
	slliw t0, a4, 12
	li t1, 4
	add t0, a0, t0
	ble s0, t1, label168
	j label424
label168:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t4, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
label522:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	j label522
label424:
	li t1, 4
	mv t3, zero
label31:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label34
	mv t3, t1
	mv t1, t2
	j label31
label34:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label36
	j label522
label147:
	mv a3, zero
	ble s0, zero, label220
	ble s0, zero, label42
	slliw a2, zero, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label231
	j label230
label150:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label29
	j label423
label38:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, s1, a2
	ble s0, a3, label147
	mv a4, zero
	ble s0, zero, label38
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, zero, 1
	ble s0, a4, label38
	j label150
label230:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label231
	j label478
label220:
	mv a3, zero
	slliw a2, zero, 12
	add a2, a0, a2
	ble s0, zero, label51
	mv a4, zero
	ble s0, zero, label79
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, zero, a5
	lw a5, 0(a5)
	bne a5, zero, label70
	addiw a4, zero, 1
	ble s0, a4, label79
	j label294
label51:
	addiw a1, a1, 1
	li a2, 5
	bge a1, a2, label254
	mv a3, zero
	ble s0, zero, label118
	ble s0, zero, label23
	slliw a2, zero, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label128
	j label508
label254:
	mv s2, zero
	mv a0, zero
	ble s0, zero, label55
	ble s0, zero, label57
	slli a1, zero, 12
	mv a4, zero
	mv a3, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label269
	j label63
label55:
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
label294:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label70
label443:
	addiw a4, a4, 1
	ble s0, a4, label79
	j label540
label70:
	ble s0, zero, label71
	slliw t0, a4, 12
	li t1, 4
	add t0, s1, t0
	ble s0, t1, label313
	j label444
label313:
	mv t1, zero
	sh2add t2, zero, t0
	sh2add t4, zero, a2
	lw t3, 0(t2)
	addiw t1, zero, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	j label545
label79:
	addiw a3, a3, 1
	slliw a2, a3, 12
	add a2, a0, a2
	ble s0, a3, label51
	mv a4, zero
	ble s0, zero, label79
	slliw a5, zero, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label70
	addiw a4, zero, 1
	ble s0, a4, label79
	j label294
label545:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	j label545
label444:
	li t1, 4
	mv t3, zero
label73:
	sh2add t2, t3, t0
	sh2add t3, t3, a2
	lw t4, 0(t2)
	lw t5, 0(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 0(t2)
	lw t4, 4(t2)
	lw t5, 4(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 4(t2)
	lw t4, 8(t2)
	lw t5, 8(t3)
	mulw t5, a5, t5
	addw t4, t4, t5
	sw t4, 8(t2)
	lw t4, 12(t2)
	lw t3, 12(t3)
	mulw t3, a5, t3
	addw t3, t4, t3
	sw t3, 12(t2)
	addiw t2, t1, 4
	ble s0, t2, label76
	mv t3, t1
	mv t1, t2
	j label73
label76:
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	sh2add t2, t1, t0
	sh2add t4, t1, a2
	lw t3, 0(t2)
	addiw t1, t1, 1
	lw t4, 0(t4)
	mulw t4, a5, t4
	addw t3, t3, t4
	sw t3, 0(t2)
	ble s0, t1, label71
	j label545
label540:
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label70
	j label443
label423:
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label29
	j label423
label231:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label42
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label42
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label42
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label42
label531:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label42
	j label531
label128:
	mv a4, a5
	sh2add a5, a5, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label23
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label23
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label23
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label23
label515:
	sh2add a5, a4, a2
	addiw a4, a4, 1
	sw zero, 0(a5)
	ble s0, a4, label23
	j label515
label71:
	addiw a4, a4, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label70
	addiw a4, a4, 1
	ble s0, a4, label79
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label70
	j label443
label36:
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label29
	addiw a4, a4, 1
	ble s0, a4, label38
	slliw a5, a4, 12
	add a5, s2, a5
	sh2add a5, a3, a5
	lw a5, 0(a5)
	bne a5, zero, label29
	j label423
label42:
	addiw a3, a3, 1
	ble s0, a3, label220
	ble s0, zero, label42
	slliw a2, a3, 12
	mv a5, zero
	add a2, s1, a2
	addiw a4, zero, 4
	ble s0, a4, label231
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label231
label478:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label231
label530:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label231
	j label530
label460:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label128
	j label512
label23:
	addiw a3, a3, 1
	ble s0, a3, label118
	ble s0, zero, label23
	slliw a2, a3, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label128
	sh2add a5, zero, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label128
	j label460
label512:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label128
	j label512
label508:
	sh2add a5, a5, a2
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	mv a5, a4
	addiw a4, a4, 4
	ble s0, a4, label128
	j label460
label269:
	mv a2, a4
	sh2add a4, a4, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label291
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label291
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label291
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label291
label538:
	sh2add a4, a2, a1
	addiw a2, a2, 1
	lw a4, 0(a4)
	addw a3, a3, a4
	ble s0, a2, label291
	j label538
label501:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
label451:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label499
label84:
	addiw s4, s4, 1
	ble s0, s4, label94
	ble s0, zero, label84
	slli a0, s4, 12
	mv s5, zero
	add s3, s2, a0
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label451
label499:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
label551:
	jal getint
	sh2add a1, s5, s3
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label84
	j label551
label413:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	j label455
label10:
	addiw s3, s3, 1
	ble s0, s3, label11
	ble s0, zero, label10
	slli a0, s3, 12
	mv s5, zero
	add s4, s1, a0
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	j label413
label455:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
label506:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	j label506
label502:
	jal getint
	sh2add a1, s5, s4
	addiw s5, s5, 1
	sw a0, 0(a1)
	ble s0, s5, label10
	j label413
label63:
	sh2add a4, a4, a1
	lw a5, 0(a4)
	addw a3, a3, a5
	lw a5, 4(a4)
	addw a3, a3, a5
	lw a5, 8(a4)
	lw a4, 12(a4)
	addw a3, a3, a5
	addw a3, a3, a4
	mv a4, a2
	addiw a2, a2, 4
	ble s0, a2, label269
	j label63
label291:
	mv s2, a3
	addiw a0, a0, 1
	ble s0, a0, label55
	ble s0, zero, label57
	slli a1, a0, 12
	mv a4, zero
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label269
	j label63
label415:
	slliw a2, a3, 12
	mv a5, zero
	add a2, a0, a2
	addiw a4, zero, 4
	ble s0, a4, label128
	j label508
label57:
	addiw a0, a0, 1
	ble s0, a0, label55
	ble s0, zero, label57
	slli a1, a0, 12
	mv a4, zero
	mv a3, s2
	add a1, s1, a1
	addiw a2, zero, 4
	ble s0, a2, label269
	j label63
