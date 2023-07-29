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
	sd s3, 32(sp)
	sd s0, 0(sp)
	sd s5, 8(sp)
	sd s6, 112(sp)
	sd s1, 104(sp)
	sd s2, 96(sp)
	sd s7, 88(sp)
	sd s8, 80(sp)
	sd s9, 72(sp)
	sd s11, 64(sp)
	sd s10, 56(sp)
	sd ra, 48(sp)
	jal getint
	mv s4, a0
	jal getint
	sd a0, 40(sp)
	mv s3, a0
	jal getint
pcrel793:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel793)
	sd a0, 24(sp)
	mv s6, a0
	jal getarray
pcrel794:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel794)
	mv s1, a0
	jal getarray
	mv s2, a0
	li a0, 109
	jal _sysy_starttime
	bgt s2, zero, label2
	j label65
.p2align 2
label29:
	bgt a3, zero, label30
	addiw a5, a5, 1
	bgt s2, a5, label3
label65:
	li a0, 116
	jal _sysy_stoptime
	ld s3, 40(sp)
	ld s6, 24(sp)
	mv a1, s6
	mulw a0, s3, s0
	jal putarray
	ld ra, 48(sp)
	mv a0, zero
	ld s10, 56(sp)
	ld s11, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s7, 88(sp)
	ld s2, 96(sp)
	ld s1, 104(sp)
	ld s6, 112(sp)
	ld s5, 8(sp)
	ld s0, 0(sp)
	ld s3, 32(sp)
	ld s4, 16(sp)
	addi sp, sp, 120
	ret
.p2align 2
label3:
	sh2add t2, a5, s1
	mv t1, zero
	lw t0, 0(t2)
	subw t2, zero, a1
	sext.w t3, a1
	mv t4, zero
	mv t5, zero
	subw t6, zero, a1
	sext.w a6, a1
	mv a7, t2
	mv s5, zero
	ld s3, 40(sp)
	slti s7, t2, 0
	slt s6, t2, s3
	xori s4, s6, 1
	or s3, s4, s7
	mv s4, t6
	slt s7, t6, s0
	slti s8, t6, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, t2
	ld s6, 24(sp)
	addw s7, t6, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, t6, 1
	ble a6, s4, label26
.p2align 2
label639:
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	beq s6, zero, label676
.p2align 2
label108:
	mv s6, zero
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	li s7, 1
	beq t0, s7, label254
	j label677
.p2align 2
label30:
	li t1, 4
	bgt a3, t1, label33
	mv t0, zero
	mv t2, a0
	lw t1, 0(a0)
	ld s6, 24(sp)
	mv t2, s6
	li t0, 1
	sw t1, 0(s6)
	bgt a3, t0, label31
	addiw a5, a5, 1
	bgt s2, a5, label3
	j label65
.p2align 2
label434:
	mv t1, zero
	j label34
.p2align 2
label31:
	sh2add t2, t0, a0
	lw t1, 0(t2)
	ld s6, 24(sp)
	sh2add t2, t0, s6
	addiw t0, t0, 1
	sw t1, 0(t2)
	bgt a3, t0, label31
	addiw a5, a5, 1
	bgt s2, a5, label3
	j label65
.p2align 2
label33:
	li t2, 16
	bgt a4, t2, label172
	j label434
.p2align 2
label34:
	sh2add t2, t1, a0
	lw t3, 0(t2)
	ld s6, 24(sp)
	sh2add t0, t1, s6
	addiw t1, t1, 4
	sw t3, 0(t0)
	lw t3, 4(t2)
	sw t3, 4(t0)
	lw t4, 8(t2)
	sw t4, 8(t0)
	lw t2, 12(t2)
	sw t2, 12(t0)
	bgt a4, t1, label34
	mv t0, t1
	sh2add t2, t1, a0
	lw t1, 0(t2)
	sh2add t2, t0, s6
	addiw t0, t0, 1
	sw t1, 0(t2)
	bgt a3, t0, label31
	addiw a5, a5, 1
	bgt s2, a5, label3
	j label65
.p2align 2
label254:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
.p2align 2
label690:
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label727
.p2align 2
label43:
	divw s9, s5, s7
	srliw s11, s9, 31
	add s10, s9, s11
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	beq s9, s10, label44
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	j label690
.p2align 2
label277:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label59
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label741
.p2align 2
label20:
	lui s5, 262144
	addw s8, s8, s5
	blt s8, zero, label20
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label718
.p2align 2
label26:
	addiw a7, a7, 1
	ble t3, a7, label27
	mv s5, s8
	ld s3, 40(sp)
	slti s7, a7, 0
	slt s6, a7, s3
	xori s4, s6, 1
	or s3, s4, s7
	mv s4, t6
	slt s7, t6, s0
	slti s8, t6, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, t6, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, t6, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	j label713
.p2align 2
label676:
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
.p2align 2
label713:
	li s7, 1
	beq t0, s7, label254
