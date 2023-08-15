.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	4194304
.align 8
B:
	.zero	4194304
.align 8
C:
	.zero	4194304
.align 8
cmmc_parallel_body_payload_0:
	.zero	9
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	8
.align 8
cmmc_parallel_body_payload_3:
	.zero	4
.align 8
cmmc_parallel_body_payload_4:
	.zero	8
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[40] CalleeSaved[104]
	addi sp, sp, -144
	sd ra, 0(sp)
	sd s10, 8(sp)
	sd s7, 16(sp)
	sd s8, 24(sp)
	sd s0, 32(sp)
	sd s5, 40(sp)
	sd s1, 48(sp)
	sd s6, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s4, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel1023:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	lui s6, 1
pcrel1024:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s3, 5
	mv s10, a0
	slti s7, a0, 1
pcrel1025:
	auipc a1, %pcrel_hi(B)
pcrel1026:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	sd a0, 104(sp)
	addi s8, a1, %pcrel_lo(pcrel1025)
pcrel1027:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel1028:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	sd s7, 128(sp)
	addi a2, a0, %pcrel_lo(pcrel1027)
	addi s0, a1, %pcrel_lo(pcrel1028)
pcrel1029:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
	sd a2, 120(sp)
pcrel1030:
	auipc a1, %pcrel_hi(cmmc_parallel_body_4)
	addi a2, a0, %pcrel_lo(pcrel1029)
	addi s2, a1, %pcrel_lo(pcrel1030)
pcrel1031:
	auipc a0, %pcrel_hi(A)
	sd a2, 112(sp)
	addi s7, a0, %pcrel_lo(pcrel1031)
	addi a2, a3, %pcrel_lo(pcrel1026)
pcrel1032:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	sd a2, 136(sp)
	addi s1, a0, %pcrel_lo(pcrel1032)
	ble s10, zero, label866
	mv s9, zero
	mv s11, s7
	mv s10, zero
	j label879
.p2align 2
label944:
	addiw s9, s9, 1
	ld s10, 104(sp)
	ble s10, s9, label1014
	add s7, s7, s6
	mv s10, zero
	mv s11, s7
.p2align 2
label879:
	jal getint
	addiw a1, s10, 1
	sw a0, 0(s11)
	ld s10, 104(sp)
	ble s10, a1, label944
	addi s11, s11, 4
	mv s10, a1
	j label879
label866:
	li a0, 65
	jal _sysy_starttime
	mv s6, zero
.p2align 2
label867:
	ld s10, 104(sp)
	ble s10, zero, label870
	mv a0, zero
pcrel1033:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s10, %pcrel_lo(pcrel1033)(s4)
	ld a2, 136(sp)
	mv a1, s10
	jal cmmcParallelFor
	ld s7, 128(sp)
pcrel1034:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_2)
	sb s7, %pcrel_lo(pcrel1034)(a0)
	mv a0, zero
	ld a2, 120(sp)
	sw s10, 4(a2)
	mv a1, s10
	mv a2, s0
	jal cmmcParallelFor
	mv a0, zero
pcrel1035:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s10, %pcrel_lo(pcrel1035)(s5)
	mv a1, s10
	mv a2, s1
	jal cmmcParallelFor
pcrel1036:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_4)
	sb s7, %pcrel_lo(pcrel1036)(a0)
	mv a0, zero
	ld a2, 112(sp)
	sw s10, 4(a2)
	mv a1, s10
	mv a2, s2
	jal cmmcParallelFor
.p2align 2
label870:
	addiw s6, s6, 1
	blt s6, s3, label867
	ld s10, 104(sp)
	ble s10, zero, label931
pcrel1037:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a3, 1
pcrel1038:
	auipc a4, %pcrel_hi(cmmc_parallel_body_0)
	addi a0, s1, %pcrel_lo(pcrel1037)
	addi a2, a4, %pcrel_lo(pcrel1038)
	slli a1, s10, 32
	sd a1, %pcrel_lo(pcrel1037)(s1)
	sb a3, 8(a0)
	mv a1, s10
	mv a0, zero
	jal cmmcParallelFor
	lw s0, %pcrel_lo(pcrel1037)(s1)
