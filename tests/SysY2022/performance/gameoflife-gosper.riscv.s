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
	sd s9, 72(sp)
	sd s7, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s6, a0
pcrel800:
	auipc a0, %pcrel_hi(width)
	sw s6, %pcrel_lo(pcrel800)(a0)
	jal getint
	addiw a1, a0, 1
	mv s0, a0
	sd a1, 104(sp)
	jal getint
	mv s8, a0
	jal getch
pcrel801:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
pcrel802:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel803:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
pcrel804:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel805:
	auipc a2, %pcrel_hi(sheet1)
	addi s2, a0, %pcrel_lo(pcrel801)
	addi s1, a1, %pcrel_lo(pcrel803)
	addi s3, a2, %pcrel_lo(pcrel805)
	ble s0, zero, label600
	addi s9, s3, 2000
	mv a1, s6
	li s7, 1
	mv s10, s7
	bgt s6, zero, label595
	j label593
.p2align 2
label599:
	addi s11, s11, 4
.p2align 2
label596:
	jal getch
	addiw s7, s7, 1
	xori a1, a0, 35
	sltiu a2, a1, 1
	sw a2, 0(s11)
	bgt s6, s7, label599
.p2align 2
label593:
	jal getch
	addiw s10, s10, 1
	blt s0, s10, label600
pcrel806:
	auipc a0, %pcrel_hi(width)
	addi s9, s9, 2000
	lw a1, %pcrel_lo(pcrel806)(a0)
	ble a1, zero, label593
.p2align 2
label595:
	auipc a0, %pcrel_hi(width)
	addi s11, s9, 4
	li s7, 1
	lw a1, %pcrel_lo(label595)(a0)
	addiw s6, a1, 1
	j label596
label600:
	li a0, 95
	jal _sysy_starttime
	ble s8, zero, label666
	li s7, 1
	mv a0, s7
	beq s7, s7, label604
	bgt s0, zero, label609
label777:
	li s7, 1
.p2align 2
label606:
	addiw s8, s8, -1
	ble s8, zero, label610
.p2align 2
label683:
	mv a0, s7
	li s7, 1
	bne a0, s7, label778
.p2align 2
label604:
	ble s0, zero, label673
	ld a1, 104(sp)
	li s7, 1
pcrel807:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw a1, %pcrel_lo(pcrel807)(s5)
	mv a0, s7
	mv a2, s2
	jal cmmcParallelFor
	li s7, 2
	j label606
.p2align 2
label778:
	ble s0, zero, label777
.p2align 2
label609:
	ld a1, 104(sp)
	li s7, 1
pcrel808:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw a1, %pcrel_lo(pcrel808)(s4)
	mv a0, s7
	mv a2, s1
	jal cmmcParallelFor
	addiw s8, s8, -1
	bgt s8, zero, label683
label610:
	li a0, 106
	jal _sysy_stoptime
	li a1, 2
	bne s7, a1, label613
	ble s0, zero, label612
pcrel809:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel810:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	li s7, 1
	addi a2, a3, %pcrel_lo(pcrel810)
	ld a1, 104(sp)
	sw a1, %pcrel_lo(pcrel809)(a0)
	mv a0, s7
	jal cmmcParallelFor
label613:
	ble s0, zero, label612
	addi s1, s3, 2000
	li s7, 1
	mv s2, s7
pcrel811:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel811)(a0)
	addiw s0, a1, 1
	bgt a1, zero, label618
.p2align 2
label623:
	li a0, 10
	jal putch
	ld a1, 104(sp)
	addiw s2, s2, 1
	ble a1, s2, label612
	addi s1, s1, 2000
pcrel812:
	auipc a0, %pcrel_hi(width)
	lw a1, %pcrel_lo(pcrel812)(a0)
	addiw s0, a1, 1
	ble a1, zero, label623
.p2align 2
label618:
	addi s3, s1, 4
	li s7, 1
	mv s4, s7
	lw a1, 0(s3)
	li a0, 35
	beq a1, s7, label761
.p2align 2
label760:
	li a0, 46
.p2align 2
label761:
	jal putch
	addiw s4, s4, 1
	ble s0, s4, label623
	addi s3, s3, 4
	li a0, 35
	li s7, 1
	lw a1, 0(s3)
	beq a1, s7, label761
	j label760
label612:
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
	ld s9, 72(sp)
	ld s7, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label673:
	li s7, 2
	j label606
label666:
	li s7, 1
	j label610
