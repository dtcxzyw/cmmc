.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
	li a0, 2
	lui a3, 1
	lui a4, 4
	mv a5, zero
	slli a2, a0, 32
	sd ra, 0(sp)
	addi a1, a2, 1
	sd s0, 8(sp)
	slli a0, a1, 2
	addi s0, sp, 48
	sd s1, 16(sp)
	li s1, 1
	sd s2, 24(sp)
	li s2, 2
	sd s3, 32(sp)
	li s3, 16
	sd s4, 40(sp)
	sd a1, 48(sp)
	slli a1, a0, 2
	sd a0, 56(sp)
	slli a2, a1, 2
	sd a1, 64(sp)
	slli a0, a2, 2
	sd a2, 72(sp)
	slli a1, a0, 2
	lui a2, 2
	sd a0, 80(sp)
	slli a0, a2, 32
	sd a1, 88(sp)
	add.uw a1, a3, a0
	lui a3, 8
	sd a1, 96(sp)
	slli a0, a3, 32
	mv a1, s2
	add.uw a2, a4, a0
	mv a0, s1
	sd a2, 104(sp)
.p2align 2
label2:
	ble a5, zero, label217
	mv a4, s0
	mv t1, s1
	mv a3, a5
	mv a2, zero
	mv t0, zero
	j label7
.p2align 2
label211:
	lw a3, 52(sp)
	lui a4, 16
	divw a1, a5, a3
	lw a3, 108(sp)
	addw a2, a1, a4
	mv a1, a0
	subw a5, a2, a3
	mv a0, t1
	j label2
label217:
	jal putint
	li a0, 10
	jal putch
	mv a2, s1
	mv a0, s1
	mv a1, s2
.p2align 2
label218:
	ble a2, zero, label433
	mv a4, s0
	mv a3, zero
	mv t0, s1
	mv a5, a2
	mv t1, zero
	j label223
.p2align 2
label7:
	bge t0, s3, label13
	and t3, t1, a3
	andi t2, t3, 1
	bne t2, zero, label214
.p2align 2
label1232:
	srliw t2, a3, 31
	addiw t0, t0, 1
	addi a4, a4, 4
	add t1, a3, t2
	sraiw a3, t1, 1
	mv t1, zero
	j label7
.p2align 2
label214:
	lw t1, 0(a4)
	addw a2, a2, t1
	j label1232
label433:
	jal putint
	li a0, 10
	jal putch
	mv s4, s2
.p2align 2
label434:
	bge s4, s3, label1589
	mv a0, s2
	mv a1, s1
	mv a3, s4
.p2align 2
label436:
	bgt a3, zero, label441
	j label440
.p2align 2
label552:
	lui a1, 8
	addiw a0, a1, -1
	ble a3, a0, label553
	lw a1, 52(sp)
	lui t0, 16
	lw a5, 108(sp)
	divw a0, a3, a1
	mv a1, t2
	addw a2, a0, t0
	mv a0, a4
	subw a3, a2, a5
	j label436
.p2align 2
label223:
	bge t1, s3, label229
	and t3, t0, a5
	andi t2, t3, 1
	bne t2, zero, label432
	srliw t0, a5, 31
	addiw t1, t1, 1
	addi a4, a4, 4
	add t2, a5, t0
	mv t0, zero
	sraiw a5, t2, 1
	j label223
.p2align 2
label229:
	beq a3, zero, label1249
	mv a3, a0
	mv a4, a1
	mv a0, zero
	j label332
.p2align 2
label1249:
	mv t1, a0
	mv a4, a1
	mv a0, zero
.p2align 2
label232:
	bne a1, zero, label236
	j label329
.p2align 2
label326:
	lui a4, 8
	addiw a0, a4, -1
	bgt a1, a0, label328
	lw t0, 52(sp)
	mv a4, a3
	mv a0, a5
	divw a1, a1, t0
	j label232
.p2align 2
label329:
	lui a3, 8
	addiw a1, a3, -1
	bgt a2, a1, label331
	lw a3, 52(sp)
	mv a1, a0
	mv a0, t1
	divw a2, a2, a3
	j label218
.p2align 2
label236:
	mv t0, s0
	mv t3, s1
	mv a5, a1
	mv a3, zero
	mv t2, zero
.p2align 2
label237:
	bge t2, s3, label247
	and t4, t3, a5
	andi t5, t4, 1
	bne t5, zero, label244
.p2align 2
label1262:
	srliw t3, a5, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	add t4, a5, t3
	mv t3, zero
	sraiw a5, t4, 1
	j label237
.p2align 2
label244:
	lw t3, 0(t0)
	addw a3, a3, t3
	j label1262
.p2align 2
label247:
	beq a3, zero, label1271
	mv a3, a4
.p2align 2
label248:
	beq a3, zero, label1271
	mv t2, s0
	mv t0, a3
	mv t3, a0
	mv a5, zero
	mv t4, zero
.p2align 2
label252:
	bge t4, s3, label1279
	andi t5, t3, 1
	bne t5, zero, label261
	j label260
.p2align 2
label259:
	lw t5, 0(t2)
	srliw t6, t0, 31
	addiw t4, t4, 1
	addi t2, t2, 4
	addw a5, a5, t5
	srliw t5, t3, 31
	add a6, t3, t5
	add t5, t0, t6
	sraiw t3, a6, 1
	sraiw t0, t5, 1
	j label252
.p2align 2
label260:
	andi t5, t0, 1
	bne t5, zero, label259
.p2align 2
label1289:
	srliw t5, t3, 31
	srliw t6, t0, 31
	addiw t4, t4, 1
	addi t2, t2, 4
	add a6, t3, t5
	add t5, t0, t6
	sraiw t3, a6, 1
	sraiw t0, t5, 1
	j label252
.p2align 2
label261:
	andi t5, t0, 1
	beq t5, zero, label259
	j label1289
.p2align 2
label332:
	bne a4, zero, label336
	j label1249
.p2align 2
label1565:
	lw a5, 52(sp)
	mv a3, a0
	mv a0, t3
	divw a4, a4, a5
	j label332
.p2align 2
label440:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	addiw s4, s4, 1
	j label434
.p2align 2
label1271:
	mv a5, a0
	mv a3, a4
	mv a0, a4
.p2align 2
label288:
	bne a0, zero, label291
	j label326
.p2align 2
label1380:
	mv a3, t0
	j label288
.p2align 2
label291:
	mv t2, s0
	mv a4, a0
	mv t3, a3
	mv t0, zero
	mv t4, zero
.p2align 2
label292:
	bge t4, s3, label1339
	andi t5, t3, 1
	bne t5, zero, label300
	j label301
.p2align 2
label1350:
	srliw a6, t3, 31
	srliw t6, a4, 31
	addiw t4, t4, 1
	addi t2, t2, 4
	add t5, t3, a6
	add a6, a4, t6
	sraiw t3, t5, 1
	sraiw a4, a6, 1
	j label292
.p2align 2
label301:
	andi t5, a4, 1
	bne t5, zero, label299
	j label1350
.p2align 2
label1339:
	mv a4, s0
	mv t3, zero
	mv t2, a0
	mv t4, zero
.p2align 2
label305:
	bge t4, s3, label1362
	and t6, t2, a3
	andi t5, t6, 1
	beq t5, zero, label1367
	lw t5, 0(a4)
	addiw t4, t4, 1
	addi a4, a4, 4
	addw a0, t3, t5
	srliw t3, t2, 31
	srliw t5, a3, 31
	add t6, a3, t5
	add t5, t2, t3
	sraiw a3, t6, 1
	mv t3, a0
	sraiw t2, t5, 1
	j label305
.p2align 2
label1367:
	mv a0, t3
	srliw t5, a3, 31
	srliw t3, t2, 31
	addiw t4, t4, 1
	addi a4, a4, 4
	add t6, a3, t5
	add t5, t2, t3
	sraiw a3, t6, 1
	mv t3, a0
	sraiw t2, t5, 1
	j label305
