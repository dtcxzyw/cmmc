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
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s5, a0
	jal getint
	mv s2, a0
	jal getint
	mulw a5, s2, a0
pcrel526:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel526)
	sd a5, 104(sp)
	mv s1, a0
	jal getarray
pcrel527:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel527)
	mv s3, a0
	jal getarray
	mv s4, a0
	li a0, 109
	jal _sysy_starttime
	ble s4, zero, label60
	ld a5, 104(sp)
	srliw a0, s5, 31
pcrel528:
	auipc a4, %pcrel_hi(b)
	addiw a2, a5, -8
	add a3, s5, a0
	addi a0, a4, %pcrel_lo(pcrel528)
	sraiw a1, a3, 1
	mv a3, zero
.p2align 2
label3:
	sh2add t0, a3, s3
	mv a5, zero
	lw a4, 0(t0)
	subw t0, zero, a1
	sext.w t1, a1
	mv t2, zero
	mv t3, zero
	subw t4, zero, a1
	sext.w t5, a1
	mv t6, t0
	mv s5, zero
	slt a7, t0, s2
	xori a6, a7, 1
	mv a7, t4
	or s6, t0, t4
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, t4, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label100
.p2align 2
label22:
	addiw a5, a5, 1
	bgt s2, a5, label131
	ld a5, 104(sp)
	ble a5, zero, label29
	li a4, 8
	ble a5, a4, label137
	mv a4, zero
	j label27
.p2align 2
label25:
	sh2add t1, a4, a0
	sh2add t0, a4, s1
	lw a5, 0(t1)
	addiw a4, a4, 1
	sw a5, 0(t0)
	ld a5, 104(sp)
	bgt a5, a4, label25
.p2align 2
label147:
	addiw a3, a3, 1
	bgt s4, a3, label3
	j label60
.p2align 2
label27:
	sh2add a5, a4, a0
	sh2add t0, a4, s1
	lw t1, 0(a5)
	addiw a4, a4, 8
	sw t1, 0(t0)
	lw t1, 4(a5)
	sw t1, 4(t0)
	lw t2, 8(a5)
	sw t2, 8(t0)
	lw t1, 12(a5)
	sw t1, 12(t0)
	lw t2, 16(a5)
	sw t2, 16(t0)
	lw t1, 20(a5)
	sw t1, 20(t0)
	lw t2, 24(a5)
	sw t2, 24(t0)
	lw a5, 28(a5)
	sw a5, 28(t0)
	bgt a2, a4, label27
	sh2add t1, a4, a0
	sh2add t0, a4, s1
	lw a5, 0(t1)
	addiw a4, a4, 1
	sw a5, 0(t0)
	ld a5, 104(sp)
	bgt a5, a4, label25
	addiw a3, a3, 1
	bgt s4, a3, label3
	j label60
.p2align 2
label101:
	mv s6, zero
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	j label394
label351:
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label374
.p2align 2
label20:
	addiw t6, t6, 1
	ble t1, t6, label21
	slt a7, t6, s2
	xori a6, a7, 1
	mv a7, t4
	or s6, t6, t4
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, t4, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label375
.p2align 2
label32:
	max s5, s5, s6
	addiw a7, a7, 1
	ble t5, a7, label20
	j label357
.p2align 2
label53:
	addw s5, s5, s6
	lui s6, 262144
	bgt s5, s6, label58
	j label54
.p2align 2
label56:
	lui s6, 262144
	addw s5, s5, s6
	blt s5, zero, label56
	addiw a7, a7, 1
	ble t5, a7, label20
	j label369
.p2align 2
label58:
	lui s6, 786432
	lui s7, 262144
	addw s5, s5, s6
	bgt s5, s7, label58
	blt s5, zero, label56
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label351
.p2align 2
label187:
	li s7, 1
	mv s8, zero
