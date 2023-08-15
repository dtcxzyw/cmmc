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
.align 8
cmmc_parallel_body_payload_0:
	.zero	9
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[104]
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s3, 16(sp)
	sd s4, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel949:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel950:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s5, 5
	li s1, 3
	lui s0, 1
	mv t1, a0
	addiw t2, a0, -3
pcrel951:
	auipc a1, %pcrel_hi(A)
	sd a0, 104(sp)
	addi s2, a1, %pcrel_lo(pcrel951)
pcrel952:
	auipc a0, %pcrel_hi(B)
pcrel953:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	sd t2, 112(sp)
	addi t3, a0, %pcrel_lo(pcrel952)
	addi s4, a1, %pcrel_lo(pcrel953)
pcrel954:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
	sd t3, 120(sp)
	addi s3, a0, %pcrel_lo(pcrel954)
	ble t1, zero, label513
	mv s8, s2
	mv s9, zero
	mv s10, s2
	mv s11, zero
	j label581
.p2align 2
label796:
	addiw s9, s9, 1
	ld t1, 104(sp)
	ble t1, s9, label903
	add s8, s8, s0
	mv s11, zero
	mv s10, s8
.p2align 2
label581:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t1, 104(sp)
	ble t1, a1, label796
	addi s10, s10, 4
	mv s11, a1
	j label581
label513:
	li a0, 65
	jal _sysy_starttime
	mv s9, zero
pcrel955:
	auipc a1, %pcrel_hi(C)
	addi s8, a1, %pcrel_lo(pcrel955)
	j label514
.p2align 2
label563:
	addi a5, a5, 4
.p2align 2
label560:
	sh2add t2, t0, a0
	lw t1, 0(a5)
	addiw t0, t0, 1
	lw t3, 0(t2)
	mulw t5, a1, t3
	addw t4, t1, t5
	sw t4, 0(a5)
	ld t1, 104(sp)
	bgt t1, t0, label563
	add a3, a3, s0
	mv a5, a4
	bgt t1, a4, label553
	addiw a2, a2, 1
	bgt t1, a2, label552
label706:
	addiw s9, s9, 1
	bge s9, s5, label573
.p2align 2
label514:
	ld t1, 104(sp)
	ble t1, zero, label572
	mv a0, zero
pcrel956:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw t1, %pcrel_lo(pcrel956)(s6)
	mv a1, t1
	mv a2, s3
	jal cmmcParallelFor
	mv a2, zero
	ld t3, 120(sp)
	mv a1, t3
	mv a3, s2
	mv a5, zero
	ld t1, 104(sp)
	bgt t1, zero, label523
	li a2, 1
	bgt t1, a2, label543
	j label544
.p2align 2
label554:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	ble t1, a4, label898
.p2align 2
label553:
	sh2add t0, a2, a3
	addiw a4, a5, 1
	lw a1, 0(t0)
	beq a1, zero, label554
	ld t1, 104(sp)
	ble t1, zero, label897
	slliw t2, a5, 12
	ld t3, 120(sp)
	add t0, t3, t2
	ble t1, s1, label724
	mv a5, t0
	mv t1, zero
.p2align 2
label567:
	sh2add t2, t1, a0
	lw t4, 0(a5)
	addiw t1, t1, 4
	lw t3, 0(t2)
	mulw t6, a1, t3
	addw t5, t4, t6
	sw t5, 0(a5)
	lw t3, 4(a5)
	lw t4, 4(t2)
	mulw t5, a1, t4
	addw t6, t3, t5
	sw t6, 4(a5)
	lw t4, 8(a5)
	lw t3, 8(t2)
	mulw t5, a1, t3
	addw t6, t4, t5
	sw t6, 8(a5)
	lw t3, 12(a5)
	lw a6, 12(t2)
	mulw t4, a1, a6
	addw t5, t3, t4
	sw t5, 12(a5)
	ld t2, 112(sp)
	ble t2, t1, label773
	addi a5, a5, 16
	j label567
.p2align 2
label524:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	ble t1, a4, label891
.p2align 2
label523:
	sh2add t0, a2, a3
	addiw a4, a5, 1
	lw a0, 0(t0)
	beq a0, zero, label524
	ld t1, 104(sp)
	ble t1, zero, label890
	slliw t0, a5, 12
	add a5, s8, t0
	ble t1, s1, label639
	mv t0, a1
	mv t1, zero
	j label537
.p2align 2
label540:
	addi t0, t0, 16
