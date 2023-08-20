.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
sheet1:
	.zero	1000000
.p2align 3
sheet2:
	.zero	1000000
.p2align 2
width:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s6, 8(sp)
	sd s1, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s8, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s4, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s6, a0
pcrel820:
	auipc a0, %pcrel_hi(width)
	sw s6, %pcrel_lo(pcrel820)(a0)
	jal getint
	addiw a1, a0, 1
	mv s0, a0
	sd a1, 104(sp)
	jal getint
	mv s8, a0
	jal getch
pcrel821:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel822:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel823:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
pcrel824:
	auipc a1, %pcrel_hi(sheet1)
	addi s1, a0, %pcrel_lo(pcrel823)
	addi s3, a1, %pcrel_lo(pcrel824)
pcrel825:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	addi s2, a1, %pcrel_lo(pcrel825)
	ble s0, zero, label612
	addi s9, s3, 2000
	mv a1, s6
	li s7, 1
	mv s10, s7
	bgt s6, zero, label646
	j label644
.p2align 2
label650:
	addi s11, s11, 4
.p2align 2
label647:
	jal getch
	addiw s7, s7, 1
	xori a1, a0, 35
	sltiu a2, a1, 1
	sw a2, 0(s11)
	bgt s6, s7, label650
.p2align 2
label644:
	jal getch
	addiw s10, s10, 1
	blt s0, s10, label612
pcrel826:
	auipc a0, %pcrel_hi(width)
	addi s9, s9, 2000
	lw a1, %pcrel_lo(pcrel826)(a0)
	ble a1, zero, label644
.p2align 2
label646:
	auipc a0, %pcrel_hi(width)
	addi s11, s9, 4
	li s7, 1
	lw a1, %pcrel_lo(label646)(a0)
	addiw s6, a1, 1
	j label647
label612:
	li a0, 95
	jal _sysy_starttime
	ble s8, zero, label665
	li s7, 1
	mv a0, s7
	beq s7, s7, label616
	bgt s0, zero, label621
	j label800
.p2align 2
label616:
	ble s0, zero, label672
	ld a1, 104(sp)
	li s7, 1
pcrel827:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw a1, %pcrel_lo(pcrel827)(s5)
	mv a0, s7
	mv a2, s2
	jal cmmcParallelFor
	li s7, 2
.p2align 2
label618:
	addiw s8, s8, -1
	ble s8, zero, label622
.p2align 2
label682:
	mv a0, s7
	li s7, 1
	beq a0, s7, label616
	ble s0, zero, label800
.p2align 2
label621:
	ld a1, 104(sp)
	li s7, 1
pcrel828:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw a1, %pcrel_lo(pcrel828)(s4)
	mv a0, s7
	mv a2, s1
	jal cmmcParallelFor
	addiw s8, s8, -1
	bgt s8, zero, label682
label622:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	beq s7, a1, label637
label625:
	ble s0, zero, label624
	addi s1, s3, 2000
	li s7, 1
	mv s2, s7
pcrel829:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel829)(a0)
	addiw s0, a1, 1
	bgt a1, zero, label632
.p2align 2
label630:
	li a0, 10
	jal putch
	ld a1, 104(sp)
	addiw s2, s2, 1
	ble a1, s2, label624
	addi s1, s1, 2000
pcrel830:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel830)(a0)
	addiw s0, a1, 1
	ble a1, zero, label630
.p2align 2
label632:
	addi s3, s1, 4
	li s7, 1
	mv s4, s7
	lw a1, 0(s3)
	li a0, 35
	beq a1, s7, label785
.p2align 2
label784:
	li a0, 46
.p2align 2
label785:
	jal putch
	addiw s4, s4, 1
	ble s0, s4, label630
	addi s3, s3, 4
	li a0, 35
	li s7, 1
	lw a1, 0(s3)
	beq a1, s7, label785
	j label784
label624:
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s8, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s4, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label637:
	ble s0, zero, label624
