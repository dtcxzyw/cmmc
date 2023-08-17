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
pcrel1390:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1391:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s3, 5
	lui s6, 1
pcrel1392:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	mv s0, a0
	addi s1, a1, %pcrel_lo(pcrel1392)
pcrel1393:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s2, a0, %pcrel_lo(pcrel1393)
	ble s0, zero, label1250
pcrel1394:
	auipc a0, %pcrel_hi(A)
	mv s8, zero
	addi s7, a0, %pcrel_lo(pcrel1394)
	mv s9, s7
	mv s10, zero
	j label1234
.p2align 2
label1273:
	addiw s8, s8, 1
	ble s0, s8, label1381
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
.p2align 2
label1234:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	ble s0, s10, label1273
	addi s9, s9, 4
	j label1234
label1250:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
	j label1251
label1253:
	addiw s6, s6, 1
	bge s6, s3, label1254
.p2align 2
label1251:
	ble s0, zero, label1253
pcrel1395:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel1395)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	ble s0, zero, label1260
pcrel1396:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1397:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	sw s0, %pcrel_lo(pcrel1396)(a0)
	addi a2, a3, %pcrel_lo(pcrel1397)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1260:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(label1260)(s5)
	mv a0, zero
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	ble s0, zero, label1253
pcrel1398:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1399:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	sw s0, %pcrel_lo(pcrel1398)(a0)
	addi a2, a3, %pcrel_lo(pcrel1399)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	addiw s6, s6, 1
	blt s6, s3, label1251
label1254:
	ble s0, zero, label1306
pcrel1400:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s0, 32
pcrel1401:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(pcrel1400)(s1)
	addi a2, a3, %pcrel_lo(pcrel1401)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1400)(s1)
label1255:
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
label1381:
	auipc a0, %pcrel_hi(B)
	mv s8, zero
	mv s10, zero
	addi s7, a0, %pcrel_lo(label1381)
	mv s9, s7
	j label1244
.p2align 2
label1249:
	addi s9, s9, 4
.p2align 2
label1244:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label1249
	addiw s8, s8, 1
	ble s0, s8, label1250
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label1244
label1306:
	mv s0, zero
	j label1255
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -8
	mv t1, a0
pcrel289:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	lui a2, 1
	sd s0, 0(sp)
	addi a3, a4, %pcrel_lo(pcrel289)
	lw a0, 4(a3)
	bgt a0, zero, label2
	mv t1, zero
label65:
	amoadd.w.aqrl a0, t1, (a3)
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
label2:
	auipc t0, %pcrel_hi(B)
	li a4, 3
	addi a5, t0, %pcrel_lo(label2)
	ble a0, a4, label80
	addiw a4, a0, -3
	addiw t0, a0, -18
	li t2, 15
	bgt a4, t2, label24
	slli t2, t1, 12
	mv t0, t1
	mv t3, zero
	add a5, a5, t2
	mv t1, a5
	mv t2, zero
	j label9
.p2align 2
label124:
	addiw t0, t0, 1
	ble a1, t0, label271
.p2align 2
label17:
	add a5, a5, a2
	lw t6, 0(a5)
	mv t1, a5
	lw a7, 4(a5)
	addw t5, t2, t6
	lw a6, 8(a5)
	li t2, 4
	addw t4, t5, a7
	lw t5, 12(a5)
	addw t6, t4, a6
	addw t3, t6, t5
	ble a4, t2, label104
.p2align 2
label13:
	addi t1, t1, 16
.p2align 2
label9:
	lw t6, 0(t1)
	addiw t2, t2, 4
	lw a7, 4(t1)
	addw t5, t3, t6
	lw a6, 8(t1)
	addw t4, t5, a7
	lw t5, 12(t1)
	addw t6, t4, a6
	addw t3, t6, t5
	bgt a4, t2, label13
.p2align 2
label104:
	ble a0, t2, label263
	sh2add t1, t2, a5
	mv t4, t2
	mv t2, t3
.p2align 2
label19:
	lw t5, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t5
	ble a0, t4, label124
	addi t1, t1, 4
	j label19
label24:
	slli t3, t1, 12
	mv t4, zero
	add a5, a5, t3
	mv t2, a5
	mv t3, zero
	j label29
