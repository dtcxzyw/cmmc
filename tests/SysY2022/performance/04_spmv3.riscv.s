.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
x:
	.zero	400040
.p2align 3
y:
	.zero	12000000
.p2align 3
v:
	.zero	12000000
.p2align 3
a:
	.zero	400040
.p2align 3
b:
	.zero	400040
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
pcrel798:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel798)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getarray
pcrel799:
	auipc a1, %pcrel_hi(y)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel799)
	jal getarray
pcrel800:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel800)
	jal getarray
pcrel801:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel801)
	jal getarray
	li a0, 39
	jal _sysy_starttime
	li s3, 100
pcrel802:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	mv s5, zero
pcrel803:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel804:
	auipc a0, %pcrel_hi(b)
	addiw s0, s1, -1
	addi s2, a0, %pcrel_lo(pcrel804)
	addi s1, a1, %pcrel_lo(pcrel802)
	j label722
.p2align 2
label725:
	addiw s5, s5, 1
	bge s5, s3, label726
.p2align 2
label722:
	ble s0, zero, label725
pcrel805:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s0, %pcrel_lo(pcrel805)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
pcrel806:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
pcrel807:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
	addi a2, a3, %pcrel_lo(pcrel806)
	sw s0, %pcrel_lo(pcrel807)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel808:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
pcrel809:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	addi a2, a3, %pcrel_lo(pcrel808)
	sw s0, %pcrel_lo(pcrel809)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel810:
	auipc a3, %pcrel_hi(cmmc_parallel_body_3)
pcrel811:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a3, %pcrel_lo(pcrel810)
	sw s0, %pcrel_lo(pcrel811)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	j label725
label726:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s2
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel118:
	auipc a0, %pcrel_hi(b)
	addi a3, a0, %pcrel_lo(pcrel118)
	ble a1, a4, label16
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label37
	sh2add a0, a2, a3
	j label12
.p2align 2
label15:
	addi a0, a0, 64
.p2align 2
label12:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label15
	mv a0, a2
label3:
	ble a4, a0, label16
	sh2add a5, a0, a3
	mv a2, a0
	j label7
label10:
	addi a5, a5, 16
label7:
	addiw a2, a2, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	bgt a4, a2, label10
label16:
	ble a1, a2, label18
	sh2add a0, a2, a3
	j label20
label23:
	addi a0, a0, 4
label20:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label23
label18:
	ret
label37:
	mv a0, a2
	mv a2, zero
	j label3
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -32
	mv t0, a0
	mv a3, a1
pcrel356:
	auipc a2, %pcrel_hi(x)
pcrel357:
	auipc t1, %pcrel_hi(y)
pcrel358:
	auipc a5, %pcrel_hi(b)
pcrel359:
	auipc t2, %pcrel_hi(v)
	addi a0, a2, %pcrel_lo(pcrel356)
	addi a1, t1, %pcrel_lo(pcrel357)
	addi a2, t2, %pcrel_lo(pcrel359)
	sh2add a4, t0, a0
	sd s1, 0(sp)
