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
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s4, 24(sp)
	sd s7, 32(sp)
	sd s3, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s2, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	sd a0, 104(sp)
	mv s4, a0
	jal getint
pcrel594:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s3, a1, %pcrel_lo(pcrel594)
	sd s3, 120(sp)
	mv a0, s3
	jal getarray
pcrel595:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel595)
	mv a0, s0
	jal getarray
	sd a0, 128(sp)
	mv t1, a0
	li a0, 109
	jal _sysy_starttime
	li a5, 4
	li a2, 2
	mv t0, zero
	mv a3, s0
	lui a4, 524288
	srliw a1, s1, 31
	ld s4, 104(sp)
	add a0, s1, a1
	ld s7, 112(sp)
pcrel596:
	auipc a1, %pcrel_hi(b)
	sraiw s2, a0, 1
	li a0, 1
	mulw t4, s4, s7
	addi t5, t4, -4
	sd t4, 136(sp)
	addi t4, t4, -20
	sd t5, 144(sp)
	sd t4, 152(sp)
	addi t4, a1, %pcrel_lo(pcrel596)
	sd s2, 160(sp)
	addiw a1, a4, 1
	sd t4, 168(sp)
	li a4, 3
	lw t1, 0(s0)
	mv t3, zero
	mv t2, t4
	mv t6, t4
	mv a6, zero
	mv t5, s2
	subw t4, zero, s2
	mv s1, t4
	mv s5, zero
	mv s0, s2
	subw a7, zero, s2
	j label11
.p2align 2
label108:
	ld s7, 112(sp)
	mulw s9, s7, s1
	sh2add s8, s9, s3
	lw s6, 0(s8)
	bne t1, zero, label456
.p2align 2
label20:
	addw s5, s5, s6
	lui s7, 262144
	ble s5, s7, label21
.p2align 2
label25:
	lui s6, 786432
	lui s7, 262144
	addw s5, s5, s6
	bgt s5, s7, label25
	bge s5, zero, label436
.p2align 2
label23:
	lui s7, 262144
	addw s5, s5, s7
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	ble t5, s1, label459
.p2align 2
label11:
	ld s4, 104(sp)
	ld s3, 120(sp)
	slt s6, s1, s4
	sh2add s3, a7, s3
	mv s4, a7
	xori s2, s6, 1
	or s7, s1, a7
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, a7, s7
	or s6, s2, s8
	xori s8, s9, 1
	or s10, s6, s8
	beq s10, zero, label108
.p2align 2
label109:
	mv s6, zero
	beq t1, zero, label20
	bne t1, a0, label433
.p2align 2
label263:
	mv s7, a0
	mv s8, zero
.p2align 2
label59:
	divw s11, s5, s7
	srliw s10, s11, 31
	add s9, s11, s10
	andi s10, s9, -2
	subw s9, s11, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s10, s9, s10
	sltiu s11, s10, 1
	slliw s10, s8, 1
	addi s9, s10, 1
	subw s8, s9, s11
	slliw s9, s7, 1
	lui s7, 262144
	mv s10, s9
	bge s9, s7, label276
	mv s7, s9
	j label59
.p2align 2
label456:
	beq t1, a0, label263
	bne t1, a2, label497
.p2align 2
label63:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s0, s4, label445
.p2align 2
label29:
	addi s3, s3, 4
	or s7, s1, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s2, s8
	xori s8, s9, 1
	or s10, s6, s8
	bne s10, zero, label109
	mulw s9, s7, s1
	sh2add s8, s9, s3
	lw s6, 0(s8)
	beq t1, zero, label20
	beq t1, a0, label263
	beq t1, a2, label63
	beq t1, a4, label286
	beq t1, a5, label290
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw zero, 0(t6)
	addiw a6, a6, 1
	bgt s7, a6, label32
	j label548