.p2align 2
label203:
	addiw t1, t1, 1
	ble a1, t1, label193
.p2align 2
label40:
	add a5, a5, a2
	mv t4, t3
	mv t2, a5
	mv t3, zero
.p2align 2
label29:
	lw a6, 0(t2)
	addiw t3, t3, 16
	lw a7, 4(t2)
	addw t6, t4, a6
	lw s0, 8(t2)
	addw t5, t6, a7
	lw a6, 12(t2)
	addw t4, t5, s0
	lw a7, 16(t2)
	addw t6, t4, a6
	lw t4, 20(t2)
	addw t5, t6, a7
	lw a7, 24(t2)
	addw a6, t5, t4
	lw t5, 28(t2)
	addw t4, a6, a7
	lw a6, 32(t2)
	addw t6, t4, t5
	lw a7, 36(t2)
	addw t5, t6, a6
	lw t6, 40(t2)
	addw t4, t5, a7
	lw a7, 44(t2)
	addw a6, t4, t6
	lw t5, 48(t2)
	addw t6, a6, a7
	lw a7, 52(t2)
	addw t4, t6, t5
	lw a6, 56(t2)
	addw t5, t4, a7
	lw a7, 60(t2)
	addw t6, t5, a6
	addw t4, t6, a7
	ble t0, t3, label179
	addi t2, t2, 64
	j label29
.p2align 2
label179:
	ble a4, t3, label265
	sh2add t2, t3, a5
.p2align 2
label48:
	lw t6, 0(t2)
	addiw t3, t3, 4
	lw a7, 4(t2)
	addw t5, t4, t6
	lw t4, 8(t2)
	addw a6, t5, a7
	lw t5, 12(t2)
	addw t6, a6, t4
	addw t4, t6, t5
	ble a4, t3, label222
	addi t2, t2, 16
	j label48
.p2align 2
label222:
	mv t5, t4
	ble a0, t3, label272
.p2align 2
label41:
	sh2add t2, t3, a5
	mv t4, t3
	mv t3, t5
.p2align 2
label42:
	lw t6, 0(t2)
	addiw t4, t4, 1
	addw t3, t3, t6
	ble a0, t4, label203
	addi t2, t2, 4
	j label42
label272:
	mv t3, t5
	addiw t1, t1, 1
	bgt a1, t1, label40
label193:
	mv t1, t3
	j label65
label271:
	mv t1, t2
	j label65
label263:
	mv t2, t3
	addiw t0, t0, 1
	bgt a1, t0, label17
	j label271
label265:
	mv t5, t4
	bgt a0, t3, label41
	j label272
label80:
	slli t0, t1, 12
	mv t2, zero
	add a4, a5, t0
	mv t0, a4
	mv a5, t1
	mv t1, zero
	j label58
.p2align 2
label62:
	addi t0, t0, 4
.p2align 2
label58:
	lw t3, 0(t0)
	addiw t2, t2, 1
	addw t1, t1, t3
	bgt a0, t2, label62
	addiw a5, a5, 1
	ble a1, a5, label65
.p2align 2
label64:
	add a4, a4, a2
	li t2, 1
	lw t3, 0(a4)
	mv t0, a4
	addw t1, t1, t3
	bgt a0, t2, label62
	addiw a5, a5, 1
	bgt a1, a5, label64
	j label65
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
pcrel529:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel530:
	auipc a5, %pcrel_hi(C)
	li a3, 3
	lw a0, %pcrel_lo(pcrel529)(a2)
	addi a4, a5, %pcrel_lo(pcrel530)
	lui a2, 1
	bgt a0, a3, label291
	bgt a0, zero, label333
label331:
	ret
label333:
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label337
.p2align 2
label340:
	addi a5, a5, 4
.p2align 2
label337:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label340
	addiw a4, a4, 1
	ble a1, a4, label331
.p2align 2
label342:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label340
	addiw a4, a4, 1
	bgt a1, a4, label342
	j label331
label291:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	bgt a3, t1, label292
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label319
.p2align 2
label435:
	addiw a5, a5, 1
	ble a1, a5, label331
.p2align 2
label329:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label515
.p2align 2
label330:
	addi t0, t0, 16
.p2align 2
label319:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label330
	ble a0, t1, label428
