.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
.p2align 2
radixSort:
	addi sp, sp, -256
	mv a4, a0
	mv t1, a2
	mv a5, a3
	sd ra, 0(sp)
	xori t0, a0, -1
	addiw a3, a2, 1
	sd s0, 8(sp)
	slt a0, a3, a5
	mv s0, a1
	sltiu a3, t0, 1
	xori a2, a0, 1
	addi a1, sp, 64
	sd s5, 16(sp)
	or a0, a2, a3
	sd s2, 24(sp)
	li a2, 64
	addi s2, sp, 192
	sd s1, 32(sp)
	addi s1, sp, 128
	sd s6, 40(sp)
	sd s4, 48(sp)
	li s4, 16
	sd s3, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	bne a0, zero, label2
	slliw a0, a4, 2
	slti a3, a4, 8
	addiw s3, a4, -1
	bge t1, a5, label31
	addiw t0, t1, 4
	addiw t3, a5, -4
	ble a5, t0, label131
	sh2add t0, t1, s0
	mv t2, t1
	lw t4, 0(t0)
	bgt a4, zero, label17
	j label18
label486:
	mv t4, zero
.p2align 2
label18:
	andi a6, t4, 15
	sh2add t5, a6, s2
	addiw a6, t2, 1
	lw t6, 0(t5)
	addi t4, t6, 1
	sh2add t6, a6, s0
	sw t4, 0(t5)
	lw t4, 0(t6)
	bgt a4, zero, label30
label20:
	andi t6, t4, 15
	sh2add t5, t6, s2
	addiw t6, t2, 2
	lw a6, 0(t5)
	addi t4, a6, 1
	sh2add a6, t6, s0
	sw t4, 0(t5)
	lw t4, 0(a6)
	ble a4, zero, label22
.p2align 2
label29:
	slli t5, t4, 1
	subw a6, a2, a0
	srl a7, t5, a6
	add t6, t4, a7
	sraw a6, t6, a0
	mv t4, a6
	bne a3, zero, label22
	j label490
.p2align 2
label30:
	slli t5, t4, 1
	subw t6, a2, a0
	srl a6, t5, t6
	add a7, t4, a6
	sraw t6, a7, a0
	mv t4, t6
	bne a3, zero, label20
	mv t5, s2
	addiw t6, t2, 2
	lw a6, 0(s2)
	addi t4, a6, 1
	sh2add a6, t6, s0
	sw t4, 0(s2)
	lw t4, 0(a6)
	bgt a4, zero, label29
	j label22
.p2align 2
label17:
	slli t5, t4, 1
	subw a7, a2, a0
	srl a6, t5, a7
	add s5, t4, a6
	sraw t6, s5, a0
	mv t4, t6
	bne a3, zero, label18
	j label486
label22:
	andi t6, t4, 15
	addiw a7, t2, 3
	sh2add t5, t6, s2
	sh2add t6, a7, s0
	lw a6, 0(t5)
	addi t4, a6, 1
	sw t4, 0(t5)
	lw t4, 0(t6)
	ble a4, zero, label25
.p2align 2
label24:
	slli t5, t4, 1
	subw t6, a2, a0
	srl a6, t5, t6
	add a7, t4, a6
	sraw t5, a7, a0
	mv t4, t5
	bne a3, zero, label25
	mv t4, zero
.p2align 2
label25:
	andi a6, t4, 15
	addiw t2, t2, 4
	sh2add t5, a6, s2
	lw t6, 0(t5)
	addi t4, t6, 1
	sw t4, 0(t5)
	ble t3, t2, label27
	addi t0, t0, 16
	lw t4, 0(t0)
	bgt a4, zero, label17
	j label18
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 256
	ret
label27:
	sh2add t0, t2, s0
label5:
	lw t3, 0(t0)
	ble a4, zero, label9
	slli t4, t3, 1
	subw t6, a2, a0
	srl a6, t4, t6
	add t5, t3, a6
	sraw a7, t5, a0
	mv t3, a7
	bne a3, zero, label9
	mv t3, zero
label9:
	andi t6, t3, 15
	addiw t2, t2, 1
	sh2add t4, t6, s2
	lw t5, 0(t4)
	addi t3, t5, 1
	sw t3, 0(t4)
	ble a5, t2, label31
	addi t0, t0, 4
	j label5
label31:
	sw t1, 64(sp)
	lw a5, 192(sp)
	addw t0, t1, a5
	sw t0, 128(sp)
	sw t0, 68(sp)
	lw t2, 196(sp)
	addw a5, t0, t2
	sw a5, 132(sp)
	sw a5, 72(sp)
	lw t2, 200(sp)
	addw t0, a5, t2
	sw t0, 136(sp)
	sw t0, 76(sp)
	lw t2, 204(sp)
	addw a5, t0, t2
	sw a5, 140(sp)
	sw a5, 80(sp)
	lw t2, 208(sp)
	addw t0, a5, t2
	sw t0, 144(sp)
	sw t0, 84(sp)
	lw t2, 212(sp)
	addw a5, t0, t2
	sw a5, 148(sp)
	sw a5, 88(sp)
	lw t0, 216(sp)
	addw t2, a5, t0
	sw t2, 152(sp)
	sw t2, 92(sp)
	lw a5, 220(sp)
	addw t0, t2, a5
	sw t0, 156(sp)
	sw t0, 96(sp)
	lw t2, 224(sp)
	addw a5, t0, t2
	sw a5, 160(sp)
	sw a5, 100(sp)
	lw t2, 228(sp)
	addw t0, a5, t2
	sw t0, 164(sp)
	sw t0, 104(sp)
	lw t2, 232(sp)
	addw a5, t0, t2
	sw a5, 168(sp)
	sw a5, 108(sp)
	lw t2, 236(sp)
	addw t0, a5, t2
	sw t0, 172(sp)
	sw t0, 112(sp)
	lw t2, 240(sp)
	addw a5, t0, t2
	sw a5, 176(sp)
	sw a5, 116(sp)
	lw t2, 244(sp)
	addw t0, a5, t2
	sw t0, 180(sp)
	sw t0, 120(sp)
	lw t2, 248(sp)
	addw a5, t0, t2
	mv t2, s1
	sw a5, 184(sp)
	sw a5, 124(sp)
	lw t0, 252(sp)
	addw t3, a5, t0
	mv a5, zero
	mv t0, a1
	sw t3, 188(sp)
	blt zero, s4, label46
