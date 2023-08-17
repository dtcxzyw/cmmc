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
pcrel1420:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s3, 5
	lui s6, 1
pcrel1421:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1422:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	mv s0, a0
	addi s1, a1, %pcrel_lo(pcrel1422)
pcrel1423:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s2, a0, %pcrel_lo(pcrel1423)
	ble s0, zero, label1280
pcrel1424:
	auipc a0, %pcrel_hi(A)
	mv s8, zero
	addi s7, a0, %pcrel_lo(pcrel1424)
	mv s9, s7
	mv s10, zero
	j label1264
.p2align 2
label1303:
	addiw s8, s8, 1
	ble s0, s8, label1411
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
.p2align 2
label1264:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	ble s0, s10, label1303
	addi s9, s9, 4
	j label1264
label1280:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
	j label1281
label1283:
	addiw s6, s6, 1
	bge s6, s3, label1284
.p2align 2
label1281:
	ble s0, zero, label1283
pcrel1425:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel1425)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	ble s0, zero, label1290
pcrel1426:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1427:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	sw s0, %pcrel_lo(pcrel1426)(a0)
	addi a2, a3, %pcrel_lo(pcrel1427)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
.p2align 2
label1290:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s0, %pcrel_lo(label1290)(s5)
	mv a0, zero
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	ble s0, zero, label1283
pcrel1428:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1429:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	sw s0, %pcrel_lo(pcrel1428)(a0)
	addi a2, a3, %pcrel_lo(pcrel1429)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	addiw s6, s6, 1
	blt s6, s3, label1281
label1284:
	ble s0, zero, label1336
pcrel1430:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	slli a0, s0, 32
pcrel1431:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sd a0, %pcrel_lo(pcrel1430)(s1)
	addi a2, a3, %pcrel_lo(pcrel1431)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1430)(s1)
label1285:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
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
label1411:
	auipc a0, %pcrel_hi(B)
	mv s8, zero
	mv s10, zero
	addi s7, a0, %pcrel_lo(label1411)
	mv s9, s7
	j label1274
.p2align 2
label1279:
	addi s9, s9, 4
.p2align 2
label1274:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s9)
	bgt s0, s10, label1279
	addiw s8, s8, 1
	ble s0, s8, label1280
	add s7, s7, s6
	mv s10, zero
	mv s9, s7
	j label1274
label1336:
	mv s0, zero
	j label1285
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -8
	mv t1, a0
pcrel290:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	lui a2, 1
	sd s0, 0(sp)
	addi a3, a4, %pcrel_lo(pcrel290)
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
pcrel534:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel535:
	auipc a5, %pcrel_hi(C)
	li a3, 3
	lw a0, %pcrel_lo(pcrel534)(a2)
	addi a4, a5, %pcrel_lo(pcrel535)
	lui a2, 1
	bgt a0, a3, label292
	bgt a0, zero, label334
label332:
	ret
label334:
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label338
.p2align 2
label341:
	addi a5, a5, 4
.p2align 2
label338:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label341
	addiw a4, a4, 1
	ble a1, a4, label332
.p2align 2
label343:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label341
	addiw a4, a4, 1
	bgt a1, a4, label343
	j label332
label292:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	bgt a3, t1, label293
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label320
.p2align 2
label436:
	addiw a5, a5, 1
	ble a1, a5, label332
.p2align 2
label330:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label516
.p2align 2
label331:
	addi t0, t0, 16
.p2align 2
label320:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label331
	ble a0, t1, label429
.p2align 2
label324:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label325:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label436
	addi t0, t0, 4
	j label325
label516:
	bgt a0, t1, label324
.p2align 2
label429:
	addiw a5, a5, 1
	bgt a1, a5, label330
	j label332
label293:
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label297
.p2align 2
label413:
	addiw t0, t0, 1
	ble a1, t0, label332
.p2align 2
label309:
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
	ble a5, t2, label300
.p2align 2
label315:
	addi t1, t1, 64
.p2align 2
label297:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label315
.p2align 2
label300:
	ble a3, t2, label385
	sh2add t1, t2, a4
	mv t3, t2
	j label302
.p2align 2
label305:
	addi t1, t1, 16
.p2align 2
label302:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label305
	ble a0, t3, label509
.p2align 2
label310:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label311:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label413
	addi t1, t1, 4
	j label311
.p2align 2
label385:
	mv t3, t2
	bgt a0, t2, label310
	addiw t0, t0, 1
	bgt a1, t0, label309
	j label332
label509:
	addiw t0, t0, 1
	bgt a1, t0, label309
	j label332
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -48
	mv t2, a0
	mv a4, a1
pcrel769:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel770:
	auipc t1, %pcrel_hi(C)
pcrel771:
	auipc t3, %pcrel_hi(B)
	sd s0, 0(sp)