pcrel831:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel832:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	li s7, 1
	addi a2, a3, %pcrel_lo(pcrel832)
	ld a1, 104(sp)
	sw a1, %pcrel_lo(pcrel831)(a0)
	mv a0, s7
	jal cmmcParallelFor
	j label625
label800:
	li s7, 1
	j label618
label665:
	li s7, 1
	j label622
label672:
	li s7, 2
	j label618
.p2align 2
cmmc_parallel_body_0:
	mv a5, a0
pcrel398:
	auipc a2, %pcrel_hi(width)
pcrel399:
	auipc t0, %pcrel_hi(sheet1)
pcrel400:
	auipc t2, %pcrel_hi(sheet2)
	lw a4, %pcrel_lo(pcrel398)(a2)
	addi t1, t2, %pcrel_lo(pcrel400)
	addi a2, t0, %pcrel_lo(pcrel399)
	addiw a3, a4, -2
	addiw a0, a4, 1
	li t0, 16
	bgt a3, t0, label2
	bgt a4, zero, label40
label38:
	ret
label2:
	ble a4, zero, label38
	addiw t0, a4, -17
	li t2, 4
	ble a0, t2, label27
	li t3, 2000
	mul t2, a5, t3
	add a4, t1, t2
	li t4, 2000
	mul t3, a5, t4
	add t2, a2, t3
	li t3, 1
	addi t1, t2, 4
	j label8
.p2align 2
label26:
	addi t1, t1, 64
.p2align 2
label8:
	sh2add t4, t3, a4
	addiw t3, t3, 16
	lw t6, 0(t4)
	sw t6, 0(t1)
	lw t5, 4(t4)
	sw t5, 4(t1)
	lw a6, 8(t4)
	sw a6, 8(t1)
	lw t6, 12(t4)
	sw t6, 12(t1)
	lw t5, 16(t4)
	sw t5, 16(t1)
	lw t6, 20(t4)
	sw t6, 20(t1)
	lw t5, 24(t4)
	sw t5, 24(t1)
	lw t6, 28(t4)
	sw t6, 28(t1)
	lw t5, 32(t4)
	sw t5, 32(t1)
	lw a6, 36(t4)
	sw a6, 36(t1)
	lw t6, 40(t4)
	sw t6, 40(t1)
	lw t5, 44(t4)
	sw t5, 44(t1)
	lw t6, 48(t4)
	sw t6, 48(t1)
	lw t5, 52(t4)
	sw t5, 52(t1)
	lw t6, 56(t4)
	sw t6, 56(t1)
	lw t5, 60(t4)
	sw t5, 60(t1)
	bgt t0, t3, label26
	ble a3, t3, label17
	sh2add t1, t3, t2
.p2align 2
label13:
	sh2add t4, t3, a4
	addiw t3, t3, 4
	lw t5, 0(t4)
	sw t5, 0(t1)
	lw a6, 4(t4)
	sw a6, 4(t1)
	lw t6, 8(t4)
	sw t6, 8(t1)
	lw t5, 12(t4)
	sw t5, 12(t1)
	ble a3, t3, label183
	addi t1, t1, 16
	j label13
label183:
	ble a0, t3, label24
label19:
	sh2add t1, t3, a4
.p2align 2
label20:
	sh2add t4, t3, t2
	lw t5, 0(t1)
	addiw t3, t3, 1
	sw t5, 0(t4)
	ble a0, t3, label198
	addi t1, t1, 4
	j label20
label198:
	addiw a5, a5, 1
	ble a1, a5, label38
label25:
	addi a4, a4, 2000
	li t4, 2000
	mul t3, a5, t4
	add t2, a2, t3
	li t3, 1
	addi t1, t2, 4
	j label8
label17:
	bgt a0, t3, label19
label24:
	addiw a5, a5, 1
	bgt a1, a5, label25
	j label38
