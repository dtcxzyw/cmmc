.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	40000000
.align 8
b:
	.zero	40000000
.align 8
kernelid:
	.zero	40000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -176
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s7, 32(sp)
	sd s6, 40(sp)
	sd s1, 48(sp)
	sd s3, 56(sp)
	sd s2, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	sd a0, 104(sp)
	mv s4, a0
	jal getint
	sd a0, 112(sp)
	mv s7, a0
pcrel585:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel585)
	sd s6, 120(sp)
	mv a0, s6
	jal getarray
pcrel586:
	auipc a1, %pcrel_hi(kernelid)
	addi t4, a1, %pcrel_lo(pcrel586)
	sd t4, 136(sp)
	mv a0, t4
	jal getarray
	sd a0, 128(sp)
	mv t3, a0
	li a0, 109
	jal _sysy_starttime
	li t1, 4
	li t0, 3
	li a5, 2
	li a2, 1
	li a3, -2147483647
	mv t2, zero
	ld s4, 104(sp)
	srliw a0, s0, 31
	ld s7, 112(sp)
	add a1, s0, a0
pcrel587:
	auipc a0, %pcrel_hi(b)
	sraiw s3, a1, 1
	addi a4, a0, %pcrel_lo(pcrel587)
	lui a1, 786432
	mulw t4, s4, s7
	lui a0, 262144
	addi t5, t4, -4
	sd t4, 144(sp)
	addi t4, t4, -20
	sd t5, 152(sp)
	sd t4, 160(sp)
	sd s3, 168(sp)
.p2align 2
label2:
	ld t4, 136(sp)
	sh2add t5, t2, t4
	mv t4, zero
	lw t3, 0(t5)
	ld s3, 168(sp)
	mv a7, zero
	ld s7, 112(sp)
	sext.w t6, s3
	subw t5, zero, s3
	mv a6, zero
	mv s2, t5
	mv s5, zero
	sext.w s1, s3
	subw s0, zero, s3
	ld s4, 104(sp)
	slt s6, t5, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, t5, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	j label93
label31:
	li a0, 116
	jal _sysy_stoptime
	ld s6, 120(sp)
	ld t4, 144(sp)
	mv a0, t4
	mv a1, s6
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s7, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s3, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
label157:
	mv t3, zero
	mv t5, a4
	lw t4, 0(a4)
	ld s6, 120(sp)
	mv t5, s6
	li t3, 1
	sw t4, 0(s6)
	ld t4, 144(sp)
	ble t4, t3, label245