pcrel772:
	auipc a1, %pcrel_hi(A)
	addi a5, t3, %pcrel_lo(pcrel771)
	addi a3, a1, %pcrel_lo(pcrel772)
	sd s5, 8(sp)
	lui a1, 1
	sd s1, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	lw a0, %pcrel_lo(pcrel769)(a2)
	addi a2, t1, %pcrel_lo(pcrel770)
	addi t0, a0, -3
	li t1, 3
	bgt a0, t1, label537
	ble a0, zero, label561
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label572
	j label570
.p2align 2
label577:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label740
.p2align 2
label572:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label579
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
	ble a0, t6, label577
	addi t5, t5, 4
	j label574
label537:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label546
	j label544
.p2align 2
label558:
	addi t6, t6, 4
.p2align 2
label554:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label558
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label738
.p2align 2
label546:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label614
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label546
	j label737
.p2align 2
label614:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
.p2align 2
label549:
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
	ble t0, a6, label552
	addi t6, t6, 16
	j label549
.p2align 2
label552:
	ble a0, a6, label646
	sh2add t6, a6, t1
	j label554
.p2align 2
label737:
	addiw t2, t2, 1
	ble a4, t2, label561
.p2align 2
label545:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label546
label544:
	addiw t2, t2, 1
	bgt a4, t2, label545
label561:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label570:
	addiw a5, a5, 1
	bgt a4, a5, label571
	j label561
.p2align 2
label741:
	addiw a5, a5, 1
	ble a4, a5, label561
.p2align 2
label571:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label572
	j label570
.p2align 2
label646:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label546
	j label744
.p2align 2
label738:
	addiw t2, t2, 1
	bgt a4, t2, label545
	j label561
.p2align 2
label744:
	addiw t2, t2, 1
	bgt a4, t2, label545
	j label561
.p2align 2
label740:
	addiw a5, a5, 1
	bgt a4, a5, label571
	j label561
.p2align 2
label579:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label572
	j label741
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
pcrel1019:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel1020:
	auipc a5, %pcrel_hi(B)
	li a3, 3
	lw a0, %pcrel_lo(pcrel1019)(a2)
	addi a4, a5, %pcrel_lo(pcrel1020)
	lui a2, 1
	bgt a0, a3, label774
	ble a0, zero, label814
	slliw a5, t0, 12
	add a3, a4, a5
	mv a4, t0
	mv a5, a3
	mv t0, zero
	j label820
.p2align 2
label823:
	addi a5, a5, 4
.p2align 2
label820:
	addiw t0, t0, 1
	sw zero, 0(a5)
	bgt a0, t0, label823
	addiw a4, a4, 1
	ble a1, a4, label814
.p2align 2
label825:
	add a3, a3, a2
	li t0, 1
	sw zero, 0(a3)
	mv a5, a3
	bgt a0, t0, label823
	addiw a4, a4, 1
	bgt a1, a4, label825
	j label814
label774:
	addiw a3, a0, -3
	addiw a5, a0, -18
	li t1, 15
	ble a3, t1, label841
	slliw t1, t0, 12
	add a4, a4, t1
	mv t1, a4
	mv t2, zero
	j label779
.p2align 2
label895:
	addiw t0, t0, 1
	ble a1, t0, label814
.p2align 2
label791:
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
	ble a5, t2, label782
.p2align 2
label797:
	addi t1, t1, 64
.p2align 2
label779:
	addiw t2, t2, 16
	sd zero, 0(t1)
	sd zero, 8(t1)
	sd zero, 16(t1)
	sd zero, 24(t1)
	sd zero, 32(t1)
	sd zero, 40(t1)
	sd zero, 48(t1)
	sd zero, 56(t1)
	bgt a5, t2, label797
.p2align 2
label782:
	ble a3, t2, label867
	sh2add t1, t2, a4
	mv t3, t2
	j label784
.p2align 2
label787:
	addi t1, t1, 16
.p2align 2
label784:
	addiw t3, t3, 4
	sd zero, 0(t1)
	sd zero, 8(t1)
	bgt a3, t3, label787
	ble a0, t3, label991
.p2align 2
label792:
	sh2add t1, t3, a4
	mv t2, t3
.p2align 2
label793:
	addiw t2, t2, 1
	sw zero, 0(t1)
	ble a0, t2, label895
	addi t1, t1, 4
	j label793
.p2align 2
label867:
	mv t3, t2
	bgt a0, t2, label792
	addiw t0, t0, 1
	bgt a1, t0, label791
label814:
	ret
label991:
	addiw t0, t0, 1
	bgt a1, t0, label791
	j label814
label841:
	slliw t1, t0, 12
	mv a5, t0
	add a4, a4, t1
	mv t1, zero
	mv t0, a4
	j label802
