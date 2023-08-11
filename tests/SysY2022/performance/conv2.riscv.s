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
	# stack usage: CalleeArg[0] Local[0] RegSpill[72] CalleeSaved[104]
	addi sp, sp, -176
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s6, 16(sp)
	sd s3, 24(sp)
	sd s7, 32(sp)
	sd s0, 40(sp)
	sd s5, 48(sp)
	sd s2, 56(sp)
	sd s4, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	sd a0, 104(sp)
	mv s3, a0
	jal getint
pcrel610:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s6, a1, %pcrel_lo(pcrel610)
	sd s6, 120(sp)
	mv a0, s6
	jal getarray
pcrel611:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel611)
	mv a0, s0
	jal getarray
	sd a0, 128(sp)
	mv t1, a0
	li a0, 109
	jal _sysy_starttime
	li a2, 2
	lui a3, 524288
	mv t0, zero
	mv a4, s0
	ld s3, 104(sp)
	li a5, 4
	srliw a1, s1, 31
	ld s7, 112(sp)
	add a0, s1, a1
pcrel612:
	auipc a1, %pcrel_hi(b)
	sraiw s2, a0, 1
	li a0, 1
	mulw t3, s3, s7
	addi t4, t3, -3
	sd t3, 136(sp)
	addi t3, t3, -18
	sd t4, 144(sp)
	addi t4, a1, %pcrel_lo(pcrel612)
	sd t3, 152(sp)
	addiw a1, a3, 1
	sd s2, 160(sp)
	li a3, 3
	sd t4, 168(sp)
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
label499:
	beq t1, a2, label66
	bne t1, a3, label535
.p2align 2
label297:
	mv s8, a0
	mv s7, zero
	divw s9, s5, a0
	and s10, s9, a1
	beq s10, a0, label324
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	slliw s10, a0, 1
	sltiu s11, s9, 1
	mv s8, s10
	mv s9, s11
	lui s7, 262144
	blt s10, s7, label332
.p2align 2
label331:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	ble t5, s1, label491
.p2align 2
label11:
	ld s3, 104(sp)
	ld s6, 120(sp)
	slt s4, s1, s3
	sh2add s3, a7, s6
	xori s2, s4, 1
	mv s4, a7
	or s7, s1, a7
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, a7, s7
	or s6, s2, s8
	xori s9, s10, 1
	or s8, s6, s9
	bne s8, zero, label112
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	beq t1, a0, label274
	beq t1, a2, label66
	beq t1, a3, label297
	beq t1, a5, label301
.p2align 2
label550:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
.p2align 2
label561:
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	j label562
.p2align 2
label449:
	ld s7, 112(sp)
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	bne t1, a0, label499
.p2align 2
label274:
	mv s7, a0
	mv s8, zero
.p2align 2
label62:
	divw s11, s5, s7
	srliw s9, s11, 31
	add s9, s11, s9
	andi s10, s9, -2
	subw s9, s11, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s11, s10, s11
	xor s10, s9, s11
	slliw s9, s8, 1
	sltiu s11, s10, 1
	addi s10, s9, 1
	slliw s9, s7, 1
	subw s8, s10, s11
	lui s7, 262144
	mv s10, s9
	bge s9, s7, label287
	mv s7, s9
	j label62
.p2align 2
label324:
	mv s11, a0
	sh1add s9, s7, a0
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	bge s10, s7, label331
.p2align 2
label332:
	mv s7, s9
	divw s9, s5, s8
	and s10, s9, a1
	beq s10, a0, label324
	divw s11, s6, s8
	and s10, s11, a1
	xori s9, s10, 1
	slliw s10, s8, 1
	sltiu s11, s9, 1
	mv s8, s10
	sh1add s9, s7, s11
	lui s7, 262144
	blt s10, s7, label332
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s9, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
.p2align 2
label472:
	beq t1, a3, label297
	bne t1, a5, label515
.p2align 2
label301:
	mv s8, a0
	mv s7, zero
	divw s10, s5, a0
	and s9, s10, a1
	bne s9, a0, label306
