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
pcrel1396:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	lui s6, 1
pcrel1397:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel1398:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	li s3, 5
	mv s0, a0
	addi s1, a1, %pcrel_lo(pcrel1398)
pcrel1399:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s2, a0, %pcrel_lo(pcrel1399)
	ble s0, zero, label1236
pcrel1400:
	auipc a0, %pcrel_hi(A)
	mv s8, zero
	addi s7, a0, %pcrel_lo(pcrel1400)
	mv s9, s7
	mv s10, zero
	j label1252
.p2align 2
label1318:
	addiw s8, s8, 1
	ble s0, s8, label1388
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
.p2align 2
label1252:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	ble s0, s10, label1318
	addi s9, s9, 4
	j label1252
label1236:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
	j label1237
label1239:
	addiw s6, s6, 1
	bge s6, s3, label1240
.p2align 2
label1237:
	ble s0, zero, label1239
pcrel1401:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel1401)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	ble s0, zero, label1246
pcrel1402:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1403:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	sw s0, %pcrel_lo(pcrel1402)(a0)
	addi a2, a3, %pcrel_lo(pcrel1403)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1246:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(label1246)(s5)
	mv a0, zero
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	ble s0, zero, label1239
pcrel1404:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1405:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	sw s0, %pcrel_lo(pcrel1404)(a0)
	addi a2, a3, %pcrel_lo(pcrel1405)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	addiw s6, s6, 1
	blt s6, s3, label1237
label1240:
	ble s0, zero, label1282
pcrel1406:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s0, 32
pcrel1407:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(pcrel1406)(s1)
	addi a2, a3, %pcrel_lo(pcrel1407)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1406)(s1)
label1241:
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
label1388:
	auipc a0, %pcrel_hi(B)
	mv s8, zero
	mv s10, zero
	addi s7, a0, %pcrel_lo(label1388)
	mv s9, s7
	j label1262
.p2align 2
label1267:
	addi s9, s9, 4
.p2align 2
label1262:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label1267
	addiw s8, s8, 1
	ble s0, s8, label1236
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label1262
label1282:
	mv s0, zero
	j label1241
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -8
	mv t1, a0
pcrel294:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	lui a2, 1
	sd s0, 0(sp)
	addi a3, a4, %pcrel_lo(pcrel294)
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
	bgt a0, a4, label3
	slli t0, t1, 12
	mv t2, zero
	add a4, a5, t0
	mv t0, a4
	mv a5, t1
	mv t1, zero
	j label58
.p2align 2
label64:
	addi t0, t0, 4
.p2align 2
label58:
	lw t3, 0(t0)
	addiw t2, t2, 1
	addw t1, t1, t3
	bgt a0, t2, label64
	addiw a5, a5, 1
	ble a1, a5, label65
.p2align 2
label63:
	add a4, a4, a2
	li t2, 1
	lw t3, 0(a4)
	mv t0, a4
	addw t1, t1, t3
	bgt a0, t2, label64
	addiw a5, a5, 1
	bgt a1, a5, label63
	j label65
label3:
	addiw a4, a0, -3
	addiw t0, a0, -18
	li t2, 15
	bgt a4, t2, label4
	slli t2, t1, 12
	mv t0, t1
	mv t3, zero
	add a5, a5, t2
	mv t2, zero
	mv t1, a5
	j label38
.p2align 2
label222:
	addiw t0, t0, 1
	ble a1, t0, label281
.p2align 2
label46:
	add a5, a5, a2
	ld t5, 0(a5)
	mv t1, a5
	ld t4, 8(a5)
	srai a7, t5, 32
	addw t6, t2, t5
	li t2, 4
	addw a6, t6, a7
	srai t6, t4, 32
	addw t5, a6, t4
	addw t3, t5, t6
	ble a4, t2, label202
.p2align 2
label42:
	addi t1, t1, 16
.p2align 2
label38:
	ld t5, 0(t1)
	addiw t2, t2, 4
	ld t4, 8(t1)
	srai a7, t5, 32
	addw t6, t3, t5
	addw a6, t6, a7
	srai t6, t4, 32
	addw t5, a6, t4
	addw t3, t5, t6
	bgt a4, t2, label42
