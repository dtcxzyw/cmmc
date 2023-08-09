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
pcrel608:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s6, a1, %pcrel_lo(pcrel608)
	sd s6, 120(sp)
	mv a0, s6
	jal getarray
pcrel609:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel609)
	mv a0, s0
	jal getarray
	sd a0, 128(sp)
	mv t1, a0
	li a0, 109
	jal _sysy_starttime
	li a2, 2
	mv t0, zero
	mv a4, s0
	li a5, 4
	lui a3, 524288
	srliw a1, s1, 31
	ld s3, 104(sp)
	add a0, s1, a1
	ld s7, 112(sp)
pcrel610:
	auipc a1, %pcrel_hi(b)
	sraiw s2, a0, 1
	li a0, 1
	mulw t3, s3, s7
	addi t4, t3, -3
	sd t3, 136(sp)
	addi t3, t3, -18
	sd t4, 144(sp)
	addi t4, a1, %pcrel_lo(pcrel610)
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
label461:
	addiw s1, s1, 1
	ble t5, s1, label486
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
.p2align 2
label534:
	beq t1, a5, label301
.p2align 2
label552:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
.p2align 2
label563:
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	j label564
.p2align 2
label115:
	bne t1, a0, label444
.p2align 2
label274:
	mv s7, a0
	mv s8, zero
.p2align 2
label62:
	divw s10, s5, s7
	srliw s11, s10, 31
	add s9, s10, s11
	andi s11, s9, -2
	subw s9, s10, s11
	divw s11, s6, s7
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
	lui s7, 262144
	mv s11, s9
	bge s9, s7, label287
	mv s7, s9
	j label62
.p2align 2
label498:
	addiw t3, t3, 1
	ld s3, 104(sp)
	ble s3, t3, label518
.p2align 2
label60:
	ld s7, 112(sp)
	mv a6, zero
	mv s5, zero
	sh2add t2, s7, t2
	ld s2, 160(sp)
	mv t6, t2
	ld s3, 104(sp)
	subw a7, zero, s2
	sext.w s0, s2
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
	bne t1, a2, label568
.p2align 2
label66:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s0, s4, label461
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
	bne t1, zero, label115
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
	ble s7, a6, label498
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
	j label563
.p2align 2
label449:
	ld s7, 112(sp)
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	beq t1, a0, label274
	beq t1, a2, label66
	beq t1, a3, label297
	beq t1, a5, label301
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw zero, 0(t6)
	bgt s7, a6, label32
	j label564
.p2align 2
label287:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
	ld t3, 136(sp)
	bgt t3, zero, label38
	j label35
.p2align 2
label444:
	beq t1, a2, label66
	beq t1, a3, label297
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
.p2align 2
label564:
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
	ld t3, 136(sp)
	bgt t3, zero, label38
	j label35
.p2align 2
label518:
	ld t3, 136(sp)
	ble t3, zero, label35
.p2align 2
label38:
	ld t3, 136(sp)
	ble t3, a3, label170
	ld t4, 144(sp)
	li t1, 15
	ble t4, t1, label174
	ld s6, 120(sp)
	mv t2, zero
	mv t1, s6
	j label41
.p2align 2
label44:
	addi t1, t1, 64
.p2align 2
label41:
	ld t4, 168(sp)
	sh2add t3, t2, t4
	addiw t2, t2, 16
	lw t5, 0(t3)
	sw t5, 0(t1)
	lw t4, 4(t3)
	sw t4, 4(t1)
	lw t5, 8(t3)
	sw t5, 8(t1)
	lw t6, 12(t3)
	sw t6, 12(t1)
	lw t4, 16(t3)
	sw t4, 16(t1)
	lw t5, 20(t3)
	sw t5, 20(t1)
	lw t4, 24(t3)
	sw t4, 24(t1)
	lw t5, 28(t3)
	sw t5, 28(t1)
	lw t4, 32(t3)
	sw t4, 32(t1)
	lw t5, 36(t3)
	sw t5, 36(t1)
	lw t4, 40(t3)
	sw t4, 40(t1)
	lw t6, 44(t3)
	sw t6, 44(t1)
	lw t5, 48(t3)
	sw t5, 48(t1)
	lw t4, 52(t3)
	sw t4, 52(t1)
	lw t5, 56(t3)
	sw t5, 56(t1)
	lw t4, 60(t3)
	sw t4, 60(t1)
	ld t3, 152(sp)
	bgt t3, t2, label44
	mv t3, t2
	ld t4, 144(sp)
	ble t4, t2, label453
.p2align 2
label48:
	ld s6, 120(sp)
	mv t2, t3
	sh2add t1, t3, s6
.p2align 2
label49:
	ld t4, 168(sp)
	sh2add t3, t2, t4
	addiw t2, t2, 4
	lw t6, 0(t3)
	sw t6, 0(t1)
	lw t5, 4(t3)
	sw t5, 4(t1)
	lw t4, 8(t3)
	sw t4, 8(t1)
	lw t5, 12(t3)
	sw t5, 12(t1)
	ld t4, 144(sp)
	ble t4, t2, label251
	addi t1, t1, 16
	j label49
