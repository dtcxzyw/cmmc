.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
A:
	.zero	4194304
.p2align 3
B:
	.zero	4194304
.p2align 3
C:
	.zero	4194304
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	8
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_4:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
pcrel1399:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1400:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s3, 5
	lui s6, 1
pcrel1401:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	mv s0, a0
	addi s1, a1, %pcrel_lo(pcrel1401)
pcrel1402:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s2, a0, %pcrel_lo(pcrel1402)
	ble s0, zero, label1240
pcrel1403:
	auipc a0, %pcrel_hi(A)
	mv s8, zero
	addi s7, a0, %pcrel_lo(pcrel1403)
	mv s9, s7
	mv s10, zero
	j label1256
.p2align 2
label1271:
	addi s9, s9, 4
.p2align 2
label1256:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label1271
	addiw s8, s8, 1
	ble s0, s8, label1260
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label1256
label1260:
	auipc a0, %pcrel_hi(B)
	mv s8, zero
	addi s7, a0, %pcrel_lo(label1260)
	mv s9, s7
	mv s10, zero
	j label1264
.p2align 2
label1267:
	addi s9, s9, 4
.p2align 2
label1264:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label1267
	addiw s8, s8, 1
	ble s0, s8, label1240
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label1264
label1240:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
	j label1241
label1244:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1404:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	sw s0, %pcrel_lo(label1244)(a0)
	addi a2, a3, %pcrel_lo(pcrel1404)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1245:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(label1245)(s5)
	mv a0, zero
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	ble s0, zero, label1247
pcrel1405:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1406:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	sw s0, %pcrel_lo(pcrel1405)(a0)
	addi a2, a3, %pcrel_lo(pcrel1406)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1247:
	addiw s6, s6, 1
	bge s6, s3, label1248
.p2align 2
label1241:
	ble s0, zero, label1247
pcrel1407:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel1407)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	ble s0, zero, label1245
	j label1244
label1248:
	ble s0, zero, label1308
pcrel1408:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s0, 32
pcrel1409:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(pcrel1408)(s1)
	addi a2, a3, %pcrel_lo(pcrel1409)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1408)(s1)
label1249:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label1308:
	mv s0, zero
	j label1249
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -8
	mv t1, a0
pcrel301:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	lui a2, 1
	sd s0, 0(sp)
	addi a3, a4, %pcrel_lo(pcrel301)
	lw a0, 4(a3)
	bgt a0, zero, label4
	mv t1, zero
label2:
	amoadd.w.aqrl a0, t1, (a3)
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
label4:
	auipc a4, %pcrel_hi(B)
	li t0, 3
	addi a5, a4, %pcrel_lo(label4)
	ble a0, t0, label82
	addiw a4, a0, -3
	addiw t0, a0, -18
	li t2, 15
	ble a4, t2, label6
	slli t3, t1, 12
	mv t4, zero
	add a5, a5, t3
	mv t2, a5
	mv t3, zero
	j label31
.p2align 2
label205:
	addiw t1, t1, 1
	ble a1, t1, label195
.p2align 2
label42:
	add a5, a5, a2
	mv t4, t3
	mv t2, a5
	mv t3, zero
.p2align 2
label31:
	ld t5, 0(t2)
	addiw t3, t3, 16
	ld t6, 8(t2)
	srai s0, t5, 32
	addw a7, t4, t5
	ld t4, 16(t2)
	addw a6, a7, s0
	srai s0, t6, 32
	addw a7, a6, t6
	addw t5, a7, s0
	srai a7, t4, 32
	addw a6, t5, t4
	ld t5, 24(t2)
	addw t6, a6, a7
	ld t4, 32(t2)
	srai s0, t5, 32
	addw a7, t6, t5
	ld t5, 40(t2)
	addw a6, a7, s0
	srai s0, t4, 32
	addw t6, a6, t4
	ld t4, 48(t2)
	addw a7, t6, s0
	srai s0, t5, 32
	addw a6, a7, t5
	ld t5, 56(t2)
	addw t6, a6, s0
	srai s0, t4, 32
	addw a7, t6, t4
	addw a6, a7, s0
	srai a7, t5, 32
	addw t6, a6, t5
	addw t4, t6, a7
	ble t0, t3, label181
	addi t2, t2, 64
	j label31
.p2align 2
label181:
	ble a4, t3, label277
	sh2add t2, t3, a5
