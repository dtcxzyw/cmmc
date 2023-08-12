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
	# stack usage: CalleeArg[0] Local[0] RegSpill[48] CalleeSaved[104]
	addi sp, sp, -152
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
pcrel491:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s3, a1, %pcrel_lo(pcrel491)
	sd s3, 120(sp)
	mv a0, s3
	jal getarray
pcrel492:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel492)
	mv a0, s0
	jal getarray
	sd a0, 128(sp)
	mv t1, a0
	li a0, 109
	jal _sysy_starttime
	ld s4, 104(sp)
	srliw a0, s1, 31
pcrel493:
	auipc a2, %pcrel_hi(b)
	mv a5, s0
	mv t0, zero
	add a1, s1, a0
	addi a4, a2, %pcrel_lo(pcrel493)
	lui a0, 262144
	sraiw a3, a1, 1
	ld s7, 112(sp)
	lui a1, 786432
	mulw t2, s4, s7
	addi t4, t2, -1
	sd t2, 136(sp)
	lui t2, 524288
	sd t4, 144(sp)
	addiw a2, t2, 1
	lw t1, 0(s0)
	mv t2, a4
	mv t3, zero
	subw t4, zero, a3
	mv t5, a3
	mv t6, a4
	mv a6, zero
	subw a7, zero, a3
	mv s0, a3
	mv s1, t4
	mv s5, zero
	j label11
.p2align 2
label392:
	li s7, 2
	beq t1, s7, label57
	li s8, 3
	bne t1, s8, label426
.p2align 2
label217:
	li s7, 1
	mv s8, zero
	li s11, 1
	divw s10, s5, s7
	and s9, s10, a2
	bne s9, s11, label361
.p2align 2
label244:
	li s10, 1
	sh1add s8, s8, s10
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a0, label251
.p2align 2
label66:
	divw s10, s5, s7
	li s11, 1
	and s9, s10, a2
	beq s9, s11, label244
	divw s10, s6, s7
	and s11, s10, a2
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	blt s9, a0, label66
	mv s5, s8
	addiw s4, s4, 1
	ble s0, s4, label402
.p2align 2
label51:
	addi s3, s3, 4
	or s7, s1, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s9, s4, s7
	or s6, s2, s8
	xori s10, s9, 1
	or s8, s6, s10
	beq s8, zero, label355
.p2align 2
label102:
	mv s6, zero
	bne t1, zero, label105
.p2align 2
label20:
	addw s5, s5, s6
	ble s5, a0, label21
.p2align 2
label25:
	addw s5, s5, a1
	bgt s5, a0, label25
	bge s5, zero, label350
.p2align 2
label23:
	addw s5, s5, a0
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	ble t5, s1, label371
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
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label102
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	li s8, 1
	beq t1, s8, label194
	li s7, 2
	beq t1, s7, label57
	li s8, 3
	beq t1, s8, label217
.p2align 2
label420:
	li s7, 4
	beq t1, s7, label221
.p2align 2
label437:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label51
.p2align 2
label447:
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	j label448
.p2align 2
label355:
	ld s7, 112(sp)
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	li s8, 1
	bne t1, s8, label392
.p2align 2
label194:
	li s7, 1
	mv s8, zero
.p2align 2
label53:
	divw s11, s5, s7
	srliw s9, s11, 31
	add s10, s11, s9
	andi s9, s10, -2
	divw s10, s6, s7
	subw s9, s11, s9
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s10, s9, s10
	slliw s9, s8, 1
	sltiu s11, s10, 1
	addi s10, s9, 1
	slliw s9, s7, 1
	subw s8, s10, s11
	mv s7, s9
	blt s9, a0, label53
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
.p2align 2
label105:
	li s8, 1
	beq t1, s8, label194
	li s7, 2
	bne t1, s7, label369
.p2align 2
label57:
	max s5, s5, s6
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
.p2align 2
label371:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	ble s7, a6, label389
.p2align 2
label31:
	addi t6, t6, 4
	subw a7, a6, a3
	addw s0, a3, a6
	mv s1, t4
	mv s5, zero
	or s7, t4, a7
	ld s4, 104(sp)
	srliw s9, s7, 31
	ld s3, 120(sp)
	slt s6, t4, s4
	andi s8, s9, 1
	sh2add s3, a7, s3
	mv s4, a7
	xori s2, s6, 1
	ld s7, 112(sp)
	or s6, s2, s8
	slt s9, a7, s7
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label102
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	li s8, 1
	beq t1, s8, label194
	li s7, 2
	beq t1, s7, label57
	li s8, 3
	beq t1, s8, label217
	li s7, 4
	beq t1, s7, label221
	addiw s4, a7, 1
	bgt s0, s4, label51
	j label447
.p2align 2
label389:
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	ld t2, 136(sp)
	ble t2, zero, label34
.p2align 2
label37:
	li t1, 1
	ld t2, 136(sp)
	ble t2, t1, label159
	mv t1, a4
	mv t2, zero
	j label39
.p2align 2
label42:
	addi t1, t1, 8