label40:
	li a4, 4
	bgt a0, a4, label64
	li a4, 1
	bgt a3, a4, label53
	li a3, 1
	ble a0, a3, label38
	li t0, 2000
	mul a4, a5, t0
	add a3, t1, a4
	li t2, 2000
	addi a4, a3, 4
	mul t1, a5, t2
	add t0, a2, t1
	li t1, 1
	j label47
.p2align 2
label52:
	addi a4, a4, 4
.p2align 2
label47:
	sh2add t2, t1, t0
	lw t3, 0(a4)
	addiw t1, t1, 1
	sw t3, 0(t2)
	bgt a0, t1, label52
label50:
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a3, a3, 2000
	li t2, 2000
	addi a4, a3, 4
	mul t1, a5, t2
	lw t3, 0(a4)
	add t0, a2, t1
	li t1, 1
	sh2add t2, t1, t0
	addiw t1, t1, 1
	sw t3, 0(t2)
	bgt a0, t1, label52
	j label50
label64:
	li a4, 1
	ble a3, a4, label38
	li t2, 2000
	mul t0, a5, t2
	add a4, t1, t0
	li t3, 2000
	mul t2, a5, t3
	add t0, a2, t2
	li t2, 1
	addi t1, t0, 4
	j label69
.p2align 2
label80:
	addi t1, t1, 16
.p2align 2
label69:
	sh2add t3, t2, a4
	addiw t2, t2, 4
	lw t4, 0(t3)
	sw t4, 0(t1)
	lw t5, 4(t3)
	sw t5, 4(t1)
	lw t6, 8(t3)
	sw t6, 8(t1)
	lw t4, 12(t3)
	sw t4, 12(t1)
	bgt a3, t2, label80
	ble a0, t2, label73
	sh2add t1, t2, a4
.p2align 2
label76:
	sh2add t3, t2, t0
	lw t4, 0(t1)
	addiw t2, t2, 1
	sw t4, 0(t3)
	ble a0, t2, label73
	addi t1, t1, 4
	j label76
label73:
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a4, a4, 2000
	li t3, 2000
	mul t2, a5, t3
	add t0, a2, t2
	li t2, 1
	addi t1, t0, 4
	j label69
label27:
	li a3, 1
	ble a0, a3, label38
	li t0, 2000
	mul a4, a5, t0
	add a3, t1, a4
	li t2, 2000
	addi a4, a3, 4
	mul t0, a5, t2
	add t1, a2, t0
	li t0, 1
	j label32
.p2align 2
label35:
	addi a4, a4, 4
.p2align 2
label32:
	sh2add t2, t0, t1
	lw t3, 0(a4)
	addiw t0, t0, 1
	sw t3, 0(t2)
	bgt a0, t0, label35
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a3, a3, 2000
	li t2, 2000
	addi a4, a3, 4
	mul t0, a5, t2
	add t1, a2, t0
	li t0, 1
	j label32
label53:
	li a3, 1
	ble a0, a3, label38
	li t0, 2000
	mul a4, a5, t0
	add a3, t1, a4
	li t2, 2000
	addi a4, a3, 4
	mul t0, a5, t2
	add t1, a2, t0
	li t0, 1
	j label58
label61:
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a3, a3, 2000
	li t2, 2000
	addi a4, a3, 4
	mul t0, a5, t2
	add t1, a2, t0
	li t0, 1
.p2align 2
label58:
	sh2add t2, t0, t1
	lw t3, 0(a4)
	addiw t0, t0, 1
	sw t3, 0(t2)
	ble a0, t0, label61
	addi a4, a4, 4
	j label58
.p2align 2
cmmc_parallel_body_1:
	mv a4, a1
pcrel503:
	auipc a3, %pcrel_hi(width)
pcrel504:
	auipc t1, %pcrel_hi(sheet2)
pcrel505:
	auipc t2, %pcrel_hi(sheet1)
	lw a2, %pcrel_lo(pcrel503)(a3)
	addi a5, t1, %pcrel_lo(pcrel504)
	addi t0, t2, %pcrel_lo(pcrel505)
	li a3, 1
	addiw a1, a2, 1
	li t1, 2000
	bgt a2, zero, label402
