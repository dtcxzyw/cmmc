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
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s1, a0
	jal getint
	sd a0, 104(sp)
	mv s4, a0
	jal getint
pcrel604:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s3, a1, %pcrel_lo(pcrel604)
	sd s3, 120(sp)
	mv a0, s3
	jal getarray
pcrel605:
	auipc a1, %pcrel_hi(kernelid)
	addi s0, a1, %pcrel_lo(pcrel605)
	mv a0, s0
	jal getarray
	sd a0, 128(sp)
	mv t1, a0
	li a0, 109
	jal _sysy_starttime
	lui a3, 524288
	mv t0, zero
	mv a4, s0
	li a5, 4
	srliw a1, s1, 31
	li a2, 2
	ld s4, 104(sp)
	add a0, s1, a1
	ld s7, 112(sp)
pcrel606:
	auipc a1, %pcrel_hi(b)
	sraiw s2, a0, 1
	li a0, 1
	mulw t4, s4, s7
	addi t5, t4, -3
	sd t4, 136(sp)
	addi t4, t4, -18
	sd t5, 144(sp)
	sd t4, 152(sp)
	addi t4, a1, %pcrel_lo(pcrel606)
	sd s2, 160(sp)
	addiw a1, a3, 1
	sd t4, 168(sp)
	li a3, 3
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
label138:
	mv s7, s11
.p2align 2
label22:
	divw s10, s5, s7
	srliw s9, s10, 31
	add s11, s10, s9
	andi s9, s11, -2
	divw s11, s6, s7
	subw s9, s10, s9
	srliw s10, s11, 31
	add s10, s11, s10
	andi s10, s10, -2
	subw s10, s11, s10
	xor s11, s9, s10
	sltiu s10, s11, 1
	slliw s11, s8, 1
	addi s9, s11, 1
	subw s8, s9, s10
	slliw s9, s7, 1
	lui s7, 262144
	mv s11, s9
	blt s9, s7, label138
	mv s5, s8
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	ble t5, s1, label473
.p2align 2
label11:
	ld s4, 104(sp)
	ld s3, 120(sp)
	slt s6, s1, s4
	sh2add s3, a7, s3
	mv s4, a7
	xori s2, s6, 1
	or s7, s1, a7
	srliw s8, s7, 31
	ld s7, 112(sp)
	andi s9, s8, 1
	slt s8, a7, s7
	or s6, s2, s9
	xori s9, s8, 1
	or s10, s6, s9
	bne s10, zero, label112
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label75
	beq t1, a0, label124
	bne t1, a2, label511
.p2align 2
label26:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s0, s4, label448
.p2align 2
label43:
	addi s3, s3, 4
	or s7, s1, s4
	srliw s8, s7, 31
	ld s7, 112(sp)
	andi s9, s8, 1
	slt s8, s4, s7
	or s6, s2, s9
	xori s9, s8, 1
	or s10, s6, s9
	beq s10, zero, label459
.p2align 2
label112:
	mv s6, zero
	bne t1, zero, label444
.p2align 2
label75:
	addw s5, s5, s6
	lui s7, 262144
	ble s5, s7, label324
.p2align 2
label76:
	lui s6, 786432
	lui s7, 262144
	addw s5, s5, s6
	bgt s5, s7, label76
	bge s5, zero, label333
.p2align 2
label80:
	lui s7, 262144
	addw s5, s5, s7
	blt s5, zero, label80
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	ble s4, t3, label528
.p2align 2
label74:
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
	srliw s8, s7, 31
	mv s4, a7
	xori s2, s6, 1
	ld s7, 112(sp)
	andi s9, s8, 1
	slt s8, a7, s7
	or s6, s2, s9
	xori s9, s8, 1
	or s10, s6, s9
	bne s10, zero, label112
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label75
	beq t1, a0, label124
	beq t1, a2, label26
	beq t1, a3, label147
	beq t1, a5, label151