.p2align 2
label276:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s8, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	ble s7, a6, label485
.p2align 2
label32:
	addi t6, t6, 4
	mv s1, t4
	mv s5, zero
	ld s2, 160(sp)
	ld s4, 104(sp)
	addw s0, s2, a6
	subw a7, a6, s2
	slt s6, t4, s4
	ld s3, 120(sp)
	or s7, t4, a7
	mv s4, a7
	xori s2, s6, 1
	sh2add s3, a7, s3
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, a7, s7
	or s6, s2, s8
	xori s8, s9, 1
	or s10, s6, s8
	bne s10, zero, label109
	mulw s9, s7, t4
	sh2add s8, s9, s3
	lw s6, 0(s8)
	beq t1, zero, label20
	beq t1, a0, label263
	beq t1, a2, label63
	beq t1, a4, label286
	beq t1, a5, label290
	addiw s4, a7, 1
	bgt s0, s4, label29
	j label547
.p2align 2
label433:
	beq t1, a2, label63
	bne t1, a4, label478
.p2align 2
label286:
	mv s8, a0
	mv s7, zero
	divw s10, s5, a0
	and s9, s10, a1
	beq s9, a0, label313
	divw s9, s6, a0
	and s10, s9, a1
	xori s9, s10, 1
	slliw s10, a0, 1
	sltiu s11, s9, 1
	mv s8, s10
	mv s9, s11
	lui s7, 262144
	blt s10, s7, label324
	mv s5, s11
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s11, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label313:
	mv s11, a0
	sh1add s9, s7, a0
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	bge s10, s7, label452
.p2align 2
label324:
	mv s7, s9
	divw s10, s5, s8
	and s9, s10, a1
	beq s9, a0, label313
	divw s9, s6, s8
	and s10, s9, a1
	xori s9, s10, 1
	slliw s10, s8, 1
	sltiu s11, s9, 1
	mv s8, s10
	sh1add s9, s7, s11
	lui s7, 262144
	blt s10, s7, label324
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label459:
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	ble t4, zero, label35
.p2align 2
label38:
	ld t4, 136(sp)
	ble t4, a5, label39
	ld t5, 144(sp)
	li t1, 16
	ble t5, t1, label180
	ld t4, 168(sp)
	mv t2, zero
	mv t1, t4
	j label46
.p2align 2
label50:
	addi t1, t1, 64
.p2align 2
label46:
	lw t4, 0(t1)
	ld s3, 120(sp)
	sh2add t3, t2, s3
	addiw t2, t2, 16
	sw t4, 0(t3)
	lw t5, 4(t1)
	sw t5, 4(t3)
	lw t4, 8(t1)
	sw t4, 8(t3)
	lw t5, 12(t1)
	sw t5, 12(t3)
	lw t4, 16(t1)
	sw t4, 16(t3)
	lw t5, 20(t1)
	sw t5, 20(t3)
	lw t4, 24(t1)
	sw t4, 24(t3)
	lw t5, 28(t1)
	sw t5, 28(t3)
	lw t4, 32(t1)
	sw t4, 32(t3)
	lw t5, 36(t1)
	sw t5, 36(t3)
	lw t4, 40(t1)
	sw t4, 40(t3)
	lw t5, 44(t1)
	sw t5, 44(t3)
	lw t4, 48(t1)
	sw t4, 48(t3)
	lw t5, 52(t1)
	sw t5, 52(t3)
	lw t4, 56(t1)
	sw t4, 56(t3)
	lw t5, 60(t1)
	sw t5, 60(t3)
	ld t4, 152(sp)
	bgt t4, t2, label50
	ld t4, 168(sp)
	sh2add t1, t2, t4
.p2align 2
label52:
	lw t4, 0(t1)
	ld s3, 120(sp)
	sh2add t3, t2, s3
	addiw t2, t2, 4
	sw t4, 0(t3)
	lw t5, 4(t1)
	sw t5, 4(t3)
	lw t4, 8(t1)
	sw t4, 8(t3)
	lw t6, 12(t1)
	sw t6, 12(t3)
	ld t5, 144(sp)
	ble t5, t2, label55
	addi t1, t1, 16
	j label52
.p2align 2
label55:
	ld t4, 168(sp)
	sh2add t1, t2, t4
	lw t3, 0(t1)
	ld s3, 120(sp)
	sh2add t5, t2, s3
	addiw t2, t2, 1
	sw t3, 0(t5)
	ld t4, 136(sp)
	ble t4, t2, label441
.p2align 2
label43:
	addi t1, t1, 4