.p2align 2
label39:
	ld s3, 120(sp)
	lw t4, 0(t1)
	sh2add t3, t2, s3
	addiw t2, t2, 2
	sw t4, 0(t3)
	lw t5, 4(t1)
	sw t5, 4(t3)
	ld t4, 144(sp)
	bgt t4, t2, label42
	mv t3, t2
	ld t2, 136(sp)
	bgt t2, t3, label45
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label35
	j label36
.p2align 2
label402:
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	ble s4, t3, label446
.p2align 2
label50:
	ld s7, 112(sp)
	subw t4, t3, a3
	addw t5, a3, t3
	mv a6, zero
	subw a7, zero, a3
	sext.w s0, a3
	mv s5, zero
	sh2add t2, s7, t2
	mv s1, t4
	or s7, t4, a7
	mv t6, t2
	srliw s9, s7, 31
	ld s4, 104(sp)
	andi s8, s9, 1
	ld s3, 120(sp)
	slt s6, t4, s4
	ld s7, 112(sp)
	sh2add s3, a7, s3
	mv s4, a7
	xori s2, s6, 1
	slt s9, a7, s7
	or s6, s2, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label102
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	li s8, 1
	beq t1, s8, label194
	li s7, 2
	beq t1, s7, label57
	li s8, 3
	beq t1, s8, label217
	li s7, 4
	beq t1, s7, label221
	j label437
.p2align 2
label369:
	li s8, 3
	beq t1, s8, label217
	li s7, 4
	bne t1, s7, label405
.p2align 2
label221:
	li s7, 1
	mv s8, zero
	j label60
.p2align 2
label226:
	mv s10, zero
	sh1add s8, s8, zero
	slliw s9, s7, 1
	mv s7, s9
	bge s9, a0, label363
.p2align 2
label60:
	divw s10, s5, s7
	li s11, 1
	and s9, s10, a2
	bne s9, s11, label226
	divw s11, s6, s7
	and s9, s11, a2
	xori s11, s9, 1
	sltiu s10, s11, 1
	sh1add s8, s8, s10
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a0, label60
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	j label417
.p2align 2
label49:
	addi t1, t1, 4
	mv t2, t3
.p2align 2
label46:
	ld s3, 120(sp)
	addiw t3, t2, 1
	lw t5, 0(t1)
	sh2add t4, t2, s3
	sw t5, 0(t4)
	ld t2, 136(sp)
	bgt t2, t3, label49
	addiw t0, t0, 1
	ld t1, 128(sp)
	ble t1, t0, label36
.p2align 2
label35:
	addi a5, a5, 4
	mv t2, a4
	mv t3, zero
	subw t4, zero, a3
	sext.w t5, a3
	mv a6, zero
	subw a7, zero, a3
	sext.w s0, a3
	mv s5, zero
	mv s1, t4
	or s7, t4, a7
	lw t1, 0(a5)
	srliw s9, s7, 31
	mv t6, a4
	andi s8, s9, 1
	ld s4, 104(sp)
	ld s3, 120(sp)
	slt s6, t4, s4
	ld s7, 112(sp)
	sh2add s3, a7, s3
	mv s4, a7
	xori s2, s6, 1
	slt s9, a7, s7
	or s6, s2, s8
	xori s10, s9, 1
	or s8, s6, s10
	bne s8, zero, label102
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label20
	li s8, 1
	beq t1, s8, label194
	li s7, 2
	beq t1, s7, label57
	li s8, 3
	beq t1, s8, label217
	j label420
.p2align 2
label361:
	divw s10, s6, s7
	and s11, s10, a2
	xori s9, s11, 1
	sltiu s10, s9, 1
	slliw s9, s7, 1
	sh1add s8, s8, s10
	mv s7, s9
	blt s9, a0, label66
.p2align 2
label251:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
.p2align 2
label363:
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw s8, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
label417:
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
.p2align 2
label426:
	li s7, 4
	beq t1, s7, label221
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw zero, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	j label448
.p2align 2
label405:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	addiw a6, a6, 1
	sw zero, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
.p2align 2
label448:
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
.p2align 2
label21:
	blt s5, zero, label23
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
	j label370
.p2align 2
label350:
	addiw s4, s4, 1
	bgt s0, s4, label51
	addiw s1, s1, 1
	bgt t5, s1, label11
label370:
	addiw a6, a6, 1
	sw s5, 0(t6)
	ld s7, 112(sp)
	bgt s7, a6, label31
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label50
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
label159:
	mv t3, zero
	ld t2, 136(sp)
	ble t2, zero, label175
.p2align 2
label45:
	sh2add t1, t3, a4
	mv t2, t3
	j label46
label36:
	li a0, 116
	jal _sysy_stoptime
	ld s3, 120(sp)
	ld t2, 136(sp)
	mv a0, t2
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
	addi sp, sp, 152
	ret
label34:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label35
	j label36
label446:
	ld t2, 136(sp)
	bgt t2, zero, label37
	j label34
label175:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label35
	j label36