.p2align 2
label38:
	sh2add t5, t3, a4
	lw t4, 0(t5)
	ld s6, 120(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 1
	sw t4, 0(t5)
	ld t4, 144(sp)
	bgt t4, t3, label38
.p2align 2
label245:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label2
	j label31
.p2align 2
label94:
	mv s6, zero
	bne t3, zero, label420
.p2align 2
label17:
	addw s5, s5, s6
	ble s5, a0, label107
.p2align 2
label18:
	addw s5, s5, a1
	bgt s5, a0, label18
	bge s5, zero, label116
.p2align 2
label22:
	addw s5, s5, a0
	blt s5, zero, label22
	addiw s4, s4, 1
	bgt s1, s4, label126
.p2align 2
label26:
	addiw s2, s2, 1
	bgt t6, s2, label131
	addw s1, a6, a7
	addiw a7, a7, 1
	sh2add s0, s1, a4
	sw s5, 0(s0)
	ld s7, 112(sp)
	ble s7, a7, label28
	ld s3, 168(sp)
	mv s2, t5
	mv s5, zero
	addw s1, s3, a7
	subw s0, a7, s3
	ld s4, 104(sp)
	slt s6, t5, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, t5, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	j label464
.p2align 2
label312:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	beq t3, t0, label259
	beq t3, t1, label282
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	j label533
.p2align 2
label131:
	ld s4, 104(sp)
	slt s6, s2, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, s2, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	beq t3, t0, label259
	bne t3, t1, label534
.p2align 2
label282:
	mv s8, zero
	mv s7, a2
	blt a2, a0, label56
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
label492:
	beq t3, a5, label42
	j label480
.p2align 2
label56:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a3
	beq s9, a2, label57
	slliw s7, s7, 1
	blt s7, a0, label56
	j label455
.p2align 2
label57:
	divw s9, s6, s7
	and s11, s9, a3
	xori s10, s11, 1
	sltiu s9, s10, 1
	addw s8, s8, s9
	slliw s7, s7, 1
	blt s7, a0, label56
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	j label492
.p2align 2
label420:
	bne t3, a2, label440
.p2align 2
label250:
	mv s7, a2
	mv s8, zero
.p2align 2
label60:
	divw s9, s5, s7
	srliw s11, s9, 31
	add s10, s9, s11
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	slliw s7, s7, 1
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s11, s9, s10
	sltiu s9, s11, 1
	slliw s11, s8, 1
	addi s10, s11, 1
	subw s8, s10, s9
	mv s9, s7
	bge s7, a0, label312
	j label60
.p2align 2
label126:
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
.p2align 2
label443:
	beq t3, a2, label250
	beq t3, a5, label42
.p2align 2
label480:
	bne t3, t0, label499
.p2align 2
label259:
	mv s8, zero
	mv s7, a2
	blt a2, a0, label47
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	j label488
label507:
	beq t3, t0, label259
	j label499
.p2align 2
label47:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a3
	bne s9, a2, label48
.p2align 2
label51:
	addiw s8, s8, 1
	slliw s7, s7, 1
	blt s7, a0, label47
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	j label507
label488:
	beq t3, a5, label42
	j label507
.p2align 2
label48:
	divw s9, s6, s7
	and s10, s9, a3
	beq s10, a2, label51
	slliw s7, s7, 1
	blt s7, a0, label47
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	j label488
label515:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	j label530
.p2align 2
label28:
	addiw t4, t4, 1
	ld s4, 104(sp)
	ble s4, t4, label29
	ld s3, 168(sp)
	mv a7, zero
	ld s7, 112(sp)
	addw t6, s3, t4
	subw t5, t4, s3
	mulw a6, s7, t4
	mv s2, t5
	mv s5, zero
	sext.w s1, s3
	subw s0, zero, s3
	slt s6, t5, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, t5, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	beq t3, t0, label259
	beq t3, t1, label282
	j label515
.p2align 2
label440:
	bne t3, a5, label459
.p2align 2
label42:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	beq t3, t0, label259
	beq t3, t1, label282
	j label518
.p2align 2
label29:
	ld t4, 144(sp)
	ble t4, zero, label30
	ble t4, t1, label157
	ld t5, 152(sp)
	li t4, 16
	ble t5, t4, label161
	mv t3, zero
	j label36
.p2align 2
label34:
	sh2add t4, t3, a4
	lw t6, 0(t4)
	ld s6, 120(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 4
	sw t6, 0(t5)
	lw a6, 4(t4)
	sw a6, 4(t5)
	lw t6, 8(t4)
	sw t6, 8(t5)
	lw t4, 12(t4)
	sw t4, 12(t5)
	ld t5, 152(sp)
	bgt t5, t3, label34
	sh2add t5, t3, a4
	lw t4, 0(t5)
	sh2add t5, t3, s6
	addiw t3, t3, 1
	sw t4, 0(t5)
	ld t4, 144(sp)
	bgt t4, t3, label38
	j label426
.p2align 2
label36:
	sh2add t4, t3, a4
	lw t6, 0(t4)
	ld s6, 120(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 16
	sw t6, 0(t5)
	lw t6, 4(t4)
	sw t6, 4(t5)
	lw a6, 8(t4)
	sw a6, 8(t5)
	lw t6, 12(t4)
	sw t6, 12(t5)
	lw a6, 16(t4)
	sw a6, 16(t5)
	lw t6, 20(t4)
	sw t6, 20(t5)
	lw a7, 24(t4)
	sw a7, 24(t5)
	lw a6, 28(t4)
	sw a6, 28(t5)
	lw t6, 32(t4)
	sw t6, 32(t5)
	lw a7, 36(t4)
	sw a7, 36(t5)
	lw a6, 40(t4)
	sw a6, 40(t5)
	lw t6, 44(t4)
	sw t6, 44(t5)
	lw a6, 48(t4)
	sw a6, 48(t5)
	lw t6, 52(t4)
	sw t6, 52(t5)
	lw a6, 56(t4)
	sw a6, 56(t5)
	lw t4, 60(t4)
	sw t4, 60(t5)
	ld t4, 160(sp)
	bgt t4, t3, label36
	j label34
label530:
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	j label541
.p2align 2
label464:
	ld s7, 112(sp)
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	beq t3, t0, label259
	beq t3, t1, label282
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	j label530
.p2align 2
label459:
	beq t3, t0, label259
	beq t3, t1, label282
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
label543:
	beq t3, a5, label42
	j label480
.p2align 2
label93:
	ld s7, 112(sp)
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	beq t3, a5, label42
	beq t3, t0, label259
	beq t3, t1, label282
	j label515
.p2align 2
label455:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label250
	j label492
.p2align 2
label499:
	beq t3, t1, label282
.p2align 2
label518:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
.p2align 2
label533:
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label532
.p2align 2
label107:
	blt s5, zero, label22
.p2align 2
label116:
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label443
label541:
	ld s7, 112(sp)
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label532
.p2align 2
label534:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 112(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label94
	j label541
label532:
	beq t3, a2, label250
	j label543
label30:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label2
	j label31
.p2align 2
label426:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label2
	j label31
label161:
	mv t3, zero
	j label34