.p2align 2
label677:
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	j label726
.p2align 2
label27:
	addw a6, t4, t5
	addiw t5, t5, 1
	sh2add t6, a6, a0
	sw s8, 0(t6)
	ble s0, t5, label28
	subw t6, t5, a1
	addw a6, a1, t5
	mv a7, t2
	mv s5, zero
	ld s3, 40(sp)
	slti s7, t2, 0
	slt s6, t2, s3
	xori s4, s6, 1
	or s3, s4, s7
	mv s4, t6
	slt s7, t6, s0
	slti s8, t6, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, t2
	ld s6, 24(sp)
	addw s7, t6, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, t6, 1
	ble a6, s4, label26
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label676
.p2align 2
label726:
	li s9, 4
	beq t0, s9, label281
	j label731
.p2align 2
label17:
	addw s8, s5, s6
	lui s5, 262144
	bgt s8, s5, label22
	blt s8, zero, label20
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
.p2align 2
label717:
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	j label722
.p2align 2
label22:
	lui s6, 786432
	lui s5, 262144
	addw s8, s8, s6
	bgt s8, s5, label22
	blt s8, zero, label20
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label717
.p2align 2
label722:
	li s7, 1
	beq t0, s7, label254
	j label677
.p2align 2
label733:
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	j label722
.p2align 2
label63:
	max s8, s5, s6
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	j label722
.p2align 2
label718:
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	j label722
.p2align 2
label44:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
.p2align 2
label727:
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	j label722
.p2align 2
label731:
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	j label733
.p2align 2
label281:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label52
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
.p2align 2
label699:
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label736
.p2align 2
label52:
	divw s9, s5, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label53
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label52
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	j label699
.p2align 2
label667:
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
.p2align 2
label741:
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	j label722
.p2align 2
label59:
	divw s10, s5, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label62
	divw s10, s6, s7
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label62
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label59
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	j label667
.p2align 2
label62:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label59
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	j label741
.p2align 2
label53:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label54
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label52
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	j label699
.p2align 2
label54:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label52
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, s8
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, s4, 1
	ble a6, s4, label26
	mv s5, zero
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
.p2align 2
label736:
	mulw s9, s0, a7
	ld s6, 24(sp)
	addw s7, s4, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	j label722
.p2align 2
label28:
	addiw t1, t1, 1
	ld s3, 40(sp)
	ble s3, t1, label29
	subw t2, t1, a1
	addw t3, a1, t1
	mulw t4, s0, t1
	mv t5, zero
	subw t6, zero, a1
	sext.w a6, a1
	mv a7, t2
	mv s5, zero
	slti s7, t2, 0
	slt s6, t2, s3
	xori s4, s6, 1
	or s3, s4, s7
	mv s4, t6
	slt s7, t6, s0
	slti s8, t6, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, s3, s7
	bne s6, zero, label108
	mulw s9, s0, t2
	ld s6, 24(sp)
	addw s7, t6, s9
	sh2add s8, s7, s6
	lw s6, 0(s8)
	beq t0, zero, label17
	li s7, 1
	beq t0, s7, label254
	li s8, 2
	beq t0, s8, label63
	li s7, 3
	beq t0, s7, label277
	li s9, 4
	beq t0, s9, label281
	mv s8, zero
	addiw s4, t6, 1
	ble a6, s4, label26
	j label639
.p2align 2
label172:
	mv t0, zero
.p2align 2
label36:
	sh2add t1, t0, a0
	lw t3, 0(t1)
	ld s6, 24(sp)
	sh2add t2, t0, s6
	sw t3, 0(t2)
	lw t3, 4(t1)
	sw t3, 4(t2)
	lw t4, 8(t1)
	sw t4, 8(t2)
	lw t3, 12(t1)
	sw t3, 12(t2)
	lw t4, 16(t1)
	sw t4, 16(t2)
	lw t3, 20(t1)
	sw t3, 20(t2)
	lw t4, 24(t1)
	sw t4, 24(t2)
	lw t3, 28(t1)
	sw t3, 28(t2)
	lw t4, 32(t1)
	sw t4, 32(t2)
	lw t3, 36(t1)
	sw t3, 36(t2)
	lw t4, 40(t1)
	sw t4, 40(t2)
	lw t3, 44(t1)
	sw t3, 44(t2)
	lw t4, 48(t1)
	sw t4, 48(t2)
	lw t3, 52(t1)
	sw t3, 52(t2)
	lw t4, 56(t1)
	sw t4, 56(t2)
	lw t3, 60(t1)
	addiw t1, t0, 16
	sw t3, 60(t2)
	ble a2, t1, label34
	mv t0, t1
	j label36
label2:
	ld s3, 40(sp)
	srliw a0, s4, 31
pcrel795:
	auipc a5, %pcrel_hi(b)
	add t0, s4, a0
	addi a0, a5, %pcrel_lo(pcrel795)
	sraiw a1, t0, 1
	mulw a3, s3, s0
	mv a5, zero
	addi a2, a3, -20
	addi a4, a3, -4
	j label3