.p2align 2
label537:
	sh2add t2, t1, a5
	addiw t1, t1, 4
	lw t3, 0(t2)
	lw t4, 0(t0)
	mulw t5, a0, t4
	addw t6, t3, t5
	sw t6, 0(t2)
	lw t4, 4(t2)
	lw t3, 4(t0)
	mulw t5, a0, t3
	addw t6, t4, t5
	sw t6, 4(t2)
	lw t3, 8(t2)
	lw t4, 8(t0)
	mulw t6, a0, t4
	addw t5, t3, t6
	sw t5, 8(t2)
	lw t4, 12(t2)
	lw t6, 12(t0)
	mulw t3, a0, t6
	addw t5, t4, t3
	sw t5, 12(t2)
	ld t2, 112(sp)
	bgt t2, t1, label540
	mv t0, t1
	ld t1, 104(sp)
	ble t1, t0, label894
.p2align 2
label529:
	sh2add a5, t0, a5
.p2align 2
label530:
	sh2add t2, t0, a1
	lw t1, 0(a5)
	addiw t0, t0, 1
	lw t5, 0(t2)
	mulw t4, a0, t5
	addw t3, t1, t4
	sw t3, 0(a5)
	ld t1, 104(sp)
	ble t1, t0, label656
	addi a5, a5, 4
	j label530
.p2align 2
label773:
	mv t2, t1
	ld t1, 104(sp)
	ble t1, t2, label901
.p2align 2
label559:
	sh2add a5, t2, t0
	mv t0, t2
	j label560
.p2align 2
label639:
	mv t0, zero
	ld t1, 104(sp)
	bgt t1, zero, label529
	add a3, a3, s0
	mv a5, a4
	bgt t1, a4, label523
	addiw a2, a2, 1
	bgt t1, a2, label543
	j label544
.p2align 2
label724:
	mv t2, zero
	ld t1, 104(sp)
	bgt t1, zero, label559
	add a3, a3, s0
	mv a5, a4
	bgt t1, a4, label553
	addiw a2, a2, 1
	bgt t1, a2, label552
	j label706
.p2align 2
label891:
	addiw a2, a2, 1
	ld t1, 104(sp)
	ble t1, a2, label544
.p2align 2
label543:
	add a1, a1, s0
	mv a3, s2
	mv a5, zero
	ld t1, 104(sp)
	bgt t1, zero, label523
	addiw a2, a2, 1
	bgt t1, a2, label543
	j label544
.p2align 2
label898:
	addiw a2, a2, 1
	ld t1, 104(sp)
	ble t1, a2, label911
.p2align 2
label552:
	add a0, a0, s0
	mv a3, s2
	mv a5, zero
	ld t1, 104(sp)
	bgt t1, zero, label553
	addiw a2, a2, 1
	bgt t1, a2, label552
	j label706
.p2align 2
label656:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	bgt t1, a4, label523
	addiw a2, a2, 1
	bgt t1, a2, label543
	j label544
.p2align 2
label894:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	bgt t1, a4, label523
	addiw a2, a2, 1
	bgt t1, a2, label543
	j label544
.p2align 2
label901:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	bgt t1, a4, label553
	addiw a2, a2, 1
	bgt t1, a2, label552
	j label706
.p2align 2
label544:
	ld t1, 104(sp)
	mv a0, zero
pcrel957:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw t1, %pcrel_lo(pcrel957)(s7)
	mv a1, t1
	mv a2, s4
	jal cmmcParallelFor
	mv a2, zero
	mv a0, s8
	mv a3, s2
	mv a5, zero
	ld t1, 104(sp)
	bgt t1, zero, label553
	li a2, 1
	bgt t1, a2, label552
	j label706
.p2align 2
label890:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	bgt t1, a4, label523
	addiw a2, a2, 1
	bgt t1, a2, label543
	j label544
.p2align 2
label897:
	add a3, a3, s0
	mv a5, a4
	ld t1, 104(sp)
	bgt t1, a4, label553
	addiw a2, a2, 1
	bgt t1, a2, label552
	j label706
label573:
	ld t1, 104(sp)
	ble t1, zero, label783
pcrel958:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a4, 1
pcrel959:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a0, s1, %pcrel_lo(pcrel958)
	addi a2, a3, %pcrel_lo(pcrel959)
	slli a1, t1, 32
	sd a1, %pcrel_lo(pcrel958)(s1)
	sb a4, 8(a0)
	mv a1, t1
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel958)(s1)
label575:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s4, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 128
	ret
label911:
	addiw s9, s9, 1
	blt s9, s5, label514
	j label573
label572:
	addiw s9, s9, 1
	blt s9, s5, label514
	j label573
label903:
	ld t3, 120(sp)
	mv s9, zero
	mv s11, zero
	mv s10, t3
	mv s8, t3
	j label591
.p2align 2
label596:
	addi s10, s10, 4
	mv s11, a1