.p2align 2
label251:
	ld t3, 136(sp)
	ble t3, t2, label455
.p2align 2
label55:
	ld t4, 168(sp)
	sh2add t1, t2, t4
.p2align 2
label56:
	ld s6, 120(sp)
	lw t5, 0(t1)
	sh2add t4, t2, s6
	addiw t2, t2, 1
	sw t5, 0(t4)
	ld t3, 136(sp)
	ble t3, t2, label266
	addi t1, t1, 4
	j label56
.p2align 2
label266:
	addiw t0, t0, 1
	ld t1, 128(sp)
	ble t1, t0, label36
.p2align 2
label37:
	addi a4, a4, 4
	mv t3, zero
	mv a6, zero
	mv s5, zero
	lw t1, 0(a4)
	ld t4, 168(sp)
	ld s2, 160(sp)
	mv t2, t4
	sext.w s0, s2
	subw a7, zero, s2
	sext.w t5, s2
	mv t6, t4
	subw t4, zero, s2
	ld s3, 104(sp)
	or s7, t4, a7
	mv s1, t4
	slt s4, t4, s3
	srliw s9, s7, 31
	xori s2, s4, 1
	ld s6, 120(sp)
	andi s8, s9, 1
	mv s4, a7
	sh2add s3, a7, s6
	ld s7, 112(sp)
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
	bne t1, a3, label534
.p2align 2
label297:
	mv s7, a0
	mv s8, zero
	divw s10, s5, a0
	and s9, s10, a1
	beq s9, a0, label324
	divw s10, s6, a0
	and s9, s10, a1
	xori s10, s9, 1
	slliw s9, a0, 1
	sltiu s11, s10, 1
	lui s7, 262144
	mv s10, s9
	mv s8, s11
	blt s9, s7, label332
.p2align 2
label331:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
.p2align 2
label532:
	ld t3, 136(sp)
	bgt t3, zero, label38
	j label35
.p2align 2
label324:
	mv s11, a0
	sh1add s8, s8, a0
	slliw s9, s7, 1
	lui s7, 262144
	mv s10, s9
	bge s9, s7, label331
.p2align 2
label332:
	mv s7, s10
	divw s10, s5, s10
	and s9, s10, a1
	beq s9, a0, label324
	divw s10, s6, s7
	and s9, s10, a1
	xori s10, s9, 1
	slliw s9, s7, 1
	sltiu s11, s10, 1
	lui s7, 262144
	mv s10, s9
	sh1add s8, s8, s11
	blt s9, s7, label332
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
	j label532
.p2align 2
label568:
	beq t1, a3, label297
	bne t1, a5, label552
.p2align 2
label301:
	mv s8, a0
	mv s7, zero
	divw s9, s5, a0
	and s10, s9, a1
	beq s10, a0, label72
	mv s11, zero
	mv s9, zero
	slliw s10, a0, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label318
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw zero, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
	j label530
.p2align 2
label72:
	divw s9, s6, s8
	and s11, s9, a1
	xori s10, s11, 1
	sltiu s11, s10, 1
	sh1add s9, s7, s11
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	bge s10, s7, label317
.p2align 2
label318:
	mv s7, s9
	divw s9, s5, s8
	and s10, s9, a1
	beq s10, a0, label72
	mv s11, zero
	sh1add s9, s7, zero
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label318
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
	bgt s3, t3, label60
	j label530
.p2align 2
label486:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
	ld t3, 136(sp)
	bgt t3, zero, label38
	j label35
.p2align 2
label317:
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
	bgt s3, t3, label60
label530:
	ld t3, 136(sp)
	bgt t3, zero, label38
	j label35
.p2align 2
label21:
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
	j label474
.p2align 2
label447:
	addiw s4, s4, 1
	bgt s0, s4, label29
	addiw s1, s1, 1
	bgt t5, s1, label11
label474:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label32
	addiw t3, t3, 1
	ld s3, 104(sp)
	bgt s3, t3, label60
	ld t3, 136(sp)
	bgt t3, zero, label38
	j label35
.p2align 2
label453:
	ld t3, 136(sp)
	bgt t3, t2, label55
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
	j label36
label170:
	mv t2, zero
	ld t3, 136(sp)
	bgt t3, zero, label55
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
	j label36
label174:
	mv t3, zero
	mv t2, zero
	ld t4, 144(sp)
	bgt t4, zero, label48
	ld t3, 136(sp)
	bgt t3, zero, label55
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
label36:
	li a0, 116
	jal _sysy_stoptime
	ld s6, 120(sp)
	ld t3, 136(sp)
	mv a0, t3
	mv a1, s6
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
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
label35:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
	j label36
.p2align 2
label455:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label37
	j label36
