.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	3191654481
	.4byte	1038821134
	.4byte	3206230588
	.4byte	3191992809
	.4byte	1038256634
.bss
.p2align 3
imgIn:
	.zero	552960
.p2align 3
imgOut:
	.zero	552960
.p2align 3
my_y1:
	.zero	552960
.p2align 3
my_y2:
	.zero	552960
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	24
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	24
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	8
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	8
.text
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel1487:
	auipc a1, %pcrel_hi(imgIn)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel1487)
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
pcrel1488:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel1489:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s1, 270
	li s0, 512
	addi a1, a3, %pcrel_lo(pcrel1488)
	addi a0, a2, %pcrel_lo(pcrel1489)
	flw f8, 12(a1)
pcrel1490:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	fsw f8, %pcrel_lo(pcrel1489)(a2)
	lui a2, 260096
	flw f9, 16(a1)
	fmv.w.x f18, a2
	li a2, 1
	fsw f9, 4(a0)
	slli s2, a2, 41
	fsw f18, 8(a0)
	addi a2, a3, %pcrel_lo(pcrel1490)
	flw f19, 8(a1)
	ori a1, s2, 270
	fsw f19, 12(a0)
	sd a1, 16(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	mv a1, s0
	mv a0, zero
pcrel1491:
	auipc a3, %pcrel_hi(cmmc_parallel_body_4)
	addi a2, a3, %pcrel_lo(pcrel1491)
	jal cmmcParallelFor
	ori a1, s2, 270
pcrel1492:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
pcrel1493:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	addi a2, a3, %pcrel_lo(pcrel1492)
	sd a1, %pcrel_lo(pcrel1493)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
pcrel1494:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1495:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	li a2, 270
	addi a0, a1, %pcrel_lo(pcrel1494)
	fsw f8, %pcrel_lo(pcrel1494)(a1)
	slli a1, a2, 32
	fsw f9, 4(a0)
	addi a2, a4, %pcrel_lo(pcrel1495)
	addi a3, a1, 512
	fsw f18, 8(a0)
	fsw f19, 12(a0)
	sd a3, 16(a0)
	mv a1, s1
	mv a0, zero
	jal cmmcParallelFor
	mv a1, s1
	mv a0, zero
pcrel1496:
	auipc a3, %pcrel_hi(cmmc_parallel_body_5)
	addi a2, a3, %pcrel_lo(pcrel1496)
	jal cmmcParallelFor
pcrel1497:
	auipc a3, %pcrel_hi(cmmc_parallel_body_3)
	ori a1, s2, 270
pcrel1498:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a3, %pcrel_lo(pcrel1497)
	sd a1, %pcrel_lo(pcrel1498)(a0)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	li a0, 158
pcrel1499:
	auipc a1, %pcrel_hi(imgOut)
	addi s0, a1, %pcrel_lo(pcrel1499)
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
	addi sp, sp, -8
	mv a5, a0
	mv a4, a1
pcrel210:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel211:
	auipc t0, %pcrel_hi(my_y1)
pcrel212:
	auipc t1, %pcrel_hi(imgOut)
	li t4, 3
	addi a0, a2, %pcrel_lo(pcrel210)
	addi a1, t0, %pcrel_lo(pcrel211)
	sd s0, 0(sp)
	flw f10, %pcrel_lo(pcrel210)(a2)
	addi a2, t1, %pcrel_lo(pcrel212)
	flw f11, 4(a0)
	flw f12, 8(a0)
	flw f13, 12(a0)
	lw a3, 16(a0)
	li a0, 1080
	addiw t2, a3, -3
	slli t0, a0, 1
	addi t1, t0, 1080
	addi t3, t1, 1080
	bgt a3, t4, label2
	bgt a3, zero, label22
	j label32
.p2align 2
label19:
	addi t4, t4, 1080
	fmv.s f1, f14
	fmv.s f0, f2
	fmv.s f2, f15
.p2align 2
label13:
	sh2add t6, a5, t4
	fmul.s f5, f11, f1
	flw f14, 0(t6)
	mulw a6, t5, a0
	addiw t5, t5, 1
	add a7, a1, a6
	sh2add t6, a5, a7
	fmadd.s f3, f10, f14, f5
	fmadd.s f4, f12, f2, f3
	fmadd.s f15, f13, f0, f4
	fsw f15, 0(t6)
	bgt a3, t5, label19
	addiw a5, a5, 1
	ble a4, a5, label32
.p2align 2
label2:
	fmv.w.x f14, zero
	mv t4, a2
	mv t5, zero
	fmv.s f0, f14
	fmv.s f1, f14
.p2align 2
label4:
	sh2add t6, a5, t4
	fmul.s f4, f11, f14
	flw f15, 0(t6)
	mulw a7, t5, a0
	addiw t5, t5, 4
	add t6, a1, a7
	addi a7, t4, 1080
	sh2add a6, a5, t6
	fmadd.s f3, f10, f15, f4
	fmadd.s f2, f12, f0, f3
	fmul.s f3, f11, f15
	fmadd.s f14, f13, f1, f2
	fsw f14, 0(a6)
	sh2add a6, a5, a7
	add a7, t4, t0
	flw f2, 0(a6)
	addi a6, t6, 1080
	fmul.s f5, f11, f2
	fmadd.s f4, f10, f2, f3
	sh2add s0, a5, a6
	sh2add a6, a5, a7
	fmadd.s f1, f12, f14, f4
	fmadd.s f15, f13, f0, f1
	fsw f15, 0(s0)
	flw f1, 0(a6)
	add a6, t6, t0
	fmadd.s f3, f10, f1, f5
	sh2add a7, a5, a6
	add a6, t4, t1
	fmadd.s f4, f12, f15, f3
	fmul.s f3, f11, f1
	fmadd.s f0, f13, f14, f4
	fsw f0, 0(a7)
	sh2add a7, a5, a6
	flw f14, 0(a7)
	add a7, t6, t1
	fmadd.s f4, f10, f14, f3
	sh2add a6, a5, a7
	fmadd.s f5, f12, f0, f4
	fmadd.s f2, f13, f15, f5
	fsw f2, 0(a6)
	ble t2, t5, label10
	add t4, t4, t3
	fmv.s f1, f0
	fmv.s f0, f2
	j label4
.p2align 2
label31:
	addi t0, t0, 1080
	fmv.s f2, f15
	fmv.s f1, f14
	fmv.s f14, f0
.p2align 2
label24:
	sh2add t2, a5, t0
	fmul.s f3, f11, f2
	flw f15, 0(t2)
	mulw t3, t1, a0
	addiw t1, t1, 1
	add t2, a1, t3
	sh2add t4, a5, t2
	fmadd.s f4, f10, f15, f3
	fmadd.s f5, f12, f14, f4
	fmadd.s f0, f13, f1, f5
	fsw f0, 0(t4)
	bgt a3, t1, label31
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
label10:
	ble a3, t5, label11
	mulw t6, t5, a0
	fmv.s f1, f14
	add t4, a2, t6
	j label13
.p2align 2
label11:
	addiw a5, a5, 1
	bgt a4, a5, label2
label32:
	ld s0, 0(sp)
	addi sp, sp, 8
	ret
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
pcrel411:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel412:
	auipc t2, %pcrel_hi(imgIn)
	li t1, 3
	flw f10, %pcrel_lo(pcrel411)(a3)
	addi a2, a3, %pcrel_lo(pcrel411)
pcrel413:
	auipc a3, %pcrel_hi(my_y1)
	flw f11, 4(a2)
	addi a5, a3, %pcrel_lo(pcrel413)
	flw f12, 8(a2)
	li a3, 1080
	flw f13, 12(a2)
	lw a0, 16(a2)
	addi a2, t2, %pcrel_lo(pcrel412)
	addiw a4, a0, -3
	bgt a0, t1, label214
	bgt a0, zero, label238
	j label236
label214:
	mulw t1, t0, a3
	add a5, a5, t1
	mulw t3, t0, a3
	mv t1, a5
	fmv.w.x f1, zero
	add t2, a2, t3
	fmv.s f14, f1
	fmv.s f0, f1
	mv t3, zero
	j label218
.p2align 2
label224:
	addi t1, t1, 16
	fmv.s f0, f14
	fmv.s f14, f15
.p2align 2
label218:
	sh2add t4, t3, t2
	fmul.s f5, f11, f1
	addiw t3, t3, 4
	flw f2, 0(t4)
	fmadd.s f4, f10, f2, f5
	fmadd.s f3, f12, f14, f4
	fmadd.s f15, f13, f0, f3
	fmul.s f3, f11, f2
	fsw f15, 0(t1)
	flw f1, 4(t4)
	fmadd.s f4, f10, f1, f3
	fmadd.s f5, f12, f15, f4
	fmadd.s f0, f13, f14, f5
	fmul.s f5, f11, f1
	fsw f0, 4(t1)
	flw f2, 8(t4)
	fmadd.s f3, f10, f2, f5
	fmadd.s f4, f12, f0, f3
	fmul.s f3, f11, f2
	fmadd.s f14, f13, f15, f4
	fsw f14, 8(t1)
	flw f1, 12(t4)
	fmadd.s f5, f10, f1, f3
	fmadd.s f4, f12, f14, f5
	fmadd.s f15, f13, f0, f4
	fsw f15, 12(t1)
	bgt a4, t3, label224
	ble a0, t3, label402
	sh2add t1, t3, t2
	fmv.s f2, f1
	fmv.s f1, f14
.p2align 2
label229:
	flw f0, 0(t1)
	fmul.s f3, f11, f2
	sh2add t2, t3, a5
	addiw t3, t3, 1
	fmadd.s f4, f10, f0, f3
	fmadd.s f5, f12, f15, f4
	fmadd.s f14, f13, f1, f5
	fsw f14, 0(t2)
	ble a0, t3, label349
	addi t1, t1, 4
	fmv.s f2, f0
	fmv.s f1, f15
	fmv.s f15, f14
	j label229
.p2align 2
label349:
	addiw t0, t0, 1
	ble a1, t0, label236
.p2align 2
label227:
	addi a5, a5, 1080
	mulw t3, t0, a3
	fmv.w.x f1, zero
	mv t1, a5
	add t2, a2, t3
	fmv.s f14, f1
	fmv.s f0, f1
	mv t3, zero
	j label218
label236:
	ret
label238:
	mulw t1, t0, a3
	add a4, a5, t1
	mv a5, t0
	fmv.w.x f1, zero
	add t0, a2, t1
	fmv.s f14, f1
	fmv.s f2, f1
	mv t1, zero
	j label242
.p2align 2
label250:
	addi t0, t0, 4
	fmv.s f2, f15
	fmv.s f1, f14
	fmv.s f14, f0
.p2align 2
label242:
	flw f15, 0(t0)
	fmul.s f3, f11, f2
	sh2add t2, t1, a4
	addiw t1, t1, 1
	fmadd.s f4, f10, f15, f3
	fmadd.s f5, f12, f14, f4
	fmadd.s f0, f13, f1, f5
	fsw f0, 0(t2)
	bgt a0, t1, label250
	addiw a5, a5, 1
	ble a1, a5, label236
.p2align 2
label249:
	addi a4, a4, 1080
	mulw t1, a5, a3
	fmv.w.x f1, zero
	mv t2, a4
	add t0, a2, t1
	fmv.s f14, f1
	fmv.s f2, f1
	fmul.s f3, f11, f1
	li t1, 1
	flw f15, 0(t0)
	fmadd.s f4, f10, f15, f3
	fmadd.s f5, f12, f1, f4
	fmadd.s f0, f13, f1, f5
	fsw f0, 0(a4)
	bgt a0, t1, label250
	addiw a5, a5, 1
	bgt a1, a5, label249
	j label236
.p2align 2
label402:
	addiw t0, t0, 1
	bgt a1, t0, label227
	j label236
.p2align 2
cmmc_parallel_body_2:
	mv t1, a0
pcrel578:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel579:
	auipc a3, %pcrel_hi(imgOut)
pcrel580:
	auipc a4, %pcrel_hi(my_y1)
pcrel581:
	auipc t3, %pcrel_hi(my_y2)
	li t2, 3
	lw a0, %pcrel_lo(pcrel578)(a2)
	addi t0, a3, %pcrel_lo(pcrel579)
	addi a2, a4, %pcrel_lo(pcrel580)
	addiw a5, a0, -3
	addi a3, t3, %pcrel_lo(pcrel581)
	li a4, 1080
	bgt a0, t2, label415
	bgt a0, zero, label432
	j label442
label415:
	mulw t2, t1, a4
	add t0, t0, t2
	mulw t6, t1, a4
	mv t3, t0
	mv t5, zero
	add t2, a3, t6
	add t4, a2, t6
	j label419
.p2align 2
label422:
	addi t3, t3, 16
.p2align 2
label419:
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
	bgt a5, t5, label422
	ble a0, t5, label568
	sh2add t3, t5, t4
.p2align 2
label427:
	sh2add t4, t5, t2
	flw f11, 0(t3)
	sh2add t6, t5, t0
	flw f12, 0(t4)
	addiw t5, t5, 1
	fadd.s f10, f11, f12
	fsw f10, 0(t6)
	ble a0, t5, label518
	addi t3, t3, 4
	j label427
.p2align 2
label518:
	addiw t1, t1, 1
	ble a1, t1, label442
.p2align 2
label425:
	addi t0, t0, 1080
	mulw t6, t1, a4
	mv t5, zero
	mv t3, t0
	add t2, a3, t6
	add t4, a2, t6
	j label419
label442:
	ret
label432:
	mulw t2, t1, a4
	add a5, t0, t2
	mv t0, t1
	mulw t4, t1, a4
	mv t3, zero
	add t2, a3, t4
	add t1, a2, t4
	j label436
.p2align 2
label439:
	addi t1, t1, 4
.p2align 2
label436:
	sh2add t4, t3, t2
	flw f11, 0(t1)
	sh2add t5, t3, a5
	flw f12, 0(t4)
	addiw t3, t3, 1
	fadd.s f10, f11, f12
	fsw f10, 0(t5)
	bgt a0, t3, label439
	addiw t0, t0, 1
	ble a1, t0, label442
.p2align 2
label441:
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
	bgt a0, t3, label439
	addiw t0, t0, 1
	bgt a1, t0, label441
	j label442
.p2align 2
label568:
	addiw t1, t1, 1
	bgt a1, t1, label425
	j label442
.p2align 2
cmmc_parallel_body_3:
	mv t1, a0
pcrel747:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel748:
	auipc a3, %pcrel_hi(imgOut)
pcrel749:
	auipc a4, %pcrel_hi(my_y1)
pcrel750:
	auipc t3, %pcrel_hi(my_y2)
	li t2, 3
	lw a0, %pcrel_lo(pcrel747)(a2)
	addi t0, a3, %pcrel_lo(pcrel748)
	addi a2, a4, %pcrel_lo(pcrel749)
	addiw a5, a0, -3
	addi a3, t3, %pcrel_lo(pcrel750)
	li a4, 1080
	ble a0, t2, label600
	mulw t2, t1, a4
	add t0, t0, t2
	mulw t6, t1, a4
	mv t3, t0
	mv t5, zero
	add t2, a3, t6
	add t4, a2, t6
	j label587
.p2align 2
label590:
	addi t3, t3, 16
.p2align 2
label587:
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
	bgt a5, t5, label590
	ble a0, t5, label736
	sh2add t3, t5, t4
	j label593
.p2align 2
label596:
	addi t3, t3, 4
.p2align 2
label593:
	sh2add t4, t5, t2
	flw f10, 0(t3)
	sh2add t6, t5, t0
	flw f12, 0(t4)
	addiw t5, t5, 1
	fadd.s f11, f10, f12
	fsw f11, 0(t6)
	bgt a0, t5, label596
	addiw t1, t1, 1
	ble a1, t1, label599
.p2align 2
label598:
	addi t0, t0, 1080
	mulw t6, t1, a4
	mv t5, zero
	mv t3, t0
	add t2, a3, t6
	add t4, a2, t6
	j label587
label600:
	bgt a0, zero, label601
label599:
	ret
label601:
	mulw t2, t1, a4
	add a5, t0, t2
	mv t0, t1
	mulw t4, t1, a4
	mv t3, zero
	add t2, a3, t4
	add t1, a2, t4
	j label605
.p2align 2
label608:
	addi t1, t1, 4
.p2align 2
label605:
	sh2add t4, t3, t2
	flw f10, 0(t1)
	sh2add t5, t3, a5
	flw f12, 0(t4)
	addiw t3, t3, 1
	fadd.s f11, f10, f12
	fsw f11, 0(t5)
	bgt a0, t3, label608
	addiw t0, t0, 1
	ble a1, t0, label599
.p2align 2
label610:
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
	bgt a0, t3, label608
	addiw t0, t0, 1
	bgt a1, t0, label610
	j label599
.p2align 2
label736:
	addiw t1, t1, 1
	bgt a1, t1, label598
	j label599
.p2align 2
cmmc_parallel_body_4:
	mv a3, a1
pcrel1089:
	auipc a4, %pcrel_hi(my_y2)
	li a5, 1080
pcrel1090:
	auipc t2, %pcrel_hi(imgIn)
	mv t1, a0
	addi a2, a4, %pcrel_lo(pcrel1089)
	mulw a1, a0, a5
	addi t0, t2, %pcrel_lo(pcrel1090)
	add a4, a2, a1
pcrel1091:
	auipc t2, %pcrel_hi(__cmmc_fp_constant_pool)
	li a2, 13
	addi a1, t2, %pcrel_lo(pcrel1091)
	mulw t3, a0, a5
	addi a0, a4, 1076
	fmv.w.x f13, zero
	add t2, t0, t3
	fmv.s f14, f13
	fmv.s f12, f13
	fmv.s f15, f13
	li t3, 269
	j label755
.p2align 2
label763:
	flw f10, 0(a1)
	addiw t1, t1, 1
	flw f12, 4(a1)
	fmul.s f0, f14, f12
	fmul.s f3, f15, f12
	flw f14, 8(a1)
	fmadd.s f1, f15, f10, f0
	fadd.s f2, f1, f11
	fmadd.s f0, f13, f14, f2
	fsw f0, -64(a0)
	flw f1, -64(t4)
	fmadd.s f2, f1, f10, f3
	fadd.s f4, f2, f0
	fmul.s f2, f1, f12
	fmadd.s f13, f11, f14, f4
	fsw f13, -68(a0)
	flw f15, -68(t4)
	fmadd.s f3, f15, f10, f2
	fadd.s f4, f3, f13
	fmadd.s f11, f0, f14, f4
	fmul.s f0, f15, f12
	fsw f11, -72(a0)
	flw f1, -72(t4)
	fmadd.s f3, f1, f10, f0
	fadd.s f2, f3, f11
	fmul.s f3, f1, f12
	fmadd.s f15, f13, f14, f2
	fsw f15, -76(a0)
	flw f0, -76(t4)
	fmadd.s f2, f0, f10, f3
	fmul.s f3, f0, f12
	fadd.s f4, f2, f15
	fmadd.s f13, f11, f14, f4
	fsw f13, -80(a0)
	flw f1, -80(t4)
	fmul.s f0, f1, f12
	fmadd.s f2, f1, f10, f3
	fadd.s f4, f2, f13
	fmadd.s f11, f15, f14, f4
	fsw f11, -84(a0)
	flw f2, -84(t4)
	fmul.s f1, f2, f12
	fmadd.s f3, f2, f10, f0
	fadd.s f4, f3, f11
	fmadd.s f15, f13, f14, f4
	fsw f15, -88(a0)
	flw f0, -88(t4)
	fmadd.s f4, f0, f10, f1
	fadd.s f3, f4, f15
	fmadd.s f13, f11, f14, f3
	fmul.s f3, f0, f12
	fsw f13, -92(a0)
	flw f1, -92(t4)
	fmadd.s f4, f1, f10, f3
	fadd.s f2, f4, f13
	fmadd.s f11, f15, f14, f2
	fmul.s f2, f1, f12
	fsw f11, -96(a0)
	flw f0, -96(t4)
	fmadd.s f3, f0, f10, f2
	fmul.s f2, f0, f12
	fadd.s f4, f3, f11
	fmadd.s f15, f13, f14, f4
	fsw f15, -100(a0)
	flw f1, -100(t4)
	fmadd.s f4, f1, f10, f2
	fmul.s f2, f1, f12
	fadd.s f3, f4, f15
	fmadd.s f13, f11, f14, f3
	fsw f13, -104(a0)
	flw f0, -104(t4)
	fmadd.s f3, f0, f10, f2
	fmul.s f2, f0, f12
	fadd.s f4, f3, f13
	fmadd.s f11, f15, f14, f4
	fsw f11, -108(a0)
	flw f1, -108(t4)
	fmadd.s f4, f1, f10, f2
	fmul.s f2, f1, f12
	fadd.s f3, f4, f11
	fmadd.s f15, f13, f14, f3
	fsw f15, -112(a0)
	flw f0, -112(t4)
	fmadd.s f3, f0, f10, f2
	fadd.s f13, f3, f15
	fmadd.s f12, f11, f14, f13
	fsw f12, -116(a0)
	ble a3, t1, label765
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
label755:
	flw f10, 0(a1)
	sh2add t4, t3, t2
	flw f11, 4(a1)
	addiw t3, t3, -16
	fmul.s f2, f12, f11
	flw f12, 8(a1)
	fmadd.s f1, f15, f10, f2
	fadd.s f0, f1, f14
	fmadd.s f13, f13, f12, f0
	fmul.s f0, f15, f11
	fsw f13, 0(a0)
	flw f1, 0(t4)
	fmadd.s f2, f1, f10, f0
	fadd.s f3, f2, f13
	fmul.s f2, f1, f11
	fmadd.s f15, f14, f12, f3
	fsw f15, -4(a0)
	flw f0, -4(t4)
	fmadd.s f3, f0, f10, f2
	fadd.s f4, f3, f15
	fmadd.s f14, f13, f12, f4
	fmul.s f4, f0, f11
	fsw f14, -8(a0)
	flw f1, -8(t4)
	fmadd.s f2, f1, f10, f4
	fmul.s f4, f1, f11
	fadd.s f3, f2, f14
	fmadd.s f13, f15, f12, f3
	fsw f13, -12(a0)
	flw f2, -12(t4)
	fmadd.s f0, f2, f10, f4
	fmul.s f4, f2, f11
	fadd.s f3, f0, f13
	fmadd.s f15, f14, f12, f3
	fsw f15, -16(a0)
	flw f0, -16(t4)
	fmadd.s f1, f0, f10, f4
	fadd.s f3, f1, f15
	fmadd.s f14, f13, f12, f3
	fmul.s f3, f0, f11
	fsw f14, -20(a0)
	flw f1, -20(t4)
	fmul.s f4, f1, f11
	fmadd.s f13, f1, f10, f3
	fadd.s f2, f13, f14
	fmadd.s f0, f15, f12, f2
	fsw f0, -24(a0)
	flw f13, -24(t4)
	fmadd.s f2, f13, f10, f4
	fadd.s f3, f2, f0
	fmadd.s f15, f14, f12, f3
	fmul.s f14, f13, f11
	fsw f15, -28(a0)
	flw f2, -28(t4)
	fmul.s f4, f2, f11
	fmadd.s f1, f2, f10, f14
	fadd.s f3, f1, f15
	fmadd.s f13, f0, f12, f3
	fsw f13, -32(a0)
	flw f1, -32(t4)
	fmadd.s f3, f1, f10, f4
	fadd.s f0, f3, f13
	fmadd.s f14, f15, f12, f0
	fmul.s f15, f1, f11
	fsw f14, -36(a0)
	flw f2, -36(t4)
	fmadd.s f4, f2, f10, f15
	fadd.s f3, f4, f14
	fmul.s f4, f2, f11
	fmadd.s f0, f13, f12, f3
	fsw f0, -40(a0)
	flw f15, -40(t4)
	fmadd.s f1, f15, f10, f4
	fadd.s f3, f1, f0
	fmadd.s f13, f14, f12, f3
	fmul.s f14, f15, f11
	fsw f13, -44(a0)
	flw f1, -44(t4)
	fmul.s f4, f1, f11
	fmadd.s f3, f1, f10, f14
	fadd.s f2, f3, f13
	fmadd.s f15, f0, f12, f2
	fsw f15, -48(a0)
	flw f14, -48(t4)
	fmadd.s f3, f14, f10, f4
	fadd.s f2, f3, f15
	fmul.s f3, f14, f11
	fmadd.s f0, f13, f12, f2
	fsw f0, -52(a0)
	flw f1, -52(t4)
	fmadd.s f4, f1, f10, f3
	fadd.s f2, f4, f0
	fmadd.s f13, f15, f12, f2
	fmul.s f15, f1, f11
	fsw f13, -56(a0)
	flw f14, -56(t4)
	fmadd.s f2, f14, f10, f15
	fadd.s f3, f2, f13
	fmadd.s f11, f0, f12, f3
	fsw f11, -60(a0)
	flw f15, -60(t4)
	ble t3, a2, label763
	addi a0, a0, -64
	fmv.s f12, f14
	fmv.s f14, f11
	j label755
label765:
	ret
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -16
	mv t3, a1
pcrel1392:
	auipc a2, %pcrel_hi(my_y2)
pcrel1393:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	li t2, 1080
pcrel1394:
	auipc a1, %pcrel_hi(imgOut)
	addi t4, a2, %pcrel_lo(pcrel1392)
	addi t1, a1, %pcrel_lo(pcrel1394)
	sd s0, 0(sp)
	addi a2, a3, %pcrel_lo(pcrel1393)
	li a1, -135
	sd s1, 8(sp)
	slli a3, a1, 4
	addi a4, a3, -1080
	addi a5, a4, -1080
	addi t0, a5, -1080
	j label1093
.p2align 2
label1332:
	addiw a0, a0, 1
	ble t3, a0, label1104
.p2align 2
label1093:
	lui t6, 135
	fmv.w.x f13, zero
	addiw t5, t6, -1080
	fmv.s f14, f13
	fmv.s f12, f13
	fmv.s f15, f13
	add a1, t4, t5
	li t5, 511
.p2align 2
label1095:
	flw f10, 0(a2)
	sh2add a7, a0, a1
	mulw a6, t5, t2
	flw f11, 4(a2)
	addiw t5, t5, -16
	add t6, t1, a6
	fmul.s f1, f12, f11
	addi a6, a1, -1080
	flw f12, 8(a2)
	fmadd.s f2, f15, f10, f1
	fadd.s f0, f2, f14
	fmul.s f2, f15, f11
	fmadd.s f13, f13, f12, f0
	fsw f13, 0(a7)
	sh2add a7, a0, t6
	flw f1, 0(a7)
	sh2add a7, a0, a6
	fmadd.s f0, f1, f10, f2
	addi a6, t6, -1080
	fmul.s f2, f1, f11
	fadd.s f3, f0, f13
	fmadd.s f15, f14, f12, f3
	fsw f15, 0(a7)
	sh2add a7, a0, a6
	flw f0, 0(a7)
	add a7, a1, a3
	fmadd.s f3, f0, f10, f2
	sh2add a6, a0, a7
	add a7, t6, a3
	fadd.s f4, f3, f15
	fmul.s f3, f0, f11
	fmadd.s f14, f13, f12, f4
	fsw f14, 0(a6)
	sh2add a6, a0, a7
	flw f1, 0(a6)
	add a6, a1, a4
	fmadd.s f4, f1, f10, f3
	sh2add a7, a0, a6
	add a6, t6, a4
	fadd.s f2, f4, f14
	fmadd.s f13, f15, f12, f2
	fmul.s f2, f1, f11
	fsw f13, 0(a7)
	sh2add a7, a0, a6
	add a6, a1, a5
	flw f0, 0(a7)
	sh2add a7, a0, a6
	fmadd.s f3, f0, f10, f2
	add a6, t6, a5
	fadd.s f4, f3, f13
	fmadd.s f15, f14, f12, f4
	fmul.s f4, f0, f11
	fsw f15, 0(a7)
	sh2add a7, a0, a6
	add a6, a1, t0
	flw f1, 0(a7)
	sh2add s0, a0, a6
	add a7, t6, t0
	fmadd.s f2, f1, f10, f4
	sh2add a6, a0, a7
	fmul.s f4, f1, f11
	li a7, -405
	fadd.s f3, f2, f15
	fmadd.s f14, f13, f12, f3
	fsw f14, 0(s0)
	flw f0, 0(a6)
	slli a6, a7, 4
	fmadd.s f3, f0, f10, f4
	add s0, t6, a6
	add s1, a1, a6
	sh2add a7, a0, s1
	fadd.s f2, f3, f14
	fmadd.s f13, f15, f12, f2
	fmul.s f2, f0, f11
	fsw f13, 0(a7)
	sh2add a7, a0, s0
	flw f1, 0(a7)
	addi a7, a6, -1080
	fmadd.s f3, f1, f10, f2
	add s0, t6, a7
	add s1, a1, a7
	fmul.s f2, f1, f11
	sh2add a6, a0, s1
	fadd.s f4, f3, f13
	fmadd.s f15, f14, f12, f4
	fsw f15, 0(a6)
	sh2add a6, a0, s0
	flw f14, 0(a6)
	addi a6, a7, -1080
	fmadd.s f3, f14, f10, f2
	add s0, t6, a6
	add s1, a1, a6
	sh2add a7, a0, s1
	fadd.s f4, f3, f15
	fmul.s f3, f14, f11
	fmadd.s f0, f13, f12, f4
	fsw f0, 0(a7)
	sh2add a7, a0, s0
	flw f13, 0(a7)
	addi a7, a6, -1080
	fmadd.s f2, f13, f10, f3
	add s1, t6, a7
	add s0, a1, a7
	fmul.s f3, f13, f11
	sh2add a6, a0, s0
	fadd.s f1, f2, f0
	fmadd.s f14, f15, f12, f1
	fsw f14, 0(a6)
	sh2add a6, a0, s1
	flw f15, 0(a6)
	addi a6, a7, -1080
	fmadd.s f2, f15, f10, f3
	add a7, t6, a6
	add s0, a1, a6
	sh2add s1, a0, s0
	sh2add s0, a0, a7
	addi a7, a6, -1080
	fadd.s f1, f2, f14
	fmul.s f2, f15, f11
	fmadd.s f13, f0, f12, f1
	fsw f13, 0(s1)
	add s1, t6, a7
	flw f1, 0(s0)
	add s0, a1, a7
	fmadd.s f0, f1, f10, f2
	fmul.s f4, f1, f11
	sh2add a6, a0, s0
	fadd.s f3, f0, f13
	fmadd.s f15, f14, f12, f3
	fsw f15, 0(a6)
	sh2add a6, a0, s1
	flw f0, 0(a6)
	addi a6, a7, -1080
	fmadd.s f2, f0, f10, f4
	add s0, t6, a6
	add s1, a1, a6
	sh2add a7, a0, s1
	fadd.s f3, f2, f15
	fmul.s f2, f0, f11
	fmadd.s f14, f13, f12, f3
	fsw f14, 0(a7)
	sh2add a7, a0, s0
	flw f13, 0(a7)
	addi a7, a6, -1080
	fmadd.s f3, f13, f10, f2
	add a6, t6, a7
	add s0, a1, a7
	sh2add s1, a0, s0
	sh2add s0, a0, a6
	addi a6, a7, -1080
	fadd.s f1, f3, f14
	fmul.s f3, f13, f11
	fmadd.s f0, f15, f12, f1
	fsw f0, 0(s1)
	add s1, a1, a6
	flw f15, 0(s0)
	sh2add a7, a0, s1
	add s0, t6, a6
	fmadd.s f2, f15, f10, f3
	fmul.s f3, f15, f11
	fadd.s f1, f2, f0
	fmadd.s f13, f14, f12, f1
	fsw f13, 0(a7)
	sh2add a7, a0, s0
	flw f14, 0(a7)
	addi a7, a6, -1080
	fmadd.s f2, f14, f10, f3
	add a6, t6, a7
	add s1, a1, a7
	sh2add s0, a0, s1
	sh2add s1, a0, a6
	fadd.s f1, f2, f13
	fmadd.s f11, f0, f12, f1
	fsw f11, 0(s0)
	flw f15, 0(s1)
	blt t5, zero, label1332
	li a6, -135
	fmv.s f12, f14
	slli t6, a6, 7
	fmv.s f14, f11
	add a1, a1, t6
	j label1095
label1104:
	ld s0, 0(sp)
	ld s1, 8(sp)
	addi sp, sp, 16
	ret