label872:
	li a0, 84
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s7, 16(sp)
	ld s8, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 144
	ret
label1014:
	mv s7, s8
	mv s11, zero
	mv s9, s8
	mv s8, zero
	j label888
.p2align 2
label956:
	addiw s8, s8, 1
	ld s10, 104(sp)
	ble s10, s8, label866
	add s7, s7, s6
	mv s11, zero
	mv s9, s7
.p2align 2
label888:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s9)
	ld s10, 104(sp)
	ble s10, a1, label956
	addi s9, s9, 4
	mv s11, a1
	j label888
label931:
	mv s0, zero
	j label872
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -24
	mv t4, a0
	mv a4, a1
pcrel199:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel200:
	auipc t3, %pcrel_hi(B)
	mv a6, zero
	sd s0, 0(sp)
	slli t1, a0, 12
	addi t2, a3, %pcrel_lo(pcrel199)
	addi t0, t3, %pcrel_lo(pcrel200)
	sd s2, 8(sp)
	li t3, 15
	add a3, t0, t1
	sd s1, 16(sp)
	lui t1, 1
	li t0, 3
	lw a1, 4(t2)
	lb a5, 8(t2)
	addi a0, a1, -18
	addi a2, a1, -3
	bne a5, zero, label6
	j label38
.p2align 2
label37:
	addi t5, t5, 4
.p2align 2
label33:
	lw a7, 0(t5)
	addiw a6, a6, 1
	addw t6, t6, a7
	bgt a1, a6, label37
	mv a6, t6
	addiw t4, t4, 1
	ble a4, t4, label41
.p2align 2
label40:
	add a3, a3, t1
	beq a5, zero, label38
.p2align 2
label6:
	ble a1, t0, label60
	ble a2, t3, label64
	mv t5, a3
	mv t6, zero
	j label23
.p2align 2
label27:
	addi t5, t5, 64
.p2align 2
label23:
	lw s1, 0(t5)
	addiw t6, t6, 16
	lw s2, 4(t5)
	addw a7, a6, s1
	lw s1, 8(t5)
	addw s0, a7, s2
	lw s2, 12(t5)
	addw a6, s0, s1
	lw s0, 16(t5)
	addw a7, a6, s2
	lw s2, 20(t5)
	addw s1, a7, s0
	lw a7, 24(t5)
	addw a6, s1, s2
	lw s1, 28(t5)
	addw s0, a6, a7
	lw s2, 32(t5)
	addw a7, s0, s1
	lw s1, 36(t5)
	addw a6, a7, s2
	lw s0, 40(t5)
	addw a7, a6, s1
	lw s2, 44(t5)
	addw a6, a7, s0
	lw s1, 48(t5)
	addw a7, a6, s2
	lw s2, 52(t5)
	addw s0, a7, s1
	lw s1, 56(t5)
	addw a6, s0, s2
	lw s0, 60(t5)
	addw a7, a6, s1
	addw a6, a7, s0
	bgt a0, t6, label27
	mv a7, t6
	mv s0, a6
	ble a2, t6, label184
.p2align 2
label16:
	sh2add t5, a7, a3
	mv a6, s0
	mv t6, a7
.p2align 2
label17:
	lw s0, 0(t5)
	addiw t6, t6, 4
	lw s2, 4(t5)
	addw a7, a6, s0
	lw s1, 8(t5)
	addw a6, a7, s2
	lw s0, 12(t5)
	addw a7, a6, s1
	addw a6, a7, s0
	ble a2, t6, label86
	addi t5, t5, 16
	j label17
.p2align 2
label86:
	mv a7, t6
	mv t6, a6
	ble a1, a7, label183
.p2align 2
label32:
	sh2add t5, a7, a3
	mv a6, a7
	j label33
label64:
	mv a7, zero
	mv s0, a6
	mv t6, zero
	mv a6, zero
	bgt a2, zero, label16
	bgt a1, zero, label32
	addiw t4, t4, 1
	bgt a4, t4, label40
	j label41