label36:
	sw t1, 64(sp)
	mv s5, a1
	mv s6, zero
	lw a2, 192(sp)
	addw a0, t1, a2
	sw a0, 128(sp)
label40:
	lw a2, 0(s5)
	sh2add a0, s6, s1
	lw a3, 0(a0)
	j label42
label41:
	addiw a0, s6, -1
	sh2add a4, s6, s1
	sh2add a1, a0, s1
	sh2add a0, s6, s2
	lw a2, 0(a1)
	sw a2, 0(s5)
	lw a1, 0(a0)
	addw a3, a2, a1
	sw a3, 0(a4)
.p2align 2
label42:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label2
	addi s5, s5, 4
	bgt s6, zero, label41
	j label40
.p2align 2
label46:
	lw t3, 0(t0)
	lw t4, 0(t2)
	bge t3, t4, label49
.p2align 2
label50:
	lw t5, 0(t0)
	sh2add t4, t5, s0
	lw t3, 0(t4)
	bgt a4, zero, label57
	j label341
.p2align 2
label55:
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label50
.p2align 2
label509:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label46
	j label36
.p2align 2
label53:
	slli t5, t4, 1
	srli t6, t5, 60
	add a7, t4, t6
	andi a6, a7, -16
	subw t5, t4, a6
	beq a5, t5, label55
.p2align 2
label56:
	sh2add t4, t5, a1
	lw t5, 0(t4)
	addi a7, t5, 1
	sh2add a6, t5, s0
	lw t6, 0(a6)
	sw t3, 0(a6)
	mv t3, t6
	sw a7, 0(t4)
	bgt a4, zero, label57
	mv t4, t6
	slli t5, t6, 1
	srli t6, t5, 60
	add a7, t3, t6
	andi a6, a7, -16
	subw t5, t3, a6
	bne a5, t5, label56
	j label514
.p2align 2
label57:
	slli t4, t3, 1
	subw t6, a2, a0
	srl a7, t4, t6
	add a6, t3, a7
	sraw t5, a6, a0
	mv t4, t5
	bne a3, zero, label53
	mv t4, zero
	mv t6, zero
	mv a7, zero
	mv a6, zero
	mv t5, zero
	bne a5, zero, label56
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label50
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label46
	j label36
label49:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label46
	j label36
.p2align 2
label514:
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label50
	j label509
label490:
	mv t5, s2
	addiw a7, t2, 3
	lw a6, 0(s2)
	sh2add t6, a7, s0
	addi t4, a6, 1
	sw t4, 0(s2)
	lw t4, 0(t6)
	bgt a4, zero, label24
	j label25
.p2align 2
label341:
	mv t4, t3
	j label53
label131:
	sh2add t0, t1, s0
	mv t2, t1
	j label5
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel610:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel610)
	sd s1, 16(sp)
	mv a0, s0
	jal getarray
	mv s1, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s0
	li a0, 8
	mv a3, s1
	jal radixSort
	li a0, 4
	addiw a1, s1, -4
	ble s1, a0, label553
	mv a0, s0
	mv a3, zero
	mv a2, zero
.p2align 2
label535:
	lw a4, 0(a0)
	addiw a5, a3, 3
	addiw t3, a3, 1
	lw t0, 4(a0)
	remw t2, t0, a5
	addiw t0, a3, 2
	remw t4, a4, t0
	addiw a4, a3, 4
	mulw t1, t2, t3
	lw t3, 8(a0)
	mulw t5, a3, t4
	remw t4, t3, a4
	addw t2, t1, t5
	lw t3, 12(a0)
	mulw t5, t0, t4
	addiw t0, a3, 5
	addw t1, t2, t5
	remw t4, t3, t0
	mulw t2, a5, t4
	addw a3, t1, t2
	addw a2, a2, a3
	ble a1, a4, label539
	addi a0, a0, 16
	mv a3, a4
	j label535
label539:
	sh2add s0, a4, s0
.p2align 2
label541:
	lw a0, 0(s0)
	addiw a5, a4, 2
	remw a1, a0, a5
	mulw a3, a4, a1
	addiw a4, a4, 1
	addw a2, a2, a3
	ble s1, a4, label546
	addi s0, s0, 4
	j label541
label546:
	subw a1, zero, a2
	li a0, 102
	max s0, a1, a2
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label553:
	mv a2, zero
	mv a4, zero
	j label541
