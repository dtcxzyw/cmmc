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
	addi sp, sp, -112
	sd s4, 8(sp)
	sd s0, 0(sp)
	sd s5, 104(sp)
	sd s1, 96(sp)
	sd s6, 88(sp)
	sd s2, 80(sp)
	sd s3, 72(sp)
	sd s8, 64(sp)
	sd s7, 56(sp)
	sd s9, 48(sp)
	sd s11, 40(sp)
	sd s10, 32(sp)
	sd ra, 24(sp)
	jal getint
	mv s4, a0
	jal getint
	sd a0, 16(sp)
	mv a7, a0
	jal getint
pcrel748:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel748)
	mv s1, a0
	jal getarray
pcrel749:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel749)
	mv s2, a0
	jal getarray
	mv s3, a0
	li a0, 109
	jal _sysy_starttime
	bgt s3, zero, label2
	j label62
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
	ld a7, 16(sp)
	slti s6, t1, 0
	slt s4, t1, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s8, t5, s0
	slti s7, t5, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, t1
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, t5, 1
	ble t6, s4, label19
.p2align 2
label586:
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	beq s6, zero, label625
.p2align 2
label103:
	mv s6, zero
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	li s7, 1
	beq a5, s7, label191
	j label626
.p2align 2
label23:
	li a5, 4
	bgt a3, a5, label135
	mv t0, zero
	mv t2, a0
	mv t1, s1
	lw a5, 0(a0)
	li t0, 1
	sw a5, 0(s1)
	bgt a3, t0, label24
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label62
.p2align 2
label135:
	mv a5, zero
	j label26
.p2align 2
label24:
	sh2add t2, t0, a0
	sh2add t1, t0, s1
	lw a5, 0(t2)
	addiw t0, t0, 1
	sw a5, 0(t1)
	bgt a3, t0, label24
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label62
.p2align 2
label26:
	sh2add t0, a5, a0
	sh2add t1, a5, s1
	lw t2, 0(t0)
	sw t2, 0(t1)
	lw t2, 4(t0)
	sw t2, 4(t1)
	lw t3, 8(t0)
	sw t3, 8(t1)
	lw t2, 12(t0)
	addiw t0, a5, 4
	sw t2, 12(t1)
	bgt a2, t0, label164
	sh2add t2, t0, a0
	sh2add t1, t0, s1
	lw a5, 0(t2)
	addiw t0, t0, 1
	sw a5, 0(t1)
	bgt a3, t0, label24
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label62
.p2align 2
label164:
	mv a5, t0
	j label26
label62:
	li a0, 116
	jal _sysy_stoptime
	ld a7, 16(sp)
	mv a1, s1
	mulw a0, a7, s0
	jal putarray
	mv a0, zero
	ld ra, 24(sp)
	ld s10, 32(sp)
	ld s11, 40(sp)
	ld s9, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s3, 72(sp)
	ld s2, 80(sp)
	ld s6, 88(sp)
	ld s1, 96(sp)
	ld s5, 104(sp)
	ld s0, 0(sp)
	ld s4, 8(sp)
	addi sp, sp, 112
	ret
.p2align 2
label29:
	addw s8, s5, s6
	lui s5, 262144
	bgt s8, s5, label34
	blt s8, zero, label32
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label673
.p2align 2
label32:
	lui s5, 262144
	addw s8, s8, s5
	blt s8, zero, label32
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label674
.p2align 2
label685:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	j label667
.p2align 2
label46:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label685
.p2align 2
label625:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
.p2align 2
label664:
	li s7, 1
	beq a5, s7, label191
.p2align 2
label626:
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	j label678
.p2align 2
label667:
	li s7, 1
	beq a5, s7, label191
	j label626
.p2align 2
label20:
	addw t6, t3, t4
	addiw t4, t4, 1
	sh2add t5, t6, a0
	sw s8, 0(t5)
	ble s0, t4, label21
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s5, zero
	ld a7, 16(sp)
	slti s6, t1, 0
	slt s4, t1, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s8, t5, s0
	slti s7, t5, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, t1
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, t5, 1
	ble t6, s4, label19
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label625
.p2align 2
label678:
	li s9, 4
	beq a5, s9, label201
	j label680
.p2align 2
label54:
	max s8, s5, s6
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label667
.p2align 2
label19:
	addiw a6, a6, 1
	ble t2, a6, label20
	mv s5, s8
	ld a7, 16(sp)
	slti s6, a6, 0
	slt s4, a6, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s8, t5, s0
	slti s7, t5, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, t5, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	j label664
.p2align 2
label197:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label691
.p2align 2
label673:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	j label667
.p2align 2
label34:
	lui s6, 786432
	lui s5, 262144
	addw s8, s8, s6
	bgt s8, s5, label34
	blt s8, zero, label32
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label673
.p2align 2
label674:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	j label667
.p2align 2
label191:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label58
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label698
.p2align 2
label613:
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label691
.p2align 2
label50:
	divw s10, s5, s7
	li s11, -2147483647
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label51
	divw s9, s6, s7
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label51
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	j label613
.p2align 2
label659:
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label698
.p2align 2
label58:
	divw s9, s5, s7
	srliw s10, s9, 31
	add s10, s9, s10
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	beq s9, s10, label59
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label58
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	j label659
.p2align 2
label691:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	j label667
.p2align 2
label680:
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	j label667
.p2align 2
label21:
	addiw t0, t0, 1
	ld a7, 16(sp)
	ble a7, t0, label22
	subw t1, t0, a1
	addw t2, a1, t0
	mulw t3, s0, t0
	mv t4, zero
	subw t5, zero, a1
	sext.w t6, a1
	mv a6, t1
	mv s5, zero
	slti s6, t1, 0
	slt s4, t1, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s8, t5, s0
	slti s7, t5, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, t1
	addw s7, t5, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, t5, 1
	ble t6, s4, label19
	j label586
.p2align 2
label201:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
.p2align 2
label646:
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label685
.p2align 2
label43:
	divw s9, s5, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label45
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	j label646
.p2align 2
label45:
	divw s9, s6, s7
	li s11, -2147483647
	and s10, s9, s11
	li s9, 1
	beq s10, s9, label46
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label43
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label685
.p2align 2
label698:
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	j label667
.p2align 2
label59:
	slliw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label58
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label698
.p2align 2
label51:
	slliw s9, s8, 1
	slliw s7, s7, 1
	addiw s8, s9, 1
	lui s9, 262144
	blt s7, s9, label50
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, s8
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	mulw s6, s0, a6
	addw s7, s4, s6
	sh2add s8, s7, s1
	lw s6, 0(s8)
	beq a5, zero, label29
	li s7, 1
	beq a5, s7, label191
	li s8, 2
	beq a5, s8, label54
	li s7, 3
	beq a5, s7, label197
	li s9, 4
	beq a5, s9, label201
	mv s8, zero
	addiw s4, s4, 1
	ble t6, s4, label19
	mv s5, zero
	slt s8, s4, s0
	slti s7, s4, 0
	xori s6, s8, 1
	or s8, s6, s7
	or s6, a7, s8
	bne s6, zero, label103
	j label691
.p2align 2
label22:
	bgt a3, zero, label23
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label62
label2:
	ld a7, 16(sp)
	srliw a4, s4, 31
	add a0, s4, a4
pcrel750:
	auipc a4, %pcrel_hi(b)
	sraiw a1, a0, 1
	mulw a3, a7, s0
	addi a0, a4, %pcrel_lo(pcrel750)
	addi a2, a3, -4
	mv a4, zero
	j label3
