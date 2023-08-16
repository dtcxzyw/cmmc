.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.align 8
cmmc_parallel_body_payload_3:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
pcrel797:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel797)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s4, 40(sp)
	sd s9, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s7, 72(sp)
	sd s8, 80(sp)
	jal getarray
pcrel798:
	auipc a1, %pcrel_hi(y)
	mv s1, a0
	addi a0, a1, %pcrel_lo(pcrel798)
	jal getarray
pcrel799:
	auipc a1, %pcrel_hi(v)
	addi a0, a1, %pcrel_lo(pcrel799)
	jal getarray
pcrel800:
	auipc a1, %pcrel_hi(a)
	addi a0, a1, %pcrel_lo(pcrel800)
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel801:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_2)
	addiw s0, s1, -1
pcrel802:
	auipc a0, %pcrel_hi(b)
	mv s9, zero
pcrel803:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	li s5, 100
pcrel804:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel805:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_0)
	addi s4, a0, %pcrel_lo(pcrel802)
	addi s1, a1, %pcrel_lo(pcrel803)
pcrel806:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
pcrel807:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	addi s2, a0, %pcrel_lo(pcrel806)
	addi s3, a1, %pcrel_lo(pcrel807)
	j label711
.p2align 2
label714:
	addiw s9, s9, 1
	bge s9, s5, label715
.p2align 2
label711:
	ble s0, zero, label714
pcrel808:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s0, %pcrel_lo(pcrel808)(s6)
	mv a0, zero
	mv a1, s0
	mv a2, s1
	jal cmmcParallelFor
	mv a0, zero
pcrel809:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(pcrel809)(s7)
	mv a1, s0
	mv a2, s2
	jal cmmcParallelFor
	mv a0, zero
pcrel810:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw s0, %pcrel_lo(pcrel810)(s8)
	mv a1, s0
	mv a2, s3
	jal cmmcParallelFor
pcrel811:
	auipc a3, %pcrel_hi(cmmc_parallel_body_3)
pcrel812:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a3, %pcrel_lo(pcrel811)
	sw s0, %pcrel_lo(pcrel812)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	j label714
label715:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s4
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s4, 40(sp)
	ld s9, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s7, 72(sp)
	ld s8, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel114:
	auipc a0, %pcrel_hi(b)
	addi a3, a0, %pcrel_lo(pcrel114)
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
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
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
pcrel352:
	auipc a2, %pcrel_hi(x)
pcrel353:
	auipc t1, %pcrel_hi(y)
pcrel354:
	auipc a5, %pcrel_hi(b)
pcrel355:
	auipc t2, %pcrel_hi(v)
	addi a0, a2, %pcrel_lo(pcrel352)
	addi a1, t1, %pcrel_lo(pcrel353)
	addi a2, t2, %pcrel_lo(pcrel355)
	sh2add a4, t0, a0
	sd s0, 0(sp)
pcrel356:
	auipc t1, %pcrel_hi(a)
	addi a0, a5, %pcrel_lo(pcrel354)
	sd s1, 8(sp)
	addi a5, t1, %pcrel_lo(pcrel356)
	sd s3, 16(sp)
	sd s2, 24(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label122
	j label119
.p2align 2
label259:
	addiw t0, t0, 1
	ble a3, t0, label120
.p2align 2
label121:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label119
.p2align 2
label122:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label178
	sh2add t3, t5, a2
	mv t6, t5
	j label124
.p2align 2
label127:
	addi t3, t3, 16
.p2align 2
label124:
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
	bgt t2, t6, label127
	ble t1, t6, label334
.p2align 2
label130:
	sh2add t3, t6, a1
.p2align 2
label131:
	lw a7, 0(t3)
	sh2add s0, t6, a2
	sh2add a6, a7, a0
	addiw t6, t6, 1
	lw a7, 0(s0)
	amoadd.w.aqrl s1, a7, (a6)
	ble t1, t6, label232
	addi t3, t3, 4
	j label131
.p2align 2
label232:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t4, label336
.p2align 2
label143:
	sh2add t4, t5, a2
	j label144
.p2align 2
label147:
	addi t4, t4, 16
.p2align 2
label144:
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
	bgt t2, t5, label147
	ble t1, t5, label339
.p2align 2
label138:
	sh2add t2, t5, a1
	mv t4, t5
.p2align 2
label139:
	sh2add t6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(t6)
	sh2add t6, t5, a0
	mulw a6, t3, a7
	amoadd.w.aqrl a7, a6, (t6)
	ble t1, t4, label259
	addi t2, t2, 4
	j label139
label119:
	addiw t0, t0, 1
	bgt a3, t0, label121
	j label120
label178:
	mv t6, t5
	bgt t1, t5, label130
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label143
	j label136
.p2align 2
label334:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label143
label136:
	bgt t1, t5, label138
	j label244
label120:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label336:
	bgt t1, t5, label138
label244:
	addiw t0, t0, 1
	bgt a3, t0, label121
	j label120
.p2align 2
label339:
	addiw t0, t0, 1
	bgt a3, t0, label121
	j label120
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel470:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel470)
	ble a1, a4, label372
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label393
	sh2add a0, a2, a3
	j label368
