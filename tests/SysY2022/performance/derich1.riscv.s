.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	3191654481
	.4byte	1038821134
	.4byte	3206230588
	.4byte	3191992809
	.4byte	1038256634
.bss
.align 8
imgIn:
	.zero	552960
.align 8
imgOut:
	.zero	552960
.align 8
my_y1:
	.zero	552960
.align 8
my_y2:
	.zero	552960
.align 8
cmmc_parallel_body_payload_0:
	.zero	24
.align 8
cmmc_parallel_body_payload_1:
	.zero	24
.align 8
cmmc_parallel_body_payload_2:
	.zero	8
.align 8
cmmc_parallel_body_payload_3:
	.zero	8
.text
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel1503:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel1503)
	fsw f8, 8(sp)
	fsw f9, 12(sp)
	fsw f18, 16(sp)
	fsw f19, 20(sp)
	sd s1, 24(sp)
	sd s0, 32(sp)
	sd s2, 40(sp)
	jal getfarray
	li a0, 156
	jal _sysy_starttime
pcrel1504:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel1505:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s1, 270
	li s0, 512
	addi a1, a3, %pcrel_lo(pcrel1504)
	addi a0, a2, %pcrel_lo(pcrel1505)
	flw f8, 12(a1)
pcrel1506:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	fsw f8, %pcrel_lo(pcrel1505)(a2)
	lui a2, 260096
	flw f9, 16(a1)
	fmv.w.x f18, a2
	li a2, 1
	fsw f9, 4(a0)
	slli s2, a2, 41
	fsw f18, 8(a0)
	addi a2, a3, %pcrel_lo(pcrel1506)
	flw f19, 8(a1)
	ori a1, s2, 270
	fsw f19, 12(a0)
	sd a1, 16(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	mv a1, s0
	mv a0, zero
pcrel1507:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	addi a2, a3, %pcrel_lo(pcrel1507)
	jal cmmcParallelFor
pcrel1508:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1509:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	ori a1, s2, 270
	addi a2, a3, %pcrel_lo(pcrel1509)
	sd a1, %pcrel_lo(pcrel1508)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel1510:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a2, 270
pcrel1511:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	addi a0, a1, %pcrel_lo(pcrel1510)
	fsw f8, %pcrel_lo(pcrel1510)(a1)
	slli a1, a2, 32
	fsw f9, 4(a0)
	addi a2, a4, %pcrel_lo(pcrel1511)
	addi a3, a1, 512
	fsw f18, 8(a0)
	fsw f19, 12(a0)
	sd a3, 16(a0)
	mv a1, s1
	mv a0, zero
	jal cmmcParallelFor
	mv a1, s1
	mv a0, zero
pcrel1512:
	auipc a3, %pcrel_hi(cmmc_parallel_body_5)
	addi a2, a3, %pcrel_lo(pcrel1512)
	jal cmmcParallelFor
pcrel1513:
	auipc a3, %pcrel_hi(cmmc_parallel_body_3)
	ori a1, s2, 270
pcrel1514:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a3, %pcrel_lo(pcrel1513)
	sd a1, %pcrel_lo(pcrel1514)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 158
pcrel1515:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel1515)
	jal _sysy_stoptime
	mv a1, s0
	li a2, 135
	slli a0, a2, 10
	jal putfarray
	ld ra, 0(sp)
	mv a0, zero
	flw f8, 8(sp)
	flw f9, 12(sp)
	flw f18, 16(sp)
	flw f19, 20(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
cmmc_parallel_body_0:
	mv a5, a0
	mv a4, a1
pcrel216:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel217:
	auipc t0, %pcrel_hi(my_y1)
pcrel218:
	auipc t1, %pcrel_hi(imgOut)
	li t4, 3
	flw f10, %pcrel_lo(pcrel216)(a2)
	addi a0, a2, %pcrel_lo(pcrel216)
	addi a1, t0, %pcrel_lo(pcrel217)
	addi a2, t1, %pcrel_lo(pcrel218)
	flw f11, 4(a0)
	flw f12, 8(a0)
	flw f13, 12(a0)
	lw a3, 16(a0)
	li a0, 1080
	addi t2, a3, -3
	slli t0, a0, 1
	addi t1, t0, 1080
	addi t3, t1, 1080
	bgt a3, t4, label2
	bgt a3, zero, label22
	j label32
.p2align 2
label30:
	addi t0, t0, 1080
	fmv.s f2, f15
	fmv.s f1, f14
	fmv.s f14, f0
.p2align 2
label24:
	sh2add t2, a5, t0
	fmul.s f4, f11, f2
	flw f15, 0(t2)
	fmul.s f5, f12, f14
	mulw t3, t1, a0
	fmul.s f0, f10, f15
	addiw t1, t1, 1
	add t2, a1, t3
	sh2add t4, a5, t2
	fadd.s f3, f0, f4
	fmul.s f4, f13, f1
	fadd.s f2, f3, f5
	fadd.s f0, f2, f4
	fsw f0, 0(t4)
	bgt a3, t1, label30
	addiw a5, a5, 1
	ble a4, a5, label32
.p2align 2
label22:
	fmv.w.x f1, zero
	mv t0, a2
	mv t1, zero
	fmv.s f14, f1
	fmv.s f2, f1
	j label24
.p2align 2
label141:
	addiw a5, a5, 1
	ble a4, a5, label32
.p2align 2
label2:
	fmv.w.x f14, zero
	mv t4, a2
	mv t5, zero
	fmv.s f0, f14
	fmv.s f1, f14
	j label4
.p2align 2
label10:
	add t4, t4, t3
	fmv.s f1, f0
	fmv.s f0, f2
.p2align 2
label4:
	sh2add t6, a5, t4
	fmul.s f5, f11, f14
	flw f15, 0(t6)
	fmul.s f6, f12, f0
	mulw a6, t5, a0
	fmul.s f4, f10, f15
	addiw t5, t5, 4
	add t6, a1, a6
	addi a6, t4, 1080
	sh2add a7, a5, t6
	fadd.s f2, f4, f5
	fmul.s f4, f13, f1
	fmul.s f5, f11, f15
	fadd.s f3, f2, f6
	fmul.s f6, f13, f0
	fadd.s f14, f3, f4
	fmul.s f2, f12, f14
	fsw f14, 0(a7)
	sh2add a7, a5, a6
	flw f1, 0(a7)
	addi a7, t6, 1080
	fmul.s f4, f10, f1
	sh2add a6, a5, a7
	add a7, t4, t0
	fadd.s f7, f4, f5
	fmul.s f5, f11, f1
	fmul.s f1, f13, f14
	fadd.s f3, f7, f2
	fadd.s f15, f3, f6
	fmul.s f7, f13, f15
	fsw f15, 0(a6)
	fmul.s f3, f12, f15
	sh2add a6, a5, a7
	flw f2, 0(a6)
	add a6, t6, t0
	fmul.s f0, f10, f2
	sh2add a7, a5, a6
	fadd.s f6, f0, f5
	fadd.s f4, f6, f3
	fmul.s f6, f11, f2
	fadd.s f0, f4, f1
	fmul.s f1, f12, f0
	fsw f0, 0(a7)
	add a7, t4, t1
	sh2add a6, a5, a7
	add a7, t6, t1
	flw f14, 0(a6)
	sh2add a6, a5, a7
	fmul.s f3, f10, f14
	fadd.s f5, f3, f6
	fadd.s f4, f5, f1
	fadd.s f2, f4, f7
	fsw f2, 0(a6)
	bgt t2, t5, label10
	ble a3, t5, label207
	mulw t6, t5, a0
	fmv.s f1, f14
	add t4, a2, t6
.p2align 2
label13:
	sh2add t6, a5, t4
	fmul.s f5, f11, f1
	flw f14, 0(t6)
	fmul.s f4, f12, f2
	mulw t6, t5, a0
	fmul.s f15, f10, f14
	addiw t5, t5, 1
	add a6, a1, t6
	sh2add a7, a5, a6
	fadd.s f3, f15, f5
	fmul.s f5, f13, f0
	fadd.s f1, f3, f4
	fadd.s f15, f1, f5
	fsw f15, 0(a7)
	ble a3, t5, label141
	addi t4, t4, 1080
	fmv.s f1, f14
	fmv.s f0, f2
	fmv.s f2, f15
	j label13
label32:
	ret
.p2align 2
label207:
	addiw a5, a5, 1
	bgt a4, a5, label2
	j label32
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
pcrel418:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel419:
	auipc t2, %pcrel_hi(imgIn)
	li t1, 3
	flw f10, %pcrel_lo(pcrel418)(a3)
	addi a2, a3, %pcrel_lo(pcrel418)
pcrel420:
	auipc a3, %pcrel_hi(my_y1)
	flw f11, 4(a2)
	addi a5, a3, %pcrel_lo(pcrel420)
	flw f12, 8(a2)
	li a3, 1080
	flw f13, 12(a2)
	lw a0, 16(a2)
	addi a2, t2, %pcrel_lo(pcrel419)
	addi a4, a0, -3
	ble a0, t1, label243
	mulw t1, t0, a3
	add a5, a5, t1
	mulw t3, t0, a3
	mv t1, a5
	fmv.w.x f15, zero
	add t2, a2, t3
	fmv.s f14, f15
	fmv.s f1, f15
	mv t3, zero
	j label224
.p2align 2
label355:
	addiw t0, t0, 1
	ble a1, t0, label242
.p2align 2
label233:
	addi a5, a5, 1080
	mulw t3, t0, a3
	fmv.w.x f15, zero
	mv t1, a5
	add t2, a2, t3
	fmv.s f14, f15
	fmv.s f1, f15
	mv t3, zero
.p2align 2
label224:
	sh2add t4, t3, t2
	fmul.s f6, f11, f15
	addiw t3, t3, 4
	flw f0, 0(t4)
	fmul.s f5, f12, f14
	fmul.s f7, f13, f14
	fmul.s f2, f10, f0
	fadd.s f4, f2, f6
	fmul.s f6, f13, f1
	fadd.s f3, f4, f5
	fadd.s f15, f3, f6
	fmul.s f6, f11, f0
	fmul.s f2, f12, f15
	fsw f15, 0(t1)
	flw f1, 4(t4)
	fmul.s f3, f10, f1
	fadd.s f5, f3, f6
	fadd.s f4, f5, f2
	fmul.s f5, f11, f1
	fadd.s f0, f4, f7
	fmul.s f7, f13, f15
	fmul.s f3, f12, f0
	fsw f0, 4(t1)
	flw f2, 8(t4)
	fmul.s f14, f10, f2
	fadd.s f6, f14, f5
	fmul.s f5, f11, f2
	fadd.s f4, f6, f3
	fadd.s f14, f4, f7
	fmul.s f7, f13, f0
	fmul.s f1, f12, f14
	fsw f14, 8(t1)
	flw f15, 12(t4)
	fmul.s f4, f10, f15
	fadd.s f6, f4, f5
	fadd.s f3, f6, f1
	fadd.s f2, f3, f7
	fsw f2, 12(t1)
	ble a4, t3, label327
	addi t1, t1, 16
	fmv.s f1, f14
	fmv.s f14, f2
	j label224
.p2align 2
label327:
	ble a0, t3, label408
	sh2add t1, t3, t2
	fmv.s f1, f15
	fmv.s f0, f14
.p2align 2
label235:
	flw f15, 0(t1)
	fmul.s f5, f11, f1
	fmul.s f4, f12, f2
	sh2add t2, t3, a5
	fmul.s f14, f10, f15
	addiw t3, t3, 1
	fadd.s f3, f14, f5
	fmul.s f5, f13, f0
	fadd.s f1, f3, f4
	fadd.s f14, f1, f5
	fsw f14, 0(t2)
	ble a0, t3, label355
	addi t1, t1, 4
	fmv.s f1, f15
	fmv.s f0, f2
	fmv.s f2, f14
	j label235
label243:
	bgt a0, zero, label244
label242:
	ret
label244:
	mulw t1, t0, a3
	add a4, a5, t1
	mv a5, t0
	fmv.w.x f1, zero
	add t0, a2, t1
	fmv.s f14, f1
	fmv.s f2, f1
	mv t1, zero
	j label248
.p2align 2
label254:
	addi t0, t0, 4
	fmv.s f2, f15
	fmv.s f1, f14
	fmv.s f14, f0
.p2align 2
label248:
	flw f15, 0(t0)
	fmul.s f5, f11, f2
	fmul.s f4, f12, f14
	sh2add t2, t1, a4
	fmul.s f0, f10, f15
	addiw t1, t1, 1
	fadd.s f3, f0, f5
	fmul.s f5, f13, f1
	fadd.s f2, f3, f4
	fadd.s f0, f2, f5
	fsw f0, 0(t2)
	bgt a0, t1, label254
	addiw a5, a5, 1
	ble a1, a5, label242
	addi a4, a4, 1080
	mulw t1, a5, a3
	fmv.w.x f1, zero
	add t0, a2, t1
	fmv.s f14, f1
	fmv.s f2, f1
	mv t1, zero
	j label248
.p2align 2
label408:
	addiw t0, t0, 1
	bgt a1, t0, label233
	j label242
.p2align 2
cmmc_parallel_body_2:
	mv t1, a0
pcrel586:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel587:
	auipc a3, %pcrel_hi(imgOut)
pcrel588:
	auipc a4, %pcrel_hi(my_y1)
pcrel589:
	auipc t3, %pcrel_hi(my_y2)
	li t2, 3
	lw a0, %pcrel_lo(pcrel586)(a2)
	addi t0, a3, %pcrel_lo(pcrel587)
	addi a2, a4, %pcrel_lo(pcrel588)
	addi a5, a0, -3
	addi a3, t3, %pcrel_lo(pcrel589)
	li a4, 1080
	ble a0, t2, label439
	mulw t2, t1, a4
	add t0, t0, t2
	mulw t6, t1, a4
	mv t3, t0
	mv t5, zero
	add t2, a3, t6
	add t4, a2, t6
	j label426
.p2align 2
label429:
	addi t3, t3, 16
.p2align 2
label426:
	sh2add t6, t5, t4
	sh2add a6, t5, t2
	flw f10, 0(t6)
	addiw t5, t5, 4
	flw f12, 0(a6)
	fadd.s f13, f10, f12
	fsw f13, 0(t3)
	flw f11, 4(t6)
	flw f10, 4(a6)
	fadd.s f13, f11, f10
	fsw f13, 4(t3)
	flw f12, 8(t6)
	flw f11, 8(a6)
	fadd.s f13, f12, f11
	fsw f13, 8(t3)
	flw f10, 12(t6)
	flw f11, 12(a6)
	fadd.s f12, f10, f11
	fsw f12, 12(t3)
	bgt a5, t5, label429
	ble a0, t5, label575
	sh2add t3, t5, t4
	j label432
.p2align 2
label435:
	addi t3, t3, 4
.p2align 2
label432:
	sh2add t4, t5, t2
	flw f10, 0(t3)
	sh2add t6, t5, t0
	flw f12, 0(t4)
	addiw t5, t5, 1
	fadd.s f11, f10, f12
	fsw f11, 0(t6)
	bgt a0, t5, label435
	addiw t1, t1, 1
	ble a1, t1, label438
.p2align 2
label437:
	addi t0, t0, 1080
	mulw t6, t1, a4
	mv t5, zero
	mv t3, t0
	add t2, a3, t6
	add t4, a2, t6
	j label426
label439:
	bgt a0, zero, label440
label438:
	ret
label440:
	mulw t2, t1, a4
	add a5, t0, t2
	mv t0, t1
	mulw t4, t1, a4
	mv t3, zero
	add t2, a3, t4
	add t1, a2, t4
	j label444
.p2align 2
label447:
	addi t1, t1, 4
.p2align 2
label444:
	sh2add t4, t3, t2
	flw f10, 0(t1)
	sh2add t5, t3, a5
	flw f12, 0(t4)
	addiw t3, t3, 1
	fadd.s f11, f10, f12
	fsw f11, 0(t5)
	bgt a0, t3, label447
	addiw t0, t0, 1
	ble a1, t0, label438
.p2align 2
label449:
	addi a5, a5, 1080
	mulw t4, t0, a4
	li t3, 1
	mv t5, a5
	add t2, a3, t4
	add t1, a2, t4
	mv t4, t2
	flw f10, 0(t1)
	flw f12, 0(t2)
	fadd.s f11, f10, f12
	fsw f11, 0(a5)
	bgt a0, t3, label447
	addiw t0, t0, 1
	bgt a1, t0, label449
	j label438
.p2align 2
label575:
	addiw t1, t1, 1
	bgt a1, t1, label437
	j label438
.p2align 2
cmmc_parallel_body_3:
	mv t1, a0
pcrel754:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel755:
	auipc a3, %pcrel_hi(imgOut)
pcrel756:
	auipc a4, %pcrel_hi(my_y1)
pcrel757:
	auipc t3, %pcrel_hi(my_y2)
	li t2, 3
	lw a0, %pcrel_lo(pcrel754)(a2)
	addi t0, a3, %pcrel_lo(pcrel755)
	addi a2, a4, %pcrel_lo(pcrel756)
	addi a5, a0, -3
	addi a3, t3, %pcrel_lo(pcrel757)
	li a4, 1080
	bgt a0, t2, label591
	bgt a0, zero, label609
	j label607
label591:
	mulw t2, t1, a4
	add t0, t0, t2
	mulw t6, t1, a4
	mv t3, t0
	mv t5, zero
	add t2, a3, t6
	add t4, a2, t6
	j label595
.p2align 2
label598:
	addi t3, t3, 16
.p2align 2
label595:
	sh2add t6, t5, t4
	sh2add a6, t5, t2
	flw f10, 0(t6)
	addiw t5, t5, 4
	flw f12, 0(a6)
	fadd.s f13, f10, f12
	fsw f13, 0(t3)
	flw f11, 4(t6)
	flw f12, 4(a6)
	fadd.s f13, f11, f12
	fsw f13, 4(t3)
	flw f10, 8(t6)
	flw f14, 8(a6)
	fadd.s f12, f10, f14
	fsw f12, 8(t3)
	flw f11, 12(t6)
	flw f13, 12(a6)
	fadd.s f10, f11, f13
	fsw f10, 12(t3)
	bgt a5, t5, label598
	ble a0, t5, label744
	sh2add t3, t5, t4
.p2align 2
label603:
	sh2add t4, t5, t2
	flw f11, 0(t3)
	sh2add t6, t5, t0
	flw f12, 0(t4)
	addiw t5, t5, 1
	fadd.s f10, f11, f12
	fsw f10, 0(t6)
	ble a0, t5, label694
	addi t3, t3, 4
	j label603
.p2align 2
label694:
	addiw t1, t1, 1
	ble a1, t1, label607
.p2align 2
label601:
	addi t0, t0, 1080
	mulw t6, t1, a4
	mv t5, zero
	mv t3, t0
	add t2, a3, t6
	add t4, a2, t6
	j label595
label607:
	ret
label609:
	mulw t2, t1, a4
	add a5, t0, t2
	mv t0, t1
	mulw t4, t1, a4
	mv t3, zero
	add t2, a3, t4
	add t1, a2, t4
	j label613
.p2align 2
label616:
	addi t1, t1, 4
.p2align 2
label613:
	sh2add t4, t3, t2
	flw f11, 0(t1)
	sh2add t5, t3, a5
	flw f12, 0(t4)
	addiw t3, t3, 1
	fadd.s f10, f11, f12
	fsw f10, 0(t5)
	bgt a0, t3, label616
	addiw t0, t0, 1
	ble a1, t0, label607
.p2align 2
label618:
	addi a5, a5, 1080
	mulw t4, t0, a4
	li t3, 1
	mv t5, a5
	add t2, a3, t4
	add t1, a2, t4
	mv t4, t2
	flw f11, 0(t1)
	flw f12, 0(t2)
	fadd.s f10, f11, f12
	fsw f10, 0(a5)
	bgt a0, t3, label616
	addiw t0, t0, 1
	bgt a1, t0, label618
	j label607
.p2align 2
label744:
	addiw t1, t1, 1
	bgt a1, t1, label601
	j label607
.p2align 2
cmmc_parallel_body_4:
	mv a3, a1
pcrel1096:
	auipc a4, %pcrel_hi(my_y2)
	li a5, 1080
pcrel1097:
	auipc t2, %pcrel_hi(imgIn)
	mv t1, a0
	addi a2, a4, %pcrel_lo(pcrel1096)
	mulw a1, a0, a5
	addi t0, t2, %pcrel_lo(pcrel1097)
	add a4, a2, a1
pcrel1098:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	li a2, 13
	addi a1, t2, %pcrel_lo(pcrel1098)
	mulw t3, a0, a5
	addi a0, a4, 1076
	fmv.w.x f13, zero
	add t2, t0, t3
	fmv.s f14, f13
	fmv.s f12, f13
	fmv.s f15, f13
	li t3, 269
	j label762
.p2align 2
label770:
	flw f11, 0(a1)
	addiw t1, t1, 1
	flw f12, 4(a1)
	fmul.s f0, f15, f11
	fmul.s f5, f15, f12
	fmul.s f1, f14, f12
	flw f14, 8(a1)
	fmul.s f3, f13, f14
	fadd.s f4, f0, f1
	fadd.s f2, f4, f10
	fadd.s f0, f2, f3
	fmul.s f3, f10, f14
	fsw f0, -64(a0)
	flw f1, -64(t4)
	fmul.s f13, f1, f11
	fadd.s f4, f13, f5
	fadd.s f2, f4, f0
	fadd.s f13, f2, f3
	fmul.s f3, f1, f12
	fmul.s f1, f0, f14
	fsw f13, -68(a0)
	flw f15, -68(t4)
	fmul.s f5, f15, f12
	fmul.s f10, f15, f11
	fadd.s f4, f10, f3
	fmul.s f3, f13, f14
	fadd.s f2, f4, f13
	fadd.s f10, f2, f1
	fsw f10, -72(a0)
	flw f0, -72(t4)
	fmul.s f1, f0, f11
	fadd.s f4, f1, f5
	fmul.s f5, f0, f12
	fadd.s f2, f4, f10
	fadd.s f15, f2, f3
	fmul.s f3, f10, f14
	fsw f15, -76(a0)
	flw f1, -76(t4)
	fmul.s f13, f1, f11
	fadd.s f4, f13, f5
	fadd.s f2, f4, f15
	fmul.s f4, f1, f12
	fmul.s f1, f15, f14
	fadd.s f13, f2, f3
	fmul.s f5, f13, f14
	fsw f13, -80(a0)
	flw f0, -80(t4)
	fmul.s f10, f0, f11
	fadd.s f3, f10, f4
	fadd.s f2, f3, f13
	fmul.s f3, f0, f12
	fadd.s f10, f2, f1
	fsw f10, -84(a0)
	flw f15, -84(t4)
	fmul.s f1, f15, f11
	fadd.s f4, f1, f3
	fmul.s f3, f10, f14
	fadd.s f2, f4, f10
	fadd.s f0, f2, f5
	fmul.s f5, f15, f12
	fsw f0, -88(a0)
	flw f1, -88(t4)
	fmul.s f13, f1, f11
	fadd.s f4, f13, f5
	fadd.s f2, f4, f0
	fadd.s f15, f2, f3
	fmul.s f3, f1, f12
	fmul.s f1, f0, f14
	fsw f15, -92(a0)
	flw f13, -92(t4)
	fmul.s f5, f13, f12
	fmul.s f10, f13, f11
	fadd.s f4, f10, f3
	fmul.s f3, f15, f14
	fadd.s f2, f4, f15
	fadd.s f10, f2, f1
	fsw f10, -96(a0)
	flw f0, -96(t4)
	fmul.s f1, f0, f11
	fadd.s f4, f1, f5
	fmul.s f5, f10, f14
	fadd.s f2, f4, f10
	fadd.s f13, f2, f3
	fmul.s f3, f0, f12
	fsw f13, -100(a0)
	flw f1, -100(t4)
	fmul.s f15, f1, f11
	fadd.s f4, f15, f3
	fmul.s f3, f1, f12
	fmul.s f1, f13, f14
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fmul.s f5, f15, f14
	fsw f15, -104(a0)
	flw f0, -104(t4)
	fmul.s f10, f0, f11
	fadd.s f4, f10, f3
	fmul.s f3, f0, f12
	fadd.s f2, f4, f15
	fadd.s f10, f2, f1
	fsw f10, -108(a0)
	flw f13, -108(t4)
	fmul.s f1, f13, f11
	fadd.s f4, f1, f3
	fmul.s f3, f13, f12
	fmul.s f12, f10, f14
	fadd.s f2, f4, f10
	fadd.s f0, f2, f5
	fsw f0, -112(a0)
	flw f1, -112(t4)
	fmul.s f15, f1, f11
	fadd.s f2, f15, f3
	fadd.s f11, f2, f0
	fadd.s f13, f11, f12
	fsw f13, -116(a0)
	ble a3, t1, label772
	addi a4, a4, 1080
	mulw t3, t1, a5
	fmv.w.x f13, zero
	addi a0, a4, 1076
	add t2, t0, t3
	fmv.s f14, f13
	fmv.s f12, f13
	fmv.s f15, f13
	li t3, 269
.p2align 2
label762:
	flw f10, 0(a1)
	sh2add t4, t3, t2
	flw f11, 4(a1)
	addiw t3, t3, -16
	fmul.s f0, f15, f10
	fmul.s f3, f12, f11
	flw f12, 8(a1)
	fmul.s f5, f14, f12
	fadd.s f2, f0, f3
	fmul.s f3, f15, f11
	fmul.s f0, f13, f12
	fadd.s f1, f2, f14
	fadd.s f13, f1, f0
	fsw f13, 0(a0)
	flw f0, 0(t4)
	fmul.s f1, f0, f10
	fadd.s f4, f1, f3
	fmul.s f3, f13, f12
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fmul.s f5, f0, f11
	fsw f15, -4(a0)
	flw f1, -4(t4)
	fmul.s f14, f1, f10
	fadd.s f4, f14, f5
	fmul.s f5, f15, f12
	fadd.s f2, f4, f15
	fmul.s f4, f1, f11
	fadd.s f14, f2, f3
	fsw f14, -8(a0)
	flw f0, -8(t4)
	fmul.s f13, f0, f10
	fadd.s f3, f13, f4
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f2, f3, f14
	fadd.s f13, f2, f5
	fsw f13, -12(a0)
	flw f1, -12(t4)
	fmul.s f15, f1, f10
	fadd.s f2, f15, f4
	fmul.s f4, f1, f11
	fmul.s f1, f13, f12
	fadd.s f3, f2, f13
	fadd.s f15, f3, f0
	fsw f15, -16(a0)
	flw f2, -16(t4)
	fmul.s f14, f2, f10
	fadd.s f0, f14, f4
	fmul.s f4, f2, f11
	fmul.s f2, f15, f12
	fadd.s f3, f0, f15
	fadd.s f14, f3, f1
	fmul.s f5, f14, f12
	fsw f14, -20(a0)
	flw f0, -20(t4)
	fmul.s f13, f0, f10
	fadd.s f1, f13, f4
	fadd.s f3, f1, f14
	fadd.s f13, f3, f2
	fmul.s f3, f0, f11
	fsw f13, -24(a0)
	flw f1, -24(t4)
	fmul.s f15, f1, f10
	fadd.s f4, f15, f3
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f2, f4, f13
	fadd.s f15, f2, f5
	fmul.s f5, f15, f12
	fsw f15, -28(a0)
	flw f0, -28(t4)
	fmul.s f14, f0, f10
	fadd.s f4, f14, f3
	fmul.s f3, f0, f11
	fadd.s f2, f4, f15
	fadd.s f14, f2, f1
	fsw f14, -32(a0)
	flw f13, -32(t4)
	fmul.s f2, f13, f10
	fadd.s f4, f2, f3
	fmul.s f3, f13, f11
	fadd.s f1, f4, f14
	fadd.s f0, f1, f5
	fmul.s f5, f14, f12
	fsw f0, -36(a0)
	flw f15, -36(t4)
	fmul.s f2, f15, f10
	fadd.s f4, f2, f3
	fmul.s f3, f15, f11
	fadd.s f1, f4, f0
	fmul.s f4, f0, f12
	fadd.s f13, f1, f5
	fsw f13, -40(a0)
	flw f14, -40(t4)
	fmul.s f2, f14, f10
	fadd.s f5, f2, f3
	fadd.s f1, f5, f13
	fmul.s f5, f13, f12
	fadd.s f15, f1, f4
	fmul.s f4, f14, f11
	fsw f15, -44(a0)
	flw f0, -44(t4)
	fmul.s f1, f0, f10
	fadd.s f3, f1, f4
	fmul.s f4, f15, f12
	fadd.s f2, f3, f15
	fmul.s f3, f0, f11
	fadd.s f14, f2, f5
	fsw f14, -48(a0)
	flw f13, -48(t4)
	fmul.s f1, f13, f10
	fadd.s f5, f1, f3
	fadd.s f2, f5, f14
	fmul.s f5, f13, f11
	fadd.s f0, f2, f4
	fmul.s f4, f14, f12
	fsw f0, -52(a0)
	flw f15, -52(t4)
	fmul.s f1, f15, f10
	fadd.s f3, f1, f5
	fadd.s f2, f3, f0
	fadd.s f13, f2, f4
	fmul.s f4, f15, f11
	fmul.s f11, f0, f12
	fsw f13, -56(a0)
	flw f14, -56(t4)
	fmul.s f1, f14, f10
	fadd.s f3, f1, f4
	fadd.s f2, f3, f13
	fadd.s f10, f2, f11
	fsw f10, -60(a0)
	flw f15, -60(t4)
	ble t3, a2, label770
	addi a0, a0, -64
	fmv.s f12, f14
	fmv.s f14, f10
	j label762
label772:
	ret
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -56
	mv a6, a1
pcrel1408:
	auipc a2, %pcrel_hi(my_y2)
pcrel1409:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	li t6, 1080
pcrel1410:
	auipc a1, %pcrel_hi(imgOut)
	addi a7, a2, %pcrel_lo(pcrel1408)
	addi t5, a1, %pcrel_lo(pcrel1410)
	sd s1, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel1409)
	li a1, -135
	sd s6, 8(sp)
	slli a3, a1, 4
	sd s0, 16(sp)
	addi a4, a3, -1080
	sd s5, 24(sp)
	addi a5, a4, -1080
	sd s3, 32(sp)
	addi t0, a5, -1080
	sd s2, 40(sp)
	addi t1, t0, -1080
	sd s4, 48(sp)
	addi t2, t1, -1080
	addi t3, t2, -1080
	addi t4, t3, -1080
	j label1100