label415:
	ret
label402:
	mulw a2, a0, t1
	mv t2, a0
	add a5, a5, a2
	mulw t3, a0, t1
	addi a0, a5, 4
	add a2, t0, t3
	mv t3, a3
	j label406
.p2align 2
label464:
	xori a7, t5, 3
	sh2add a6, t3, a2
	sltiu t6, a7, 1
	sw t6, 0(a6)
	ble a1, t4, label498
.p2align 2
label411:
	addi a0, a0, 4
	mv t3, t4
.p2align 2
label406:
	lw t4, -2004(a0)
	lw a7, -2000(a0)
	lw a6, -1996(a0)
	addw t6, t4, a7
	lw a7, -4(a0)
	addw t5, t6, a6
	lw t6, 4(a0)
	addw t4, t5, a7
	lw t5, 1996(a0)
	addw a6, t4, t6
	lw a7, 2000(a0)
	addw t6, a6, t5
	lw a6, 2004(a0)
	addw t4, t6, a7
	addw t5, t4, a6
	lw t4, 0(a0)
	xori t6, t5, 2
	xori a7, t4, 1
	addiw t4, t3, 1
	or a6, t6, a7
	bne a6, zero, label464
	sh2add t5, t3, a2
	sw a3, 0(t5)
	bgt a1, t4, label411
	addiw t2, t2, 1
	ble a4, t2, label415
.p2align 2
label413:
	addi a5, a5, 2000
	mulw t3, t2, t1
	addi a0, a5, 4
	add a2, t0, t3
	mv t3, a3
	j label406
.p2align 2
label498:
	addiw t2, t2, 1
	bgt a4, t2, label413
	j label415
.p2align 2
cmmc_parallel_body_2:
	mv a4, a1
pcrel608:
	auipc a3, %pcrel_hi(width)
pcrel609:
	auipc t1, %pcrel_hi(sheet1)
pcrel610:
	auipc t2, %pcrel_hi(sheet2)
	lw a2, %pcrel_lo(pcrel608)(a3)
	addi a5, t1, %pcrel_lo(pcrel609)
	addi t0, t2, %pcrel_lo(pcrel610)
	li a3, 1
	addiw a1, a2, 1
	li t1, 2000
	bgt a2, zero, label507
label520:
	ret
label507:
	mulw a2, a0, t1
	mv t2, a0
	add a5, a5, a2
	mulw t3, a0, t1
	addi a0, a5, 4
	add a2, t0, t3
	mv t3, a3
	j label511
.p2align 2
label569:
	xori a7, t5, 3
	sh2add a6, t3, a2
	sltiu t6, a7, 1
	sw t6, 0(a6)
	ble a1, t4, label603
.p2align 2
label516:
	addi a0, a0, 4
	mv t3, t4
.p2align 2
label511:
	lw t4, -2004(a0)
	lw a7, -2000(a0)
	lw a6, -1996(a0)
	addw t6, t4, a7
	lw a7, -4(a0)
	addw t5, t6, a6
	lw t6, 4(a0)
	addw t4, t5, a7
	lw t5, 1996(a0)
	addw a6, t4, t6
	lw a7, 2000(a0)
	addw t6, a6, t5
	lw a6, 2004(a0)
	addw t4, t6, a7
	addw t5, t4, a6
	lw t4, 0(a0)
	xori t6, t5, 2
	xori a7, t4, 1
	addiw t4, t3, 1
	or a6, t6, a7
	bne a6, zero, label569
	sh2add t5, t3, a2
	sw a3, 0(t5)
	bgt a1, t4, label516
	addiw t2, t2, 1
	ble a4, t2, label520
.p2align 2
label518:
	addi a5, a5, 2000
	mulw t3, t2, t1
	addi a0, a5, 4
	add a2, t0, t3
	mv t3, a3
	j label511
.p2align 2
label603:
	addiw t2, t2, 1
	bgt a4, t2, label518
	j label520
