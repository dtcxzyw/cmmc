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
	sd ra, 0(sp)
	sd s4, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s4, a0
	jal getint
	sd a0, 112(sp)
	mv a7, a0
	jal getint
pcrel630:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	ld a7, 112(sp)
	mulw t0, a7, a0
	addi a0, a1, %pcrel_lo(pcrel630)
	mv s1, a0
	sd t0, 104(sp)
	jal getarray
pcrel631:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel631)
	mv s2, a0
	jal getarray
	mv s3, a0
	li a0, 109
	jal _sysy_starttime
	ble s3, zero, label63
	ld t0, 104(sp)
	srliw a4, s4, 31
	addiw a2, t0, -20
	addiw a3, t0, -4
	add a0, s4, a4
pcrel632:
	auipc a4, %pcrel_hi(b)
	sraiw a1, a0, 1
	addi a0, a4, %pcrel_lo(pcrel632)
	mv a4, zero
.p2align 2
label3:
	sh2add t1, a4, s2
	mv t0, zero
	lw a5, 0(t1)
	j label5
.p2align 2
label156:
	mv a5, zero
	mv t2, a0
	mv t1, s1
	lw t0, 0(a0)
	li a5, 1
	sw t0, 0(s1)
	ld t0, 104(sp)
	bgt t0, a5, label36
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
.p2align 2
label5:
	subw t1, t0, a1
	addw t2, a1, t0
	mulw t3, s0, t0
	mv t4, zero
	subw t5, zero, a1
	sext.w t6, a1
	mv a6, t1
	mv s5, zero
	ld a7, 112(sp)
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
	addiw s4, t5, 1
	ble t6, s4, label26
.p2align 2
label520:
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label540
.p2align 2
label18:
	lui s7, 786432
	lui s6, 262144
	addw s5, s5, s7
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
	beq a5, s7, label58
	li s7, 3
	bne a5, s7, label503
.p2align 2
label258:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label261
.p2align 2
label45:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	bne s9, s10, label268
.p2align 2
label46:
	addiw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label45
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
	j label550
.p2align 2
label113:
	bge s5, zero, label405
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label564
.p2align 2
label405:
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	bne a5, s8, label542
.p2align 2
label281:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	bge s7, s9, label284
.p2align 2
label54:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label57
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label54
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label575
.p2align 2
label137:
	ld a7, 112(sp)
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
	bne a5, s7, label465
.p2align 2
label252:
	li s7, 1
	mv s8, zero
.p2align 2
label59:
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
	subw s11, s10, s11
	xor s10, s9, s11
	slliw s11, s8, 1
	sltiu s9, s10, 1
	addi s10, s11, 1
	subw s8, s10, s9
	lui s10, 262144
	mv s9, s7
	bge s7, s10, label312
	j label59
.p2align 2
label17:
	addw s5, s5, s6
	lui s6, 262144
	bgt s5, s6, label18
	j label113
.p2align 2
label261:
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
	bne a5, s7, label490
.p2align 2
label58:
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label564
.p2align 2
label26:
	addiw a6, a6, 1
	ble t2, a6, label27
	j label137
.p2align 2
label312:
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label564
.p2align 2
label575:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label564
.p2align 2
label57:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	xori s11, s10, 1
	sltiu s9, s11, 1
	addw s8, s8, s9
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label54
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label575
.p2align 2
label540:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label560
.p2align 2
label145:
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s5, zero
	ld a7, 112(sp)
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label540
.p2align 2
label560:
	li s7, 1
	beq a5, s7, label252
	j label541
.p2align 2
label465:
	li s7, 2
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label560
.p2align 2
label106:
	mv s6, zero
	beq a5, zero, label17
	li s7, 1
	beq a5, s7, label252
	j label404
.p2align 2
label570:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
	j label564
.p2align 2
label268:
	divw s10, s6, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label46
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label45
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label570
.p2align 2
label404:
	li s7, 2
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
.p2align 2
label541:
	li s7, 2
	beq a5, s7, label58
	j label561
.p2align 2
label284:
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label575
.p2align 2
label561:
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
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
	j label564
.p2align 2
label503:
	li s8, 4
	beq a5, s8, label281
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
	j label563
.p2align 2
label490:
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label26
.p2align 2
label550:
	or s6, a6, s4
	slt s8, s4, s0
	srliw s7, s6, 31
	andi s9, s7, 1
	xori s7, s8, 1
	or s6, a7, s9
	or s6, s6, s7
	bne s6, zero, label106
	j label570
.p2align 2
label542:
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
label563:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label17
.p2align 2
label564:
	li s7, 1
	beq a5, s7, label252
	j label541
.p2align 2
label159:
	mv t0, zero
.p2align 2
label34:
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
	bgt a3, t0, label34
	mv a5, t0
.p2align 2
label36:
	sh2add t2, a5, a0
	sh2add t1, a5, s1
	lw t0, 0(t2)
	addiw a5, a5, 1
	sw t0, 0(t1)
	ld t0, 104(sp)
	bgt t0, a5, label36
	addiw a4, a4, 1
	bgt s3, a4, label3
label63:
	li a0, 116
	jal _sysy_stoptime
	ld t0, 104(sp)
	mv a0, t0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 120
	ret
.p2align 2
label27:
	addw t6, t3, t4
	addiw t4, t4, 1
	sh2add t5, t6, a0
	sw s5, 0(t5)
	bgt s0, t4, label145
	addiw t0, t0, 1
	ld a7, 112(sp)
	bgt a7, t0, label150
	ld t0, 104(sp)
	ble t0, zero, label153
	li a5, 4
	ble t0, a5, label156
	li a5, 16
	ble a3, a5, label159
	mv a5, zero
.p2align 2
label32:
	sh2add t0, a5, a0
	sh2add t1, a5, s1
	lw t2, 0(t0)
	sw t2, 0(t1)
	lw t3, 4(t0)
	sw t3, 4(t1)
	lw t2, 8(t0)
	sw t2, 8(t1)
	lw t3, 12(t0)
	sw t3, 12(t1)
	lw t2, 16(t0)
	sw t2, 16(t1)
	lw t3, 20(t0)
	sw t3, 20(t1)
	lw t4, 24(t0)
	sw t4, 24(t1)
	lw t2, 28(t0)
	sw t2, 28(t1)
	lw t3, 32(t0)
	sw t3, 32(t1)
	lw t2, 36(t0)
	sw t2, 36(t1)
	lw t4, 40(t0)
	sw t4, 40(t1)
	lw t3, 44(t0)
	sw t3, 44(t1)
	lw t2, 48(t0)
	sw t2, 48(t1)
	lw t3, 52(t0)
	sw t3, 52(t1)
	lw t4, 56(t0)
	sw t4, 56(t1)
	lw t2, 60(t0)
	addiw t0, a5, 16
	sw t2, 60(t1)
	ble a2, t0, label34
	mv a5, t0
	j label32
.p2align 2
label150:
	subw t1, t0, a1
	addw t2, a1, t0
	mulw t3, s0, t0
	mv t4, zero
	subw t5, zero, a1
	sext.w t6, a1
	mv a6, t1
	mv s5, zero
	ld a7, 112(sp)
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
	beq a5, s7, label58
	li s7, 3
	beq a5, s7, label258
	li s8, 4
	beq a5, s8, label281
	addiw s4, t5, 1
	ble t6, s4, label26
	j label520
.p2align 2
label153:
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