.p2align 2
label74:
	divw s10, s6, s8
	and s9, s10, a1
	xori s10, s9, 1
	sltiu s11, s10, 1
	slliw s10, s8, 1
	sh1add s9, s7, s11
	mv s8, s10
	lui s7, 262144
	bge s10, s7, label466
.p2align 2
label315:
	mv s7, s9
	divw s10, s5, s8
	and s9, s10, a1
	beq s9, a0, label74
	mv s11, zero
	sh1add s9, s7, zero
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label315
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s9, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	j label527
.p2align 2
label287:
	mv s5, s8
	addiw s4, s4, 1
	ble s0, s4, label458
.p2align 2
label29:
	addi s3, s3, 4
	or s7, s1, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s2, s8
	xori s9, s10, 1
	or s8, s6, s9
	beq s8, zero, label449
.p2align 2
label112:
	mv s6, zero
	beq t1, zero, label20
	beq t1, a0, label274
	bne t1, a2, label472
.p2align 2
label66:
	max s5, s5, s6
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
.p2align 2
label46:
	addi t1, t1, 4
.p2align 2
label43:
	ld s6, 120(sp)
	lw t5, 0(t1)
	sh2add t4, t2, s6
	addiw t2, t2, 1
	sw t5, 0(t4)
	ld t3, 136(sp)
	bgt t3, t2, label46
	addiw t0, t0, 1
	ld t1, 128(sp)
	ble t1, t0, label37
.p2align 2
label38:
	addi a4, a4, 4
	mv t3, zero
	mv a6, zero
	mv s5, zero
	lw t1, 0(a4)
	ld t4, 168(sp)
	ld s2, 160(sp)
	mv t2, t4
	ld s3, 104(sp)
	sext.w s0, s2
	subw a7, zero, s2
	sext.w t5, s2
	mv t6, t4
	subw t4, zero, s2
	ld s6, 120(sp)
	or s7, t4, a7
	slt s4, t4, s3
	mv s1, t4
	srliw s9, s7, 31
	sh2add s3, a7, s6
	xori s2, s4, 1
	andi s8, s9, 1
	ld s7, 112(sp)
	mv s4, a7
	or s6, s2, s8
	slt s10, a7, s7
	xori s9, s10, 1
	or s8, s6, s9
	bne s8, zero, label112
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	bne t1, zero, label555
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
	bge s5, zero, label447
.p2align 2
label23:
	lui s7, 262144
	addw s5, s5, s7
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	ble s3, t3, label516
.p2align 2
label34:
	ld s7, 112(sp)
	mv a6, zero
	mv s5, zero
	sh2add t2, s7, t2
	ld s2, 160(sp)
	mv t6, t2
	ld s3, 104(sp)
	sext.w s0, s2
	subw a7, zero, s2
	addw t5, s2, t3
	subw t4, t3, s2
	ld s6, 120(sp)
	or s7, t4, a7
	slt s4, t4, s3
	mv s1, t4
	srliw s9, s7, 31
	sh2add s3, a7, s6
	xori s2, s4, 1
	andi s8, s9, 1
	ld s7, 112(sp)
	mv s4, a7
	or s6, s2, s8
	slt s10, a7, s7
	xori s9, s10, 1
	or s8, s6, s9
	bne s8, zero, label112
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	beq t1, a0, label274
	beq t1, a2, label66
	beq t1, a3, label297
	beq t1, a5, label301
	j label550
.p2align 2
label458:
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	ble s7, a6, label503
.p2align 2
label32:
	addi t6, t6, 4
	mv s1, t4
	mv s5, zero
	ld s2, 160(sp)
	ld s3, 104(sp)
	addw s0, s2, a6
	subw a7, a6, s2
	slt s4, t4, s3
	ld s6, 120(sp)
	or s7, t4, a7
	xori s2, s4, 1
	sh2add s3, a7, s6
	srliw s9, s7, 31
	mv s4, a7
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, a7, s7
	or s6, s2, s8
	xori s9, s10, 1
	or s8, s6, s9
	bne s8, zero, label112
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	beq t1, a0, label274
	beq t1, a2, label66
	beq t1, a3, label297
	beq t1, a5, label301
	addiw s4, a7, 1
	bgt s0, s4, label29
	j label561
