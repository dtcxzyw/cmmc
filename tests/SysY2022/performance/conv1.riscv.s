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
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s7, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s4, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	sd a0, 104(sp)
	mv s6, a0
	jal getint
pcrel583:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s6, a1, %pcrel_lo(pcrel583)
	sd s6, 120(sp)
	mv a0, s6
	jal getarray
pcrel584:
	auipc a1, %pcrel_hi(kernelid)
	addi s1, a1, %pcrel_lo(pcrel584)
	mv a0, s1
	jal getarray
	sd a0, 128(sp)
	mv t3, a0
	li a0, 109
	jal _sysy_starttime
	li t1, 16
	li t0, 4
	lui a5, 524288
	mv a4, s1
	mv t2, zero
	srliw a0, s0, 31
	li a3, 2
	addiw a2, a5, 1
	ld s6, 104(sp)
	add a1, s0, a0
	li a5, 3
pcrel585:
	auipc a0, %pcrel_hi(b)
	sraiw s3, a1, 1
	addi s0, a0, %pcrel_lo(pcrel585)
	ld s7, 112(sp)
	li a1, 1
	lui a0, 262144
	mulw t6, s6, s7
	addi a6, t6, -4
	sd t6, 136(sp)
	addi t6, t6, -20
	sd a6, 144(sp)
	sd t6, 152(sp)
	sd s3, 160(sp)
	sd s0, 168(sp)
	lw t3, 0(s1)
	mv t4, zero
	mv a7, zero
	mv t6, s3
	subw t5, zero, s3
	mv a6, zero
	mv s2, t5
	mv s5, zero
	mv s1, s3
	subw s0, zero, s3
	mv s4, s0
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s0, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	beq t3, a3, label54
	beq t3, a5, label265
	j label502
.p2align 2
label103:
	mv s6, zero
	bne t3, zero, label106
.p2align 2
label17:
	addw s5, s5, s6
	ble s5, a0, label111
.p2align 2
label18:
	lui s6, 786432
	addw s5, s5, s6
	bgt s5, a0, label18
	bge s5, zero, label120
.p2align 2
label22:
	addw s5, s5, a0
	blt s5, zero, label22
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label454
.p2align 2
label27:
	addw s1, a6, a7
	ld s0, 168(sp)
	addiw a7, a7, 1
	sh2add s2, s1, s0
	sw s5, 0(s2)
	ld s7, 112(sp)
	ble s7, a7, label28
	ld s3, 160(sp)
	mv s2, t5
	mv s5, zero
	addw s1, s3, a7
	subw s0, a7, s3
	ld s6, 104(sp)
	mv s4, s0
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s0, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	beq t3, a3, label54
	beq t3, a5, label265
	beq t3, t0, label288
	addiw s4, s0, 1
	ble s1, s4, label26
	j label534
.p2align 2
label106:
	bne t3, a1, label433
.p2align 2
label256:
	mv s7, a1
	mv s8, zero
.p2align 2
label70:
	divw s10, s5, s7
	srliw s9, s10, 31
	add s11, s10, s9
	andi s9, s11, -2
	divw s11, s6, s7
	subw s9, s10, s9
	srliw s10, s11, 31
	add s10, s11, s10
	andi s10, s10, -2
	subw s10, s11, s10
	xor s11, s9, s10
	slliw s9, s8, 1
	sltiu s10, s11, 1
	addi s11, s9, 1
	slliw s9, s7, 1
	subw s8, s11, s10
	mv s7, s9
	blt s9, a0, label70
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	beq t3, a3, label54
	beq t3, a5, label265
	beq t3, t0, label288
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	j label536
.p2align 2
label433:
	beq t3, a3, label54
	j label452
.p2align 2
label26:
	addiw s2, s2, 1
	ble t6, s2, label27
	ld s6, 104(sp)
	mv s4, s0
	slt s7, s2, s6
	xori s3, s7, 1
	or s7, s2, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s0, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label472
.p2align 2
label54:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	beq t3, a3, label54
	beq t3, a5, label265
	beq t3, t0, label288
	j label522
label520:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
label534:
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
label545:
	ld s7, 112(sp)
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label535
.p2align 2
label28:
	addiw t4, t4, 1
	ld s6, 104(sp)
	ble s6, t4, label29
	ld s3, 160(sp)
	mv a7, zero
	mv s5, zero
	sext.w s1, s3
	subw s0, zero, s3
	addw t6, s3, t4
	subw t5, t4, s3
	mv s4, s0
	ld s7, 112(sp)
	mv s2, t5
	mulw a6, s7, t4
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s0, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	beq t3, a3, label54
	beq t3, a5, label265
	beq t3, t0, label288
	j label520
.p2align 2
label29:
	ld t6, 136(sp)
	ble t6, zero, label30
	ble t6, t0, label34
	ld a6, 144(sp)
	ble a6, t1, label40
	ld s0, 168(sp)
	mv t4, zero
	mv t3, s0
