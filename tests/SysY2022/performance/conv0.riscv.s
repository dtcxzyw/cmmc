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
	sd s8, 80(sp)
	sd s9, 72(sp)
	sd s10, 64(sp)
	sd s11, 56(sp)
	sd ra, 48(sp)
	jal getint
	mv s4, a0
	jal getint
	sd a0, 24(sp)
	mv a7, a0
	jal getint
pcrel687:
	auipc a1, %pcrel_hi(a)
	mv s0, a0
	ld a7, 24(sp)
	mulw t0, a7, a0
	addi a0, a1, %pcrel_lo(pcrel687)
	mv s1, a0
	sd t0, 40(sp)
	jal getarray
pcrel688:
	auipc a1, %pcrel_hi(kernelid)
	addi a0, a1, %pcrel_lo(pcrel688)
	mv s2, a0
	jal getarray
	mv s3, a0
	li a0, 109
	jal _sysy_starttime
	bgt s3, zero, label2
	j label63
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
	slti s6, t1, 0
	slt s4, t1, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s7, t5, s0
	slti s8, t5, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, t1
	addw s9, t5, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	addiw s4, t5, 1
	ble t6, s4, label27
.p2align 2
label571:
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	beq s6, zero, label599
.p2align 2
label106:
	mv s6, zero
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	j label629
.p2align 2
label33:
	li a5, 16
	bgt a3, a5, label170
	mv t0, zero
	j label34
.p2align 2
label170:
	mv a5, zero
	j label36
.p2align 2
label34:
	sh2add t1, t0, a0
	sh2add a5, t0, s1
	lw t2, 0(t1)
	addiw t0, t0, 4
	sw t2, 0(a5)
	lw t2, 4(t1)
	sw t2, 4(a5)
	lw t3, 8(t1)
	sw t3, 8(a5)
	lw t1, 12(t1)
	sw t1, 12(a5)
	bgt a3, t0, label34
	mv a5, t0
	sh2add t2, t0, a0
	sh2add t1, t0, s1
	lw t0, 0(t2)
	addiw a5, a5, 1
	sw t0, 0(t1)
	ld t0, 40(sp)
	bgt t0, a5, label38
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
.p2align 2
label36:
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
	lw t2, 36(t0)
	sw t2, 36(t1)
	lw t3, 40(t0)
	sw t3, 40(t1)
	lw t2, 44(t0)
	sw t2, 44(t1)
	lw t3, 48(t0)
	sw t3, 48(t1)
	lw t2, 52(t0)
	sw t2, 52(t1)
	lw t3, 56(t0)
	sw t3, 56(t1)
	lw t2, 60(t0)
	addiw t0, a5, 16
	sw t2, 60(t1)
	ble a2, t0, label34
	mv a5, t0
	j label36
.p2align 2
label38:
	sh2add t2, a5, a0
	sh2add t1, a5, s1
	lw t0, 0(t2)
	addiw a5, a5, 1
	sw t0, 0(t1)
	ld t0, 40(sp)
	bgt t0, a5, label38
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
	ld s9, 72(sp)
	ld s8, 80(sp)
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
label599:
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
.p2align 2
label627:
	li s7, 1
	beq a5, s7, label257
.p2align 2
label601:
	li s7, 2
	beq a5, s7, label42
.p2align 2
label629:
	li s7, 3
	beq a5, s7, label264
	j label640
.p2align 2
label28:
	addw t6, t3, t4
	addiw t4, t4, 1
	sh2add t5, t6, a0
	sw s5, 0(t5)
	ble s0, t4, label29
	subw t5, t4, a1
	addw t6, a1, t4
	mv a6, t1
	mv s5, zero
	ld a7, 24(sp)
	slti s6, t1, 0
	slt s4, t1, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s7, t5, s0
	slti s8, t5, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, t1
	addw s9, t5, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	addiw s4, t5, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	j label599
.p2align 2
label640:
	li s8, 4
	beq a5, s8, label287
	j label641
.p2align 2
label27:
	addiw a6, a6, 1
	ble t2, a6, label28
	ld a7, 24(sp)
	slti s6, a6, 0
	slt s4, a6, a7
	xori a7, s4, 1
	mv s4, t5
	or a7, a7, s6
	slt s7, t5, s0
	slti s8, t5, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, t5, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, t5, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	j label627