.p2align 2
cmmc_parallel_body_0:
	mv a5, a0
pcrel400:
	auipc a2, %pcrel_hi(width)
pcrel401:
	auipc t0, %pcrel_hi(sheet1)
pcrel402:
	auipc t2, %pcrel_hi(sheet2)
	lw a4, %pcrel_lo(pcrel400)(a2)
	addi t1, t2, %pcrel_lo(pcrel402)
	addi a2, t0, %pcrel_lo(pcrel401)
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
	ble a0, t2, label4
	li t3, 2000
	mul t2, a5, t3
	add a4, t1, t2
	li t4, 2000
	addi t2, a4, 4
	mul t3, a5, t4
	li t4, 1
	add t1, a2, t3
	j label19
.p2align 2
label22:
	addi t2, t2, 64
.p2align 2
label19:
	sh2add t3, t4, t1
	lw t5, 0(t2)
	addiw t4, t4, 16
	sw t5, 0(t3)
	lw t6, 4(t2)
	sw t6, 4(t3)
	lw t5, 8(t2)
	sw t5, 8(t3)
	lw a6, 12(t2)
	sw a6, 12(t3)
	lw t6, 16(t2)
	sw t6, 16(t3)
	lw t5, 20(t2)
	sw t5, 20(t3)
	lw a6, 24(t2)
	sw a6, 24(t3)
	lw t6, 28(t2)
	sw t6, 28(t3)
	lw t5, 32(t2)
	sw t5, 32(t3)
	lw t6, 36(t2)
	sw t6, 36(t3)
	lw t5, 40(t2)
	sw t5, 40(t3)
	lw a6, 44(t2)
	sw a6, 44(t3)
	lw t6, 48(t2)
	sw t6, 48(t3)
	lw t5, 52(t2)
	sw t5, 52(t3)
	lw t6, 56(t2)
	sw t6, 56(t3)
	lw t5, 60(t2)
	sw t5, 60(t3)
	bgt t0, t4, label22
	ble a3, t4, label375
	sh2add t2, t4, t1
.p2align 2
label25:
	sh2add t3, t4, a4
	addiw t4, t4, 4
	lw t5, 0(t3)
	sw t5, 0(t2)
	lw t6, 4(t3)
	sw t6, 4(t2)
	lw t5, 8(t3)
	sw t5, 8(t2)
	lw t6, 12(t3)
	sw t6, 12(t2)
	ble a3, t4, label208
	addi t2, t2, 16
	j label25
label208:
	mv t3, t4
	ble a0, t4, label36
label31:
	sh2add t2, t3, a4
.p2align 2
label32:
	sh2add t4, t3, t1
	lw t5, 0(t2)
	addiw t3, t3, 1
	sw t5, 0(t4)
	ble a0, t3, label223
	addi t2, t2, 4
	j label32
label223:
	addiw a5, a5, 1
	ble a1, a5, label38
label37:
	addi a4, a4, 2000
	li t4, 2000
	addi t2, a4, 4
	mul t3, a5, t4
	li t4, 1
	add t1, a2, t3
	j label19
label375:
	mv t3, t4
	bgt a0, t4, label31
label36:
	addiw a5, a5, 1
	bgt a1, a5, label37
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
label79:
	addi t1, t1, 4
.p2align 2
label76:
	sh2add t3, t2, t0
	lw t4, 0(t1)
	addiw t2, t2, 1
	sw t4, 0(t3)
	bgt a0, t2, label79
label73:
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a4, a4, 2000
	li t3, 2000
	mul t2, a5, t3
	add t0, a2, t2
	li t2, 1
	addi t1, t0, 4
.p2align 2
label69:
	sh2add t3, t2, a4
	addiw t2, t2, 4
	lw t5, 0(t3)
	sw t5, 0(t1)
	lw t4, 4(t3)
	sw t4, 4(t1)
	lw t5, 8(t3)
	sw t5, 8(t1)
	lw t4, 12(t3)
	sw t4, 12(t1)
	ble a3, t2, label72
	addi t1, t1, 16
	j label69
label72:
	ble a0, t2, label73
	sh2add t1, t2, a4
	j label76
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
.p2align 2
label61:
	addi a4, a4, 4
.p2align 2
label58:
	sh2add t2, t0, t1
	lw t3, 0(a4)
	addiw t0, t0, 1
	sw t3, 0(t2)
	bgt a0, t0, label61
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a3, a3, 2000
	li t2, 2000
	addi a4, a3, 4
	mul t0, a5, t2
	add t1, a2, t0
	li t0, 1
	j label58