.p2align 2
label323:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label324:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label435
	addi t0, t0, 4
	j label324
label515:
	bgt a0, t1, label323
.p2align 2
label428:
	addiw a5, a5, 1
	bgt a1, a5, label329
	j label331
label292:
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label296
.p2align 2
label412:
	addiw t0, t0, 1
	ble a1, t0, label331
.p2align 2
label308:
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
	ble a5, t2, label299
.p2align 2
label314:
	addi t1, t1, 64
.p2align 2
label296:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label314
.p2align 2
label299:
	ble a3, t2, label384
	sh2add t1, t2, a4
	mv t3, t2
	j label301
.p2align 2
label304:
	addi t1, t1, 16
.p2align 2
label301:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label304
	ble a0, t3, label508
.p2align 2
label309:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label310:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label412
	addi t1, t1, 4
	j label310
.p2align 2
label384:
	mv t3, t2
	bgt a0, t2, label309
	addiw t0, t0, 1
	bgt a1, t0, label308
	j label331
label508:
	addiw t0, t0, 1
	bgt a1, t0, label308
	j label331
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -48
	mv t2, a0
	mv a4, a1
pcrel753:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel754:
	auipc t1, %pcrel_hi(C)
pcrel755:
	auipc t3, %pcrel_hi(B)
	sd s0, 0(sp)
pcrel756:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel755)
	addi a3, a1, %pcrel_lo(pcrel756)
	sd s5, 8(sp)
	lui a1, 1
	sd s1, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	lw a0, %pcrel_lo(pcrel753)(a2)
	addi a2, t1, %pcrel_lo(pcrel754)
	addi t0, a0, -3
	li t1, 3
	bgt a0, t1, label532
	ble a0, zero, label556
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label567
	j label565
.p2align 2
label572:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label735
.p2align 2
label567:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label574
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label569:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label572
	addi t5, t5, 4
	j label569
.p2align 2
label574:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label567
	addiw a5, a5, 1
	ble a4, a5, label556
.p2align 2
label566:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label567
label565:
	addiw a5, a5, 1
	bgt a4, a5, label566
	j label556
label532:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label541
	j label539
.p2align 2
label553:
	addi t6, t6, 4
.p2align 2
label549:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label553
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label733
.p2align 2
label541:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label609
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label541
	addiw t2, t2, 1
	ble a4, t2, label556
.p2align 2
label540:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label541
label539:
	addiw t2, t2, 1
	bgt a4, t2, label540
	j label556
.p2align 2
label609:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
.p2align 2
label544:
	lw s0, 0(t6)
	sh2add a7, a6, t5
	addiw a6, a6, 4
	mulw s1, a5, s0
	amoadd.w.aqrl s3, s1, (a7)
	addi s3, a7, 4
	lw s2, 4(t6)
	mulw s0, a5, s2
	addi s2, a7, 8
	amoadd.w.aqrl s5, s0, (s3)
	lw s4, 8(t6)
	mulw s1, a5, s4
	amoadd.w.aqrl s5, s1, (s2)
	addi s1, a7, 12
	lw s3, 12(t6)
	mulw s0, a5, s3
	amoadd.w.aqrl s2, s0, (s1)
	ble t0, a6, label547
	addi t6, t6, 16
	j label544
.p2align 2
label547:
	ble a0, a6, label641
	sh2add t6, a6, t1
	j label549
.p2align 2
label641:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label541
	addiw t2, t2, 1
	bgt a4, t2, label540
label556:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label733:
	addiw t2, t2, 1
	bgt a4, t2, label540
	j label556
.p2align 2
label735:
	addiw a5, a5, 1
	bgt a4, a5, label566
	j label556
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
pcrel999:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1000:
	auipc a5, %pcrel_hi(B)
	li a3, 3
	lw a0, %pcrel_lo(pcrel999)(a2)
	addi a4, a5, %pcrel_lo(pcrel1000)
	lui a2, 1
	bgt a0, a3, label758
	ble a0, zero, label798
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label804
.p2align 2
label807:
	addi a5, a5, 4
.p2align 2
label804:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label807
	addiw a4, a4, 1
	ble a1, a4, label798
.p2align 2
label809:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label807
	addiw a4, a4, 1
	bgt a1, a4, label809
	j label798