.p2align 2
label1339:
	addiw a0, a0, 1
	ble a6, a0, label1111
.p2align 2
label1100:
	lui s1, 135
	fmv.w.x f13, zero
	addiw s0, s1, -1080
	fmv.s f15, f13
	fmv.s f12, f13
	fmv.s f0, f13
	add a1, a7, s0
	li s0, 511
.p2align 2
label1102:
	flw f10, 0(a2)
	sh2add s3, a0, a1
	mulw s2, s0, t6
	flw f11, 4(a2)
	fmul.s f14, f0, f10
	addiw s0, s0, -16
	add s1, t5, s2
	fmul.s f2, f12, f11
	fmul.s f4, f0, f11
	addi s4, s1, -1080
	addi s2, a1, -1080
	flw f12, 8(a2)
	fadd.s f3, f14, f2
	fmul.s f0, f15, f12
	fmul.s f2, f13, f12
	fadd.s f1, f3, f15
	fadd.s f14, f1, f2
	fsw f14, 0(s3)
	sh2add s3, a0, s1
	flw f1, 0(s3)
	sh2add s3, a0, s2
	fmul.s f13, f1, f10
	sh2add s2, a0, s4
	add s4, s1, a3
	fadd.s f3, f13, f4
	fadd.s f2, f3, f14
	fmul.s f3, f1, f11
	fmul.s f1, f14, f12
	fadd.s f13, f2, f0
	fsw f13, 0(s3)
	add s3, a1, a3
	flw f0, 0(s2)
	sh2add s2, a0, s3
	fmul.s f15, f0, f10
	sh2add s3, a0, s4
	add s4, a1, a4
	fadd.s f4, f15, f3
	fmul.s f3, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f4, f13
	fadd.s f15, f2, f1
	fsw f15, 0(s2)
	add s2, s1, a4
	flw f1, 0(s3)
	sh2add s3, a0, s4
	fmul.s f14, f1, f10
	sh2add s4, a0, s2
	add s2, a1, a5
	fadd.s f4, f14, f3
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f0
	fsw f14, 0(s3)
	sh2add s3, a0, s2
	flw f0, 0(s4)
	add s4, s1, a5
	fmul.s f13, f0, f10
	sh2add s2, a0, s4
	add s4, s1, t0
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fmul.s f0, f14, f12
	fadd.s f13, f2, f1
	fsw f13, 0(s3)
	add s3, a1, t0
	flw f1, 0(s2)
	sh2add s2, a0, s3
	fmul.s f15, f1, f10
	sh2add s3, a0, s4
	add s4, a1, t1
	fadd.s f3, f15, f4
	fadd.s f2, f3, f13
	fmul.s f3, f1, f11
	fmul.s f1, f13, f12
	fadd.s f15, f2, f0
	fsw f15, 0(s2)
	sh2add s2, a0, s4
	flw f0, 0(s3)
	add s3, s1, t1
	fmul.s f14, f0, f10
	sh2add s4, a0, s3
	add s3, s1, t2
	fadd.s f4, f14, f3
	fmul.s f3, f0, f11
	fmul.s f0, f15, f12
	fadd.s f2, f4, f15
	fadd.s f14, f2, f1
	fsw f14, 0(s2)
	flw f1, 0(s4)
	add s4, a1, t2
	fmul.s f13, f1, f10
	sh2add s2, a0, s4
	sh2add s4, a0, s3
	add s3, a1, t3
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f1, f11
	fmul.s f1, f14, f12
	fadd.s f13, f2, f0
	fsw f13, 0(s2)
	sh2add s2, a0, s3
	flw f0, 0(s4)
	add s4, s1, t3
	fmul.s f15, f0, f10
	sh2add s3, a0, s4
	add s4, s1, t4
	fadd.s f3, f15, f4
	fmul.s f4, f0, f11
	fmul.s f0, f13, f12
	fadd.s f2, f3, f13
	fadd.s f15, f2, f1
	fsw f15, 0(s2)
	flw f1, 0(s3)
	add s3, a1, t4
	fmul.s f14, f1, f10
	sh2add s2, a0, s3
	sh2add s3, a0, s4
	li s4, -675
	fadd.s f3, f14, f4
	fadd.s f2, f3, f15
	fmul.s f3, f1, f11
	fmul.s f1, f15, f12
	fadd.s f14, f2, f0
	fmul.s f5, f14, f12
	fsw f14, 0(s2)
	slli s2, s4, 4
	flw f0, 0(s3)
	add s4, s1, s2
	add s3, a1, s2
	fmul.s f13, f0, f10
	sh2add s5, a0, s3
	sh2add s3, a0, s4
	fadd.s f4, f13, f3
	fadd.s f2, f4, f14
	fmul.s f4, f0, f11
	fadd.s f13, f2, f1
	fsw f13, 0(s5)
	flw f15, 0(s3)
	addi s3, s2, -1080
	fmul.s f1, f15, f10
	add s4, s1, s3
	add s5, a1, s3
	sh2add s2, a0, s4
	sh2add s6, a0, s5
	fadd.s f3, f1, f4
	fmul.s f4, f15, f11
	fadd.s f2, f3, f13
	fadd.s f0, f2, f5
	fmul.s f5, f13, f12
	fsw f0, 0(s6)
	flw f14, 0(s2)
	addi s2, s3, -1080
	fmul.s f1, f14, f10
	add s4, s1, s2
	add s5, a1, s2
	sh2add s3, a0, s4
	sh2add s6, a0, s5
	fadd.s f3, f1, f4
	fadd.s f2, f3, f0
	fmul.s f3, f0, f12
	fadd.s f15, f2, f5
	fmul.s f5, f14, f11
	fsw f15, 0(s6)
	flw f13, 0(s3)
	addi s3, s2, -1080
	fmul.s f2, f13, f10
	add s6, s1, s3
	add s4, a1, s3
	sh2add s2, a0, s6
	sh2add s5, a0, s4
	fadd.s f4, f2, f5
	fmul.s f5, f13, f11
	fadd.s f1, f4, f15
	fmul.s f4, f15, f12
	fadd.s f14, f1, f3
	fsw f14, 0(s5)
	flw f0, 0(s2)
	addi s2, s3, -1080
	fmul.s f1, f0, f10
	add s3, s1, s2
	add s4, a1, s2
	sh2add s5, a0, s4
	sh2add s4, a0, s3
	addi s3, s2, -1080
	fadd.s f3, f1, f5
	add s6, s1, s3
	sh2add s2, a0, s6
	fadd.s f2, f3, f14
	fadd.s f13, f2, f4
	fmul.s f4, f0, f11
	fmul.s f11, f14, f12
	fsw f13, 0(s5)
	add s5, a1, s3
	flw f15, 0(s4)
	sh2add s4, a0, s5
	fmul.s f1, f15, f10
	fadd.s f3, f1, f4
	fadd.s f2, f3, f13
	fadd.s f10, f2, f11
	fsw f10, 0(s4)
	flw f0, 0(s2)
	blt s0, zero, label1339
	li s2, -135
	fmv.s f12, f15
	slli s1, s2, 7
	fmv.s f15, f10
	add a1, a1, s1
	j label1102
label1111:
	ld s1, 0(sp)
	ld s6, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