.p2align 2
label591:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld t1, 104(sp)
	bgt t1, a1, label596
	addiw s9, s9, 1
	ble t1, s9, label513
	add s8, s8, s0
	mv s11, zero
	mv s10, s8
	j label591
label783:
	mv s0, zero
	j label575
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -24
	mv t4, a0
	mv a4, a1
pcrel199:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel200:
	auipc t3, %pcrel_hi(B)
	mv a6, zero
	sd s0, 0(sp)
	slli t1, a0, 12
	addi t2, a3, %pcrel_lo(pcrel199)
	addi t0, t3, %pcrel_lo(pcrel200)
	sd s2, 8(sp)
	li t3, 15
	add a3, t0, t1
	sd s1, 16(sp)
	lui t1, 1
	li t0, 3
	lw a1, 4(t2)
	lb a5, 8(t2)
	addi a0, a1, -18
	addi a2, a1, -3
	bne a5, zero, label6
	j label38
.p2align 2
label37:
	addi t5, t5, 4
.p2align 2
label33:
	lw a7, 0(t5)
	addiw a6, a6, 1
	addw t6, t6, a7
	bgt a1, a6, label37
	mv a6, t6
	addiw t4, t4, 1
	ble a4, t4, label40
.p2align 2
label41:
	add a3, a3, t1
	beq a5, zero, label38
.p2align 2
label6:
	ble a1, t0, label60
	ble a2, t3, label64
	mv t5, a3
	mv t6, zero
	j label23
.p2align 2
label27:
	addi t5, t5, 64
.p2align 2
label23:
	lw s1, 0(t5)
	addiw t6, t6, 16
	lw s2, 4(t5)
	addw a7, a6, s1
	lw s1, 8(t5)
	addw s0, a7, s2
	lw s2, 12(t5)
	addw a6, s0, s1
	lw s0, 16(t5)
	addw a7, a6, s2
	lw s2, 20(t5)
	addw s1, a7, s0
	lw a7, 24(t5)
	addw a6, s1, s2
	lw s1, 28(t5)
	addw s0, a6, a7
	lw s2, 32(t5)
	addw a7, s0, s1
	lw s1, 36(t5)
	addw a6, a7, s2
	lw s0, 40(t5)
	addw a7, a6, s1
	lw s2, 44(t5)
	addw a6, a7, s0
	lw s1, 48(t5)
	addw a7, a6, s2
	lw s2, 52(t5)
	addw s0, a7, s1
	lw s1, 56(t5)
	addw a6, s0, s2
	lw s0, 60(t5)
	addw a7, a6, s1
	addw a6, a7, s0
	bgt a0, t6, label27
	mv a7, t6
	mv s0, a6
	ble a2, t6, label184
.p2align 2
label16:
	sh2add t5, a7, a3
	mv a6, s0
	mv t6, a7
.p2align 2
label17:
	lw s0, 0(t5)
	addiw t6, t6, 4
	lw s2, 4(t5)
	addw a7, a6, s0
	lw s1, 8(t5)
	addw a6, a7, s2
	lw s0, 12(t5)
	addw a7, a6, s1
	addw a6, a7, s0
	ble a2, t6, label86
	addi t5, t5, 16
	j label17
.p2align 2
label86:
	mv a7, t6
	mv t6, a6
	ble a1, a7, label183
.p2align 2
label32:
	sh2add t5, a7, a3
	mv a6, a7
	j label33
label64:
	mv a7, zero
	mv s0, a6
	mv t6, zero
	mv a6, zero
	bgt a2, zero, label16
	bgt a1, zero, label32
	addiw t4, t4, 1
	bgt a4, t4, label41
	j label40
.p2align 2
label184:
	mv a7, t6
	mv t6, a6
	bgt a1, a7, label32
	addiw t4, t4, 1
	bgt a4, t4, label41
	j label40
label38:
	addiw t4, t4, 1
	bgt a4, t4, label41
	j label40
label60:
	mv t6, a6
	mv a7, zero
	mv a6, zero
	bgt a1, zero, label32
	addiw t4, t4, 1
	bgt a4, t4, label41
label40:
	amoadd.w.aqrl a0, a6, (t2)
	ld s0, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label183:
	addiw t4, t4, 1
	bgt a4, t4, label41
	j label40
.p2align 2
cmmc_parallel_body_1:
	mv t2, a0
	mv a4, a1
pcrel354:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel355:
	auipc t1, %pcrel_hi(C)
	slliw t0, a0, 12
	addi a5, t1, %pcrel_lo(pcrel355)
	lw a1, %pcrel_lo(pcrel354)(a3)
	li t1, 15
	add a3, a5, t0
	addi a0, a1, -18
	addi a2, a1, -3
	lui t0, 1
	li a5, 3
	bgt a1, a5, label205
	mv t4, zero
	bgt a1, zero, label224
	j label221
