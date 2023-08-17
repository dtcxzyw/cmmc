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
pcrel1402:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1403:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s3, 5
	lui s6, 1
pcrel1404:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	mv s0, a0
	addi s1, a1, %pcrel_lo(pcrel1404)
pcrel1405:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s2, a0, %pcrel_lo(pcrel1405)
	ble s0, zero, label1262
pcrel1406:
	auipc a0, %pcrel_hi(A)
	mv s8, zero
	addi s7, a0, %pcrel_lo(pcrel1406)
	mv s9, s7
	mv s10, zero
	j label1246
.p2align 2
label1285:
	addiw s8, s8, 1
	ble s0, s8, label1393
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
.p2align 2
label1246:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	ble s0, s10, label1285
	addi s9, s9, 4
	j label1246
label1262:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
	j label1263
label1265:
	addiw s6, s6, 1
	bge s6, s3, label1266
.p2align 2
label1263:
	ble s0, zero, label1265
pcrel1407:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel1407)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	ble s0, zero, label1272
pcrel1408:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1409:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	sw s0, %pcrel_lo(pcrel1408)(a0)
	addi a2, a3, %pcrel_lo(pcrel1409)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1272:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(label1272)(s5)
	mv a0, zero
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	ble s0, zero, label1265
pcrel1410:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1411:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	sw s0, %pcrel_lo(pcrel1410)(a0)
	addi a2, a3, %pcrel_lo(pcrel1411)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	addiw s6, s6, 1
	blt s6, s3, label1263
label1266:
	ble s0, zero, label1318
pcrel1412:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s0, 32
pcrel1413:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(pcrel1412)(s1)
	addi a2, a3, %pcrel_lo(pcrel1413)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1412)(s1)
label1267:
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
label1393:
	auipc a0, %pcrel_hi(B)
	mv s8, zero
	mv s10, zero
	addi s7, a0, %pcrel_lo(label1393)
	mv s9, s7
	j label1256
.p2align 2
label1261:
	addi s9, s9, 4
.p2align 2
label1256:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label1261
	addiw s8, s8, 1
	ble s0, s8, label1262
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label1256
label1318:
	mv s0, zero
	j label1267
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
	ble a1, t0, label283
.p2align 2
label17:
	add a5, a5, a2
	ld t4, 0(a5)
	mv t1, a5
	ld t5, 8(a5)
	srai a7, t4, 32
	addw a6, t2, t4
	li t2, 4
	addw t6, a6, a7
	srai a6, t5, 32
	addw t4, t6, t5
	addw t3, t4, a6
	ble a4, t2, label104
.p2align 2
label13:
	addi t1, t1, 16
.p2align 2
label9:
	ld t4, 0(t1)
	addiw t2, t2, 4
	ld t5, 8(t1)
	srai a7, t4, 32
	addw a6, t3, t4
	addw t6, a6, a7
	srai a6, t5, 32
	addw t4, t6, t5
	addw t3, t4, a6
	bgt a4, t2, label13
.p2align 2
label104:
	ble a0, t2, label275
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
	ld t5, 0(t2)
	addiw t3, t3, 16
	ld t6, 8(t2)
	srai s0, t5, 32
	addw a6, t4, t5
	ld t4, 16(t2)
	addw a7, a6, s0
	srai s0, t6, 32
	addw a6, a7, t6
	addw t5, a6, s0
	srai a6, t4, 32
	addw t6, t5, t4
	ld t5, 24(t2)
	addw a7, t6, a6
	ld t4, 32(t2)
	srai s0, t5, 32
	addw t6, a7, t5
	ld t5, 40(t2)
	addw a6, t6, s0
	srai s0, t5, 32
	srai t6, t4, 32
	addw a7, a6, t4
	ld t4, 48(t2)
	addw a6, a7, t6
	addw t6, a6, t5
	ld t5, 56(t2)
	addw a7, t6, s0
	srai s0, t4, 32
	addw t6, a7, t4
	srai a7, t5, 32
	addw a6, t6, s0
	addw t6, a6, t5
	addw t4, t6, a7
	ble t0, t3, label179
	addi t2, t2, 64
	j label29