.p2align 2
label202:
	ble a0, t2, label277
	sh2add t1, t2, a5
	mv t4, t2
	mv t2, t3
.p2align 2
label48:
	lw t5, 0(t1)
	addiw t4, t4, 1
	addw t2, t2, t5
	ble a0, t4, label222
	addi t1, t1, 4
	j label48
label4:
	slli t2, t1, 12
	mv t4, zero
	add a5, a5, t2
	mv t2, a5
	mv t3, zero
	j label9
.p2align 2
label32:
	addi t2, t2, 64
.p2align 2
label9:
	ld t5, 0(t2)
	addiw t3, t3, 16
	srai a7, t5, 32
	addw t6, t4, t5
	ld t4, 8(t2)
	addw a6, t6, a7
	ld t5, 16(t2)
	srai s0, t4, 32
	addw a7, a6, t4
	addw t6, a7, s0
	srai a7, t5, 32
	addw t4, t6, t5
	ld t6, 24(t2)
	addw a6, t4, a7
	srai s0, t6, 32
	addw a7, a6, t6
	ld t4, 32(t2)
	addw t5, a7, s0
	srai t6, t4, 32
	addw a6, t5, t4
	ld t5, 40(t2)
	addw a7, a6, t6
	ld t4, 48(t2)
	srai s0, t5, 32
	addw t6, a7, t5
	ld t5, 56(t2)
	addw a6, t6, s0
	srai s0, t4, 32
	addw a7, a6, t4
	addw t6, a7, s0
	srai a7, t5, 32
	addw a6, t6, t5
	addw t4, a6, a7
	bgt t0, t3, label32
	ble a4, t3, label144
	sh2add t2, t3, a5
	j label27
.p2align 2
label31:
	addi t2, t2, 16
.p2align 2
label27:
	ld t6, 0(t2)
	addiw t3, t3, 4
	ld t5, 8(t2)
	srai s0, t6, 32
	addw a7, t4, t6
	addw a6, a7, s0
	srai a7, t5, 32
	addw t6, a6, t5
	addw t4, t6, a7
	bgt a4, t3, label31
	mv t5, t4
	ble a0, t3, label148
.p2align 2
label20:
	sh2add t2, t3, a5
	mv t4, t3
	mv t3, t5
	j label21
.p2align 2
label25:
	addi t2, t2, 4
.p2align 2
label21:
	lw t6, 0(t2)
	addiw t4, t4, 1
	addw t3, t3, t6
	bgt a0, t4, label25
	addiw t1, t1, 1
	ble a1, t1, label153
.p2align 2
label19:
	add a5, a5, a2
	mv t4, t3
	mv t2, a5
	mv t3, zero
	j label9
label148:
	mv t3, t5
	addiw t1, t1, 1
	bgt a1, t1, label19
	j label153
label144:
	mv t5, t4
	bgt a0, t3, label20
	j label148
label153:
	mv t1, t3
	j label65
label281:
	mv t1, t2
	j label65
label277:
	mv t2, t3
	addiw t0, t0, 1
	bgt a1, t0, label46
	j label281
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
pcrel534:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel535:
	auipc a5, %pcrel_hi(C)
	li a3, 3
	lw a0, %pcrel_lo(pcrel534)(a2)
	addi a4, a5, %pcrel_lo(pcrel535)
	lui a2, 1
	bgt a0, a3, label296
	bgt a0, zero, label338
label336:
	ret
label338:
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label342
.p2align 2
label345:
	addi a5, a5, 4
.p2align 2
label342:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label345
	addiw a4, a4, 1
	ble a1, a4, label336
.p2align 2
label347:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label345
	addiw a4, a4, 1
	bgt a1, a4, label347
	j label336
label296:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	bgt a3, t1, label297
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label324
.p2align 2
label440:
	addiw a5, a5, 1
	ble a1, a5, label336
.p2align 2
label334:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label521
.p2align 2
label335:
	addi t0, t0, 16
.p2align 2
label324:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label335
	ble a0, t1, label433
.p2align 2
label328:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label329:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label440
	addi t0, t0, 4
	j label329