.p2align 2
label47:
	lw t6, 0(t3)
	ld s6, 120(sp)
	sh2add t5, t4, s6
	addiw t4, t4, 16
	sw t6, 0(t5)
	lw a6, 4(t3)
	sw a6, 4(t5)
	lw t6, 8(t3)
	sw t6, 8(t5)
	lw a6, 12(t3)
	sw a6, 12(t5)
	lw t6, 16(t3)
	sw t6, 16(t5)
	lw a6, 20(t3)
	sw a6, 20(t5)
	lw a7, 24(t3)
	sw a7, 24(t5)
	lw t6, 28(t3)
	sw t6, 28(t5)
	lw a6, 32(t3)
	sw a6, 32(t5)
	lw a7, 36(t3)
	sw a7, 36(t5)
	lw t6, 40(t3)
	sw t6, 40(t5)
	lw a6, 44(t3)
	sw a6, 44(t5)
	lw t6, 48(t3)
	sw t6, 48(t5)
	lw a6, 52(t3)
	sw a6, 52(t5)
	lw t6, 56(t3)
	sw t6, 56(t5)
	lw a6, 60(t3)
	sw a6, 60(t5)
	ld t6, 152(sp)
	ble t6, t4, label50
	addi t3, t3, 64
	j label47
.p2align 2
label41:
	lw t6, 0(t3)
	ld s6, 120(sp)
	sh2add t5, t4, s6
	addiw t4, t4, 4
	sw t6, 0(t5)
	lw a6, 4(t3)
	sw a6, 4(t5)
	lw t6, 8(t3)
	sw t6, 8(t5)
	lw a7, 12(t3)
	sw a7, 12(t5)
	ld a6, 144(sp)
	ble a6, t4, label44
	addi t3, t3, 16
	j label41
.p2align 2
label50:
	ld s0, 168(sp)
	sh2add t3, t4, s0
	j label41
.p2align 2
label35:
	lw t5, 0(t3)
	ld s6, 120(sp)
	sh2add a6, t4, s6
	addiw t4, t4, 1
	sw t5, 0(a6)
	ld t6, 136(sp)
	ble t6, t4, label170
.p2align 2
label38:
	addi t3, t3, 4
	j label35
.p2align 2
label44:
	ld s0, 168(sp)
	sh2add t3, t4, s0
	lw t5, 0(t3)
	ld s6, 120(sp)
	sh2add a6, t4, s6
	addiw t4, t4, 1
	sw t5, 0(a6)
	ld t6, 136(sp)
	bgt t6, t4, label38
	addiw t2, t2, 1
	ld t3, 128(sp)
	ble t3, t2, label32
.p2align 2
label31:
	addi a4, a4, 4
	mv t4, zero
	mv a6, zero
	mv a7, zero
	mv s5, zero
	lw t3, 0(a4)
	ld s3, 160(sp)
	sext.w s1, s3
	subw s0, zero, s3
	ld s7, 112(sp)
	sext.w t6, s3
	subw t5, zero, s3
	mv s4, s0
	ld s6, 104(sp)
	mv s2, t5
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s0, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	j label508
label32:
	li a0, 116
	jal _sysy_stoptime
	ld s6, 120(sp)
	ld t6, 136(sp)
	mv a0, t6
	mv a1, s6
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s7, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s4, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
.p2align 2
label170:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label31
	j label32
.p2align 2
label452:
	beq t3, a5, label265
	bne t3, t0, label486
.p2align 2
label288:
	mv s7, a1
	mv s8, zero
.p2align 2
label64:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a2
	beq s9, a1, label69
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a0, label64
	j label299
label499:
	beq t3, a3, label54
	j label487
.p2align 2
label69:
	divw s11, s6, s7
	and s10, s11, a2
	xori s9, s10, 1
	sltiu s11, s9, 1
	slliw s9, s7, 1
	addw s8, s8, s11
	mv s7, s9
	blt s9, a0, label64
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	j label499
.p2align 2
label111:
	blt s5, zero, label22
.p2align 2
label120:
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
.p2align 2
label454:
	beq t3, a1, label256
	beq t3, a3, label54
.p2align 2
label487:
	beq t3, a5, label265
.p2align 2
label504:
	beq t3, t0, label288
.p2align 2
label522:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
.p2align 2
label536:
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	j label535
.p2align 2
label472:
	beq t3, a1, label256
	beq t3, a3, label54
	bne t3, a5, label523
.p2align 2
label265:
	mv s7, a1
	mv s8, zero
.p2align 2
label56:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a2
	beq s9, a1, label59
	divw s10, s6, s7
	and s9, s10, a2
	bne s9, a1, label443
.p2align 2
label59:
	addiw s8, s8, 1
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a0, label56
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
.p2align 2
label496:
	beq t3, a3, label54
	beq t3, a5, label265
	j label504
.p2align 2
label443:
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a0, label56
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	j label496
label502:
	beq t3, t0, label288
	j label520
.p2align 2
label508:
	ld s7, 112(sp)
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	beq t3, a3, label54
	beq t3, a5, label265
	j label502
.p2align 2
label299:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
	beq t3, a1, label256
	j label499
.p2align 2
label486:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label17
.p2align 2
label535:
	beq t3, a1, label256
	beq t3, a3, label54
	j label487
.p2align 2
label523:
	beq t3, t0, label288
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label26
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s3, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label103
	j label545
label34:
	ld s0, 168(sp)
	mv t4, zero
	mv t3, s0
	j label35
label40:
	ld s0, 168(sp)
	mv t4, zero
	mv t3, s0
	j label41
label30:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label31
	j label32