.p2align 2
label553:
	lw a2, 52(sp)
	mv a0, a4
	mv a1, t2
	divw a3, a3, a2
	j label436
.p2align 2
label13:
	beq a2, zero, label901
	mv a2, a0
	mv a3, a1
	mv a0, zero
.p2align 2
label14:
	bne a3, zero, label18
	j label901
.p2align 2
label105:
	lw t1, 52(sp)
	lui t2, 16
	divw a2, a3, t1
	lw t1, 108(sp)
	addw t0, a2, t2
	mv a2, a0
	subw a3, t0, t1
	mv a0, a4
	j label14
.p2align 2
label901:
	mv t1, a0
	mv a3, a1
	mv a2, a1
	mv a0, zero
.p2align 2
label113:
	bne a2, zero, label117
	j label210
.p2align 2
label169:
	lui a4, 8
	addiw a3, a4, -1
	bgt a2, a3, label170
	lw a4, 52(sp)
	mv a3, a0
	mv a0, a1
	divw a2, a2, a4
	j label113
.p2align 2
label210:
	lui a2, 8
	addiw a1, a2, -1
	bgt a5, a1, label211
	lw a2, 52(sp)
	mv a1, a0
	mv a0, t1
	divw a5, a5, a2
	j label2
.p2align 2
label299:
	lw t5, 0(t2)
	srliw a6, t3, 31
	srliw t6, a4, 31
	addiw t4, t4, 1
	addi t2, t2, 4
	addw t0, t0, t5
	add t5, t3, a6
	add a6, a4, t6
	sraiw t3, t5, 1
	sraiw a4, a6, 1
	j label292
.p2align 2
label300:
	andi t5, a4, 1
	beq t5, zero, label299
	j label1350
.p2align 2
label432:
	lw t0, 0(a4)
	addiw t1, t1, 1
	addi a4, a4, 4
	addw a3, a3, t0
	srliw t0, a5, 31
	add t2, a5, t0
	mv t0, zero
	sraiw a5, t2, 1
	j label223
.p2align 2
label170:
	lw t0, 52(sp)
	lui t2, 16
	divw a3, a2, t0
	lw t0, 108(sp)
	addw a4, a3, t2
	mv a3, a0
	subw a2, a4, t0
	mv a0, a1
	j label113
.p2align 2
label1279:
	mv t2, s0
	mv t0, a3
	mv t3, zero
	mv a3, a0
	mv a0, zero
.p2align 2
label265:
	blt t3, s3, label282
	j label271
.p2align 2
label285:
	lw t4, 0(t2)
	srliw t5, a3, 31
	addiw t3, t3, 1
	addi t2, t2, 4
	addw a0, a0, t4
	add t6, a3, t5
	srliw t4, t0, 31
	sraiw a3, t6, 1
	add t5, t0, t4
	sraiw t0, t5, 1
	j label265
.p2align 2
label271:
	lw a3, 52(sp)
	lui t3, 16
	addiw t2, t3, -1
	mv t3, zero
	mulw t0, a0, a3
	mv a3, zero
	mv a0, s0
.p2align 2
label272:
	bge t3, s3, label1309
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label279
.p2align 2
label1314:
	srliw t4, t0, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	addi a0, a0, 4
	add t5, t0, t4
	add t4, t2, t6
	sraiw t0, t5, 1
	sraiw t2, t4, 1
	j label272
.p2align 2
label279:
	lw t4, 0(a0)
	addw a3, a3, t4
	j label1314
.p2align 2
label282:
	and t5, t0, a3
	andi t4, t5, 1
	bne t4, zero, label285
	srliw t5, a3, 31
	srliw t4, t0, 31
	addiw t3, t3, 1
	addi t2, t2, 4
	add t6, a3, t5
	add t5, t0, t4
	sraiw a3, t6, 1
	sraiw t0, t5, 1
	j label265
.p2align 2
label331:
	lw a4, 52(sp)
	lui a5, 16
	divw a1, a2, a4
	lw a4, 108(sp)
	addw a3, a1, a5
	mv a1, a0
	subw a2, a3, a4
	mv a0, t1
	j label218
.p2align 2
label328:
	lw a4, 52(sp)
	lui t3, 16
	lw t2, 108(sp)
	divw a0, a1, a4
	mv a4, a3
	addw t0, a0, t3
	mv a0, a5
	subw a1, t0, t2
	j label232
.p2align 2
label1309:
	mv a0, a5
	j label248
.p2align 2
label1362:
	lw t2, 52(sp)
	mv a3, s0
	mv a0, zero
	lui t4, 16
	mulw a4, t3, t2
	mv t2, zero
	addiw t3, t4, -1
.p2align 2
label316:
	blt t2, s3, label322
	j label1380
.p2align 2
label325:
	lw t4, 0(a3)
	srliw t5, a4, 31
	addiw t2, t2, 1
	addi a3, a3, 4
	addw a0, a0, t4
	add t6, a4, t5
	srliw t4, t3, 31
	sraiw a4, t6, 1
	add t5, t3, t4
	sraiw t3, t5, 1
	j label316
.p2align 2
label322:
	and t5, t3, a4
	andi t4, t5, 1
	bne t4, zero, label325
	srliw t5, a4, 31
	srliw t4, t3, 31
	addiw t2, t2, 1
	addi a3, a3, 4
	add t6, a4, t5
	add t5, t3, t4
	sraiw a4, t6, 1
	sraiw t3, t5, 1
	j label316
.p2align 2
label336:
	mv t0, s0
	mv t3, s1
	mv t1, a4
	mv a5, zero
	mv t2, zero
.p2align 2
label337:
	bge t2, s3, label347
	and t5, t3, t1
	andi t4, t5, 1
	bne t4, zero, label344
.p2align 2
label1432:
	srliw t4, t1, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	add t3, t1, t4
	sraiw t1, t3, 1
	mv t3, zero
	j label337
.p2align 2
label344:
	lw t3, 0(t0)
	addw a5, a5, t3
	j label1432
.p2align 2
label347:
	bne a5, zero, label1442
.p2align 2
label1441:
	mv t3, a0
	mv a0, a3
.p2align 2
label388:
	beq a3, zero, label426
	mv t1, s0
	mv t2, a3
	mv t0, a0
	mv a5, zero
	mv t4, zero
.p2align 2
label392:
	bge t4, s3, label1509
	andi t5, t0, 1
	bne t5, zero, label399
	j label403
.p2align 2
label1518:
	srliw t6, t0, 31
	srliw a6, t2, 31
	addiw t4, t4, 1
	addi t1, t1, 4
	add t5, t0, t6
	add t6, t2, a6
	sraiw t0, t5, 1
	sraiw t2, t6, 1
	j label392
.p2align 2
label403:
	andi t5, t2, 1
	bne t5, zero, label400
	j label1518
.p2align 2
label1442:
	mv a5, a3
.p2align 2
label348:
	beq a5, zero, label1441
	mv t0, s0
	mv t2, a5
	mv t1, a0
	mv t3, zero
	mv t4, zero
.p2align 2
label352:
	bge t4, s3, label1449
	andi t5, t1, 1
	beq t5, zero, label359
	andi t5, t2, 1
	beq t5, zero, label361
	j label1457
.p2align 2
label359:
	andi t5, t2, 1
	bne t5, zero, label361
.p2align 2
label1457:
	srliw t5, t1, 31
	srliw t6, t2, 31
	addiw t4, t4, 1
	addi t0, t0, 4
	add a6, t1, t5
	add t5, t2, t6
	sraiw t1, a6, 1
	sraiw t2, t5, 1
	j label352
.p2align 2
label361:
	lw t5, 0(t0)
	addw t3, t3, t5
	j label1457
.p2align 2
label1509:
	mv t0, s0
	mv t1, a3
	mv t2, zero
	mv a3, a0
	mv a0, zero
