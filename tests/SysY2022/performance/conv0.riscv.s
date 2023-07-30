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
.globl main
main:
.p2align 2
	addi sp, sp, -120
	sd s4, 16(sp)
	sd s0, 32(sp)
	sd s5, 0(sp)
	sd s1, 8(sp)
	sd s6, 112(sp)
	sd s2, 104(sp)
	sd s3, 96(sp)
	sd s7, 88(sp)
	sd s9, 80(sp)
	sd s8, 72(sp)
	sd s10, 64(sp)
	sd s11, 56(sp)
	sd ra, 48(sp)
	jal getint
	mv s4, a0
	jal getint
	sd a0, 24(sp)
	mv a7, a0
	jal getint
pcrel700:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	ld a7, 24(sp)
	mulw t0, a7, a0
	addi a0, a1, %pcrel_lo(pcrel700)
	mv s1, a0
	sd t0, 40(sp)
	jal getarray
pcrel701:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel701)
	mv s2, a0
	jal getarray
	mv s3, a0
	li a0, 109
	jal _sysy_starttime
	bgt s3, zero, label2
	j label63
.p2align 2
label29:
	ld t0, 40(sp)
	bgt t0, zero, label31
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
.p2align 2
label31:
	li a5, 4
	ld t0, 40(sp)
	bgt t0, a5, label32
	mv a5, zero
	mv t2, a0
	mv t1, s1
	lw t0, 0(a0)
	li a5, 1
	sw t0, 0(s1)
	ld t0, 40(sp)
	bgt t0, a5, label37
	addiw a4, a4, 1
	bgt s3, a4, label3
label63:
	li a0, 116
	jal _sysy_stoptime
	ld t0, 40(sp)
	mv a0, t0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 48(sp)
	ld s11, 56(sp)
	ld s10, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s7, 88(sp)
	ld s3, 96(sp)
	ld s2, 104(sp)
	ld s6, 112(sp)
	ld s1, 8(sp)
	ld s5, 0(sp)
	ld s0, 32(sp)
	ld s4, 16(sp)
	addi sp, sp, 120
	ret
.p2align 2
label3:
	sh2add t1, a4, s2
	mv t0, zero
	lw a5, 0(t1)
	subw t1, zero, a1
	sext.w t2, a1
	mv t3, zero
	mv t4, zero
	subw t5, zero, a1
	sext.w t6, a1
	mv a6, t1
	mv s5, zero
	ld a7, 24(sp)
	mv s4, t5
	slt s6, t1, a7
	xori a7, s6, 1
	or s6, t1, t5
	slt s8, t5, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, t1
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	addiw s4, t5, 1
	ble t6, s4, label26
.p2align 2
label577:
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	beq s6, zero, label606
.p2align 2
label106:
	mv s6, zero
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	li s7, 1
	beq a5, s7, label252
.p2align 2
label607:
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	j label647
.p2align 2
label17:
	addw s5, s5, s6
	lui s6, 262144
	bgt s5, s6, label18
	blt s5, zero, label22
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
.p2align 2
label640:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label643
.p2align 2
label22:
	lui s6, 262144
	addw s5, s5, s6
	blt s5, zero, label22
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label641
.p2align 2
label643:
	li s7, 1
	beq a5, s7, label252
	j label607
.p2align 2
label647:
	li s8, 4
	beq a5, s8, label282
	j label648
.p2align 2
label650:
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label643
.p2align 2
label635:
	li s7, 1
	beq a5, s7, label252
	j label607
.p2align 2
label26:
	addiw a6, a6, 1
	ble t2, a6, label27
	ld a7, 24(sp)
	mv s4, t5
	slt s6, a6, a7
	xori a7, s6, 1
	or s6, a6, t5
	slt s8, t5, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, t5, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label635
.p2align 2
label252:
	li s7, 1
	mv s8, zero
	j label59
.p2align 2
label259:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label46
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
.p2align 2
label593:
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
.p2align 2
label622:
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label651
.p2align 2
label46:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label47
	divw s9, s6, s7
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label47
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label46
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	j label593
.p2align 2
label47:
	addiw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label46
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	j label622
.p2align 2
label59:
	divw s9, s5, s7
	srliw s10, s9, 31
	add s11, s9, s10
	andi s10, s11, -2
	subw s9, s9, s10
	divw s10, s6, s7
	slliw s7, s7, 1
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s11, s9, s10
	slliw s10, s8, 1
	sltiu s9, s11, 1
	addi s11, s10, 1
	lui s10, 262144
	subw s8, s11, s9
	mv s9, s7
	blt s7, s10, label313
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label643
.p2align 2
label313:
	mv s7, s9
	j label59