.p2align 2
label547:
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label43
.p2align 2
label557:
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
label549:
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	j label559
.p2align 2
label528:
	ld t4, 136(sp)
	ble t4, zero, label49
.p2align 2
label52:
	ld t4, 136(sp)
	ble t4, a3, label220
	ld t5, 144(sp)
	li t1, 15
	ble t5, t1, label224
	ld t4, 168(sp)
	mv t2, zero
	mv t1, t4
.p2align 2
label63:
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
	lw t6, 20(t1)
	sw t6, 20(t3)
	lw t5, 24(t1)
	sw t5, 24(t3)
	lw t4, 28(t1)
	sw t4, 28(t3)
	lw t5, 32(t1)
	sw t5, 32(t3)
	lw t4, 36(t1)
	sw t4, 36(t3)
	lw t5, 40(t1)
	sw t5, 40(t3)
	lw t6, 44(t1)
	sw t6, 44(t3)
	lw t4, 48(t1)
	sw t4, 48(t3)
	lw t5, 52(t1)
	sw t5, 52(t3)
	lw t4, 56(t1)
	sw t4, 56(t3)
	lw t5, 60(t1)
	sw t5, 60(t3)
	ld t4, 152(sp)
	ble t4, t2, label301
	addi t1, t1, 64
	j label63
.p2align 2
label444:
	bne t1, a0, label471
.p2align 2
label124:
	mv s7, a0
	mv s8, zero
	j label22
.p2align 2
label459:
	ld s7, 112(sp)
	mulw s8, s7, s1
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label75
	beq t1, a0, label124
	beq t1, a2, label26
	bne t1, a3, label542
.p2align 2
label147:
	mv s8, a0
	mv s7, zero
	divw s10, s5, a0
	and s9, s10, a1
	beq s9, a0, label174
	divw s11, s6, a0
	and s10, s11, a1
	xori s9, s10, 1
	slliw s10, a0, 1
	sltiu s11, s9, 1
	mv s8, s10
	mv s9, s11
	lui s7, 262144
	blt s10, s7, label182
	j label181
.p2align 2
label456:
	divw s11, s6, s8
	and s10, s11, a1
	xori s9, s10, 1
	slliw s10, s8, 1
	sltiu s11, s9, 1
	mv s8, s10
	sh1add s9, s7, s11
	lui s7, 262144
	bge s10, s7, label483
.p2align 2
label182:
	mv s7, s9
	divw s10, s5, s8
	and s9, s10, a1
	bne s9, a0, label456
.p2align 2
label174:
	mv s11, a0
	sh1add s9, s7, a0
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label182
.p2align 2
label181:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
.p2align 2
label471:
	beq t1, a2, label26
	beq t1, a3, label147
	beq t1, a5, label151
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw zero, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
label559:
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
.p2align 2
label473:
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	ble s7, a6, label495
.p2align 2
label46:
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
	srliw s8, s7, 31
	ld s7, 112(sp)
	andi s9, s8, 1
	slt s8, a7, s7
	or s6, s2, s9
	xori s9, s8, 1
	or s10, s6, s9
	bne s10, zero, label112
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label75
	beq t1, a0, label124
	beq t1, a2, label26
	beq t1, a3, label147
	beq t1, a5, label151
	addiw s4, a7, 1
	bgt s0, s4, label43
	j label557
.p2align 2
label301:
	mv t3, t2
	ld t5, 144(sp)
	ble t5, t2, label464
.p2align 2
label57:
	ld t4, 168(sp)
	mv t2, t3
	sh2add t1, t3, t4
	j label58
.p2align 2
label61:
	addi t1, t1, 16
.p2align 2
label58:
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
	bgt t5, t2, label61
	ld t4, 136(sp)
	ble t4, t2, label463
.p2align 2
label69:
	ld t4, 168(sp)
	sh2add t1, t2, t4
	j label70
.p2align 2
label73:
	addi t1, t1, 4