label521:
	bgt a0, t1, label328
.p2align 2
label433:
	addiw a5, a5, 1
	bgt a1, a5, label334
	j label336
label297:
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label301
.p2align 2
label316:
	addi t1, t1, 4
.p2align 2
label313:
	addiw t2, t2, 1
	sw zero, 0(t1)
	bgt a0, t2, label316
	addiw t0, t0, 1
	ble a1, t0, label336
.p2align 2
label318:
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
	ble a5, t2, label304
.p2align 2
label319:
	addi t1, t1, 64
.p2align 2
label301:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label319
.p2align 2
label304:
	ble a3, t2, label389
	sh2add t1, t2, a4
	mv t3, t2
	j label306
.p2align 2
label309:
	addi t1, t1, 16
.p2align 2
label306:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label309
	ble a0, t3, label513
.p2align 2
label312:
	sh2add t1, t3, a4
	mv t2, t3
	j label313
.p2align 2
label389:
	mv t3, t2
	bgt a0, t2, label312
	addiw t0, t0, 1
	bgt a1, t0, label318
	j label336
label513:
	addiw t0, t0, 1
	bgt a1, t0, label318
	j label336
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -40
	mv t2, a0
	mv a4, a1
pcrel764:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel765:
	auipc t1, %pcrel_hi(C)
pcrel766:
	auipc t3, %pcrel_hi(B)
	sd s1, 0(sp)
pcrel767:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel766)
	addi a3, a1, %pcrel_lo(pcrel767)
	sd s0, 8(sp)
	lui a1, 1
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	lw a0, %pcrel_lo(pcrel764)(a2)
	addi a2, t1, %pcrel_lo(pcrel765)
	addiw t0, a0, -3
	li t1, 3
	ble a0, t1, label562
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label544
	j label600
.p2align 2
label557:
	addi t6, t6, 4
.p2align 2
label553:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label557
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label739
.p2align 2
label544:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label608
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label544
	addiw t2, t2, 1
	ble a4, t2, label561
.p2align 2
label560:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label544
label600:
	addiw t2, t2, 1
	bgt a4, t2, label560
	j label561
.p2align 2
label608:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
.p2align 2
label547:
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
	ble t0, a6, label636
	addi t6, t6, 16
	j label547
.p2align 2
label636:
	ble a0, a6, label738
	sh2add t6, a6, t1
	j label553
.p2align 2
label738:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label544
	addiw t2, t2, 1
	bgt a4, t2, label560
	j label561
label562:
	ble a0, zero, label561
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label572
	j label570
.p2align 2
label698:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label748
.p2align 2
label572:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	bne t3, zero, label573
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label572
	addiw a5, a5, 1
	ble a4, a5, label561
.p2align 2
label571:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label572
label570:
	addiw a5, a5, 1
	bgt a4, a5, label571
	j label561
.p2align 2
label573:
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label574:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label698
	addi t5, t5, 4
	j label574
label561:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label739:
	addiw t2, t2, 1
	bgt a4, t2, label560
	j label561
.p2align 2
label748:
	addiw a5, a5, 1
	bgt a4, a5, label571
	j label561
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
pcrel1007:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1008:
	auipc a5, %pcrel_hi(B)
	li a3, 3
	lw a0, %pcrel_lo(pcrel1007)(a2)
	addi a4, a5, %pcrel_lo(pcrel1008)
	lui a2, 1
	bgt a0, a3, label769
	bgt a0, zero, label811
label809:
	ret
label769:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	bgt a3, t1, label786
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t0, a4
	mv t1, zero
	j label774
.p2align 2
label857:
	addiw a5, a5, 1
	ble a1, a5, label809
.p2align 2
label784:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label991
.p2align 2
label785:
	addi t0, t0, 16
.p2align 2
label774:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label785
	ble a0, t1, label850
.p2align 2
label778:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label779:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label857
	addi t0, t0, 4
	j label779
label991:
	bgt a0, t1, label778
.p2align 2
label850:
	addiw a5, a5, 1
	bgt a1, a5, label784
	j label809
label811:
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label815
.p2align 2
label818:
	addi a5, a5, 4
