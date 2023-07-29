.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	120000040
.text
radixSort:
.p2align 2
	addi sp, sp, -248
	mv a4, a0
	mv a5, a2
	xori t0, a0, -1
	sd s0, 240(sp)
	mv s0, a1
	sd s5, 232(sp)
	addiw a1, a2, 1
	sd s3, 224(sp)
	slt a2, a1, a3
	addi s3, sp, 0
	sltiu a1, t0, 1
	xori a0, a2, 1
	sd s2, 200(sp)
	or a0, a0, a1
	addi s2, sp, 64
	sd s1, 216(sp)
	addi s1, sp, 136
	sd s4, 128(sp)
	sd ra, 208(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 0(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	bne a0, zero, label2
	addiw a0, a4, -4
	addiw s4, a4, -1
	bge a5, a3, label4
	mv a1, a5
	j label31
label2:
	ld ra, 208(sp)
	ld s4, 128(sp)
	ld s1, 216(sp)
	ld s2, 200(sp)
	ld s3, 224(sp)
	ld s5, 232(sp)
	ld s0, 240(sp)
	addi sp, sp, 248
	ret
label4:
	sw a5, 136(sp)
	lw a2, 0(sp)
	addw a1, a5, a2
	sw a1, 64(sp)
	sw a1, 140(sp)
	lw a2, 4(sp)
	addw a1, a1, a2
	sw a1, 68(sp)
	sw a1, 144(sp)
	lw a2, 8(sp)
	addw a1, a1, a2
	sw a1, 72(sp)
	sw a1, 148(sp)
	lw a2, 12(sp)
	addw a1, a1, a2
	sw a1, 76(sp)
	sw a1, 152(sp)
	lw a2, 16(sp)
	addw a1, a1, a2
	sw a1, 80(sp)
	sw a1, 156(sp)
	lw a2, 20(sp)
	addw a1, a1, a2
	sw a1, 84(sp)
	sw a1, 160(sp)
	lw a2, 24(sp)
	addw a1, a1, a2
	sw a1, 88(sp)
	sw a1, 164(sp)
	lw a2, 28(sp)
	addw a1, a1, a2
	sw a1, 92(sp)
	sw a1, 168(sp)
	lw a2, 32(sp)
	addw a1, a1, a2
	sw a1, 96(sp)
	sw a1, 172(sp)
	lw a2, 36(sp)
	addw a1, a1, a2
	sw a1, 100(sp)
	sw a1, 176(sp)
	lw a2, 40(sp)
	addw a1, a1, a2
	sw a1, 104(sp)
	sw a1, 180(sp)
	lw a2, 44(sp)
	addw a1, a1, a2
	sw a1, 108(sp)
	sw a1, 184(sp)
	lw a2, 48(sp)
	addw a1, a1, a2
	sw a1, 112(sp)
	sw a1, 188(sp)
	lw a2, 52(sp)
	addw a1, a1, a2
	sw a1, 116(sp)
	sw a1, 192(sp)
	lw a2, 56(sp)
	addw a1, a1, a2
	sw a1, 120(sp)
	sw a1, 196(sp)
	lw a2, 60(sp)
	addw a1, a1, a2
	mv a2, zero
	sw a1, 124(sp)
	li a1, 16
	blt zero, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label31:
	sh2add a2, a1, s0
	lw t1, 0(a2)
	bgt a4, zero, label33
	andi t0, t1, 15
	addiw a1, a1, 1
	sh2add a2, t0, s3
	lw t1, 0(a2)
	addi t0, t1, 1
	sw t0, 0(a2)
	bgt a3, a1, label31
	j label4
.p2align 2
label34:
	addiw a2, a2, 1
	slli t3, t1, 1
	srli t0, t3, 60
	add t2, t1, t0
	sraiw t1, t2, 4
	bgt a4, a2, label34
	andi t0, t1, 15
	addiw a1, a1, 1
	sh2add a2, t0, s3
	lw t1, 0(a2)
	addi t0, t1, 1
	sw t0, 0(a2)
	bgt a3, a1, label31
	j label4
.p2align 2
label37:
	addiw a2, a2, 4
	slli t1, t0, 1
	srli t2, t1, 48
	add t0, t0, t2
	sraiw t1, t0, 16
	bgt a0, a2, label294
	addiw a2, a2, 1
	slli t3, t1, 1
	srli t0, t3, 60
	add t2, t1, t0
	sraiw t1, t2, 4
	bgt a4, a2, label34
	andi t0, t1, 15
	addiw a1, a1, 1
	sh2add a2, t0, s3
	lw t1, 0(a2)
	addi t0, t1, 1
	sw t0, 0(a2)
	bgt a3, a1, label31
	j label4
.p2align 2
label294:
	mv t0, t1
	j label37
label191:
	sh2add a3, a2, s1
	lw a1, 0(a3)
	sh2add a3, a2, s2
	lw t0, 0(a3)
	blt a1, t0, label17
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label17:
	sh2add a1, a2, s1
	lw a3, 0(a1)
	sh2add t0, a3, s0
	lw a1, 0(t0)
	bgt a4, zero, label24
	mv t0, a1
	slli a3, a1, 1
	srli t2, a3, 60
	add t3, a1, t2
	andi t1, t3, -16
	subw a3, a1, t1
	bne a2, a3, label23
	sh2add a3, a2, s1
	lw t0, 0(a3)
	sh2add t1, t0, s0
	sw a1, 0(t1)
	addiw a1, t0, 1
	sw a1, 0(a3)
	sh2add a3, a2, s2
	lw t0, 0(a3)
	blt a1, t0, label17
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label23:
	sh2add a3, a3, s1
	lw t0, 0(a3)
	sh2add t2, t0, s0
	addi t0, t0, 1
	lw t1, 0(t2)
	sw a1, 0(t2)
	mv a1, t1
	sw t0, 0(a3)
	bgt a4, zero, label24
	mv t0, t1
	slli a3, t1, 1
	srli t2, a3, 60
	add t3, t1, t2
	andi t1, t3, -16
	subw a3, a1, t1
	bne a2, a3, label23
	sh2add a3, a2, s1
	lw t0, 0(a3)
	sh2add t1, t0, s0
	sw a1, 0(t1)
	addiw a1, t0, 1
	sw a1, 0(a3)
	sh2add a3, a2, s2
	lw t0, 0(a3)
	blt a1, t0, label17
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label24:
	li t0, 4
	bgt a4, t0, label261
	mv a3, zero
	mv t1, a1
	li a3, 1
	slli t0, a1, 1
	srli t2, t0, 60
	add t1, a1, t2
	sraiw t0, t1, 4
	bgt a4, a3, label273
	slli a3, t0, 1
	srli t2, a3, 60
	add t3, t0, t2
	andi t1, t3, -16
	subw a3, t0, t1
	bne a2, a3, label23
	sh2add a3, a2, s1
	lw t0, 0(a3)
	sh2add t1, t0, s0
	sw a1, 0(t1)
	addiw a1, t0, 1
	sw a1, 0(a3)
	sh2add a3, a2, s2
	lw t0, 0(a3)
	blt a1, t0, label17
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label261:
	mv t0, a1
	mv a3, zero
.p2align 2
label25:
	addiw a3, a3, 4
	slli t1, t0, 1
	srli t2, t1, 48
	add t0, t0, t2
	sraiw t1, t0, 16
	bgt a0, a3, label267
	addiw a3, a3, 1
	slli t0, t1, 1
	srli t2, t0, 60
	add t1, t1, t2
	sraiw t0, t1, 4
	bgt a4, a3, label273
	slli a3, t0, 1
	srli t2, a3, 60
	add t3, t0, t2
	andi t1, t3, -16
	subw a3, t0, t1
	bne a2, a3, label23
	sh2add a3, a2, s1
	lw t0, 0(a3)
	sh2add t1, t0, s0
	sw a1, 0(t1)
	addiw a1, t0, 1
	sw a1, 0(a3)
	sh2add a3, a2, s2
	lw t0, 0(a3)
	blt a1, t0, label17
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label267:
	mv t0, t1
	j label25
.p2align 2
label28:
	addiw a3, a3, 1
	slli t0, t1, 1
	srli t2, t0, 60
	add t1, t1, t2
	sraiw t0, t1, 4
	bgt a4, a3, label273
	slli a3, t0, 1
	srli t2, a3, 60
	add t3, t0, t2
	andi t1, t3, -16
	subw a3, t0, t1
	bne a2, a3, label23
	sh2add a3, a2, s1
	lw t0, 0(a3)
	sh2add t1, t0, s0
	sw a1, 0(t1)
	addiw a1, t0, 1
	sw a1, 0(a3)
	sh2add a3, a2, s2
	lw t0, 0(a3)
	blt a1, t0, label17
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label191
	sw a5, 136(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a5, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label10
	j label2
.p2align 2
label273:
	mv t1, t0
	j label28
.p2align 2
label33:
	li t0, 4
	bgt a4, t0, label282
	mv a2, zero
	li a2, 1
	slli t3, t1, 1
	srli t0, t3, 60
	add t2, t1, t0
	sraiw t1, t2, 4
	bgt a4, a2, label34
	andi t0, t1, 15
	addiw a1, a1, 1
	sh2add a2, t0, s3
	lw t1, 0(a2)
	addi t0, t1, 1
	sw t0, 0(a2)
	bgt a3, a1, label31
	j label4
.p2align 2
label282:
	mv t0, t1
	mv a2, zero
	li a2, 4
	slli t1, t1, 1
	srli t2, t1, 48
	add t0, t0, t2
	sraiw t1, t0, 16
	bgt a0, a2, label294
	addiw a2, a2, 1
	slli t3, t1, 1
	srli t0, t3, 60
	add t2, t1, t0
	sraiw t1, t2, 4
	bgt a4, a2, label34
	andi t0, t1, 15
	addiw a1, a1, 1
	sh2add a2, t0, s3
	lw t1, 0(a2)
	addi t0, t1, 1
	sw t0, 0(a2)
	bgt a3, a1, label31
	j label4
.p2align 2
label10:
	bgt s5, zero, label12
.p2align 2
label11:
	sh2add a0, s5, s1
	sh2add a1, s5, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	blt s5, a0, label10
	j label2
label12:
	addiw a1, s5, -1
	sh2add a2, a1, s2
	sh2add a1, s5, s1
	lw a0, 0(a2)
	sh2add a2, s5, s3
	sw a0, 0(a1)
	lw a1, 0(a2)
	sh2add a2, s5, s2
	addw a0, a0, a1
	sw a0, 0(a2)
	j label11
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel490:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel490)
	sd s1, 16(sp)
	mv s1, s2
	sd s0, 8(sp)
	sd ra, 0(sp)
	mv a0, s2
	jal getarray
	mv s0, a0
	li a0, 90
	jal _sysy_starttime
	mv a2, zero
	mv a1, s2
	li a0, 8
	mv a3, s0
	jal radixSort
	addiw a2, s0, -4
	bgt s0, zero, label416
	mv s0, zero
	j label423
label416:
	li a1, 4
	bgt s0, a1, label435
	mv a0, zero
	mv a3, zero
	j label420
label435:
	mv a1, zero
	mv a0, zero
label417:
	sh2add a4, a1, s1
	addiw a5, a1, 3
	addiw t2, a1, 1
	lw a3, 0(a4)
	lw t1, 4(a4)
	remw t0, t1, a5
	mulw t1, t0, t2
	lw t2, 8(a4)
	addiw t0, a1, 2
	lw a4, 12(a4)
	remw a3, a3, t0
	mulw t3, a1, a3
	addiw a3, a1, 4
	addw t1, t1, t3
	addiw a1, a1, 5
	remw t3, t2, a3
	mulw t2, t0, t3
	addw t0, t1, t2
	remw t1, a4, a1
	mulw a4, a5, t1
	addw a1, t0, a4
	addw a0, a0, a1
	ble a2, a3, label420
	mv a1, a3
	j label417
label420:
	sh2add a2, a3, s1
	addiw a4, a3, 2
	lw a1, 0(a2)
	remw a2, a1, a4
	mulw a1, a3, a2
	addiw a3, a3, 1
	addw a0, a0, a1
	bgt s0, a3, label420
	mv s0, a0
label423:
	li a0, 102
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