.p2align 2
label405:
	bge t2, s3, label411
	and t4, t1, a3
	andi t5, t4, 1
	bne t5, zero, label425
	srliw t4, a3, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	add t6, a3, t4
	add t4, t1, t5
	sraiw a3, t6, 1
	sraiw t1, t4, 1
	j label405
.p2align 2
label411:
	lw t1, 52(sp)
	mv t0, s0
	mv a3, zero
	lui t4, 16
	mv t2, zero
	mulw a0, a0, t1
	addiw t1, t4, -1
.p2align 2
label412:
	bge t2, s3, label1539
	and t4, t1, a0
	andi t5, t4, 1
	bne t5, zero, label419
.p2align 2
label1544:
	srliw t4, a0, 31
	srliw t5, t1, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	add t6, a0, t4
	add t4, t1, t5
	sraiw a0, t6, 1
	sraiw t1, t4, 1
	j label412
.p2align 2
label419:
	lw t4, 0(t0)
	addw a3, a3, t4
	j label1544
.p2align 2
label1449:
	mv t0, s0
	mv t1, zero
	mv t2, zero
.p2align 2
label365:
	bge t2, s3, label371
	and t5, a5, a0
	andi t4, t5, 1
	beq t4, zero, label383
	lw t4, 0(t0)
	srliw t5, a0, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	addw t1, t1, t4
	add t6, a0, t5
	srliw t4, a5, 31
	sraiw a0, t6, 1
	add t5, a5, t4
	sraiw a5, t5, 1
	j label365
.p2align 2
label371:
	lw a5, 52(sp)
	mv a0, s0
	lui t4, 16
	addiw t2, t4, -1
	mulw t0, t1, a5
	mv t1, zero
	mv a5, zero
.p2align 2
label372:
	bge t1, s3, label1479
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label379
.p2align 2
label1484:
	srliw t5, t0, 31
	srliw t6, t2, 31
	addiw t1, t1, 1
	addi a0, a0, 4
	add t4, t0, t5
	add t5, t2, t6
	sraiw t0, t4, 1
	sraiw t2, t5, 1
	j label372
.p2align 2
label379:
	lw t4, 0(a0)
	addw a5, a5, t4
	j label1484
.p2align 2
label383:
	srliw t5, a0, 31
	srliw t4, a5, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	add t6, a0, t5
	add t5, a5, t4
	sraiw a0, t6, 1
	sraiw a5, t5, 1
	j label365
.p2align 2
label426:
	lui a5, 8
	addiw a3, a5, -1
	ble a4, a3, label1565
	lw t0, 52(sp)
	lui t1, 16
	divw a3, a4, t0
	lw t0, 108(sp)
	addw a5, a3, t1
	mv a3, a0
	subw a4, a5, t0
	mv a0, t3
	j label332
.p2align 2
label399:
	andi t5, t2, 1
	bne t5, zero, label1518
.p2align 2
label400:
	lw t5, 0(t1)
	addw a5, a5, t5
	j label1518
.p2align 2
label117:
	mv a1, s0
	mv t3, zero
	mv a4, s1
	mv t0, a2
	mv t2, zero
.p2align 2
label118:
	blt t2, s3, label124
	j label128
.p2align 2
label125:
	lw t4, 0(a1)
	addw a4, t3, t4
	srliw t3, t0, 31
	addiw t2, t2, 1
	addi a1, a1, 4
	add t4, t0, t3
	mv t3, a4
	sraiw t0, t4, 1
	mv a4, zero
	j label118
.p2align 2
label128:
	beq t3, zero, label1079
	mv a1, a3
	j label172
.p2align 2
label1079:
	mv a1, a0
	mv a0, a3
.p2align 2
label131:
	bne a3, zero, label134
	j label169
.p2align 2
label172:
	bne a1, zero, label175
	j label1079
.p2align 2
label1202:
	mv a0, t2
	mv a1, a4
	j label172
.p2align 2
label134:
	mv t3, s0
	mv t0, a3
	mv t2, a0
	mv a4, zero
	mv t4, zero
.p2align 2
label135:
	bge t4, s3, label1087
	andi t5, t2, 1
	beq t5, zero, label145
	andi t5, t0, 1
	beq t5, zero, label146
	j label143
.p2align 2
label1087:
	mv t0, s0
	mv t4, zero
	mv t2, a3
	mv t3, zero
.p2align 2
label148:
	bge t3, s3, label1110
	and t5, t2, a0
	andi t6, t5, 1
	bne t6, zero, label155
	mv a3, t4
	srliw t5, t2, 31
	addiw t3, t3, 1
	addi t0, t0, 4
	srliw t4, a0, 31
	add t6, a0, t4
	add t4, t2, t5
	sraiw a0, t6, 1
	sraiw t2, t4, 1
	mv t4, a3
	j label148
.p2align 2
label143:
	srliw t5, t2, 31
	srliw a6, t0, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	add t6, t2, t5
	add t5, t0, a6
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	j label135
.p2align 2
label155:
	lw t5, 0(t0)
	addw a3, t4, t5
	srliw t4, a0, 31
	srliw t5, t2, 31
	addiw t3, t3, 1
	addi t0, t0, 4
	add t6, a0, t4
	add t4, t2, t5
	sraiw a0, t6, 1
	sraiw t2, t4, 1
	mv t4, a3
	j label148
.p2align 2
label145:
	andi t5, t0, 1
	beq t5, zero, label143
.p2align 2
label146:
	lw t5, 0(t3)
	srliw a6, t0, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	addw a4, a4, t5
	srliw t5, t2, 31
	add t6, t2, t5
	add t5, t0, a6
	sraiw t2, t6, 1
	sraiw t0, t5, 1
	j label135
.p2align 2
label124:
	and t4, a4, t0
	andi t5, t4, 1
	bne t5, zero, label125
	mv a4, t3
	addiw t2, t2, 1
	addi a1, a1, 4
	srliw t3, t0, 31
	add t4, t0, t3
	mv t3, a4
	sraiw t0, t4, 1
	mv a4, zero
	j label118
.p2align 2
label441:
	mv a4, s0
	mv t0, s1
	mv a5, a3
	mv a2, zero
	mv t1, zero
.p2align 2
label442:
	bge t1, s3, label452
	and t2, t0, a5
	andi t3, t2, 1
	bne t3, zero, label449
.p2align 2
label1603:
	srliw t0, a5, 31
	addiw t1, t1, 1
	addi a4, a4, 4
	add t2, a5, t0
	mv t0, zero
	sraiw a5, t2, 1
	j label442
.p2align 2
label449:
	lw t0, 0(a4)
	addw a2, a2, t0
	j label1603
.p2align 2
label452:
	beq a2, zero, label1612
	mv a5, a1
	mv a2, a0
	mv a1, zero
	j label555
.p2align 2
label1612:
	mv t2, a1
	mv a5, a0
	mv a4, zero
	mv a1, a0
.p2align 2
label455:
	bne a1, zero, label459
	j label552
.p2align 2
label1632:
	lw a0, 52(sp)
	mv a5, a4
	mv a4, t0
	divw a1, a1, a0
	j label455
.p2align 2
label555:
	bne a2, zero, label559
	j label1612
.p2align 2
label611:
	lui a5, 8
	addiw a4, a5, -1
	ble a2, a4, label612
	lw t0, 52(sp)
	lui t2, 16
	divw a5, a2, t0
	lw t0, 108(sp)
	addw a4, a5, t2
	mv a5, a1
	subw a2, a4, t0
	mv a1, t1
	j label555
.p2align 2
label559:
	mv t1, s0
	mv a4, zero
	mv t3, s1
	mv t0, a2
	mv t2, zero
.p2align 2
label560:
	bge t2, s3, label570
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label567
.p2align 2
label1795:
	srliw t3, t0, 31
	addiw t2, t2, 1
	addi t1, t1, 4
	add t4, t0, t3
	mv t3, zero
	sraiw t0, t4, 1
	j label560
.p2align 2
label567:
	lw t3, 0(t1)
	addw a4, a4, t3
	j label1795