label758:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	ble a3, t1, label825
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label763
.p2align 2
label879:
	addiw t0, t0, 1
	ble a1, t0, label798
.p2align 2
label775:
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
	ble a5, t2, label766
.p2align 2
label781:
	addi t1, t1, 64
.p2align 2
label763:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label781
.p2align 2
label766:
	ble a3, t2, label851
	sh2add t1, t2, a4
	mv t3, t2
	j label768
.p2align 2
label771:
	addi t1, t1, 16
.p2align 2
label768:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label771
	ble a0, t3, label975
.p2align 2
label776:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label777:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label879
	addi t1, t1, 4
	j label777
.p2align 2
label851:
	mv t3, t2
	bgt a0, t2, label776
	addiw t0, t0, 1
	bgt a1, t0, label775
label798:
	ret
label975:
	addiw t0, t0, 1
	bgt a1, t0, label775
	j label798
label825:
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label786
.p2align 2
label909:
	addiw a5, a5, 1
	ble a1, a5, label798
.p2align 2
label792:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label983
.p2align 2
label789:
	addi t0, t0, 16
.p2align 2
label786:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label789
	ble a0, t1, label977
.p2align 2
label793:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label794:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label909
	addi t0, t0, 4
	j label794
label983:
	bgt a0, t1, label793
.p2align 2
label977:
	addiw a5, a5, 1
	bgt a1, a5, label792
	j label798
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -40
	mv t2, a0
	mv a4, a1
pcrel1225:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1226:
	auipc a5, %pcrel_hi(A)
pcrel1227:
	auipc t3, %pcrel_hi(C)
	li t1, 3
pcrel1228:
	auipc a1, %pcrel_hi(B)
	addi a3, a5, %pcrel_lo(pcrel1226)
	sd s1, 0(sp)
	addi a5, t3, %pcrel_lo(pcrel1227)
	sd s0, 8(sp)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	lw a0, %pcrel_lo(pcrel1225)(a2)
	addi a2, a1, %pcrel_lo(pcrel1228)
	addi t0, a0, -3
	lui a1, 1
	bgt a0, t1, label1002
	bgt a0, zero, label1028
label1026:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	addi sp, sp, 40
	ret
label1002:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1011
	j label1009
.p2align 2
label1023:
	addi t6, t6, 4
.p2align 2
label1020:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label1023
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label1210
.p2align 2
label1011:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label1012
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1011
	addiw t2, t2, 1
	ble a4, t2, label1026
.p2align 2
label1010:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1011
label1009:
	addiw t2, t2, 1
	bgt a4, t2, label1010
	j label1026
.p2align 2
label1012:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
	j label1013
.p2align 2
label1016:
	addi t6, t6, 16
.p2align 2
label1013:
	lw s1, 0(t6)
	sh2add a7, a6, t5
	addiw a6, a6, 4
	mulw s0, a5, s1
	amoadd.w.aqrl s3, s0, (a7)
	addi s3, a7, 4
	lw s2, 4(t6)
	mulw s1, a5, s2
	amoadd.w.aqrl s4, s1, (s3)
	addi s3, a7, 8
	lw s2, 8(t6)
	mulw s0, a5, s2
	amoadd.w.aqrl s4, s0, (s3)
	addi s0, a7, 12
	lw s2, 12(t6)
	mulw s1, a5, s2
	amoadd.w.aqrl s3, s1, (s0)
	bgt t0, a6, label1016
	ble a0, a6, label1201
	sh2add t6, a6, t1
	j label1020
.p2align 2
label1201:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1011
	addiw t2, t2, 1
	bgt a4, t2, label1010
	j label1026
label1028:
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1037
	j label1035
.p2align 2
label1042:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label1205
.p2align 2
label1037:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label1044
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label1039:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label1042
	addi t5, t5, 4
	j label1039
.p2align 2
label1044:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label1037
	addiw a5, a5, 1
	ble a4, a5, label1026
.p2align 2
label1036:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1037
label1035:
	addiw a5, a5, 1
	bgt a4, a5, label1036
	j label1026
.p2align 2
label1210:
	addiw t2, t2, 1
	bgt a4, t2, label1010
	j label1026
.p2align 2
label1205:
	addiw a5, a5, 1
	bgt a4, a5, label1036
	j label1026