.p2align 2
label213:
	addi t3, t3, 16
.p2align 2
label210:
	addiw t4, t4, 4
	sd zero, 0(t3)
	sd zero, 8(t3)
	bgt a2, t4, label213
	ble a1, t4, label339
.p2align 2
label224:
	sh2add t3, t4, a3
.p2align 2
label225:
	addiw t4, t4, 1
	sw zero, 0(t3)
	ble a1, t4, label299
	addi t3, t3, 4
	j label225
.p2align 2
label299:
	addiw t2, t2, 1
	ble a4, t2, label222
.p2align 2
label223:
	add a3, a3, t0
	ble a1, a5, label341
.p2align 2
label205:
	ble a2, t1, label246
	mv t3, a3
	mv t4, zero
	j label215
.p2align 2
label218:
	addi t3, t3, 64
.p2align 2
label215:
	addiw t4, t4, 16
	sd zero, 0(t3)
	sd zero, 8(t3)
	sd zero, 16(t3)
	sd zero, 24(t3)
	sd zero, 32(t3)
	sd zero, 40(t3)
	sd zero, 48(t3)
	sd zero, 56(t3)
	bgt a0, t4, label218
	mv t5, t4
	ble a2, t4, label340
.p2align 2
label209:
	sh2add t3, t5, a3
	mv t4, t5
	j label210
label246:
	mv t5, zero
	mv t4, zero
	bgt a2, zero, label209
	bgt a1, zero, label224
	addiw t2, t2, 1
	bgt a4, t2, label223
	j label222
.p2align 2
label340:
	bgt a1, t4, label224
	addiw t2, t2, 1
	bgt a4, t2, label223
	j label222
label341:
	mv t4, zero
	bgt a1, zero, label224
label221:
	addiw t2, t2, 1
	bgt a4, t2, label223
label222:
	ret
.p2align 2
label339:
	addiw t2, t2, 1
	bgt a4, t2, label223
	j label222
.p2align 2
cmmc_parallel_body_2:
	mv t2, a0
	mv a4, a1
pcrel510:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel511:
	auipc t1, %pcrel_hi(B)
	slliw t0, a0, 12
	addi a5, t1, %pcrel_lo(pcrel511)
	lw a1, %pcrel_lo(pcrel510)(a3)
	li t1, 15
	add a3, a5, t0
	addi a0, a1, -18
	addi a2, a1, -3
	lui t0, 1
	li a5, 3
	bgt a1, a5, label360
	mv t4, zero
	bgt a1, zero, label376
	j label441
.p2align 2
label368:
	addi t3, t3, 16
.p2align 2
label365:
	addiw t4, t4, 4
	sd zero, 0(t3)
	sd zero, 8(t3)
	bgt a2, t4, label368
	ble a1, t4, label494
.p2align 2
label376:
	sh2add t3, t4, a3
.p2align 2
label377:
	addiw t4, t4, 1
	sw zero, 0(t3)
	ble a1, t4, label448
	addi t3, t3, 4
	j label377
.p2align 2
label448:
	addiw t2, t2, 1
	ble a4, t2, label382
.p2align 2
label383:
	add a3, a3, t0
	ble a1, a5, label498
.p2align 2
label360:
	ble a2, t1, label401
	mv t3, a3
	mv t4, zero
	j label370
.p2align 2
label373:
	addi t3, t3, 64
.p2align 2
label370:
	addiw t4, t4, 16
	sd zero, 0(t3)
	sd zero, 8(t3)
	sd zero, 16(t3)
	sd zero, 24(t3)
	sd zero, 32(t3)
	sd zero, 40(t3)
	sd zero, 48(t3)
	sd zero, 56(t3)
	bgt a0, t4, label373
	mv t5, t4
	ble a2, t4, label495
.p2align 2
label364:
	sh2add t3, t5, a3
	mv t4, t5
	j label365
label401:
	mv t5, zero
	mv t4, zero
	bgt a2, zero, label364
	bgt a1, zero, label376
	addiw t2, t2, 1
	bgt a4, t2, label383
	j label382
.p2align 2
label495:
	bgt a1, t4, label376
	addiw t2, t2, 1
	bgt a4, t2, label383
	j label382
label498:
	mv t4, zero
	bgt a1, zero, label376
label441:
	addiw t2, t2, 1
	bgt a4, t2, label383
label382:
	ret
.p2align 2
label494:
	addiw t2, t2, 1
	bgt a4, t2, label383
	j label382