.p2align 2
label570:
	beq a4, zero, label1804
	mv a4, a5
	j label614
.p2align 2
label612:
	lw a4, 52(sp)
	mv a5, a1
	mv a1, t1
	divw a2, a2, a4
	j label555
.p2align 2
label1804:
	mv t1, a1
	mv a4, a5
	mv a1, a5
.p2align 2
label573:
	bne a4, zero, label576
	j label611
.p2align 2
label614:
	bne a4, zero, label617
	j label1804
.p2align 2
label1916:
	mv a1, t1
	j label614
.p2align 2
label459:
	mv t0, s0
	mv t3, zero
	mv a0, s1
	mv a2, a1
	mv t1, zero
.p2align 2
label460:
	bge t1, s3, label466
	and t5, a0, a2
	andi t4, t5, 1
	beq t4, zero, label1763
	lw t4, 0(t0)
	addiw t1, t1, 1
	addi t0, t0, 4
	addw a0, t3, t4
	srliw t3, a2, 31
	add t4, a2, t3
	mv t3, a0
	sraiw a2, t4, 1
	mv a0, zero
	j label460
.p2align 2
label466:
	bne t3, zero, label1625
	mv t0, a4
	mv a0, a5
	mv a4, a5
.p2align 2
label469:
	beq a0, zero, label472
	mv a2, s0
	mv a5, a0
	mv t3, a4
	mv t1, zero
	mv t4, zero
.p2align 2
label476:
	bge t4, s3, label482
	andi t5, t3, 1
	bne t5, zero, label509
	andi t5, a5, 1
	bne t5, zero, label506
	j label1687
.p2align 2
label1763:
	mv a0, t3
	srliw t3, a2, 31
	addiw t1, t1, 1
	addi t0, t0, 4
	add t4, a2, t3
	mv t3, a0
	sraiw a2, t4, 1
	mv a0, zero
	j label460
.p2align 2
label1687:
	srliw t5, t3, 31
	srliw a6, a5, 31
	addiw t4, t4, 1
	addi a2, a2, 4
	add t6, t3, t5
	add t5, a5, a6
	sraiw t3, t6, 1
	sraiw a5, t5, 1
	j label476
.p2align 2
label506:
	lw t5, 0(a2)
	addw t1, t1, t5
	j label1687
.p2align 2
label509:
	andi t5, a5, 1
	beq t5, zero, label506
	j label1687
.p2align 2
label482:
	mv a5, s0
	mv a2, a0
	mv t3, zero
	mv a0, zero
.p2align 2
label483:
	bge t3, s3, label1650
	and t5, a2, a4
	andi t4, t5, 1
	bne t4, zero, label490
.p2align 2
label1655:
	srliw t4, a4, 31
	srliw t6, a2, 31
	addiw t3, t3, 1
	addi a5, a5, 4
	add t5, a4, t4
	add t4, a2, t6
	sraiw a4, t5, 1
	sraiw a2, t4, 1
	j label483
.p2align 2
label472:
	lui a2, 8
	addiw a0, a2, -1
	ble a1, a0, label1632
	lw a5, 52(sp)
	lui t3, 16
	lw t1, 108(sp)
	divw a0, a1, a5
	mv a5, a4
	mv a4, t0
	addw a2, a0, t3
	subw a1, a2, t1
	j label455
.p2align 2
label617:
	mv t3, s0
	mv t1, zero
	mv t0, a4
	mv t2, a1
	mv t4, zero
.p2align 2
label618:
	bge t4, s3, label1886
	andi t5, t2, 1
	bne t5, zero, label628
	j label629
.p2align 2
label627:
	lw t5, 0(t3)
	srliw t6, t0, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	addw t1, t1, t5
	srliw t5, t2, 31
	add a6, t2, t5
	add t5, t0, t6
	sraiw t2, a6, 1
	sraiw t0, t5, 1
	j label618
.p2align 2
label1901:
	srliw t5, t2, 31
	srliw t6, t0, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	add a6, t2, t5
	add t5, t0, t6
	sraiw t2, a6, 1
	sraiw t0, t5, 1
	j label618
.p2align 2
label629:
	andi t5, t0, 1
	bne t5, zero, label627
	j label1901
.p2align 2
label425:
	lw t4, 0(t0)
	srliw t5, t1, 31
	addiw t2, t2, 1
	addi t0, t0, 4
	addw a0, a0, t4
	srliw t4, a3, 31
	add t6, a3, t4
	add t4, t1, t5
	sraiw a3, t6, 1
	sraiw t1, t4, 1
	j label405
.p2align 2
label1650:
	lw a4, 52(sp)
	mv a5, zero
	mv t4, zero
	mulw a2, a0, a4
	lui a4, 16
	mv a0, s0
	addiw t3, a4, -1
.p2align 2
label494:
	bge t4, s3, label1668
	and t6, t3, a2
	andi t5, t6, 1
	beq t5, zero, label1673
	lw t5, 0(a0)
	addiw t4, t4, 1
	addi a0, a0, 4
	addw a4, a5, t5
	srliw a5, t3, 31
	srliw t5, a2, 31
	add t6, a2, t5
	add t5, t3, a5
	sraiw a2, t6, 1
	mv a5, a4
	sraiw t3, t5, 1
	j label494
.p2align 2
label1673:
	mv a4, a5
	srliw t5, a2, 31
	srliw a5, t3, 31
	addiw t4, t4, 1
	addi a0, a0, 4
	add t6, a2, t5
	add t5, t3, a5
	sraiw a2, t6, 1
	mv a5, a4
	sraiw t3, t5, 1
	j label494
.p2align 2
label1539:
	mv a0, a5
	j label388
.p2align 2
label1886:
	mv t0, s0
	mv t2, a1
	mv t3, zero
	mv a1, zero
.p2align 2
label631:
	bge t3, s3, label637
	and t4, a4, t2
	andi t5, t4, 1
	beq t5, zero, label649
	lw t4, 0(t0)
	srliw t6, a4, 31
	addiw t3, t3, 1
	addi t0, t0, 4
	addw a1, a1, t4
	srliw t4, t2, 31
	add t5, t2, t4
	add t4, a4, t6
	sraiw t2, t5, 1
	sraiw a4, t4, 1
	j label631
.p2align 2
label637:
	lw t2, 52(sp)
	mv a4, zero
	lui t4, 16
	mv t3, zero
	mulw t0, a1, t2
	addiw t2, t4, -1
	mv a1, s0
.p2align 2
label638:
	bge t3, s3, label1916
	and t5, t2, t0
	andi t4, t5, 1
	bne t4, zero, label645
.p2align 2
label1921:
	srliw t4, t0, 31
	srliw t5, t2, 31
	addiw t3, t3, 1
	addi a1, a1, 4
	add t6, t0, t4
	add t4, t2, t5
	sraiw t0, t6, 1
	sraiw t2, t4, 1
	j label638
.p2align 2
label645:
	lw t4, 0(a1)
	addw a4, a4, t4
	j label1921
.p2align 2
label649:
	srliw t4, t2, 31
	srliw t6, a4, 31
	addiw t3, t3, 1
	addi t0, t0, 4
	add t5, t2, t4
	add t4, a4, t6
	sraiw t2, t5, 1
	sraiw a4, t4, 1
	j label631
.p2align 2
label628:
	andi t5, t0, 1
	beq t5, zero, label627
	j label1901
.p2align 2
label1625:
	mv a0, a4
	mv a2, a5
.p2align 2
label510:
	beq a2, zero, label1702
	mv a4, s0
	mv t0, zero
	mv t1, a2
	mv t3, a0
	mv t4, zero
	j label514
.p2align 2
label1728:
	mv a0, t0
	j label510
.p2align 2
label514:
	bge t4, s3, label520
	andi t5, t3, 1
	bne t5, zero, label547
	andi t5, t1, 1
	bne t5, zero, label543