.p2align 2
label50:
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
	slliw s11, s8, 1
	xor s10, s9, s10
	sltiu s9, s10, 1
	addi s10, s11, 1
	subw s8, s10, s9
	lui s10, 262144
	mv s9, s7
	blt s7, s10, label248
	mv s5, s8
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	j label433
.p2align 2
label248:
	mv s7, s9
	j label50
label467:
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label479
.p2align 2
label21:
	addw t5, t2, t3
	addiw t3, t3, 1
	sh2add t4, t5, a0
	sw s5, 0(t4)
	ble s0, t3, label22
	subw t4, t3, a1
	addw t5, a1, t3
	mv t6, t0
	mv s5, zero
	slt a7, t0, s2
	xori a6, a7, 1
	mv a7, t4
	or s6, t0, t4
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, t4, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t0
	addw s8, t4, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	addiw a7, t4, 1
	ble t5, a7, label20
	j label467
label470:
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label469
.p2align 2
label369:
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	j label470
.p2align 2
label375:
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	bne a4, s7, label471
.p2align 2
label217:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label46
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
label408:
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	j label417
.p2align 2
label46:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label49
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label46
	j label365
.p2align 2
label49:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	xori s9, s10, 1
	sltiu s11, s9, 1
	addw s8, s8, s11
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label46
	mv s5, s8
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label408
.p2align 2
label194:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label37
	j label197
.p2align 2
label433:
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	j label470
label446:
	li s7, 3
	beq a4, s7, label194
	j label438
.p2align 2
label37:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label204
.p2align 2
label38:
	addiw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label37
	mv s5, s8
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	j label446
label403:
	li s7, 1
	beq a4, s7, label187
	j label425
.p2align 2
label204:
	divw s10, s6, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label38
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label37
	mv s5, s8
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label403
label451:
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	j label467
.p2align 2
label131:
	subw t0, a5, a1
	addw t1, a1, a5
	mulw t2, s0, a5
	mv t3, zero
	subw t4, zero, a1
	sext.w t5, a1
	mv t6, t0
	mv s5, zero
	slt a7, t0, s2
	xori a6, a7, 1
	mv a7, t4
	or s6, t0, t4
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, t4, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t0
	addw s8, t4, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	j label451
.p2align 2
label394:
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
label481:
	li s7, 2
	beq a4, s7, label32
	j label417
.p2align 2
label357:
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	j label454
.p2align 2
label100:
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	li s7, 3
	beq a4, s7, label194
	li s7, 4
	beq a4, s7, label217
	j label451
.p2align 2
label365:
	mv s5, s8
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label408
label54:
	blt s5, zero, label56
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label351
label479:
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label469
label471:
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	j label479
label417:
	li s7, 3
	beq a4, s7, label194
label438:
	li s7, 4
	beq a4, s7, label217
label454:
	mv s5, zero
	addiw a7, a7, 1
	ble t5, a7, label20
	j label470
label469:
	li s7, 1
	beq a4, s7, label187
	j label481
label29:
	addiw a3, a3, 1
	bgt s4, a3, label3
	j label60
label137:
	mv a4, zero
	mv t1, a0
	mv t0, s1
	lw a5, 0(a0)
	li a4, 1
	sw a5, 0(s1)
	ld a5, 104(sp)
	bgt a5, a4, label25
	j label147
label60:
	li a0, 116
	jal _sysy_stoptime
	ld a5, 104(sp)
	mv a0, a5
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 112
	ret
label374:
	li s7, 1
	beq a4, s7, label187
	li s7, 2
	beq a4, s7, label32
	j label417
label197:
	mv s5, s8
	addiw a7, a7, 1
	ble t5, a7, label20
	or s6, t6, a7
	srliw s8, s6, 31
	andi s7, s8, 1
	slt s8, a7, s0
	or s6, a6, s7
	xori s7, s8, 1
	or s6, s6, s7
	bne s6, zero, label101
	mulw s7, s0, t6
	addw s8, a7, s7
	sh2add s9, s8, s1
	lw s6, 0(s9)
	beq a4, zero, label53
	j label403
label425:
	li s7, 2
	beq a4, s7, label32
	j label446