.p2align 2
label40:
	lw t3, 0(t1)
	ld s3, 120(sp)
	sh2add t5, t2, s3
	addiw t2, t2, 1
	sw t3, 0(t5)
	ld t4, 136(sp)
	bgt t4, t2, label43
	addiw t0, t0, 1
	ld t1, 128(sp)
	ble t1, t0, label36
.p2align 2
label37:
	addi a3, a3, 4
	mv t3, zero
	mv a6, zero
	mv s5, zero
	lw t1, 0(a3)
	ld t4, 168(sp)
	ld s2, 160(sp)
	mv t2, t4
	ld s4, 104(sp)
	sext.w s0, s2
	subw a7, zero, s2
	sext.w t5, s2
	mv t6, t4
	subw t4, zero, s2
	ld s3, 120(sp)
	or s7, t4, a7
	slt s6, t4, s4
	mv s1, t4
	sh2add s3, a7, s3
	srliw s9, s7, 31
	mv s4, a7
	xori s2, s6, 1
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, a7, s7
	or s6, s2, s8
	xori s8, s9, 1
	or s10, s6, s8
	bne s10, zero, label109
	mulw s9, s7, t4
	sh2add s8, s9, s3
	lw s6, 0(s8)
	beq t1, zero, label20
	beq t1, a0, label263
	beq t1, a2, label63
	beq t1, a4, label286
	beq t1, a5, label290
	j label535
.p2align 2
label485:
	addiw t3, t3, 1
	ld s4, 104(sp)
	ble s4, t3, label505
.p2align 2
label57:
	ld s7, 112(sp)
	mv a6, zero
	mv s5, zero
	sh2add t2, s7, t2
	ld s2, 160(sp)
	mv t6, t2
	ld s4, 104(sp)
	sext.w s0, s2
	subw a7, zero, s2
	addw t5, s2, t3
	subw t4, t3, s2
	ld s3, 120(sp)
	or s7, t4, a7
	slt s6, t4, s4
	mv s1, t4
	sh2add s3, a7, s3
	srliw s9, s7, 31
	mv s4, a7
	xori s2, s6, 1
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, a7, s7
	or s6, s2, s8
	xori s8, s9, 1
	or s10, s6, s8
	bne s10, zero, label109
	mulw s9, s7, t4
	sh2add s8, s9, s3
	lw s6, 0(s8)
	beq t1, zero, label20
	beq t1, a0, label263
	beq t1, a2, label63
	beq t1, a4, label286
	beq t1, a5, label290
.p2align 2
label535:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
.p2align 2
label547:
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	j label548
.p2align 2
label445:
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label497:
	beq t1, a4, label286
	bne t1, a5, label535
.p2align 2
label290:
	mv s8, a0
	mv s7, zero
	divw s10, s5, a0
	and s9, s10, a1
	beq s9, a0, label71
	mv s11, zero
	mv s9, zero
	slliw s10, a0, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label304
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw zero, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	j label510
.p2align 2
label450:
	mv s11, zero
	sh1add s9, s7, zero
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	bge s10, s7, label492
.p2align 2
label304:
	mv s7, s9
	divw s10, s5, s8
	and s9, s10, a1
	bne s9, a0, label450
.p2align 2
label71:
	divw s11, s6, s8
	and s10, s11, a1
	xori s9, s10, 1
	slliw s10, s8, 1
	sltiu s11, s9, 1
	mv s8, s10
	sh1add s9, s7, s11
	lui s7, 262144
	blt s10, s7, label304
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
label510:
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label452:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label478:
	beq t1, a5, label290
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw zero, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
.p2align 2
label548:
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label492:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	j label510
.p2align 2
label21:
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	j label437
.p2align 2
label436:
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
label437:
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label57
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
label39:
	ld t4, 168(sp)
	mv t2, zero
	mv t1, t4
	j label40
label36:
	li a0, 116
	jal _sysy_stoptime
	ld s3, 120(sp)
	ld t4, 136(sp)
	mv a0, t4
	mv a1, s3
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s4, 24(sp)
	ld s7, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s2, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
label35:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
	j label36
.p2align 2
label505:
	ld t4, 136(sp)
	bgt t4, zero, label38
	j label35
.p2align 2
label441:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
	j label36
label180:
	ld t4, 168(sp)
	mv t2, zero
	mv t1, t4
	j label52
