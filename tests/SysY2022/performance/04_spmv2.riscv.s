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
pcrel803:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel803)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	jal getarray
pcrel804:
	auipc a1, %pcrel_hi(y)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel804)
	jal getarray
pcrel805:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel805)
	jal getarray
pcrel806:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel806)
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel807:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel808:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	mv s5, zero
	li s3, 100
pcrel809:
	auipc a0, %pcrel_hi(b)
	addiw s0, s1, -1
	addi s2, a0, %pcrel_lo(pcrel809)
	addi s1, a1, %pcrel_lo(pcrel808)
	j label727
.p2align 2
label730:
	addiw s5, s5, 1
	bge s5, s3, label731
.p2align 2
label727:
	ble s0, zero, label730
pcrel810:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s0, %pcrel_lo(pcrel810)(s4)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
pcrel811:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
pcrel812:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
	addi a2, a3, %pcrel_lo(pcrel811)
	sw s0, %pcrel_lo(pcrel812)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel813:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
pcrel814:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	addi a2, a3, %pcrel_lo(pcrel813)
	sw s0, %pcrel_lo(pcrel814)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel815:
	auipc a3, %pcrel_hi(cmmc_parallel_body_3)
pcrel816:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a3, %pcrel_lo(pcrel815)
	sw s0, %pcrel_lo(pcrel816)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	j label730
label731:
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
	ble a1, a2, label23
	sh2add a0, a2, a3
	j label19
label22:
	addi a0, a0, 4
label19:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label22
label23:
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
pcrel360:
	auipc a2, %pcrel_hi(x)
pcrel361:
	auipc t1, %pcrel_hi(y)
pcrel362:
	auipc a5, %pcrel_hi(b)
pcrel363:
	auipc t2, %pcrel_hi(v)
	addi a0, a2, %pcrel_lo(pcrel360)
	addi a1, t1, %pcrel_lo(pcrel361)
	addi a2, t2, %pcrel_lo(pcrel363)
	sh2add a4, t0, a0
	sd s0, 0(sp)