.p2align 2
label371:
	addi a0, a0, 64
.p2align 2
label368:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label371
	mv a0, a2
label359:
	ble a4, a0, label372
	sh2add a5, a0, a3
	mv a2, a0
	j label363
label366:
	addi a5, a5, 16
label363:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label366
label372:
	ble a1, a2, label379
	sh2add a0, a2, a3
	j label375
label378:
	addi a0, a0, 4
label375:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label378
label379:
	ret
label393:
	mv a0, a2
	mv a2, zero
	j label359
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -32
	mv t0, a0
	mv a3, a1
pcrel705:
	auipc a5, %pcrel_hi(x)
pcrel706:
	auipc a2, %pcrel_hi(y)
pcrel707:
	auipc t1, %pcrel_hi(v)
pcrel708:
	auipc t2, %pcrel_hi(b)
	addi a0, a5, %pcrel_lo(pcrel705)
	addi a1, a2, %pcrel_lo(pcrel706)
pcrel709:
	auipc a5, %pcrel_hi(a)
	sh2add a4, t0, a0
	sd s1, 0(sp)
	addi a2, t1, %pcrel_lo(pcrel707)
	addi a0, a5, %pcrel_lo(pcrel709)
	sd s0, 8(sp)
	addi a5, t2, %pcrel_lo(pcrel708)
	sd s2, 16(sp)
	sd s3, 24(sp)
	lw t5, 0(a4)
	lw t1, 4(a4)
	blt t5, t1, label475
	j label501
.p2align 2
label490:
	addi t2, t2, 4
.p2align 2
label487:
	sh2add a6, t4, a2
	lw t5, 0(t2)
	addiw t4, t4, 1
	lw a7, 0(a6)
	sh2add a6, t5, a0
	mulw t6, t3, a7
	amoadd.w.aqrl a7, t6, (a6)
	bgt t1, t4, label490
	addiw t0, t0, 1
	ble a3, t0, label503
.p2align 2
label502:
	addi a4, a4, 4
	lw t5, 0(a4)
	lw t1, 4(a4)
	bge t5, t1, label501
.p2align 2
label475:
	addiw t4, t5, 3
	addiw t2, t1, -3
	ble t1, t4, label528
	sh2add t3, t5, a2
	mv t6, t5
	j label477
.p2align 2
label480:
	addi t3, t3, 16
.p2align 2
label477:
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
	bgt t2, t6, label480
	ble t1, t6, label689
.p2align 2
label496:
	sh2add t3, t6, a1
	j label497
.p2align 2
label500:
	addi t3, t3, 4
.p2align 2
label497:
	lw s0, 0(t3)
	sh2add a7, t6, a2
	sh2add a6, s0, a0
	addiw t6, t6, 1
	lw s1, 0(a7)
	amoadd.w.aqrl s0, s1, (a6)
	bgt t1, t6, label500
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	ble t1, t4, label693
.p2align 2
label491:
	sh2add t4, t5, a2
	j label492
.p2align 2
label495:
	addi t4, t4, 16
.p2align 2
label492:
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
	bgt t2, t5, label495
	ble t1, t5, label692
.p2align 2
label486:
	sh2add t2, t5, a1
	mv t4, t5
	j label487
label501:
	addiw t0, t0, 1
	bgt a3, t0, label502
	j label503
label528:
	mv t6, t5
	bgt t1, t5, label496
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label491
	j label484
.p2align 2
label689:
	sh2add a6, t0, a5
	lw t6, 0(a6)
	addi t3, t6, -1
	bgt t1, t4, label491
label484:
	bgt t1, t5, label486
	j label579
label503:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	addi sp, sp, 32
	ret
label693:
	bgt t1, t5, label486
label579:
	addiw t0, t0, 1
	bgt a3, t0, label502
	j label503
.p2align 2
label692:
	addiw t0, t0, 1
	bgt a3, t0, label502
	j label503
