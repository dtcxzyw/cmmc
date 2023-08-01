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
	addi sp, sp, -152
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s7, 32(sp)
	sd s6, 40(sp)
	sd s1, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	sd a0, 112(sp)
	mv s4, a0
	jal getint
	sd a0, 120(sp)
	mv s7, a0
	ld s4, 112(sp)
	mulw t4, s4, a0
pcrel554:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel554)
	sd t4, 104(sp)
	sd s6, 128(sp)
	mv a0, s6
	jal getarray
pcrel555:
	auipc a1, %pcrel_hi(kernelid)
	addi t4, a1, %pcrel_lo(pcrel555)
	sd t4, 144(sp)
	mv a0, t4
	jal getarray
	sd a0, 136(sp)
	mv t3, a0
	li a0, 109
	jal _sysy_starttime
	ld t3, 136(sp)
	li a2, 1
	li a3, -2147483647
	lui a0, 262144
	lui a1, 786432
	ble t3, zero, label63
	ld t4, 104(sp)
	srliw t2, s0, 31
pcrel556:
	auipc t3, %pcrel_hi(b)
	addiw a5, t4, -20
	addiw t1, t4, -4
	add a4, s0, t2
	mv t2, zero
	sraiw t0, a4, 1
	addi a4, t3, %pcrel_lo(pcrel556)
.p2align 2
label3:
	ld t4, 144(sp)
	sh2add t5, t2, t4
	mv t4, zero
	lw t3, 0(t5)
	subw t5, zero, t0
	sext.w t6, t0
	ld s7, 120(sp)
	mv a7, zero
	mv a6, zero
	subw s0, zero, t0
	sext.w s1, t0
	mv s2, t5
	mv s5, zero
	ld s4, 112(sp)
	slt s6, t5, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, t5, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s0, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	j label105
.p2align 2
label28:
	addiw t4, t4, 1
	ld s4, 112(sp)
	bgt s4, t4, label150
	ld t4, 104(sp)
	ble t4, zero, label38
	li s8, 4
	ble t4, s8, label156
	li t4, 16
	ble t1, t4, label159
	mv t3, zero
.p2align 2
label32:
	sh2add t4, t3, a4
	lw t6, 0(t4)
	ld s6, 128(sp)
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
	lw a6, 24(t4)
	sw a6, 24(t5)
	lw t6, 28(t4)
	sw t6, 28(t5)
	lw a6, 32(t4)
	sw a6, 32(t5)
	lw a7, 36(t4)
	sw a7, 36(t5)
	lw t6, 40(t4)
	sw t6, 40(t5)
	lw a6, 44(t4)
	sw a6, 44(t5)
	lw t6, 48(t4)
	sw t6, 48(t5)
	lw a6, 52(t4)
	sw a6, 52(t5)
	lw t6, 56(t4)
	sw t6, 56(t5)
	lw t4, 60(t4)
	sw t4, 60(t5)
	bgt a5, t3, label32