.p2align 2
label50:
	ld t6, 0(t2)
	addiw t3, t3, 4
	ld t5, 8(t2)
	srai s0, t6, 32
	addw a6, t4, t6
	addw a7, a6, s0
	srai a6, t5, 32
	addw t6, a7, t5
	addw t4, t6, a6
	ble a4, t3, label224
	addi t2, t2, 16
	j label50
.p2align 2
label224:
	mv t5, t4
	ble a0, t3, label283
.p2align 2
label43:
	sh2add t2, t3, a5
	mv t4, t3
	mv t3, t5
.p2align 2
label44:
	lw t6, 0(t2)
	addiw t4, t4, 1
	addw t3, t3, t6
	ble a0, t4, label205
	addi t2, t2, 4
	j label44
label283:
	mv t3, t5
	addiw t1, t1, 1
	bgt a1, t1, label42
	j label195
label6:
	slli t2, t1, 12
	mv t0, t1
	mv t3, zero
	add a5, a5, t2
	mv t1, a5
	mv t2, zero
	j label11
.p2align 2
label126:
	addiw t0, t0, 1
	ble a1, t0, label282
.p2align 2
label19:
	add a5, a5, a2
	ld t5, 0(a5)
	mv t1, a5
	ld t4, 8(a5)
	srai a7, t5, 32
	addw a6, t2, t5
	li t2, 4
	addw t6, a6, a7
	srai a6, t4, 32
	addw t5, t6, t4
	addw t3, t5, a6
	ble a4, t2, label106
.p2align 2
label15:
	addi t1, t1, 16
.p2align 2
label11:
	ld t5, 0(t1)
	addiw t2, t2, 4
	ld t4, 8(t1)
	srai a7, t5, 32
	addw a6, t3, t5
	addw t6, a6, a7
	srai a6, t4, 32
	addw t5, t6, t4
	addw t3, t5, a6
	bgt a4, t2, label15
.p2align 2
label106:
	ble a0, t2, label275
	sh2add t1, t2, a5
	mv t4, t2
	mv t2, t3
.p2align 2
label21:
	lw t5, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t5
	ble a0, t4, label126
	addi t1, t1, 4
	j label21
label195:
	mv t1, t3
	j label2
label282:
	mv t1, t2
	j label2
label277:
	mv t5, t4
	bgt a0, t3, label43
	j label283
label275:
	mv t2, t3
	addiw t0, t0, 1
	bgt a1, t0, label19
	j label282
label82:
	slli t0, t1, 12
	mv t2, zero
	add a4, a5, t0
	mv t0, a4
	mv a5, t1
	mv t1, zero
	j label60
.p2align 2
label66:
	addi t0, t0, 4
.p2align 2
label60:
	lw t3, 0(t0)
	addiw t2, t2, 1
	addw t1, t1, t3
	bgt a0, t2, label66
	addiw a5, a5, 1
	ble a1, a5, label2
.p2align 2
label65:
	add a4, a4, a2
	li t2, 1
	lw t3, 0(a4)
	mv t0, a4
	addw t1, t1, t3
	bgt a0, t2, label66
	addiw a5, a5, 1
	bgt a1, a5, label65
	j label2
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
pcrel542:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel543:
	auipc a5, %pcrel_hi(C)
	li a3, 3
	lw a0, %pcrel_lo(pcrel542)(a2)
	addi a4, a5, %pcrel_lo(pcrel543)
	lui a2, 1
	bgt a0, a3, label303
	ble a0, zero, label354
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label348
.p2align 2
label351:
	addi a5, a5, 4
.p2align 2
label348:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label351
	addiw a4, a4, 1
	ble a1, a4, label354
.p2align 2
label353:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label351
	addiw a4, a4, 1
	bgt a1, a4, label353
	j label354
label303:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	ble a3, t1, label370
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label308
.p2align 2
label320:
	addi t1, t1, 4
.p2align 2
label317:
	addiw t2, t2, 1
	sw zero, 0(t1)
	bgt a0, t2, label320
	addiw t0, t0, 1
	ble a1, t0, label354
.p2align 2
label315:
	add a4, a4, a2
	li t2, 16
	sd zero, 0(a4)
	mv t1, a4
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	ble a5, t2, label311
.p2align 2
label326:
	addi t1, t1, 64
.p2align 2
label308:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label326
.p2align 2
label311:
	ble a3, t2, label396
	sh2add t1, t2, a4
	mv t3, t2
.p2align 2
label322:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	ble a3, t3, label424
	addi t1, t1, 16
	j label322