.p2align 2
label545:
	srliw t6, t3, 31
	srliw a6, t1, 31
	addiw t4, t4, 1
	addi a4, a4, 4
	add t5, t3, t6
	add t6, t1, a6
	sraiw t3, t5, 1
	sraiw t1, t6, 1
	j label514
.p2align 2
label520:
	mv t1, s0
	mv t4, zero
	mv a4, a0
	mv t3, zero
.p2align 2
label521:
	bge t3, s3, label1710
	and t6, a2, a4
	andi t5, t6, 1
	bne t5, zero, label530
	mv a0, t4
	srliw t6, a4, 31
	srliw t5, a2, 31
	addiw t3, t3, 1
	addi t1, t1, 4
	add t4, a4, t6
	add t6, a2, t5
	sraiw a4, t4, 1
	sraiw a2, t6, 1
	mv t4, a0
	j label521
.p2align 2
label543:
	lw t5, 0(a4)
	srliw t6, t3, 31
	srliw a6, t1, 31
	addiw t4, t4, 1
	addi a4, a4, 4
	addw t0, t0, t5
	add t5, t3, t6
	add t6, t1, a6
	sraiw t3, t5, 1
	sraiw t1, t6, 1
	j label514
.p2align 2
label547:
	andi t5, t1, 1
	beq t5, zero, label543
	j label545
.p2align 2
label490:
	lw t4, 0(a5)
	addw a0, a0, t4
	j label1655
.p2align 2
label530:
	lw t5, 0(t1)
	srliw t6, a4, 31
	addiw t3, t3, 1
	addi t1, t1, 4
	addw a0, t4, t5
	srliw t5, a2, 31
	add t4, a4, t6
	add t6, a2, t5
	sraiw a4, t4, 1
	sraiw a2, t6, 1
	mv t4, a0
	j label521
.p2align 2
label1710:
	lw t1, 52(sp)
	mv a4, s0
	mv a2, zero
	mv t3, zero
	mulw a0, t4, t1
	lui t4, 16
	addiw t1, t4, -1
.p2align 2
label532:
	bge t3, s3, label1728
	and t5, t1, a0
	andi t4, t5, 1
	beq t4, zero, label539
	lw t4, 0(a4)
	srliw t5, t1, 31
	addiw t3, t3, 1
	addi a4, a4, 4
	addw a2, a2, t4
	srliw t4, a0, 31
	add t6, a0, t4
	add t4, t1, t5
	sraiw a0, t6, 1
	sraiw t1, t4, 1
	j label532
.p2align 2
label539:
	srliw t4, a0, 31
	srliw t5, t1, 31
	addiw t3, t3, 1
	addi a4, a4, 4
	add t6, a0, t4
	add t4, t1, t5
	sraiw a0, t6, 1
	sraiw t1, t4, 1
	j label532
label1589:
	mv t1, s0
	mv t2, zero
label653:
	blt t2, s3, label1943
	j label1942
label871:
	lw a0, 0(t1)
	bne a2, a0, label873
	addiw t2, t2, 1
	addi t1, t1, 4
	j label653
label1942:
	mv s1, zero
label873:
	mv a0, s1
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 112
	ret
.p2align 2
label18:
	mv t1, s0
	mv t0, zero
	mv t2, s1
	mv a4, a3
	mv t3, zero
.p2align 2
label19:
	blt t3, s3, label107
	j label25
.p2align 2
label110:
	lw t2, 0(t1)
	srliw t4, a4, 31
	addiw t3, t3, 1
	addi t1, t1, 4
	addw t0, t0, t2
	add t2, a4, t4
	sraiw a4, t2, 1
	mv t2, zero
	j label19
.p2align 2
label25:
	beq t0, zero, label913
	mv a4, a2
.p2align 2
label26:
	beq a4, zero, label913
	mv t3, s0
	mv t1, zero
	mv t2, a4
	mv t0, a0
	mv t4, zero
.p2align 2
label30:
	bge t4, s3, label36
	andi t5, t0, 1
	bne t5, zero, label59
	andi t5, t2, 1
	beq t5, zero, label963
.p2align 2
label61:
	lw t5, 0(t3)
	addw t1, t1, t5
.p2align 2
label963:
	srliw a6, t0, 31
	srliw t5, t2, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	add t6, t0, a6
	add a6, t2, t5
	sraiw t0, t6, 1
	sraiw t2, a6, 1
	j label30
.p2align 2
label913:
	mv a4, a0
	mv a0, a2
	j label66
.p2align 2
label36:
	mv t0, s0
	mv t3, zero
	mv t2, a0
	mv t4, zero
.p2align 2
label37:
	blt t4, s3, label54
	j label43
.p2align 2
label948:
	mv a0, t3
	srliw t3, t2, 31
	srliw t6, a4, 31
	addiw t4, t4, 1
	addi t0, t0, 4
	add t5, t2, t3
	add t3, a4, t6
	sraiw t2, t5, 1
	sraiw a4, t3, 1
	mv t3, a0
	j label37
.p2align 2
label43:
	lw t2, 52(sp)
	mv a4, s0
	mv t0, zero
	lui t4, 16
	mulw a0, t3, t2
	mv t3, zero
	addiw t2, t4, -1
.p2align 2
label44:
	bge t3, s3, label932
	and t5, t2, a0
	andi t4, t5, 1
	bne t4, zero, label51
.p2align 2
label937:
	srliw t5, a0, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	addi a4, a4, 4
	add t4, a0, t5
	add t5, t2, t6
	sraiw a0, t4, 1
	sraiw t2, t5, 1
	j label44
.p2align 2
label51:
	lw t4, 0(a4)
	addw t0, t0, t4
	j label937
.p2align 2
label107:
	and t4, t2, a4
	andi t5, t4, 1
	bne t5, zero, label110
	srliw t4, a4, 31
	addiw t3, t3, 1
	addi t1, t1, 4
	add t2, a4, t4
	sraiw a4, t2, 1
	mv t2, zero
	j label19
.p2align 2
label66:
	bne a2, zero, label69
	j label104
.p2align 2
label1011:
	mv a0, t1
	j label66
.p2align 2
label104:
	lui t1, 8
	addiw a2, t1, -1
	bgt a3, a2, label105
	lw t0, 52(sp)
	mv a2, a0
	mv a0, a4
	divw a3, a3, t0
	j label14
.p2align 2
label54:
	and t6, a4, t2
	andi t5, t6, 1
	beq t5, zero, label948
	lw t5, 0(t0)
	srliw t6, a4, 31
	addiw t4, t4, 1
	addi t0, t0, 4
	addw a0, t3, t5
	srliw t3, t2, 31
	add t5, t2, t3
	add t3, a4, t6
	sraiw t2, t5, 1
	sraiw a4, t3, 1
	mv t3, a0
	j label37
label1943:
	mv a0, s2
	mv a2, s1
	mv a3, t2
.p2align 2
label656:
	bgt a3, zero, label660
	j label871
.p2align 2
label769:
	lw a2, 52(sp)
	lui t0, 16
	lw a5, 108(sp)
	divw a0, a3, a2
	mv a2, t4
	addw a1, a0, t0
	mv a0, a4
	subw a3, a1, a5
	j label656
.p2align 2
label69:
	mv t2, s0
	mv t1, zero
	mv t0, a2
	mv t3, a0
	mv t4, zero
.p2align 2
label70:
	bge t4, s3, label981
	andi t5, t3, 1
	bne t5, zero, label78
	j label81
.p2align 2
label77:
	lw t5, 0(t2)
	srliw t6, t3, 31
	addiw t4, t4, 1
	addi t2, t2, 4
	addw t1, t1, t5
	add a6, t3, t6
	srliw t5, t0, 31
	sraiw t3, a6, 1
	add t6, t0, t5
	sraiw t0, t6, 1
	j label70
.p2align 2
label79:
	srliw t6, t3, 31
	srliw t5, t0, 31
	addiw t4, t4, 1
	addi t2, t2, 4
	add a6, t3, t6
	add t6, t0, t5
	sraiw t3, a6, 1
	sraiw t0, t6, 1
	j label70
