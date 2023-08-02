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
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s7, 40(sp)
	sd s3, 48(sp)
	sd s2, 56(sp)
	sd s4, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	sd a0, 104(sp)
	mv s6, a0
	jal getint
pcrel612:
	auipc a1, %pcrel_hi(a)
	mv s7, a0
	sd a0, 112(sp)
	addi s6, a1, %pcrel_lo(pcrel612)
	sd s6, 120(sp)
	mv a0, s6
	jal getarray
pcrel613:
	auipc a1, %pcrel_hi(kernelid)
	addi s1, a1, %pcrel_lo(pcrel613)
	mv a0, s1
	jal getarray
	sd a0, 128(sp)
	mv t3, a0
	li a0, 109
	jal _sysy_starttime
	li t1, 16
	mv t2, zero
	mv a4, s1
	li a3, 2
	ld s6, 104(sp)
	srliw a0, s0, 31
	li t0, 4
	lui a5, 524288
	ld s7, 112(sp)
	add a1, s0, a0
	addiw a2, a5, 1
pcrel614:
	auipc a0, %pcrel_hi(b)
	sraiw s3, a1, 1
	li a5, 3
	addi s0, a0, %pcrel_lo(pcrel614)
	mulw t6, s6, s7
	li a1, 1
	lui a0, 262144
	addi a6, t6, -4
	sd t6, 136(sp)
	addi t6, t6, -20
	sd a6, 144(sp)
	sd t6, 152(sp)
	sd s3, 160(sp)
	sd s0, 168(sp)
	lw t3, 0(s1)
	mv t4, zero
	mv a7, zero
	mv t6, s3
	subw t5, zero, s3
	mv a6, zero
	mv s2, t5
	mv s5, zero
	mv s1, s3
	subw s0, zero, s3
	mv s4, s0
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s0, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	j label538
.p2align 2
label105:
	mv s6, zero
	bne t3, zero, label435
.p2align 2
label18:
	addw s5, s5, s6
	ble s5, a0, label118
.p2align 2
label19:
	lui s6, 786432
	addw s5, s5, s6
	bgt s5, a0, label19
	bge s5, zero, label127
.p2align 2
label23:
	addw s5, s5, a0
	blt s5, zero, label23
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
.p2align 2
label460:
	beq t3, a1, label263
	j label481
.p2align 2
label27:
	addiw s2, s2, 1
	bgt t6, s2, label142
	addw s1, a6, a7
	ld s0, 168(sp)
	addiw a7, a7, 1
	sh2add s2, s1, s0
	sw s5, 0(s2)
	ld s7, 112(sp)
	ble s7, a7, label29
	ld s3, 160(sp)
	mv s2, t5
	mv s5, zero
	addw s1, s3, a7
	subw s0, a7, s3
	ld s6, 104(sp)
	mv s4, s0
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s0, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	j label502
.p2align 2
label263:
	mv s7, a1
	mv s8, zero
	j label73
.p2align 2
label272:
	mv s8, zero
	mv s7, a1
	blt a1, a0, label68
	j label296
.p2align 2
label73:
	divw s11, s5, s7
	srliw s10, s11, 31
	add s9, s11, s10
	andi s10, s9, -2
	subw s9, s11, s10
	divw s10, s6, s7
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s11, s10, s11
	xor s10, s9, s11
	sltiu s11, s10, 1
	slliw s10, s8, 1
	addi s9, s10, 1
	subw s8, s9, s11
	slliw s9, s7, 1
	mv s7, s9
	blt s9, a0, label73
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label27
	j label558
label533:
	beq t3, a5, label272
	j label520
.p2align 2
label68:
	divw s11, s5, s7
	slliw s9, s8, 1
	and s10, s11, a2
	bne s10, a1, label303
.p2align 2
label69:
	addiw s8, s9, 1
	slliw s7, s7, 1
	blt s7, a0, label68
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	j label533
label512:
	beq t3, a3, label55
	j label533
.p2align 2
label303:
	divw s10, s6, s7
	and s11, s10, a2
	beq s11, a1, label69
	mv s8, s9
	slliw s7, s7, 1
	blt s7, a0, label68
	mv s5, s9
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	j label512
label567:
	ld s7, 112(sp)
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	j label557
.p2align 2
label142:
	ld s6, 104(sp)
	mv s4, s0
	slt s7, s2, s6
	xori s3, s7, 1
	or s7, s2, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s0, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	mv s5, zero
	addiw s4, s0, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	j label567
.p2align 2
label435:
	beq t3, a1, label263
	bne t3, a3, label478
.p2align 2
label55:
	max s5, s5, s6
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	j label541
label538:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label27
label555:
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	j label567
.p2align 2
label29:
	addiw t4, t4, 1
	ld s6, 104(sp)
	ble s6, t4, label30
	ld s3, 160(sp)
	mv a7, zero
	addw t6, s3, t4
	subw t5, t4, s3
	ld s7, 112(sp)
	mulw a6, s7, t4
	mv s2, t5
	mv s5, zero
	sext.w s1, s3
	subw s0, zero, s3
	mv s4, s0
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s0, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	j label538
.p2align 2
label30:
	ld t6, 136(sp)
	ble t6, zero, label50
	ble t6, t0, label163
	ld a6, 144(sp)
	ble a6, t1, label33
	ld s0, 168(sp)
	mv t4, zero
	mv t3, s0
