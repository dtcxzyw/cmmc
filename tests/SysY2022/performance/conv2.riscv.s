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
pcrel526:
	auipc a0, %pcrel_hi(a)
	addi s6, a0, %pcrel_lo(pcrel526)
	sd t4, 104(sp)
	sd s6, 128(sp)
	mv a0, s6
	jal getarray
pcrel527:
	auipc a1, %pcrel_hi(kernelid)
	addi t4, a1, %pcrel_lo(pcrel527)
	sd t4, 144(sp)
	mv a0, t4
	jal getarray
	sd a0, 136(sp)
	mv t3, a0
	li a0, 109
	jal _sysy_starttime
	ld t3, 136(sp)
	li t1, 2
	li a2, 1
	li a3, -2147483647
	lui a0, 262144
	lui a1, 786432
	ble t3, zero, label60
	ld t4, 104(sp)
	srliw a4, s0, 31
pcrel528:
	auipc t3, %pcrel_hi(b)
	addiw a5, t4, -4
	add t2, s0, a4
	addi a4, t3, %pcrel_lo(pcrel528)
	sraiw t0, t2, 1
	mv t2, zero
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
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	j label100
.p2align 2
label21:
	addiw t4, t4, 1
	ld s4, 112(sp)
	bgt s4, t4, label126
	ld t4, 104(sp)
	ble t4, zero, label23
	li s8, 4
	ble t4, s8, label137
	mv t3, zero
	j label27
.p2align 2
label25:
	sh2add t5, t3, a4
	lw t4, 0(t5)
	ld s6, 128(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 1
	sw t4, 0(t5)
	ld t4, 104(sp)
	bgt t4, t3, label25
.p2align 2
label147:
	addiw t2, t2, 1
	ld t3, 136(sp)
	bgt t3, t2, label3
	j label60
.p2align 2
label27:
	sh2add t4, t3, a4
	lw t6, 0(t4)
	ld s6, 128(sp)
	sh2add t5, t3, s6
	addiw t3, t3, 4
	sw t6, 0(t5)
	lw t6, 4(t4)
	sw t6, 4(t5)
	lw a6, 8(t4)
	sw a6, 8(t5)
	lw t4, 12(t4)
	sw t4, 12(t5)
	bgt a5, t3, label27
	sh2add t5, t3, a4
	lw t4, 0(t5)
	sh2add t5, t3, s6
	addiw t3, t3, 1
	sw t4, 0(t5)
	ld t4, 104(sp)
	bgt t4, t3, label25
	addiw t2, t2, 1
	ld t3, 136(sp)
	bgt t3, t2, label3
	j label60
.p2align 2
label101:
	mv s6, zero
	beq t3, zero, label52
	j label103
label469:
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label468
.p2align 2
label19:
	addiw s2, s2, 1
	ble t6, s2, label20
	ld s4, 112(sp)
	slt s6, s2, s4
	mv s4, s0
	xori s3, s6, 1
	or s6, s2, s0
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	j label380
.p2align 2
label126:
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
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	j label421
.p2align 2
label52:
	addw s5, s5, s6
	ble s5, a0, label235
.p2align 2
label53:
	addw s5, s5, a1
	bgt s5, a0, label53
	bge s5, zero, label244
.p2align 2
label57:
	addw s5, s5, a0
	blt s5, zero, label57
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	j label469
label467:
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	j label479
.p2align 2
label20:
	addw s0, a6, a7
	addiw a7, a7, 1
	sh2add s1, s0, a4
	sw s5, 0(s1)
	ld s7, 120(sp)
	ble s7, a7, label21
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
	slt s9, s0, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	addiw s4, s0, 1
	ble s1, s4, label19
	j label467
.p2align 2
label103:
	beq t3, a2, label170
	bne t3, t1, label378
.p2align 2
label31:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	j label455
.p2align 2
label380:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	bne t3, a2, label419
.p2align 2
label170:
	mv s7, a2
	mv s8, zero
.p2align 2
label49:
	divw s9, s5, s7
	slliw s8, s8, 1
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
	addi s10, s8, 1
	sltiu s9, s11, 1
	subw s8, s10, s9
	mv s9, s7
	blt s7, a0, label49
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	j label469
.p2align 2
label378:
	li s7, 3
	bne t3, s7, label398
.p2align 2
label177:
	mv s8, zero
	mv s7, a2
	blt a2, a0, label36
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label406
label446:
	li s7, 3
	beq t3, s7, label177
	j label438
.p2align 2
label36:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a3
	beq s9, a2, label37
	divw s10, s6, s7
	and s9, s10, a3
	bne s9, a2, label366
.p2align 2
label37:
	addiw s8, s8, 1
	slliw s7, s7, 1
	blt s7, a0, label36
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	j label446
.p2align 2
label398:
	li s8, 4
	bne t3, s8, label417
.p2align 2
label200:
	mv s8, zero
	mv s7, a2
	blt a2, a0, label45
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label411
.p2align 2
label45:
	divw s10, s5, s7
	slliw s8, s8, 1
	and s9, s10, a3
	beq s9, a2, label48
	slliw s7, s7, 1
	blt s7, a0, label45
	j label370
.p2align 2
label48:
	divw s9, s6, s7
	and s11, s9, a3
	xori s10, s11, 1
	sltiu s9, s10, 1
	addw s8, s8, s9
	slliw s7, s7, 1
	blt s7, a0, label45
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label411
label479:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label468
.p2align 2
label419:
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	j label479
label453:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	j label467
.p2align 2
label421:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	j label453
.p2align 2
label100:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	beq t3, a2, label170
	beq t3, t1, label31
	li s7, 3
	beq t3, s7, label177
	li s8, 4
	beq t3, s8, label200
	j label453
label406:
	beq t3, a2, label170
	j label426
.p2align 2
label366:
	slliw s7, s7, 1
	blt s7, a0, label36
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label406
.p2align 2
label417:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
label468:
	beq t3, a2, label170
	beq t3, t1, label31
	j label418
label411:
	beq t3, a2, label170
	beq t3, t1, label31
	j label418
.p2align 2
label370:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label411
label357:
	ld s7, 120(sp)
	ld s6, 128(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label52
	j label379
.p2align 2
label235:
	blt s5, zero, label57
.p2align 2
label244:
	addiw s4, s4, 1
	ble s1, s4, label19
	or s6, s2, s4
	srliw s7, s6, 31
	andi s8, s7, 1
	ld s7, 120(sp)
	or s6, s3, s8
	slt s9, s4, s7
	xori s8, s9, 1
	or s6, s6, s8
	bne s6, zero, label101
	j label357
label418:
	li s7, 3
	beq t3, s7, label177
label438:
	li s8, 4
	beq t3, s8, label200
label455:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label19
	j label469
label23:
	addiw t2, t2, 1
	ld t3, 136(sp)
	bgt t3, t2, label3
	j label60
label137:
	mv t3, zero
	mv t5, a4
	lw t4, 0(a4)
	ld s6, 128(sp)
	mv t5, s6
	li t3, 1
	sw t4, 0(s6)
	ld t4, 104(sp)
	bgt t4, t3, label25
	j label147
label60:
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
label379:
	beq t3, a2, label170
	beq t3, t1, label31
	j label418
label426:
	beq t3, t1, label31
	j label446