.p2align 2
label184:
	mv a7, t6
	mv t6, a6
	bgt a1, a7, label32
	addiw t4, t4, 1
	bgt a4, t4, label40
	j label41
label38:
	addiw t4, t4, 1
	bgt a4, t4, label40
	j label41
label60:
	mv t6, a6
	mv a7, zero
	mv a6, zero
	bgt a1, zero, label32
	addiw t4, t4, 1
	bgt a4, t4, label40
label41:
	amoadd.w.aqrl a0, a6, (t2)
	ld s0, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label183:
	addiw t4, t4, 1
	bgt a4, t4, label40
	j label41
.p2align 2
cmmc_parallel_body_1:
	mv t2, a0
	mv a4, a1
pcrel354:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel355:
	auipc t1, %pcrel_hi(C)
	slliw t0, a0, 12
	addi a5, t1, %pcrel_lo(pcrel355)
	lw a1, %pcrel_lo(pcrel354)(a3)
	li t1, 15
	add a3, a5, t0
	addi a0, a1, -18
	addi a2, a1, -3
	lui t0, 1
	li a5, 3
	bgt a1, a5, label205
	mv t4, zero
	bgt a1, zero, label224
	j label221
.p2align 2
label213:
	addi t3, t3, 16
.p2align 2
label210:
	addiw t4, t4, 4
	sd zero, 0(t3)
	sd zero, 8(t3)
	bgt a2, t4, label213
	ble a1, t4, label339
.p2align 2
label224:
	sh2add t3, t4, a3
.p2align 2
label225:
	addiw t4, t4, 1
	sw zero, 0(t3)
	ble a1, t4, label299
	addi t3, t3, 4
	j label225
.p2align 2
label299:
	addiw t2, t2, 1
	ble a4, t2, label222
.p2align 2
label223:
	add a3, a3, t0
	ble a1, a5, label341
.p2align 2
label205:
	ble a2, t1, label246
	mv t3, a3
	mv t4, zero
	j label215
.p2align 2
label218:
	addi t3, t3, 64
.p2align 2
label215:
	addiw t4, t4, 16
	sd zero, 0(t3)
	sd zero, 8(t3)
	sd zero, 16(t3)
	sd zero, 24(t3)
	sd zero, 32(t3)
	sd zero, 40(t3)
	sd zero, 48(t3)
	sd zero, 56(t3)
	bgt a0, t4, label218
	mv t5, t4
	ble a2, t4, label340
.p2align 2
label209:
	sh2add t3, t5, a3
	mv t4, t5
	j label210
label246:
	mv t5, zero
	mv t4, zero
	bgt a2, zero, label209
	bgt a1, zero, label224
	addiw t2, t2, 1
	bgt a4, t2, label223
	j label222
.p2align 2
label340:
	bgt a1, t4, label224
	addiw t2, t2, 1
	bgt a4, t2, label223
	j label222
label341:
	mv t4, zero
	bgt a1, zero, label224
label221:
	addiw t2, t2, 1
	bgt a4, t2, label223
label222:
	ret
.p2align 2
label339:
	addiw t2, t2, 1
	bgt a4, t2, label223
	j label222
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -56
	mv t3, a1
pcrel530:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel531:
	auipc t1, %pcrel_hi(B)
	slliw a5, a0, 12
pcrel532:
	auipc t2, %pcrel_hi(C)
	sd s0, 0(sp)
	addi a3, a4, %pcrel_lo(pcrel530)
	sd s5, 8(sp)
	sd s3, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	lb t0, %pcrel_lo(pcrel530)(a4)
	lw a2, 4(a3)
	addi a3, t1, %pcrel_lo(pcrel531)
	addi a1, a2, -3
	addi t1, t2, %pcrel_lo(pcrel532)
	add a4, a3, a5
	li t2, 3
	mv a5, a0
pcrel533:
	auipc a3, %pcrel_hi(A)
	addi t4, a3, %pcrel_lo(pcrel533)
	lui a3, 1
	mv t5, t4
	mv a6, zero
	bgt a2, zero, label363
	j label403