.p2align 2
label815:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label818
	addiw a4, a4, 1
	ble a1, a4, label809
.p2align 2
label820:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label818
	addiw a4, a4, 1
	bgt a1, a4, label820
	j label809
label786:
	slliw t2, t0, 12
	add a4, a4, t2
	mv t1, a4
	mv t2, zero
	j label790
.p2align 2
label919:
	addiw t0, t0, 1
	ble a1, t0, label809
.p2align 2
label802:
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
	ble a5, t2, label793
.p2align 2
label808:
	addi t1, t1, 64
.p2align 2
label790:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label808
.p2align 2
label793:
	ble a3, t2, label891
	sh2add t1, t2, a4
	mv t3, t2
	j label795
.p2align 2
label798:
	addi t1, t1, 16
.p2align 2
label795:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label798
	ble a0, t3, label988
.p2align 2
label803:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label804:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label919
	addi t1, t1, 4
	j label804
.p2align 2
label891:
	mv t3, t2
	bgt a0, t2, label803
	addiw t0, t0, 1
	bgt a1, t0, label802
	j label809
label988:
	addiw t0, t0, 1
	bgt a1, t0, label802
	j label809
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -40
	mv t2, a0
	mv a4, a1
pcrel1231:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1232:
	auipc t1, %pcrel_hi(B)
pcrel1233:
	auipc t3, %pcrel_hi(C)
	sd s1, 0(sp)
pcrel1234:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel1233)
	addi a3, a1, %pcrel_lo(pcrel1234)
	sd s0, 8(sp)
	lui a1, 1
	sd s2, 16(sp)
	sd s3, 24(sp)
	sd s4, 32(sp)
	lw a0, %pcrel_lo(pcrel1231)(a2)
	addi a2, t1, %pcrel_lo(pcrel1232)
	addiw t0, a0, -3
	li t1, 3
	bgt a0, t1, label1010
	bgt a0, zero, label1036
label1034:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s4, 32(sp)
	addi sp, sp, 40
	ret
label1010:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1019
	j label1017
.p2align 2
label1033:
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label1211
.p2align 2
label1019:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	beq a5, zero, label1033
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
.p2align 2
label1021:
	lw s1, 0(t6)
	sh2add a7, a6, t5
	addiw a6, a6, 4
	mulw s0, a5, s1
	amoadd.w.aqrl s2, s0, (a7)
	addi s2, a7, 4
	lw s3, 4(t6)
	mulw s1, a5, s3
	amoadd.w.aqrl s4, s1, (s2)
	addi s2, a7, 8
	lw s3, 8(t6)
	mulw s0, a5, s3
	amoadd.w.aqrl s4, s0, (s2)
	addi s0, a7, 12
	lw s3, 12(t6)
	mulw s1, a5, s3
	amoadd.w.aqrl s2, s1, (s0)
	ble t0, a6, label1024
	addi t6, t6, 16
	j label1021
.p2align 2
label1024:
	ble a0, a6, label1025
	sh2add t6, a6, t1
.p2align 2
label1027:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	ble a0, a6, label1131
	addi t6, t6, 4
	j label1027
.p2align 2
label1025:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1019
	addiw t2, t2, 1
	bgt a4, t2, label1018
	j label1034
.p2align 2
label1211:
	addiw t2, t2, 1
	ble a4, t2, label1034
.p2align 2
label1018:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1019
label1017:
	addiw t2, t2, 1
	bgt a4, t2, label1018
	j label1034
.p2align 2
label1131:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1019
	addiw t2, t2, 1
	bgt a4, t2, label1018
	j label1034
label1036:
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1045
	j label1043
.p2align 2
label1050:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label1212
.p2align 2
label1045:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label1052
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label1047:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label1050
	addi t5, t5, 4
	j label1047
.p2align 2
label1052:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label1045
	addiw a5, a5, 1
	ble a4, a5, label1034
.p2align 2
label1044:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1045
label1043:
	addiw a5, a5, 1
	bgt a4, a5, label1044
	j label1034
.p2align 2
label1212:
	addiw a5, a5, 1
	bgt a4, a5, label1044
	j label1034