.p2align 2
label81:
	andi t5, t0, 1
	bne t5, zero, label77
	j label79
.p2align 2
label981:
	mv t2, s0
	mv t0, zero
	mv t3, zero
.p2align 2
label83:
	bge t3, s3, label89
	and t5, a2, a0
	andi t4, t5, 1
	beq t4, zero, label101
	lw t4, 0(t2)
	srliw t6, a2, 31
	addiw t3, t3, 1
	addi t2, t2, 4
	addw t0, t0, t4
	srliw t4, a0, 31
	add t5, a0, t4
	add t4, a2, t6
	sraiw a0, t5, 1
	sraiw a2, t4, 1
	j label83
.p2align 2
label89:
	lw t2, 52(sp)
	mv a0, s0
	mv a2, zero
	lui t4, 16
	addiw t3, t4, -1
	mulw t0, t0, t2
	mv t2, zero
.p2align 2
label90:
	bge t2, s3, label1011
	and t5, t3, t0
	andi t4, t5, 1
	bne t4, zero, label97
.p2align 2
label1016:
	srliw t4, t0, 31
	srliw t5, t3, 31
	addiw t2, t2, 1
	addi a0, a0, 4
	add t6, t0, t4
	add t4, t3, t5
	sraiw t0, t6, 1
	sraiw t3, t4, 1
	j label90
.p2align 2
label97:
	lw t4, 0(a0)
	addw a2, a2, t4
	j label1016
.p2align 2
label101:
	srliw t4, a0, 31
	srliw t6, a2, 31
	addiw t3, t3, 1
	addi t2, t2, 4
	add t5, a0, t4
	add t4, a2, t6
	sraiw a0, t5, 1
	sraiw a2, t4, 1
	j label83
.p2align 2
label78:
	andi t5, t0, 1
	beq t5, zero, label77
	j label79
.p2align 2
label576:
	mv a5, s0
	mv t2, a4
	mv t3, a1
	mv t0, zero
	mv t4, zero
.p2align 2
label577:
	blt t4, s3, label605
	j label583
.p2align 2
label609:
	lw t5, 0(a5)
	srliw a6, t2, 31
	addiw t4, t4, 1
	addi a5, a5, 4
	addw t0, t0, t5
	srliw t5, t3, 31
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	j label577
.p2align 2
label610:
	andi t5, t2, 1
	beq t5, zero, label609
	j label1857
.p2align 2
label583:
	mv a5, s0
	mv t2, a1
	mv t3, zero
	mv a1, zero
.p2align 2
label584:
	bge t3, s3, label1816
	and t5, a4, t2
	andi t4, t5, 1
	bne t4, zero, label593
	srliw t4, t2, 31
	srliw t5, a4, 31
	addiw t3, t3, 1
	addi a5, a5, 4
	add t6, t2, t4
	add t4, a4, t5
	sraiw t2, t6, 1
	sraiw a4, t4, 1
	j label584
.p2align 2
label1816:
	lw a4, 52(sp)
	mv a5, s0
	lui t3, 16
	addiw t2, t3, -1
	mulw a1, a1, a4
	mv t3, zero
	mv a4, zero
.p2align 2
label595:
	bge t3, s3, label1834
	and t4, t2, a1
	andi t5, t4, 1
	beq t5, zero, label602
	lw t4, 0(a5)
	srliw t5, t2, 31
	addiw t3, t3, 1
	addi a5, a5, 4
	addw a4, a4, t4
	srliw t4, a1, 31
	add t6, a1, t4
	add t4, t2, t5
	sraiw a1, t6, 1
	sraiw t2, t4, 1
	j label595
.p2align 2
label602:
	srliw t4, a1, 31
	srliw t5, t2, 31
	addiw t3, t3, 1
	addi a5, a5, 4
	add t6, a1, t4
	add t4, t2, t5
	sraiw a1, t6, 1
	sraiw t2, t4, 1
	j label595
.p2align 2
label605:
	andi t5, t3, 1
	bne t5, zero, label610
	andi t5, t2, 1
	bne t5, zero, label609
.p2align 2
label1857:
	srliw t5, t3, 31
	srliw a6, t2, 31
	addiw t4, t4, 1
	addi a5, a5, 4
	add t6, t3, t5
	add t5, t2, a6
	sraiw t3, t6, 1
	sraiw t2, t5, 1
	j label577
.p2align 2
label1479:
	mv a0, t3
	j label348
.p2align 2
label1668:
	mv a4, t1
	mv a0, a5
	j label469
.p2align 2
label1834:
	mv a1, t0
	j label573
.p2align 2
label593:
	lw t4, 0(a5)
	srliw t5, a4, 31
	addiw t3, t3, 1
	addi a5, a5, 4
	addw a1, a1, t4
	srliw t4, t2, 31
	add t6, t2, t4
	add t4, a4, t5
	sraiw t2, t6, 1
	sraiw a4, t4, 1
	j label584
.p2align 2
label59:
	andi t5, t2, 1
	beq t5, zero, label61
	j label963
.p2align 2
label1702:
	mv t0, a0
	mv a4, a5
	mv a0, a5
	j label469
.p2align 2
label175:
	mv t3, s0
	mv t2, zero
	mv a4, a1
	mv t0, a0
	mv t4, zero
.p2align 2
label176:
	bge t4, s3, label1161
	andi t5, t0, 1
	bne t5, zero, label183
	j label186
.p2align 2
label184:
	srliw t5, t0, 31
	srliw a6, a4, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	add t6, t0, t5
	add t5, a4, a6
	sraiw t0, t6, 1
	sraiw a4, t5, 1
	j label176
.p2align 2
label1161:
	mv a4, s0
	mv t0, a0
	mv t3, zero
	mv a0, zero
.p2align 2
label189:
	bge t3, s3, label1184
	and t5, a1, t0
	andi t4, t5, 1
	bne t4, zero, label196
.p2align 2
label1189:
	srliw t6, t0, 31
	srliw t4, a1, 31
	addiw t3, t3, 1
	addi a4, a4, 4
	add t5, t0, t6
	add t6, a1, t4
	sraiw t0, t5, 1
	sraiw a1, t6, 1
	j label189
.p2align 2
label196:
	lw t4, 0(a4)
	addw a0, a0, t4
	j label1189
.p2align 2
label186:
	andi t5, a4, 1
	bne t5, zero, label187
	j label184
.p2align 2
label183:
	andi t5, a4, 1
	bne t5, zero, label184
.p2align 2
label187:
	lw t5, 0(t3)
	srliw a6, a4, 31
	addiw t4, t4, 1
	addi t3, t3, 4
	addw t2, t2, t5
	srliw t5, t0, 31
	add t6, t0, t5
	add t5, a4, a6
	sraiw t0, t6, 1
	sraiw a4, t5, 1
	j label176
.p2align 2
label1184:
	lw t4, 52(sp)
	mv a1, s0
	mv a4, zero
	mv t3, zero
	mulw t0, a0, t4
	lui a0, 16
	addiw t4, a0, -1
.p2align 2
label200:
	bge t3, s3, label1202
	and t5, t4, t0
	andi t6, t5, 1
	bne t6, zero, label209
	mv a0, a4
	srliw a4, t0, 31
	srliw t5, t4, 31
	addiw t3, t3, 1
	addi a1, a1, 4
	add t6, t0, a4
	add a4, t4, t5
	sraiw t0, t6, 1
	sraiw t4, a4, 1
	mv a4, a0
	j label200
.p2align 2
label932:
	mv a0, t1
	mv a4, t0
	j label26
.p2align 2
label660:
	mv a4, s0
	mv t0, s1
	mv a5, a3
	mv a1, zero
	mv t3, zero
.p2align 2
label661:
	bge t3, s3, label667
	and t5, t0, a5
	andi t4, t5, 1
	bne t4, zero, label870
	srliw t0, a5, 31
	addiw t3, t3, 1
	addi a4, a4, 4
	add t4, a5, t0
	mv t0, zero
	sraiw a5, t4, 1
	j label661