.p2align 2
label424:
	ble a0, t3, label520
.p2align 2
label316:
	sh2add t1, t3, a4
	mv t2, t3
	j label317
.p2align 2
label396:
	mv t3, t2
	bgt a0, t2, label316
	addiw t0, t0, 1
	bgt a1, t0, label315
label354:
	ret
label520:
	addiw t0, t0, 1
	bgt a1, t0, label315
	j label354
label370:
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label331
.p2align 2
label447:
	addiw a5, a5, 1
	ble a1, a5, label354
.p2align 2
label341:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label526
.p2align 2
label342:
	addi t0, t0, 16
.p2align 2
label331:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label342
	ble a0, t1, label440
.p2align 2
label335:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label336:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label447
	addi t0, t0, 4
	j label336
label526:
	bgt a0, t1, label335
.p2align 2
label440:
	addiw a5, a5, 1
	bgt a1, a5, label341
	j label354
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -48
	mv t2, a0
	mv a4, a1
pcrel768:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel769:
	auipc t1, %pcrel_hi(C)
pcrel770:
	auipc t3, %pcrel_hi(B)
	sd s1, 0(sp)
pcrel771:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel770)
	addi a3, a1, %pcrel_lo(pcrel771)
	sd s0, 8(sp)
	lui a1, 1
	sd s5, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	lw a0, %pcrel_lo(pcrel768)(a2)
	addi a2, t1, %pcrel_lo(pcrel769)
	addiw t0, a0, -3
	li t1, 3
	bgt a0, t1, label545
	ble a0, zero, label569
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label580
	j label578
.p2align 2
label585:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label749
.p2align 2
label580:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label587
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label582:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label585
	addi t5, t5, 4
	j label582
.p2align 2
label587:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label580
	addiw a5, a5, 1
	ble a4, a5, label569
.p2align 2
label579:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label580
label578:
	addiw a5, a5, 1
	bgt a4, a5, label579
	j label569
label545:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label552
	j label608
.p2align 2
label562:
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label746
.p2align 2
label552:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label553
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label552
	addiw t2, t2, 1
	ble a4, t2, label569
.p2align 2
label568:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label552
label608:
	addiw t2, t2, 1
	bgt a4, t2, label568
	j label569
.p2align 2
label553:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
	j label554
.p2align 2
label565:
	addi t6, t6, 16
.p2align 2
label554:
	lw s1, 0(t6)
	sh2add a7, a6, t5
	addiw a6, a6, 4
	mulw s0, a5, s1
	amoadd.w.aqrl s3, s0, (a7)
	addi s3, a7, 4
	lw s2, 4(t6)
	mulw s1, a5, s2
	addi s2, a7, 8
	amoadd.w.aqrl s5, s1, (s3)
	lw s4, 8(t6)
	mulw s0, a5, s4
	amoadd.w.aqrl s5, s0, (s2)
	addi s0, a7, 12
	lw s3, 12(t6)
	mulw s1, a5, s3
	amoadd.w.aqrl s2, s1, (s0)
	bgt t0, a6, label565
	ble a0, a6, label647
	sh2add t6, a6, t1
.p2align 2
label559:
	lw s0, 0(t6)
	sh2add s1, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s0
	amoadd.w.aqrl s2, a7, (s1)
	ble a0, a6, label562
	addi t6, t6, 4
	j label559
.p2align 2
label647:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label552
	addiw t2, t2, 1
	bgt a4, t2, label568
label569:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label746:
	addiw t2, t2, 1
	bgt a4, t2, label568
	j label569
.p2align 2
label749:
	addiw a5, a5, 1
	bgt a4, a5, label579
	j label569
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
pcrel1011:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1012:
	auipc a5, %pcrel_hi(B)
	li a3, 3
	lw a0, %pcrel_lo(pcrel1011)(a2)
	addi a4, a5, %pcrel_lo(pcrel1012)
	lui a2, 1
	ble a0, a3, label814
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	ble a3, t1, label840
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label778
.p2align 2
label795:
	addi t1, t1, 4
.p2align 2
label792:
	addiw t2, t2, 1
	sw zero, 0(t1)
	bgt a0, t2, label795
	addiw t0, t0, 1
	ble a1, t0, label813
.p2align 2
label790:
	add a4, a4, a2
	li t2, 16
	sd zero, 0(a4)
	mv t1, a4
	sd zero, 8(a4)
	sd zero, 16(a4)
	sd zero, 24(a4)
	sd zero, 32(a4)
	sd zero, 40(a4)
	sd zero, 48(a4)
	sd zero, 56(a4)
	ble a5, t2, label781