.p2align 2
label516:
	ld t3, 136(sp)
	ble t3, zero, label36
.p2align 2
label39:
	ld t3, 136(sp)
	ble t3, a3, label172
	ld t4, 144(sp)
	li t1, 15
	ble t4, t1, label191
	ld s6, 120(sp)
	mv t2, zero
	mv t1, s6
	j label57
.p2align 2
label60:
	addi t1, t1, 64
.p2align 2
label57:
	ld t4, 168(sp)
	sh2add t3, t2, t4
	addiw t2, t2, 16
	lw t5, 0(t3)
	sw t5, 0(t1)
	lw t4, 4(t3)
	sw t4, 4(t1)
	lw t5, 8(t3)
	sw t5, 8(t1)
	lw t4, 12(t3)
	sw t4, 12(t1)
	lw t5, 16(t3)
	sw t5, 16(t1)
	lw t4, 20(t3)
	sw t4, 20(t1)
	lw t5, 24(t3)
	sw t5, 24(t1)
	lw t4, 28(t3)
	sw t4, 28(t1)
	lw t5, 32(t3)
	sw t5, 32(t1)
	lw t4, 36(t3)
	sw t4, 36(t1)
	lw t5, 40(t3)
	sw t5, 40(t1)
	lw t4, 44(t3)
	sw t4, 44(t1)
	lw t5, 48(t3)
	sw t5, 48(t1)
	lw t4, 52(t3)
	sw t4, 52(t1)
	lw t5, 56(t3)
	sw t5, 56(t1)
	lw t4, 60(t3)
	sw t4, 60(t1)
	ld t3, 152(sp)
	bgt t3, t2, label60
	mv t3, t2
	ld t4, 144(sp)
	ble t4, t2, label456
.p2align 2
label51:
	ld s6, 120(sp)
	mv t2, t3
	sh2add t1, t3, s6
.p2align 2
label52:
	ld t4, 168(sp)
	sh2add t3, t2, t4
	addiw t2, t2, 4
	lw t5, 0(t3)
	sw t5, 0(t1)
	lw t4, 4(t3)
	sw t4, 4(t1)
	lw t5, 8(t3)
	sw t5, 8(t1)
	lw t6, 12(t3)
	sw t6, 12(t1)
	ld t4, 144(sp)
	ble t4, t2, label214
	addi t1, t1, 16
	j label52
.p2align 2
label214:
	ld t3, 136(sp)
	ble t3, t2, label455
.p2align 2
label42:
	ld t4, 168(sp)
	sh2add t1, t2, t4
	j label43
.p2align 2
label503:
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
.p2align 2
label306:
	mv s11, zero
	sh1add s9, s7, zero
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label315
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s9, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	j label527
.p2align 2
label466:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s9, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
label527:
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
.p2align 2
label515:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw zero, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
.p2align 2
label562:
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
.p2align 2
label535:
	beq t1, a5, label301
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw zero, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	j label562
.p2align 2
label555:
	beq t1, a0, label274
	beq t1, a2, label66
	beq t1, a3, label297
	beq t1, a5, label301
	j label550
.p2align 2
label21:
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	j label473
.p2align 2
label491:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
.p2align 2
label447:
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
label473:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label34
	ld t3, 136(sp)
	bgt t3, zero, label39
	j label36
label172:
	mv t2, zero
	ld t3, 136(sp)
	bgt t3, zero, label42
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label38
	j label37
.p2align 2
label456:
	ld t3, 136(sp)
	bgt t3, t2, label42
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label38
	j label37
label191:
	mv t3, zero
	mv t2, zero
	ld t4, 144(sp)
	bgt t4, zero, label51
	ld t3, 136(sp)
	bgt t3, zero, label42
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label38
label37:
	li a0, 116
	jal _sysy_stoptime
	ld s6, 120(sp)
	ld t3, 136(sp)
	mv a0, t3
	mv a1, s6
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s3, 24(sp)
	ld s7, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s2, 56(sp)
	ld s4, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
label36:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label38
	j label37
.p2align 2
label455:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label38
	j label37