.p2align 2
label667:
	bne a1, zero, label1955
	mv t4, a2
	mv a4, zero
	mv a1, a0
	mv a2, a0
.p2align 2
label670:
	bne a1, zero, label674
	j label767
.p2align 2
label2128:
	mv t4, a1
	mv a2, a0
	mv a4, zero
	mv a1, a0
	j label670
.p2align 2
label767:
	lui a1, 8
	addiw a0, a1, -1
	bgt a3, a0, label769
	lw a1, 52(sp)
	mv a0, a4
	mv a2, t4
	divw a3, a3, a1
	j label656
.p2align 2
label870:
	lw t0, 0(a4)
	addiw t3, t3, 1
	addi a4, a4, 4
	addw a1, a1, t0
	srliw t0, a5, 31
	add t4, a5, t0
	mv t0, zero
	sraiw a5, t4, 1
	j label661
.p2align 2
label1110:
	lw a3, 52(sp)
	mv a0, s0
	lui t3, 16
	addiw t2, t3, -1
	mulw t0, t4, a3
	mv t3, zero
	mv a3, zero
.p2align 2
label159:
	bge t3, s3, label1128
	and t4, t2, t0
	andi t5, t4, 1
	bne t5, zero, label168
	srliw t5, t0, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	addi a0, a0, 4
	add t4, t0, t5
	add t5, t2, t6
	sraiw t0, t4, 1
	sraiw t2, t5, 1
	j label159
.p2align 2
label1955:
	mv a1, zero
	mv a5, a0
.p2align 2
label770:
	bne a5, zero, label774
	j label2128
.p2align 2
label861:
	lw t0, 52(sp)
	mv a2, a1
	mv a1, a4
	divw a5, a5, t0
	j label770
.p2align 2
label168:
	lw t4, 0(a0)
	srliw t5, t0, 31
	srliw t6, t2, 31
	addiw t3, t3, 1
	addi a0, a0, 4
	addw a3, a3, t4
	add t4, t0, t5
	add t5, t2, t6
	sraiw t0, t4, 1
	sraiw t2, t5, 1
	j label159
.p2align 2
label674:
	mv t0, s0
	mv t3, s1
	mv a5, a1
	mv a0, zero
	mv t5, zero
.p2align 2
label675:
	blt t5, s3, label763
	j label681
.p2align 2
label766:
	lw t3, 0(t0)
	srliw t6, a5, 31
	addiw t5, t5, 1
	addi t0, t0, 4
	addw a0, a0, t3
	add t3, a5, t6
	sraiw a5, t3, 1
	mv t3, zero
	j label675
.p2align 2
label681:
	beq a0, zero, label1966
	mv a0, a4
	mv a4, a2
.p2align 2
label725:
	bne a4, zero, label728
	j label2044
.p2align 2
label2059:
	mv a0, t0
	j label725
.p2align 2
label763:
	and a6, t3, a5
	andi t6, a6, 1
	bne t6, zero, label766
	srliw t6, a5, 31
	addiw t5, t5, 1
	addi t0, t0, 4
	add t3, a5, t6
	sraiw a5, t3, 1
	mv t3, zero
	j label675
.p2align 2
label209:
	lw t5, 0(a1)
	addiw t3, t3, 1
	addi a1, a1, 4
	addw a0, a4, t5
	srliw t5, t4, 31
	srliw a4, t0, 31
	add t6, t0, a4
	add a4, t4, t5
	sraiw t0, t6, 1
	sraiw t4, a4, 1
	mv a4, a0
	j label200
.p2align 2
label728:
	mv t5, s0
	mv t3, a4
	mv a5, a0
	mv t0, zero
	mv t6, zero
.p2align 2
label729:
	blt t6, s3, label757
	j label735
.p2align 2
label759:
	srliw a6, a5, 31
	srliw s4, t3, 31
	addiw t6, t6, 1
	addi t5, t5, 4
	add a7, a5, a6
	add a6, t3, s4
	sraiw a5, a7, 1
	sraiw t3, a6, 1
	j label729
.p2align 2
label761:
	lw a6, 0(t5)
	srliw s4, t3, 31
	addiw t6, t6, 1
	addi t5, t5, 4
	addw t0, t0, a6
	srliw a6, a5, 31
	add a7, a5, a6
	add a6, t3, s4
	sraiw a5, a7, 1
	sraiw t3, a6, 1
	j label729
.p2align 2
label762:
	andi a6, t3, 1
	beq a6, zero, label761
	j label759
.p2align 2
label735:
	mv a5, s0
	mv t3, a4
	mv t5, zero
	mv a4, a0
	mv a0, zero
.p2align 2
label736:
	bge t5, s3, label742
	and a6, t3, a4
	andi t6, a6, 1
	bne t6, zero, label754
.p2align 2
label2075:
	srliw t6, a4, 31
	srliw a7, t3, 31
	addiw t5, t5, 1
	addi a5, a5, 4
	add a6, a4, t6
	add t6, t3, a7
	sraiw a4, a6, 1
	sraiw t3, t6, 1
	j label736
.p2align 2
label754:
	lw t6, 0(a5)
	addw a0, a0, t6
	j label2075
.p2align 2
label742:
	lw t3, 52(sp)
	mv a4, zero
	lui t6, 16
	addiw t5, t6, -1
	mulw a5, a0, t3
	mv t3, zero
	mv a0, s0
.p2align 2
label743:
	bge t3, s3, label2059
	and t6, t5, a5
	andi a6, t6, 1
	beq a6, zero, label750
	lw t6, 0(a0)
	srliw a6, a5, 31
	srliw a7, t5, 31
	addiw t3, t3, 1
	addi a0, a0, 4
	addw a4, a4, t6
	add t6, a5, a6
	add a6, t5, a7
	sraiw a5, t6, 1
	sraiw t5, a6, 1
	j label743
.p2align 2
label750:
	srliw a6, a5, 31
	srliw a7, t5, 31
	addiw t3, t3, 1
	addi a0, a0, 4
	add t6, a5, a6
	add a6, t5, a7
	sraiw a5, t6, 1
	sraiw t5, a6, 1
	j label743
.p2align 2
label757:
	andi a6, a5, 1
	bne a6, zero, label762
	andi a6, t3, 1
	bne a6, zero, label761
	j label759
.p2align 2
label774:
	mv a4, s0
	mv t3, zero
	mv t5, s1
	mv t0, a5
	mv t4, zero
.p2align 2
label775:
	bge t4, s3, label781
	and t6, t5, t0
	andi a6, t6, 1
	bne a6, zero, label864
.p2align 2
label2275:
	srliw t6, t0, 31
	addiw t4, t4, 1
	addi a4, a4, 4
	add t5, t0, t6
	sraiw t0, t5, 1
	mv t5, zero
	j label775
.p2align 2
label781:
	beq t3, zero, label2136
	mv a4, a2
.p2align 2
label782:
	beq a4, zero, label2136
	mv t5, s0
	mv t4, a4
	mv t3, a1
	mv t0, zero
	mv t6, zero
.p2align 2
label786:
	bge t6, s3, label792
	andi a6, t3, 1
	beq a6, zero, label818
	andi a6, t4, 1
	beq a6, zero, label819
.p2align 2
label816:
	srliw a6, t3, 31
	srliw a7, t4, 31
	addiw t6, t6, 1
	addi t5, t5, 4
	add s4, t3, a6
	add a6, t4, a7
	sraiw t3, s4, 1
	sraiw t4, a6, 1
	j label786
.p2align 2
label792:
	mv t3, s0
	mv t4, a1
	mv t5, zero
	mv a1, zero
.p2align 2
label793:
	bge t5, s3, label799
	and a6, a4, t4
	andi t6, a6, 1
	bne t6, zero, label811