.p2align 2
label179:
	ble a4, t3, label277
	sh2add t2, t3, a5
.p2align 2
label48:
	ld t6, 0(t2)
	addiw t3, t3, 4
	ld t5, 8(t2)
	srai s0, t6, 32
	addw a6, t4, t6
	addw a7, a6, s0
	srai a6, t5, 32
	addw t6, a7, t5
	addw t4, t6, a6
	ble a4, t3, label222
	addi t2, t2, 16
	j label48
.p2align 2
label222:
	mv t5, t4
	ble a0, t3, label284
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
label284:
	mv t3, t5
	addiw t1, t1, 1
	bgt a1, t1, label40
label193:
	mv t1, t3
	j label65
label283:
	mv t1, t2
	j label65
label275:
	mv t2, t3
	addiw t0, t0, 1
	bgt a1, t0, label17
	j label283
label277:
	mv t5, t4
	bgt a0, t3, label41
	j label284
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
pcrel541:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel542:
	auipc a5, %pcrel_hi(C)
	li a3, 3
	lw a0, %pcrel_lo(pcrel541)(a2)
	addi a4, a5, %pcrel_lo(pcrel542)
	lui a2, 1
	bgt a0, a3, label303
	bgt a0, zero, label345
label343:
	ret
label345:
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label349
.p2align 2
label352:
	addi a5, a5, 4
.p2align 2
label349:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label352
	addiw a4, a4, 1
	ble a1, a4, label343
.p2align 2
label354:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label352
	addiw a4, a4, 1
	bgt a1, a4, label354
	j label343
label303:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	bgt a3, t1, label304
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label331
.p2align 2
label447:
	addiw a5, a5, 1
	ble a1, a5, label343
.p2align 2
label341:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label527
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
label527:
	bgt a0, t1, label335
.p2align 2
label440:
	addiw a5, a5, 1
	bgt a1, a5, label341
	j label343
label304:
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label308
.p2align 2
label424:
	addiw t0, t0, 1
	ble a1, t0, label343
.p2align 2
label320:
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
	j label313
.p2align 2
label316:
	addi t1, t1, 16
.p2align 2
label313:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label316
	ble a0, t3, label520
.p2align 2
label321:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label322:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label424
	addi t1, t1, 4
	j label322
.p2align 2
label396:
	mv t3, t2
	bgt a0, t2, label321
	addiw t0, t0, 1
	bgt a1, t0, label320
	j label343
label520:
	addiw t0, t0, 1
	bgt a1, t0, label320
	j label343
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -48
	mv t2, a0
	mv a4, a1
pcrel765:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel766:
	auipc t1, %pcrel_hi(C)
pcrel767:
	auipc t3, %pcrel_hi(B)
	sd s0, 0(sp)
pcrel768:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel767)
	addi a3, a1, %pcrel_lo(pcrel768)
	sd s5, 8(sp)
	lui a1, 1
	sd s1, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	lw a0, %pcrel_lo(pcrel765)(a2)
	addi a2, t1, %pcrel_lo(pcrel766)
	addiw t0, a0, -3
	li t1, 3
	bgt a0, t1, label544
	ble a0, zero, label568
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label579
	j label577
.p2align 2
label584:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label747
.p2align 2
label579:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label586
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label581:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label584
	addi t5, t5, 4
	j label581
.p2align 2
label586:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label579
	addiw a5, a5, 1
	ble a4, a5, label568
.p2align 2
label578:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label579
label577:
	addiw a5, a5, 1
	bgt a4, a5, label578
	j label568
label544:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label553
	j label551
.p2align 2
label565:
	addi t6, t6, 4
.p2align 2
label561:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label565
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label745
.p2align 2
label553:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label621
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label553
	addiw t2, t2, 1
	ble a4, t2, label568
.p2align 2
label552:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label553
label551:
	addiw t2, t2, 1
	bgt a4, t2, label552
	j label568