.p2align 2
label19:
	lui s6, 786432
	lui s7, 262144
	addw s5, s5, s6
	bgt s5, s7, label19
	blt s5, zero, label23
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	j label633
.p2align 2
label23:
	lui s6, 262144
	addw s5, s5, s6
	blt s5, zero, label23
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	j label634
.p2align 2
label18:
	addw s5, s5, s6
	lui s6, 262144
	bgt s5, s6, label19
	blt s5, zero, label23
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
.p2align 2
label633:
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	j label636
.p2align 2
label634:
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	j label636
.p2align 2
label257:
	li s7, 1
	mv s8, zero
.p2align 2
label60:
	divw s9, s5, s7
	srliw s10, s9, 31
	add s10, s9, s10
	andi s11, s10, -2
	divw s10, s6, s7
	subw s9, s9, s11
	slliw s7, s7, 1
	srliw s11, s10, 31
	add s11, s10, s11
	andi s11, s11, -2
	subw s10, s10, s11
	xor s10, s9, s10
	sltiu s9, s10, 1
	slliw s10, s8, 1
	addi s11, s10, 1
	lui s10, 262144
	subw s8, s11, s9
	mv s9, s7
	blt s7, s10, label318
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	j label636
.p2align 2
label318:
	mv s7, s9
	j label60
.p2align 2
label636:
	li s7, 1
	beq a5, s7, label257
	j label601
.p2align 2
label42:
	max s5, s5, s6
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	j label636
.p2align 2
label643:
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	j label650
.p2align 2
label264:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label47
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
.p2align 2
label588:
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
.p2align 2
label616:
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	j label644
.p2align 2
label47:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label48
	divw s10, s6, s7
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label48
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label47
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	j label588
.p2align 2
label650:
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	j label636
.p2align 2
label287:
	mv s8, zero
	li s7, 1
	lui s9, 262144
	blt s7, s9, label56
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	addiw s4, s4, 1
	ble t6, s4, label27
.p2align 2
label623:
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
.p2align 2
label651:
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	j label636
.p2align 2
label57:
	divw s9, s6, s7
	li s10, -2147483647
	and s11, s9, s10
	xori s9, s11, 1
	sltiu s10, s9, 1
	addw s8, s8, s10
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label56
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	j label651
.p2align 2
label48:
	addiw s8, s8, 1
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label47
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	j label616
.p2align 2
label29:
	addiw t0, t0, 1
	ld a7, 24(sp)
	ble a7, t0, label30
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
	slt s7, t5, s0
	slti s8, t5, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, t1
	addw s9, t5, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	addiw s4, t5, 1
	ble t6, s4, label27
	j label571
.p2align 2
label56:
	divw s10, s5, s7
	li s11, -2147483647
	slliw s8, s8, 1
	and s9, s10, s11
	li s10, 1
	beq s9, s10, label57
	slliw s7, s7, 1
	lui s9, 262144
	blt s7, s9, label56
	mv s5, s8
	addiw s4, s4, 1
	ble t6, s4, label27
	slt s7, s4, s0
	slti s8, s4, 0
	xori s6, s7, 1
	or s7, s6, s8
	or s6, a7, s7
	bne s6, zero, label106
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	li s7, 1
	beq a5, s7, label257
	li s7, 2
	beq a5, s7, label42
	li s7, 3
	beq a5, s7, label264
	li s8, 4
	beq a5, s8, label287
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	j label623
.p2align 2
label644:
	mulw s7, s0, a6
	addw s9, s4, s7
	sh2add s8, s9, s1
	lw s6, 0(s8)
	beq a5, zero, label18
	j label636
.p2align 2
label641:
	mv s5, zero
	addiw s4, s4, 1
	ble t6, s4, label27
	j label643
.p2align 2
label30:
	ld t0, 40(sp)
	bgt t0, zero, label32
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
.p2align 2
label32:
	li a5, 4
	ld t0, 40(sp)
	bgt t0, a5, label33
	mv a5, zero
	mv t2, a0
	mv t1, s1
	lw t0, 0(a0)
	li a5, 1
	sw t0, 0(s1)
	ld t0, 40(sp)
	bgt t0, a5, label38
	addiw a4, a4, 1
	bgt s3, a4, label3
	j label63
label2:
	ld t0, 40(sp)
	srliw a4, s4, 31
	addiw a2, t0, -20
	addiw a3, t0, -4
	add a0, s4, a4
pcrel689:
	auipc a4, %pcrel_hi(b)
	sraiw a1, a0, 1
	addi a0, a4, %pcrel_lo(pcrel689)
	mv a4, zero
	j label3