.p2align 2
label2171:
	srliw t6, t4, 31
	srliw a6, a4, 31
	addiw t5, t5, 1
	addi t3, t3, 4
	add a7, t4, t6
	add t6, a4, a6
	sraiw t4, a7, 1
	sraiw a4, t6, 1
	j label793
.p2align 2
label811:
	lw t6, 0(t3)
	addw a1, a1, t6
	j label2171
.p2align 2
label799:
	lw t4, 52(sp)
	mv a4, zero
	lui t6, 16
	mv t5, zero
	mulw t3, a1, t4
	addiw t4, t6, -1
	mv a1, s0
.p2align 2
label800:
	bge t5, s3, label2155
	and a6, t4, t3
	andi t6, a6, 1
	bne t6, zero, label807
.p2align 2
label2160:
	srliw t6, t3, 31
	srliw a7, t4, 31
	addiw t5, t5, 1
	addi a1, a1, 4
	add a6, t3, t6
	add t6, t4, a7
	sraiw t3, a6, 1
	sraiw t4, t6, 1
	j label800
.p2align 2
label807:
	lw t6, 0(a1)
	addw a4, a4, t6
	j label2160
.p2align 2
label818:
	andi a6, t4, 1
	bne a6, zero, label819
	j label816
.p2align 2
label2136:
	mv a4, a1
	mv a1, a2
.p2align 2
label822:
	bne a2, zero, label825
	j label860
.p2align 2
label2245:
	mv a1, t3
	mv a2, t0
	j label822
.p2align 2
label825:
	mv t0, s0
	mv t3, zero
	mv t5, a2
	mv t4, a1
	mv t6, zero
.p2align 2
label826:
	bge t6, s3, label2204
	andi a6, t4, 1
	beq a6, zero, label837
	andi a6, t5, 1
	beq a6, zero, label834
.p2align 2
label2213:
	srliw a6, t4, 31
	srliw s4, t5, 31
	addiw t6, t6, 1
	addi t0, t0, 4
	add a7, t4, a6
	add a6, t5, s4
	sraiw t4, a7, 1
	sraiw t5, a6, 1
	j label826
.p2align 2
label834:
	lw a6, 0(t0)
	addw t3, t3, a6
	j label2213
.p2align 2
label2204:
	mv t0, s0
	mv t4, zero
	mv t5, zero
.p2align 2
label839:
	bge t5, s3, label2227
	and a6, a2, a1
	andi t6, a6, 1
	bne t6, zero, label846
.p2align 2
label2232:
	srliw t6, a1, 31
	srliw a7, a2, 31
	addiw t5, t5, 1
	addi t0, t0, 4
	add a6, a1, t6
	add t6, a2, a7
	sraiw a1, a6, 1
	sraiw a2, t6, 1
	j label839
.p2align 2
label846:
	lw t6, 0(t0)
	addw t4, t4, t6
	j label2232
.p2align 2
label2227:
	lw a1, 52(sp)
	mv a2, s0
	mv t0, zero
	mv t5, zero
	mulw t4, t4, a1
	lui a1, 16
	addiw t6, a1, -1
.p2align 2
label850:
	bge t5, s3, label2245
	and a7, t6, t4
	andi a6, a7, 1
	bne a6, zero, label859
	mv a1, t0
	srliw t0, t4, 31
	srliw a6, t6, 31
	addiw t5, t5, 1
	addi a2, a2, 4
	add a7, t4, t0
	add t0, t6, a6
	sraiw t4, a7, 1
	sraiw t6, t0, 1
	mv t0, a1
	j label850
.p2align 2
label837:
	andi a6, t5, 1
	bne a6, zero, label834
	j label2213
.p2align 2
label860:
	lui t0, 8
	addiw a2, t0, -1
	ble a5, a2, label861
	lw t3, 52(sp)
	lui t4, 16
	divw a2, a5, t3
	lw t3, 108(sp)
	addw t0, a2, t4
	mv a2, a1
	subw a5, t0, t3
	mv a1, a4
	j label770
.p2align 2
label819:
	lw a6, 0(t5)
	srliw a7, t4, 31
	addiw t6, t6, 1
	addi t5, t5, 4
	addw t0, t0, a6
	srliw a6, t3, 31
	add s4, t3, a6
	add a6, t4, a7
	sraiw t3, s4, 1
	sraiw t4, a6, 1
	j label786
.p2align 2
label2155:
	mv a1, t0
	j label782
.p2align 2
label864:
	lw t5, 0(a4)
	addw t3, t3, t5
	j label2275
.p2align 2
label1128:
	mv a0, a4
	j label131
.p2align 2
label859:
	lw a6, 0(a2)
	addiw t5, t5, 1
	addi a2, a2, 4
	addw a1, t0, a6
	srliw a6, t6, 31
	srliw t0, t4, 31
	add a7, t4, t0
	add t0, t6, a6
	sraiw t4, a7, 1
	sraiw t6, t0, 1
	mv t0, a1
	j label850
.p2align 2
label1966:
	mv a5, a4
	mv a0, a2
	mv a4, a2
.p2align 2
label684:
	bne a0, zero, label690
	j label687
.p2align 2
label2029:
	mv a4, a2
	j label684
.p2align 2
label690:
	mv t5, s0
	mv t0, a0
	mv t3, a4
	mv a2, zero
	mv t6, zero
.p2align 2
label691:
	bge t6, s3, label1988
	andi a6, t3, 1
	bne a6, zero, label702
	andi a6, t0, 1
	bne a6, zero, label699
	j label1996
.p2align 2
label1988:
	mv t0, s0
	mv t3, zero
	mv t5, zero
.p2align 2
label704:
	bge t5, s3, label2011
	and a6, a0, a4
	andi t6, a6, 1
	bne t6, zero, label711
.p2align 2
label2016:
	srliw t6, a4, 31
	srliw a7, a0, 31
	addiw t5, t5, 1
	addi t0, t0, 4
	add a6, a4, t6
	add t6, a0, a7
	sraiw a4, a6, 1
	sraiw a0, t6, 1
	j label704
.p2align 2
label711:
	lw t6, 0(t0)
	addw t3, t3, t6
	j label2016
.p2align 2
label2011:
	lw t6, 52(sp)
	mv t0, s0
	mv a0, zero
	mv t5, zero
	mulw a4, t3, t6
	lui t6, 16
	addiw t3, t6, -1
.p2align 2
label715:
	bge t5, s3, label2029
	and a6, t3, a4
	andi t6, a6, 1
	bne t6, zero, label722
.p2align 2
label2034:
	srliw a6, a4, 31
	srliw a7, t3, 31
	addiw t5, t5, 1
	addi t0, t0, 4
	add t6, a4, a6
	add a6, t3, a7
	sraiw a4, t6, 1
	sraiw t3, a6, 1
	j label715
.p2align 2
label722:
	lw t6, 0(t0)
	addw a0, a0, t6
	j label2034
.p2align 2
label687:
	lui a2, 8
	addiw a0, a2, -1
	bgt a1, a0, label689
	lw a0, 52(sp)
	mv a2, a4
	mv a4, a5
	divw a1, a1, a0
	j label670
.p2align 2
label1996:
	srliw a7, t3, 31
	addiw t6, t6, 1
	addi t5, t5, 4
	add a6, t3, a7
	srliw a7, t0, 31
	sraiw t3, a6, 1
	add a6, t0, a7
	sraiw t0, a6, 1
	j label691
.p2align 2
label699:
	lw a6, 0(t5)
	addw a2, a2, a6
	j label1996
.p2align 2
label702:
	andi a6, t0, 1
	beq a6, zero, label699
	j label1996
.p2align 2
label2044:
	mv a5, a0
	mv a4, a2
	mv a0, a2
	j label684
.p2align 2
label689:
	lw t0, 52(sp)
	lui t3, 16
	divw a2, a1, t0
	lw t0, 108(sp)
	addw a0, a2, t3
	mv a2, a4
	subw a1, a0, t0
	mv a4, a5
	j label670