.p2align 2
label34:
	sh2add t4, t3, a4
	lw t6, 0(t4)
	ld s6, 128(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 4
	sw t6, 0(t5)
	lw a6, 4(t4)
	sw a6, 4(t5)
	lw t6, 8(t4)
	sw t6, 8(t5)
	lw t4, 12(t4)
	sw t4, 12(t5)
	bgt t1, t3, label34
.p2align 2
label36:
	sh2add t5, t3, a4
	lw t4, 0(t5)
	ld s6, 128(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 1
	sw t4, 0(t5)
	ld t4, 104(sp)
	bgt t4, t3, label36
.p2align 2
label38:
	addiw t2, t2, 1
	ld t3, 136(sp)
	bgt t3, t2, label3
label63:
	li a0, 116
	jal _sysy_stoptime
	ld t4, 104(sp)
	ld s6, 128(sp)
	mv a0, t4
	mv a1, s6
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s7, 32(sp)
	ld s6, 40(sp)
	ld s1, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
.p2align 2
label106:
	mv s6, zero
	bne t3, zero, label108
.p2align 2
label17:
	addw s5, s5, s6
	ble s5, a0, label113
.p2align 2
label18:
	addw s5, s5, a1
	bgt s5, a0, label18
	bge s5, zero, label122
.p2align 2
label22:
	addw s5, s5, a0
	blt s5, zero, label22
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	j label426
.p2align 2
label137:
	ld s4, 112(sp)
	slt s6, s2, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, s2, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s0, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	li s7, 3
	beq t3, s7, label258
	li s8, 4
	beq t3, s8, label281
	mv s5, zero
	addiw s4, s0, 1
	ble s1, s4, label26
	j label517
.p2align 2
label108:
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	j label441
.p2align 2
label26:
	addiw s2, s2, 1
	bgt t6, s2, label137
	addw s1, a6, a7
	addiw a7, a7, 1
	sh2add s0, s1, a4
	sw s5, 0(s0)
	ld s7, 120(sp)
	ble s7, a7, label28
	subw s0, a7, t0
	addw s1, t0, a7
	mv s2, t5
	mv s5, zero
	ld s4, 112(sp)
	slt s6, t5, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, t5, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s0, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label478
.p2align 2
label58:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	li s7, 3
	beq t3, s7, label258
	j label494
.p2align 2
label441:
	li s7, 3
	bne t3, s7, label458
.p2align 2
label258:
	mv s8, zero
	mv s7, a2
	blt a2, a0, label45
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label464
.p2align 2
label45:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a3
	beq s9, a2, label46
	divw s9, s6, s7
	and s10, s9, a3
	bne s10, a2, label431
.p2align 2
label46:
	addiw s8, s8, 1
	slliw s7, s7, 1
	blt s7, a0, label45
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	j label476
.p2align 2
label113:
	blt s5, zero, label22
.p2align 2
label122:
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
.p2align 2
label426:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	bne t3, a2, label459
.p2align 2
label252:
	mv s7, a2
	mv s8, zero
.p2align 2
label59:
	divw s9, s5, s7
	slliw s8, s8, 1
	srliw s10, s9, 31
	add s10, s9, s10
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	slliw s7, s7, 1
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s11, s9, s10
	addi s10, s8, 1
	sltiu s9, s11, 1
	subw s8, s10, s9
	mv s9, s7
	bge s7, a0, label312
	j label59
.p2align 2
label509:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	j label508
.p2align 2
label312:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	li s7, 3
	beq t3, s7, label258
	li s8, 4
	beq t3, s8, label281
	j label509
.p2align 2
label150:
	subw t5, t4, t0
	addw t6, t0, t4
	ld s7, 120(sp)
	mv a7, zero
	mulw a6, s7, t4
	subw s0, zero, t0
	sext.w s1, t0
	mv s2, t5
	mv s5, zero
	ld s4, 112(sp)
	slt s6, t5, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, t5, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s0, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	li s7, 3
	beq t3, s7, label258
	j label492
.p2align 2
label459:
	li s7, 2
	beq t3, s7, label58
.p2align 2
label476:
	li s7, 3
	beq t3, s7, label258
.p2align 2
label494:
	li s8, 4
	bne t3, s8, label509
.p2align 2
label281:
	mv s8, zero
	mv s7, a2
	blt a2, a0, label54
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
.p2align 2
label469:
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	j label476
.p2align 2
label54:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a3
	beq s9, a2, label57
	slliw s7, s7, 1
	blt s7, a0, label54
	j label435
.p2align 2
label57:
	divw s10, s6, s7
	and s9, s10, a3
	xori s11, s9, 1
	sltiu s10, s11, 1
	addw s8, s8, s10
	slliw s7, s7, 1
	blt s7, a0, label54
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label469
.p2align 2
label105:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	li s7, 3
	beq t3, s7, label258
.p2align 2
label492:
	li s8, 4
	beq t3, s8, label281
.p2align 2
label507:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
.p2align 2
label517:
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	j label508
.p2align 2
label458:
	li s8, 4
	beq t3, s8, label281
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
.p2align 2
label508:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	j label476
.p2align 2
label478:
	beq t3, a2, label252
	li s7, 2
	beq t3, s7, label58
	li s7, 3
	beq t3, s7, label258
	li s8, 4
	beq t3, s8, label281
	j label507
label464:
	beq t3, a2, label252
	j label482
.p2align 2
label431:
	slliw s7, s7, 1
	blt s7, a0, label45
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label464
.p2align 2
label435:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s8, s4, s7
	xori s9, s8, 1
	or s6, s6, s9
	bne s6, zero, label106
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label469
label156:
	mv t3, zero
	mv t5, a4
	lw t4, 0(a4)
	ld s6, 128(sp)
	mv t5, s6
	li t3, 1
	sw t4, 0(s6)
	ld t4, 104(sp)
	bgt t4, t3, label36
	j label38
label482:
	li s7, 2
	beq t3, s7, label58
	j label476
label159:
	mv t3, zero
	j label34