pcrel364:
	auipc t1, %pcrel_hi(a)
	addi a0, a5, %pcrel_lo(pcrel362)
	sd s1, 8(sp)
	addi a5, t1, %pcrel_lo(pcrel364)
	sd s3, 16(sp)
	sd s2, 24(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label126
	j label123
.p2align 2
label263:
	addiw t0, t0, 1
	ble a3, t0, label124
.p2align 2
label125:
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
	lw s0, 0(a6)
	lw s1, 0(t3)
	sh2add a7, s0, a0
	amoadd.w.aqrl s3, s1, (a7)
	lw s2, 4(a6)
	lw s0, 4(t3)
	sh2add a7, s2, a0
	amoadd.w.aqrl s3, s0, (a7)
	lw s1, 8(a6)
	lw s0, 8(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s2, s0, (a7)
	lw s1, 12(a6)
	lw a6, 12(t3)
	sh2add a7, s1, a0
	amoadd.w.aqrl s0, a6, (a7)
	bgt t2, t6, label131
	ble t1, t6, label338
.p2align 2
label134:
	sh2add t3, t6, a1
.p2align 2
label135:
	lw a7, 0(t3)
	sh2add s0, t6, a2
	sh2add a6, a7, a0
	addiw t6, t6, 1
	lw a7, 0(s0)
	amoadd.w.aqrl s1, a7, (a6)
	ble t1, t6, label236
	addi t3, t3, 4
	j label135
.p2align 2
label236:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t4, label340
.p2align 2
label147:
	sh2add t4, t5, a2
	j label148
.p2align 2
label151:
	addi t4, t4, 16
.p2align 2
label148:
	sh2add t6, t5, a1
	addiw t5, t5, 4
	lw a7, 0(t6)
	lw s1, 0(t4)
	sh2add a6, a7, a0
	mulw a7, t3, s1
	amoadd.w.aqrl s2, a7, (a6)
	lw s0, 4(t6)
	lw a6, 4(t4)
	sh2add a7, s0, a0
	mulw s1, t3, a6
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 8(t6)
	lw a7, 8(t4)
	sh2add a6, s0, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s2, s1, (a6)
	lw s0, 12(t6)
	lw a6, 12(t4)
	sh2add a7, s0, a0
	mulw t6, t3, a6
	amoadd.w.aqrl s0, t6, (a7)
	bgt t2, t5, label151
	ble t1, t5, label343
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
	ble t1, t4, label263
	addi t2, t2, 4
	j label143
label123:
	addiw t0, t0, 1
	bgt a3, t0, label125
	j label124
label182:
	mv t6, t5
	bgt t1, t5, label134
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label147
	j label140
.p2align 2
label338:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label147
label140:
	bgt t1, t5, label142
	j label248
label124:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label340:
	bgt t1, t5, label142
label248:
	addiw t0, t0, 1
	bgt a3, t0, label125
	j label124
.p2align 2
label343:
	addiw t0, t0, 1
	bgt a3, t0, label125
	j label124
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel482:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel482)
	ble a1, a4, label380
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label401
	sh2add a0, a2, a3
	j label376
.p2align 2
label379:
	addi a0, a0, 64
.p2align 2
label376:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label379
	mv a0, a2
label367:
	ble a4, a0, label380
	sh2add a5, a0, a3
	mv a2, a0
	j label371
label374:
	addi a5, a5, 16
label371:
	addiw a2, a2, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	bgt a4, a2, label374
label380:
	ble a1, a2, label387
	sh2add a0, a2, a3
	j label383
label386:
	addi a0, a0, 4
label383:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label386
label387:
	ret
label401:
	mv a0, a2
	mv a2, zero
	j label367
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -32
	mv t0, a0
	mv a3, a1
pcrel721:
	auipc a5, %pcrel_hi(x)
pcrel722:
	auipc a2, %pcrel_hi(y)
pcrel723:
	auipc t1, %pcrel_hi(v)
pcrel724:
	auipc t2, %pcrel_hi(b)
	addi a0, a5, %pcrel_lo(pcrel721)
	addi a1, a2, %pcrel_lo(pcrel722)
pcrel725:
	auipc a5, %pcrel_hi(a)
	sh2add a4, t0, a0
	sd s1, 0(sp)
	addi a2, t1, %pcrel_lo(pcrel723)
	addi a0, a5, %pcrel_lo(pcrel725)
	sd s0, 8(sp)
	addi a5, t2, %pcrel_lo(pcrel724)
	sd s2, 16(sp)
	sd s3, 24(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label487
	j label513
.p2align 2
label502:
	addi t2, t2, 4
.p2align 2
label499:
	sh2add a6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(a6)
	sh2add a6, t5, a0
	mulw t6, t3, a7
	amoadd.w.aqrl a7, t6, (a6)
	bgt t1, t4, label502
	addiw t0, t0, 1
	ble a3, t0, label515
.p2align 2
label514:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label513
.p2align 2
label487:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label540
	sh2add t3, t5, a2
	mv t6, t5
	j label489
.p2align 2
label492:
	addi t3, t3, 16
.p2align 2
label489:
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
	bgt t2, t6, label492
	ble t1, t6, label701
.p2align 2
label508:
	sh2add t3, t6, a1
	j label509
.p2align 2
label512:
	addi t3, t3, 4
.p2align 2
label509:
	lw s0, 0(t3)
	sh2add a7, t6, a2
	sh2add a6, s0, a0
	addiw t6, t6, 1
	lw s1, 0(a7)
	amoadd.w.aqrl s0, s1, (a6)
	bgt t1, t6, label512
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t4, label705
.p2align 2
label503:
	sh2add t4, t5, a2
	j label504
.p2align 2
label507:
	addi t4, t4, 16
.p2align 2
label504:
	sh2add t6, t5, a1
	addiw t5, t5, 4
	lw a7, 0(t6)
	lw s0, 0(t4)
	sh2add a6, a7, a0
	mulw a7, t3, s0
	amoadd.w.aqrl s1, a7, (a6)
	lw s2, 4(t6)
	lw a7, 4(t4)
	sh2add a6, s2, a0
	mulw s1, t3, a7
	amoadd.w.aqrl s2, s1, (a6)
	lw s0, 8(t6)
	lw a6, 8(t4)
	sh2add a7, s0, a0
	mulw s1, t3, a6
	amoadd.w.aqrl s2, s1, (a7)
	lw s0, 12(t6)
	lw a7, 12(t4)
	sh2add a6, s0, a0
	mulw t6, t3, a7
	amoadd.w.aqrl s0, t6, (a6)
	bgt t2, t5, label507
	ble t1, t5, label704
.p2align 2
label498:
	sh2add t2, t5, a1
	mv t4, t5
	j label499
label513:
	addiw t0, t0, 1
	bgt a3, t0, label514
	j label515
label540:
	mv t6, t5
	bgt t1, t5, label508
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label503
	j label496
.p2align 2
label701:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label503
label496:
	bgt t1, t5, label498
	j label591
label515:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	addi sp, sp, 32
	ret
label705:
	bgt t1, t5, label498
label591:
	addiw t0, t0, 1
	bgt a3, t0, label514
	j label515
.p2align 2
label704:
	addiw t0, t0, 1
	bgt a3, t0, label514
	j label515