.p2align 2
label925:
	addiw a5, a5, 1
	ble a1, a5, label814
.p2align 2
label808:
	add a4, a4, a2
	li t1, 4
	sd zero, 0(a4)
	mv t0, a4
	sd zero, 8(a4)
	ble a3, t1, label999
.p2align 2
label805:
	addi t0, t0, 16
.p2align 2
label802:
	addiw t1, t1, 4
	sd zero, 0(t0)
	sd zero, 8(t0)
	bgt a3, t1, label805
	ble a0, t1, label993
.p2align 2
label809:
	sh2add t0, t1, a4
	mv t2, t1
.p2align 2
label810:
	addiw t2, t2, 1
	sw zero, 0(t0)
	ble a0, t2, label925
	addi t0, t0, 4
	j label810
label999:
	bgt a0, t1, label809
.p2align 2
label993:
	addiw a5, a5, 1
	bgt a1, a5, label808
	j label814
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -40
	mv t2, a0
	mv a4, a1
pcrel1255:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel1256:
	auipc a5, %pcrel_hi(A)
pcrel1257:
	auipc t3, %pcrel_hi(C)
	li t1, 3
pcrel1258:
	auipc a1, %pcrel_hi(B)
	addi a3, a5, %pcrel_lo(pcrel1256)
	sd s1, 0(sp)
	addi a5, t3, %pcrel_lo(pcrel1257)
	sd s0, 8(sp)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	lw a0, %pcrel_lo(pcrel1255)(a2)
	addi a2, a1, %pcrel_lo(pcrel1258)
	addi t0, a0, -3
	lui a1, 1
	bgt a0, t1, label1022
	bgt a0, zero, label1048
label1046:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	addi sp, sp, 40
	ret
label1022:
	slliw t3, t2, 12
	add t1, a5, t3
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1031
	j label1029
.p2align 2
label1043:
	addi t6, t6, 4
.p2align 2
label1040:
	lw s1, 0(t6)
	sh2add s0, a6, t5
	addiw a6, a6, 1
	mulw a7, a5, s1
	amoadd.w.aqrl s2, a7, (s0)
	bgt a0, a6, label1043
	add t3, t3, a1
	mv t5, t4
	ble a0, t4, label1230
.p2align 2
label1031:
	sh2add t6, t2, t3
	addiw t4, t5, 1
	lw a5, 0(t6)
	bne a5, zero, label1032
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1031
	j label1224
.p2align 2
label1032:
	slliw a7, t5, 12
	mv t6, t1
	mv a6, zero
	add t5, a2, a7
	j label1033
.p2align 2
label1036:
	addi t6, t6, 16
.p2align 2
label1033:
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
	bgt t0, a6, label1036
	ble a0, a6, label1221
	sh2add t6, a6, t1
	j label1040
.p2align 2
label1224:
	addiw t2, t2, 1
	ble a4, t2, label1046
.p2align 2
label1030:
	add t1, t1, a1
	mv t3, a3
	mv t5, zero
	bgt a0, zero, label1031
label1029:
	addiw t2, t2, 1
	bgt a4, t2, label1030
	j label1046
label1048:
	slliw t1, t2, 12
	add t0, a5, t1
	mv a5, t2
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1057
	j label1055
.p2align 2
label1062:
	add t1, t1, a1
	mv t4, t2
	ble a0, t2, label1225
.p2align 2
label1057:
	sh2add t5, a5, t1
	addiw t2, t4, 1
	lw t3, 0(t5)
	beq t3, zero, label1064
	slliw a6, t4, 12
	mv t5, t0
	mv t6, zero
	add t4, a2, a6
.p2align 2
label1059:
	lw s0, 0(t5)
	sh2add a7, t6, t4
	addiw t6, t6, 1
	mulw a6, t3, s0
	amoadd.w.aqrl s1, a6, (a7)
	ble a0, t6, label1062
	addi t5, t5, 4
	j label1059
.p2align 2
label1230:
	addiw t2, t2, 1
	bgt a4, t2, label1030
	j label1046
.p2align 2
label1225:
	addiw a5, a5, 1
	bgt a4, a5, label1056
	j label1046
.p2align 2
label1226:
	addiw a5, a5, 1
	ble a4, a5, label1046
.p2align 2
label1056:
	add t0, t0, a1
	mv t1, a3
	mv t4, zero
	bgt a0, zero, label1057
label1055:
	addiw a5, a5, 1
	bgt a4, a5, label1056
	j label1046
.p2align 2
label1221:
	add t3, t3, a1
	mv t5, t4
	bgt a0, t4, label1031
	addiw t2, t2, 1
	bgt a4, t2, label1030
	j label1046
.p2align 2
label1064:
	add t1, t1, a1
	mv t4, t2
	bgt a0, t2, label1057
	j label1226