.p2align 2
label796:
	addi t1, t1, 64
.p2align 2
label778:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label796
.p2align 2
label781:
	ble a3, t2, label866
	sh2add t1, t2, a4
	mv t3, t2
	j label783
.p2align 2
label786:
	addi t1, t1, 16
.p2align 2
label783:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label786
	ble a0, t3, label990
.p2align 2
label791:
	sh2add t1, t3, a4
	mv t2, t3
	j label792
.p2align 2
label866:
	mv t3, t2
	bgt a0, t2, label791
	addiw t0, t0, 1
	bgt a1, t0, label790
	j label813
label814:
	bgt a0, zero, label815
label813:
	ret
label815:
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label819
.p2align 2
label824:
	addi a5, a5, 4
.p2align 2
label819:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label824
	addiw a4, a4, 1
	ble a1, a4, label813
.p2align 2
label823:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label824
	addiw a4, a4, 1
	bgt a1, a4, label823
	j label813
label990:
	addiw t0, t0, 1
	bgt a1, t0, label790
	j label813
label840:
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label801
.p2align 2
label917:
	addiw a5, a5, 1
	ble a1, a5, label813
.p2align 2
label811:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label996
.p2align 2
label812:
	addi t0, t0, 16
.p2align 2
label801:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label812
	ble a0, t1, label910
.p2align 2
label805:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label806:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label917
	addi t0, t0, 4
	j label806
label996:
	bgt a0, t1, label805
.p2align 2
label910:
	addiw a5, a5, 1
	bgt a1, a5, label811
	j label813
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -40
	mv t2, a0
	mv a4, a1
pcrel1235:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1236:
	auipc t1, %pcrel_hi(B)
pcrel1237:
	auipc t3, %pcrel_hi(C)
	sd s1, 0(sp)
pcrel1238:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel1237)
	addi a3, a1, %pcrel_lo(pcrel1238)
	sd s0, 8(sp)
	lui a1, 1
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	lw a0, %pcrel_lo(pcrel1235)(a2)
	addi a2, t1, %pcrel_lo(pcrel1236)
	addiw t0, a0, -3
	li t1, 3
	bgt a0, t1, label1014
	ble a0, zero, label1038
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1049
	j label1047
.p2align 2
label1175:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label1223
.p2align 2
label1049:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	bne t3, zero, label1050
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label1049
	addiw a5, a5, 1
	ble a4, a5, label1038
.p2align 2
label1048:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1049
label1047:
	addiw a5, a5, 1
	bgt a4, a5, label1048
	j label1038
.p2align 2
label1050:
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label1051:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label1175
	addi t5, t5, 4
	j label1051
label1014:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1023
	j label1021
.p2align 2
label1024:
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label1213
.p2align 2
label1023:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	beq a5, zero, label1024
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
	j label1026
.p2align 2
label1037:
	addi t6, t6, 16
.p2align 2
label1026:
	lw s1, 0(t6)
	sh2add a7, a6, t5
	addiw a6, a6, 4
	mulw s0, a5, s1
	amoadd.w.aqrl s3, s0, (a7)
	addi s0, a7, 4
	lw s1, 4(t6)
	mulw s2, a5, s1
	amoadd.w.aqrl s4, s2, (s0)
	addi s2, a7, 8
	lw s3, 8(t6)
	mulw s1, a5, s3
	amoadd.w.aqrl s4, s1, (s2)
	addi s1, a7, 12
	lw s3, 12(t6)
	mulw s0, a5, s3
	amoadd.w.aqrl s2, s0, (s1)
	bgt t0, a6, label1037
	ble a0, a6, label1123
	sh2add t6, a6, t1
	j label1031
.p2align 2
label1034:
	addi t6, t6, 4
.p2align 2
label1031:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label1034
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1023
	addiw t2, t2, 1
	bgt a4, t2, label1022
	j label1038
.p2align 2
label1213:
	addiw t2, t2, 1
	ble a4, t2, label1038
.p2align 2
label1022:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1023
label1021:
	addiw t2, t2, 1
	bgt a4, t2, label1022
	j label1038
.p2align 2
label1123:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1023
	addiw t2, t2, 1
	bgt a4, t2, label1022
label1038:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label1223:
	addiw a5, a5, 1
	bgt a4, a5, label1048
	j label1038