label4:
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
	j label9
label13:
	addiw a5, a5, 1
	ble a1, a5, label38
	addi a3, a3, 2000
	li t2, 2000
	addi a4, a3, 4
	mul t0, a5, t2
	add t1, a2, t0
	li t0, 1
.p2align 2
label9:
	sh2add t2, t0, t1
	lw t3, 0(a4)
	addiw t0, t0, 1
	sw t3, 0(t2)
	ble a0, t0, label13
	addi a4, a4, 4
	j label9
.p2align 2
cmmc_parallel_body_1:
	mv a3, a1
pcrel492:
	auipc a4, %pcrel_hi(width)
pcrel493:
	auipc t0, %pcrel_hi(sheet2)
pcrel494:
	auipc t1, %pcrel_hi(sheet1)
	lw a2, %pcrel_lo(pcrel492)(a4)
	addi a5, t1, %pcrel_lo(pcrel494)
	addi a4, t0, %pcrel_lo(pcrel493)
	addiw a1, a2, 1
	li t0, 2000
	ble a2, zero, label404
	mulw a2, a0, t0
	mv t1, a0
	add a4, a4, a2
	mulw t2, a0, t0
	addi a0, a4, 4
	add a2, a5, t2
	li t2, 1
	j label409
.p2align 2
label469:
	addiw t1, t1, 1
	ble a3, t1, label404
	addi a4, a4, 2000
	mulw t2, t1, t0
	addi a0, a4, 4
	add a2, a5, t2
	li t2, 1
.p2align 2
label409:
	lw t5, -2004(a0)
	lw t6, -2000(a0)
	lw a6, -1996(a0)
	addw t3, t5, t6
	lw t6, -4(a0)
	addw t4, t3, a6
	lw a6, 4(a0)
	addw t5, t4, t6
	lw t6, 1996(a0)
	addw t3, t5, a6
	lw a6, 2000(a0)
	addw t4, t3, t6
	lw t6, 2004(a0)
	addw t5, t4, a6
	lw a6, 0(a0)
	addw t3, t5, t6
	xori t6, a6, 1
	xori t4, t3, 2
	xori a6, t3, 3
	or a7, t4, t6
	sh2add t3, t2, a2
	sltiu t6, a6, 1
	sltiu t5, a7, 1
	addiw t2, t2, 1
	or t4, t5, t6
	sw t4, 0(t3)
	ble a1, t2, label469
	addi a0, a0, 4
	j label409
label404:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv a3, a1
pcrel584:
	auipc a4, %pcrel_hi(width)
pcrel585:
	auipc t0, %pcrel_hi(sheet1)
pcrel586:
	auipc t1, %pcrel_hi(sheet2)
	lw a2, %pcrel_lo(pcrel584)(a4)
	addi a5, t1, %pcrel_lo(pcrel586)
	addi a4, t0, %pcrel_lo(pcrel585)
	addiw a1, a2, 1
	li t0, 2000
	ble a2, zero, label506
	mulw a2, a0, t0
	mv t1, a0
	add a4, a4, a2
	mulw t2, a0, t0
	addi a0, a4, 4
	add a2, a5, t2
	li t2, 1
	j label500
.p2align 2
label561:
	addiw t1, t1, 1
	ble a3, t1, label506
	addi a4, a4, 2000
	mulw t2, t1, t0
	addi a0, a4, 4
	add a2, a5, t2
	li t2, 1
.p2align 2
label500:
	lw t3, -2004(a0)
	lw t6, -2000(a0)
	lw a6, -1996(a0)
	addw t5, t3, t6
	lw a7, -4(a0)
	addw t4, t5, a6
	lw a6, 4(a0)
	addw t6, t4, a7
	lw t5, 1996(a0)
	addw t3, t6, a6
	lw a7, 2000(a0)
	addw t4, t3, t5
	lw a6, 2004(a0)
	addw t6, t4, a7
	lw a7, 0(a0)
	addw t3, t6, a6
	xori a6, a7, 1
	xori t5, t3, 2
	xori a7, t3, 3
	or t6, t5, a6
	sh2add t3, t2, a2
	sltiu a6, a7, 1
	sltiu t4, t6, 1
	addiw t2, t2, 1
	or t5, t4, a6
	sw t5, 0(t3)
	ble a1, t2, label561
	addi a0, a0, 4
	j label500
label506:
	ret