.p2align 2
label35:
	lw t6, 0(t3)
	ld s6, 120(sp)
	sh2add t5, t4, s6
	addiw t4, t4, 16
	sw t6, 0(t5)
	lw a6, 4(t3)
	sw a6, 4(t5)
	lw t6, 8(t3)
	sw t6, 8(t5)
	lw a7, 12(t3)
	sw a7, 12(t5)
	lw a6, 16(t3)
	sw a6, 16(t5)
	lw t6, 20(t3)
	sw t6, 20(t5)
	lw a6, 24(t3)
	sw a6, 24(t5)
	lw a7, 28(t3)
	sw a7, 28(t5)
	lw t6, 32(t3)
	sw t6, 32(t5)
	lw a6, 36(t3)
	sw a6, 36(t5)
	lw t6, 40(t3)
	sw t6, 40(t5)
	lw a6, 44(t3)
	sw a6, 44(t5)
	lw t6, 48(t3)
	sw t6, 48(t5)
	lw a6, 52(t3)
	sw a6, 52(t5)
	lw t6, 56(t3)
	sw t6, 56(t5)
	lw a6, 60(t3)
	sw a6, 60(t5)
	ld t6, 152(sp)
	ble t6, t4, label220
	addi t3, t3, 64
	j label35
.p2align 2
label220:
	ld s0, 168(sp)
	sh2add t3, t4, s0
.p2align 2
label40:
	lw t6, 0(t3)
	ld s6, 120(sp)
	sh2add t5, t4, s6
	addiw t4, t4, 4
	sw t6, 0(t5)
	lw a6, 4(t3)
	sw a6, 4(t5)
	lw t6, 8(t3)
	sw t6, 8(t5)
	lw a7, 12(t3)
	sw a7, 12(t5)
	ld a6, 144(sp)
	ble a6, t4, label43
	addi t3, t3, 16
	j label40
.p2align 2
label43:
	ld s0, 168(sp)
	sh2add t3, t4, s0
	lw t5, 0(t3)
	ld s6, 120(sp)
	sh2add a6, t4, s6
	addiw t4, t4, 1
	sw t5, 0(a6)
	ld t6, 136(sp)
	bgt t6, t4, label48
	j label440
.p2align 2
label45:
	lw t5, 0(t3)
	ld s6, 120(sp)
	sh2add a6, t4, s6
	addiw t4, t4, 1
	sw t5, 0(a6)
	ld t6, 136(sp)
	ble t6, t4, label251
.p2align 2
label48:
	addi t3, t3, 4
	j label45
label163:
	ld s0, 168(sp)
	mv t4, zero
	mv t3, s0
	lw t5, 0(s0)
	ld s6, 120(sp)
	mv a6, s6
	li t4, 1
	sw t5, 0(s6)
	ld t6, 136(sp)
	bgt t6, t4, label48
.p2align 2
label251:
	addiw t2, t2, 1
	ld t3, 128(sp)
	ble t3, t2, label51
.p2align 2
label52:
	addi a4, a4, 4
	lw t3, 0(a4)
	mv t4, zero
	ld s3, 160(sp)
	mv a7, zero
	sext.w t6, s3
	subw t5, zero, s3
	ld s7, 112(sp)
	mv a6, zero
	mv s2, t5
	mv s5, zero
	sext.w s1, s3
	subw s0, zero, s3
	ld s6, 104(sp)
	mv s4, s0
	slt s7, t5, s6
	xori s3, s7, 1
	or s7, t5, s0
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s0, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, t5
	addw s8, s0, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	j label538
.p2align 2
label478:
	beq t3, a5, label272
	bne t3, t0, label518
.p2align 2
label276:
	mv s8, zero
	mv s7, a1
	blt a1, a0, label61
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	j label509
.p2align 2
label61:
	divw s11, s5, s7
	slliw s9, s8, 1
	and s10, s11, a2
	beq s10, a1, label62
	mv s8, s9
	slliw s7, s7, 1
	blt s7, a0, label61
	j label470
.p2align 2
label62:
	divw s11, s6, s7
	and s10, s11, a2
	xori s8, s10, 1
	sltiu s11, s8, 1
	addw s8, s9, s11
	slliw s7, s7, 1
	blt s7, a0, label61
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	j label509
label557:
	beq t3, a1, label263
	j label569
.p2align 2
label481:
	beq t3, a3, label55
.p2align 2
label500:
	beq t3, a5, label272
.p2align 2
label520:
	beq t3, t0, label276
.p2align 2
label541:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label27
.p2align 2
label558:
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	j label557
.p2align 2
label502:
	beq t3, a1, label263
	beq t3, a3, label55
	beq t3, a5, label272
	beq t3, t0, label276
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label27
	j label555
.p2align 2
label518:
	mv s5, zero
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
label569:
	beq t3, a3, label55
	j label500
label509:
	beq t3, a3, label55
	j label500
.p2align 2
label470:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	j label509
.p2align 2
label118:
	blt s5, zero, label23
.p2align 2
label127:
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	j label460
label33:
	ld s0, 168(sp)
	mv t4, zero
	mv t3, s0
	j label40
label296:
	mv s5, s8
	addiw s4, s4, 1
	ble s1, s4, label27
	or s7, s2, s4
	srliw s9, s7, 31
	ld s7, 112(sp)
	andi s8, s9, 1
	slt s10, s4, s7
	or s6, s3, s8
	xori s8, s10, 1
	or s9, s6, s8
	bne s9, zero, label105
	ld s6, 120(sp)
	mulw s9, s7, s2
	addw s8, s4, s9
	sh2add s7, s8, s6
	lw s6, 0(s7)
	beq t3, zero, label18
	beq t3, a1, label263
	j label512
label50:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label52
label51:
	li a0, 116
	jal _sysy_stoptime
	ld s6, 120(sp)
	ld t6, 136(sp)
	mv a0, t6
	mv a1, s6
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s7, 40(sp)
	ld s3, 48(sp)
	ld s2, 56(sp)
	ld s4, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 176
	ret
.p2align 2
label440:
	addiw t2, t2, 1
	ld t3, 128(sp)
	bgt t3, t2, label52
	j label51