.p2align 2
label18:
	lui s6, 786432
	lui s7, 262144
	addw s5, s5, s6
	bgt s5, s7, label18
	blt s5, zero, label22
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label640
.p2align 2
label41:
	max s5, s5, s6
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label643
.p2align 2
label641:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label643
.p2align 2
label648:
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	j label650
.p2align 2
label606:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label635
.p2align 2
label27:
	addw t6, t3, t4
	addiw t4, t4, 1
	sh2add t5, t6, a0
	sw s5, 0(t5)
	ble s0, t4, label28
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s5, zero
	ld a7, 24(sp)
	mv s4, t5
	slt s6, t1, a7
	xori a7, s6, 1
	or s6, t1, t5
	slt s8, t5, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, t1
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	addiw s4, t5, 1
	ble t6, s4, label26
	or s6, t1, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label606
.p2align 2
label28:
	addiw t0, t0, 1
	ld a7, 24(sp)
	ble a7, t0, label29
	subw t1, t0, a1
	addw t2, a1, t0
	mulw t3, s0, t0
	mv t4, zero
	subw t5, zero, a1
	sext.w t6, a1
	mv a6, t1
	mv s5, zero
	mv s4, t5
	slt s6, t1, a7
	xori a7, s6, 1
	or s6, t1, t5
	slt s8, t5, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, t1
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	addiw s4, t5, 1
	ble t6, s4, label26
	j label577
.p2align 2
label651:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label643
.p2align 2
label282:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label55
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	addiw s4, s4, 1
	ble t6, s4, label26
.p2align 2
label629:
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label658
.p2align 2
label55:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label58
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label55
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	j label629
.p2align 2
label58:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	xori s11, s10, 1
	sltiu s9, s11, 1
	addw s8, s8, s9
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label55
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	li s7, 2
	beq a5, s7, label41
	li s7, 3
	beq a5, s7, label259
	li s8, 4
	beq a5, s8, label282
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
.p2align 2
label658:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label643
.p2align 2
label32:
	li a5, 16
	bgt a3, a5, label165
	mv t0, zero
	j label33
.p2align 2
label165:
	mv a5, zero
	j label35
.p2align 2
label33:
	sh2add t1, t0, a0
	sh2add a5, t0, s1
	lw t2, 0(t1)
	addiw t0, t0, 4
	sw t2, 0(a5)
	lw t3, 4(t1)
	sw t3, 4(a5)
	lw t2, 8(t1)
	sw t2, 8(a5)
	lw t1, 12(t1)
	sw t1, 12(a5)
	bgt a3, t0, label33
	mv a5, t0
	sh2add t2, t0, a0
	sh2add t1, t0, s1
	lw t0, 0(t2)
	addiw a5, a5, 1
	sw t0, 0(t1)
	ld t0, 40(sp)
	bgt t0, a5, label37
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
.p2align 2
label35:
	sh2add t0, a5, a0
	sh2add t1, a5, s1
	lw t2, 0(t0)
	sw t2, 0(t1)
	lw t2, 4(t0)
	sw t2, 4(t1)
	lw t3, 8(t0)
	sw t3, 8(t1)
	lw t2, 12(t0)
	sw t2, 12(t1)
	lw t3, 16(t0)
	sw t3, 16(t1)
	lw t2, 20(t0)
	sw t2, 20(t1)
	lw t3, 24(t0)
	sw t3, 24(t1)
	lw t2, 28(t0)
	sw t2, 28(t1)
	lw t3, 32(t0)
	sw t3, 32(t1)
	lw t4, 36(t0)
	sw t4, 36(t1)
	lw t2, 40(t0)
	sw t2, 40(t1)
	lw t3, 44(t0)
	sw t3, 44(t1)
	lw t2, 48(t0)
	sw t2, 48(t1)
	lw t3, 52(t0)
	sw t3, 52(t1)
	lw t2, 56(t0)
	sw t2, 56(t1)
	lw t3, 60(t0)
	addiw t0, a5, 16
	sw t3, 60(t1)
	ble a2, t0, label33
	mv a5, t0
	j label35
.p2align 2
label37:
	sh2add t2, a5, a0
	sh2add t1, a5, s1
	lw t0, 0(t2)
	addiw a5, a5, 1
	sw t0, 0(t1)
	ld t0, 40(sp)
	bgt t0, a5, label37
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
label2:
	ld t0, 40(sp)
	srliw a4, s4, 31
	addiw a2, t0, -20
	addiw a3, t0, -4
	add a0, s4, a4
pcrel702:
	auipc a4, %pcrel_hi(b)
	sraiw a1, a0, 1
	addi a0, a4, %pcrel_lo(pcrel702)
	mv a4, zero
	j label3