pcrel360:
	auipc t1, %pcrel_hi(a)
	addi a0, a5, %pcrel_lo(pcrel358)
	sd s0, 8(sp)
	addi a5, t1, %pcrel_lo(pcrel360)
	sd s2, 16(sp)
	sd s3, 24(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label126
	j label123
.p2align 2
label288:
	addiw t0, t0, 1
	ble a3, t0, label125
.p2align 2
label124:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label123
.p2align 2
label126:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label182
	sh2add t3, t5, a2
	mv t6, t5
	j label128
.p2align 2
label131:
	addi t3, t3, 16
.p2align 2
label128:
	sh2add a6, t6, a1
	addiw t6, t6, 4
	lw s1, 0(a6)
	lw s0, 0(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 4(a6)
	lw s2, 4(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s3, s2, (a7)
	lw s0, 8(a6)
	lw s1, 8(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 12(a6)
	lw a6, 12(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s1, a6, (a7)
	bgt t2, t6, label131
	ble t1, t6, label338
.p2align 2
label147:
	sh2add t3, t6, a1
	j label148
.p2align 2
label151:
	addi t3, t3, 4
.p2align 2
label148:
	lw a7, 0(t3)
	sh2add s0, t6, a2
	sh2add a6, a7, a0
	addiw t6, t6, 1
	lw a7, 0(s0)
	amoadd.w.aqrl s1, a7, (a6)
	bgt t1, t6, label151
	sh2add t6, t0, a5
	lw a6, 0(t6)
	addi t3, a6, -1
	ble t1, t4, label343
.p2align 2
label135:
	sh2add t4, t5, a2
.p2align 2
label136:
	sh2add t6, t5, a1
	addiw t5, t5, 4
	lw s0, 0(t6)
	lw a7, 0(t4)
	sh2add a6, s0, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s2, s1, (a6)
	lw s0, 4(t6)
	lw s1, 4(t4)
	sh2add a7, s0, a0
	mulw a6, t3, s1
	amoadd.w.aqrl s2, a6, (a7)
	lw s0, 8(t6)
	lw a7, 8(t4)
	sh2add a6, s0, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s2, s1, (a6)
	lw s0, 12(t6)
	lw a7, 12(t4)
	sh2add a6, s0, a0
	mulw t6, t3, a7
	amoadd.w.aqrl s0, t6, (a6)
	ble t2, t5, label268
	addi t4, t4, 16
	j label136
.p2align 2
label268:
	ble t1, t5, label340
.p2align 2
label142:
	sh2add t2, t5, a1
	mv t4, t5
.p2align 2
label143:
	sh2add t6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(t6)
	sh2add t6, t5, a0
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (t6)
	ble t1, t4, label288
	addi t2, t2, 4
	j label143
label123:
	addiw t0, t0, 1
	bgt a3, t0, label124
	j label125
label182:
	mv t6, t5
	bgt t1, t5, label147
	sh2add t6, t0, a5
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t4, label135
	j label229
.p2align 2
label338:
	sh2add t6, t0, a5
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t4, label135
label229:
	bgt t1, t5, label142
	j label273
label125:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	addi sp, sp, 32
	ret
label343:
	bgt t1, t5, label142
label273:
	addiw t0, t0, 1
	bgt a3, t0, label124
	j label125
.p2align 2
label340:
	addiw t0, t0, 1
	bgt a3, t0, label124
	j label125
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel478:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel478)
	ble a1, a4, label376
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label397
	sh2add a0, a2, a3
	j label372
.p2align 2
label375:
	addi a0, a0, 64
.p2align 2
label372:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label375
	mv a0, a2
label363:
	ble a4, a0, label376
	sh2add a5, a0, a3
	mv a2, a0
	j label367
label370:
	addi a5, a5, 16
label367:
	addiw a2, a2, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	bgt a4, a2, label370
label376:
	ble a1, a2, label378
	sh2add a0, a2, a3
	j label380
label383:
	addi a0, a0, 4
label380:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label383
label378:
	ret
label397:
	mv a0, a2
	mv a2, zero
	j label363
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -32
	mv t0, a0
	mv a3, a1
pcrel716:
	auipc a2, %pcrel_hi(x)
pcrel717:
	auipc t1, %pcrel_hi(y)
pcrel718:
	auipc a5, %pcrel_hi(a)
pcrel719:
	auipc t2, %pcrel_hi(v)
	addi a0, a2, %pcrel_lo(pcrel716)
	addi a1, t1, %pcrel_lo(pcrel717)
	addi a2, t2, %pcrel_lo(pcrel719)
	sh2add a4, t0, a0
	sd s1, 0(sp)
pcrel720:
	auipc t1, %pcrel_hi(b)
	addi a0, a5, %pcrel_lo(pcrel718)
	sd s0, 8(sp)
	addi a5, t1, %pcrel_lo(pcrel720)
	sd s2, 16(sp)
	sd s3, 24(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label486
	j label483
.p2align 2
label648:
	addiw t0, t0, 1
	ble a3, t0, label485
.p2align 2
label484:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label483
.p2align 2
label486:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label542
	sh2add t3, t5, a2
	mv t6, t5
	j label488
.p2align 2
label491:
	addi t3, t3, 16
.p2align 2
label488:
	sh2add a6, t6, a1
	addiw t6, t6, 4
	lw s1, 0(a6)
	lw s0, 0(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 4(a6)
	lw s2, 4(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s3, s2, (a7)
	lw s0, 8(a6)
	lw s1, 8(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 12(a6)
	lw a6, 12(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s1, a6, (a7)
	bgt t2, t6, label491
	ble t1, t6, label698
.p2align 2
label507:
	sh2add t3, t6, a1
	j label508
.p2align 2
label511:
	addi t3, t3, 4
.p2align 2
label508:
	lw a7, 0(t3)
	sh2add s0, t6, a2
	sh2add a6, a7, a0
	addiw t6, t6, 1
	lw a7, 0(s0)
	amoadd.w.aqrl s1, a7, (a6)
	bgt t1, t6, label511
	sh2add t6, t0, a5
	lw a6, 0(t6)
	addi t3, a6, -1
	ble t1, t4, label703
.p2align 2
label495:
	sh2add t4, t5, a2
.p2align 2
label496:
	sh2add t6, t5, a1
	addiw t5, t5, 4
	lw s0, 0(t6)
	lw a7, 0(t4)
	sh2add a6, s0, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s2, s1, (a6)
	lw s0, 4(t6)
	lw s1, 4(t4)
	sh2add a7, s0, a0
	mulw a6, t3, s1
	amoadd.w.aqrl s2, a6, (a7)
	lw s0, 8(t6)
	lw a7, 8(t4)
	sh2add a6, s0, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s2, s1, (a6)
	lw s0, 12(t6)
	lw a7, 12(t4)
	sh2add a6, s0, a0
	mulw t6, t3, a7
	amoadd.w.aqrl s0, t6, (a6)
	ble t2, t5, label628
	addi t4, t4, 16
	j label496
.p2align 2
label628:
	ble t1, t5, label700
.p2align 2
label502:
	sh2add t2, t5, a1
	mv t4, t5
.p2align 2
label503:
	sh2add t6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(t6)
	sh2add t6, t5, a0
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (t6)
	ble t1, t4, label648
	addi t2, t2, 4
	j label503
label483:
	addiw t0, t0, 1
	bgt a3, t0, label484
	j label485
label542:
	mv t6, t5
	bgt t1, t5, label507
	sh2add t6, t0, a5
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t4, label495
	j label589
.p2align 2
label698:
	sh2add t6, t0, a5
	lw a6, 0(t6)
	addi t3, a6, -1
	bgt t1, t4, label495
label589:
	bgt t1, t5, label502
	j label633
label485:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	addi sp, sp, 32
	ret
label703:
	bgt t1, t5, label502
label633:
	addiw t0, t0, 1
	bgt a3, t0, label484
	j label485
.p2align 2
label700:
	addiw t0, t0, 1
	bgt a3, t0, label484
	j label485