.p2align 2
label375:
	addi a7, a7, 4
.p2align 2
label372:
	lw s3, 0(a7)
	sh2add s2, s0, a6
	addiw s0, s0, 1
	mulw s1, a0, s3
	amoadd.w.aqrl s4, s1, (s2)
	bgt a2, s0, label375
	add t5, t5, a3
	mv a6, t6
	ble a2, t6, label517
.p2align 2
label363:
	sh2add a7, a5, t5
	addiw t6, a6, 1
	lw a0, 0(a7)
	bne a0, zero, label411
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label363
	addiw a5, a5, 1
	ble t3, a5, label384
.p2align 2
label383:
	add a4, a4, a3
	mv t5, t4
	mv a6, zero
	bgt a2, zero, label363
label403:
	addiw a5, a5, 1
	bgt t3, a5, label383
	j label384
.p2align 2
label411:
	bne t0, zero, label508
	slliw a7, a6, 12
	add a6, t1, a7
	ble a2, t2, label422
	mv a7, a4
	mv s0, zero
.p2align 2
label378:
	lw s3, 0(a7)
	sh2add s1, s0, a6
	addiw s0, s0, 4
	mulw s2, a0, s3
	amoadd.w.aqrl s5, s2, (s1)
	addi s5, s1, 4
	lw s4, 4(a7)
	mulw s3, a0, s4
	amoadd.w.aqrl s6, s3, (s5)
	addi s5, s1, 8
	lw s4, 8(a7)
	mulw s2, a0, s4
	amoadd.w.aqrl s6, s2, (s5)
	addi s2, s1, 12
	lw s4, 12(a7)
	mulw s3, a0, s4
	amoadd.w.aqrl s5, s3, (s2)
	ble a1, s0, label466
	addi a7, a7, 16
	j label378
.p2align 2
label466:
	ble a2, s0, label513
.p2align 2
label371:
	sh2add a7, s0, a4
	j label372
.p2align 2
label422:
	mv s0, zero
	bgt a2, zero, label371
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label363
	addiw a5, a5, 1
	bgt t3, a5, label383
	j label384
.p2align 2
label513:
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label363
	addiw a5, a5, 1
	bgt t3, a5, label383
	j label384
.p2align 2
label508:
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label363
	j label403
label384:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s3, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label517:
	addiw a5, a5, 1
	bgt t3, a5, label383
	j label384
.p2align 2
cmmc_parallel_body_3:
	mv t2, a0
	mv a4, a1
pcrel687:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel688:
	auipc t1, %pcrel_hi(B)
	slliw t0, a0, 12
	addi a5, t1, %pcrel_lo(pcrel688)
	lw a1, %pcrel_lo(pcrel687)(a3)
	li t1, 15
	add a3, a5, t0
	addi a0, a1, -18
	addi a2, a1, -3
	lui t0, 1
	li a5, 3
	bgt a1, a5, label538
	mv t4, zero
	bgt a1, zero, label557
	j label554
.p2align 2
label546:
	addi t3, t3, 16
.p2align 2
label543:
	addiw t4, t4, 4
	sd zero, 0(t3)
	sd zero, 8(t3)
	bgt a2, t4, label546
	ble a1, t4, label672
.p2align 2
label557:
	sh2add t3, t4, a3
.p2align 2
label558:
	addiw t4, t4, 1
	sw zero, 0(t3)
	ble a1, t4, label632
	addi t3, t3, 4
	j label558
.p2align 2
label632:
	addiw t2, t2, 1
	ble a4, t2, label556
.p2align 2
label555:
	add a3, a3, t0
	ble a1, a5, label674
.p2align 2
label538:
	ble a2, t1, label579
	mv t3, a3
	mv t4, zero
	j label548
.p2align 2
label551:
	addi t3, t3, 64
.p2align 2
label548:
	addiw t4, t4, 16
	sd zero, 0(t3)
	sd zero, 8(t3)
	sd zero, 16(t3)
	sd zero, 24(t3)
	sd zero, 32(t3)
	sd zero, 40(t3)
	sd zero, 48(t3)
	sd zero, 56(t3)
	bgt a0, t4, label551
	mv t5, t4
	ble a2, t4, label673