.p2align 2
label621:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
.p2align 2
label556:
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
	ble t0, a6, label559
	addi t6, t6, 16
	j label556
.p2align 2
label559:
	ble a0, a6, label653
	sh2add t6, a6, t1
	j label561
.p2align 2
label653:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label553
	addiw t2, t2, 1
	bgt a4, t2, label552
label568:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label745:
	addiw t2, t2, 1
	bgt a4, t2, label552
	j label568
.p2align 2
label747:
	addiw a5, a5, 1
	bgt a4, a5, label578
	j label568
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
	bgt a0, a3, label770
	ble a0, zero, label810
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label816
.p2align 2
label819:
	addi a5, a5, 4
.p2align 2
label816:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label819
	addiw a4, a4, 1
	ble a1, a4, label810
.p2align 2
label821:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label819
	addiw a4, a4, 1
	bgt a1, a4, label821
	j label810
label770:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	ble a3, t1, label837
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label775
.p2align 2
label891:
	addiw t0, t0, 1
	ble a1, t0, label810
.p2align 2
label787:
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
	ble a5, t2, label778
.p2align 2
label793:
	addi t1, t1, 64
.p2align 2
label775:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label793
.p2align 2
label778:
	ble a3, t2, label863
	sh2add t1, t2, a4
	mv t3, t2
	j label780
.p2align 2
label783:
	addi t1, t1, 16
.p2align 2
label780:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label783
	ble a0, t3, label987
.p2align 2
label788:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label789:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label891
	addi t1, t1, 4
	j label789
.p2align 2
label863:
	mv t3, t2
	bgt a0, t2, label788
	addiw t0, t0, 1
	bgt a1, t0, label787
label810:
	ret
label987:
	addiw t0, t0, 1
	bgt a1, t0, label787
	j label810
label837:
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label798
.p2align 2
label921:
	addiw a5, a5, 1
	ble a1, a5, label810
.p2align 2
label804:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label995
.p2align 2
label801:
	addi t0, t0, 16
.p2align 2
label798:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label801
	ble a0, t1, label989
.p2align 2
label805:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label806:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label921
	addi t0, t0, 4
	j label806
label995:
	bgt a0, t1, label805
.p2align 2
label989:
	addiw a5, a5, 1
	bgt a1, a5, label804
	j label810
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -40
	mv t2, a0
	mv a4, a1
pcrel1237:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1238:
	auipc a5, %pcrel_hi(A)
pcrel1239:
	auipc t3, %pcrel_hi(C)
	li t1, 3
pcrel1240:
	auipc a1, %pcrel_hi(B)
	addi a3, a5, %pcrel_lo(pcrel1238)
	sd s1, 0(sp)
	addi a5, t3, %pcrel_lo(pcrel1239)
	sd s0, 8(sp)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	lw a0, %pcrel_lo(pcrel1237)(a2)
	addi a2, a1, %pcrel_lo(pcrel1240)
	addiw t0, a0, -3
	lui a1, 1
	bgt a0, t1, label1014
	bgt a0, zero, label1040
label1038:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	addi sp, sp, 40
	ret
label1014:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1023
	j label1021
.p2align 2
label1035:
	addi t6, t6, 4
.p2align 2
label1032:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label1035
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label1222
.p2align 2
label1023:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label1024
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1023
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
label1024:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
	j label1025
.p2align 2
label1028:
	addi t6, t6, 16
.p2align 2
label1025:
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
	bgt t0, a6, label1028
	ble a0, a6, label1213
	sh2add t6, a6, t1
	j label1032
.p2align 2
label1213:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1023
	addiw t2, t2, 1
	bgt a4, t2, label1022
	j label1038
label1040:
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1049
	j label1047
.p2align 2
label1054:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label1217
.p2align 2
label1049:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label1056
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
	ble a0, t6, label1054
	addi t5, t5, 4
	j label1051
.p2align 2
label1056:
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
label1222:
	addiw t2, t2, 1
	bgt a4, t2, label1022
	j label1038
.p2align 2
label1217:
	addiw a5, a5, 1
	bgt a4, a5, label1048
	j label1038