.p2align 2
label70:
	lw t3, 0(t1)
	ld s3, 120(sp)
	sh2add t5, t2, s3
	addiw t2, t2, 1
	sw t3, 0(t5)
	ld t4, 136(sp)
	bgt t4, t2, label73
	addiw t0, t0, 1
	ld t1, 128(sp)
	ble t1, t0, label50
.p2align 2
label51:
	addi a4, a4, 4
	mv t3, zero
	mv a6, zero
	mv s5, zero
	lw t1, 0(a4)
	ld t4, 168(sp)
	ld s2, 160(sp)
	mv t2, t4
	ld s4, 104(sp)
	subw a7, zero, s2
	sext.w s0, s2
	sext.w t5, s2
	mv t6, t4
	subw t4, zero, s2
	ld s3, 120(sp)
	or s7, t4, a7
	slt s6, t4, s4
	mv s1, t4
	sh2add s3, a7, s3
	srliw s8, s7, 31
	mv s4, a7
	xori s2, s6, 1
	ld s7, 112(sp)
	andi s9, s8, 1
	slt s8, a7, s7
	or s6, s2, s9
	xori s9, s8, 1
	or s10, s6, s9
	bne s10, zero, label112
	mulw s8, s7, t4
	sh2add s9, s8, s3
	lw s6, 0(s9)
	beq t1, zero, label75
	beq t1, a0, label124
	beq t1, a2, label26
	beq t1, a3, label147
	j label529
.p2align 2
label511:
	beq t1, a3, label147
.p2align 2
label529:
	bne t1, a5, label547
.p2align 2
label151:
	mv s8, a0
	mv s7, zero
	divw s9, s5, a0
	and s10, s9, a1
	beq s10, a0, label32
	mv s11, zero
	mv s9, zero
	slliw s10, a0, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label168
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw zero, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	j label520
.p2align 2
label32:
	divw s10, s6, s8
	and s11, s10, a1
	xori s9, s11, 1
	sltiu s11, s9, 1
	sh1add s9, s7, s11
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	bge s10, s7, label167
.p2align 2
label168:
	mv s7, s9
	divw s9, s5, s8
	and s10, s9, a1
	beq s10, a0, label32
	mv s11, zero
	sh1add s9, s7, zero
	slliw s10, s8, 1
	lui s7, 262144
	mv s8, s10
	blt s10, s7, label168
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	j label520
.p2align 2
label448:
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
.p2align 2
label495:
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
.p2align 2
label483:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
.p2align 2
label542:
	beq t1, a5, label151
	mv s5, zero
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw zero, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	j label549
.p2align 2
label167:
	mv s5, s9
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s9, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
label520:
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
.p2align 2
label324:
	blt s5, zero, label80
.p2align 2
label333:
	addiw s4, s4, 1
	bgt s0, s4, label43
	addiw s1, s1, 1
	bgt t5, s1, label11
	sw s5, 0(t6)
	addiw a6, a6, 1
	ld s7, 112(sp)
	bgt s7, a6, label46
	addiw t3, t3, 1
	ld s4, 104(sp)
	bgt s4, t3, label74
	ld t4, 136(sp)
	bgt t4, zero, label52
	j label49
label224:
	mv t3, zero
	mv t2, zero
	ld t5, 144(sp)
	bgt t5, zero, label57
	ld t4, 136(sp)
	bgt t4, zero, label69
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label51
	j label50
.p2align 2
label464:
	ld t4, 136(sp)
	bgt t4, t2, label69
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label51
	j label50
label220:
	mv t2, zero
	ld t4, 136(sp)
	bgt t4, zero, label69
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label51
label50:
	li a0, 116
	jal _sysy_stoptime
	ld s3, 120(sp)
	ld t4, 136(sp)
	mv a0, t4
	mv a1, s3
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s4, 24(sp)
	ld s7, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s2, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
label49:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label51
	j label50
.p2align 2
label463:
	addiw t0, t0, 1
	ld t1, 128(sp)
	bgt t1, t0, label51
	j label50