.p2align 2
label542:
	sh2add t3, t5, a3
	mv t4, t5
	j label543
label579:
	mv t5, zero
	mv t4, zero
	bgt a2, zero, label542
	bgt a1, zero, label557
	addiw t2, t2, 1
	bgt a4, t2, label555
	j label556
.p2align 2
label673:
	bgt a1, t4, label557
	addiw t2, t2, 1
	bgt a4, t2, label555
	j label556
label674:
	mv t4, zero
	bgt a1, zero, label557
label554:
	addiw t2, t2, 1
	bgt a4, t2, label555
label556:
	ret
.p2align 2
label672:
	addiw t2, t2, 1
	bgt a4, t2, label555
	j label556
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -56
	mv t3, a1
pcrel861:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_4)
pcrel862:
	auipc t1, %pcrel_hi(C)
	slliw a5, a0, 12
pcrel863:
	auipc t2, %pcrel_hi(B)
	sd s0, 0(sp)
	addi a4, a3, %pcrel_lo(pcrel861)
	sd s5, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	lb t0, %pcrel_lo(pcrel861)(a3)
	addi a3, t1, %pcrel_lo(pcrel862)
	lw a2, 4(a4)
	addi t1, t2, %pcrel_lo(pcrel863)
	add a4, a3, a5
	addi a1, a2, -3
	li t2, 3
	mv a5, a0
pcrel864:
	auipc a3, %pcrel_hi(A)
	addi t4, a3, %pcrel_lo(pcrel864)
	lui a3, 1
	mv t5, t4
	mv a6, zero
	bgt a2, zero, label696
	j label736
.p2align 2
label708:
	addi a7, a7, 4
.p2align 2
label704:
	lw s2, 0(a7)
	sh2add s3, s0, a6
	addiw s0, s0, 1
	mulw s1, a0, s2
	amoadd.w.aqrl s4, s1, (s3)
	bgt a2, s0, label708
	add t5, t5, a3
	mv a6, t6
	ble a2, t6, label844
.p2align 2
label696:
	sh2add a7, a5, t5
	addiw t6, a6, 1
	lw a0, 0(a7)
	bne a0, zero, label744
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label696
	addiw a5, a5, 1
	ble t3, a5, label717
.p2align 2
label716:
	add a4, a4, a3
	mv t5, t4
	mv a6, zero
	bgt a2, zero, label696
label736:
	addiw a5, a5, 1
	bgt t3, a5, label716
	j label717
.p2align 2
label744:
	bne t0, zero, label841
	slliw a7, a6, 12
	add a6, t1, a7
	ble a2, t2, label755
	mv a7, a4
	mv s0, zero
	j label711
.p2align 2
label714:
	addi a7, a7, 16
.p2align 2
label711:
	lw s2, 0(a7)
	sh2add s1, s0, a6
	addiw s0, s0, 4
	mulw s3, a0, s2
	amoadd.w.aqrl s5, s3, (s1)
	addi s5, s1, 4
	lw s4, 4(a7)
	mulw s2, a0, s4
	amoadd.w.aqrl s6, s2, (s5)
	addi s5, s1, 8
	lw s4, 8(a7)
	mulw s3, a0, s4
	amoadd.w.aqrl s6, s3, (s5)
	addi s3, s1, 12
	lw s4, 12(a7)
	mulw s2, a0, s4
	amoadd.w.aqrl s5, s2, (s3)
	bgt a1, s0, label714
	ble a2, s0, label846
.p2align 2
label703:
	sh2add a7, s0, a4
	j label704
.p2align 2
label755:
	mv s0, zero
	bgt a2, zero, label703
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label696
	j label736
.p2align 2
label846:
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label696
	addiw a5, a5, 1
	bgt t3, a5, label716
label717:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label841:
	add t5, t5, a3
	mv a6, t6
	bgt a2, t6, label696
	j label736
.p2align 2
label844:
	addiw a5, a5, 1
	bgt t3, a5, label716
	j label717
