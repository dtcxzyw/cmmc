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
	mv a4, a2
	addiw a5, a2, 1
	sd s0, 240(sp)
	slt a2, a5, a3
	mv s0, a1
	xori a5, a0, -1
	sd s5, 232(sp)
	xori a1, a2, 1
	sd s3, 224(sp)
	sltiu a2, a5, 1
	addi s3, sp, 0
	or a1, a1, a2
	sd s2, 216(sp)
	addi s2, sp, 64
	sd s1, 200(sp)
	addi s1, sp, 136
	sd s4, 208(sp)
	sd ra, 128(sp)
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
	bne a1, zero, label2
	addiw s4, a0, -1
	bge a4, a3, label15
	mv a1, a4
	j label4
label2:
	ld ra, 128(sp)
	ld s4, 208(sp)
	ld s1, 200(sp)
	ld s2, 216(sp)
	ld s3, 224(sp)
	ld s5, 232(sp)
	ld s0, 240(sp)
	addi sp, sp, 248
	ret
label222:
	sh2add a3, a2, s1
	lw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label33:
	sh2add a3, a3, s1
	lw a5, 0(a3)
	sh2add t1, a5, s0
	addi a5, a5, 1
	lw t0, 0(t1)
	sw a1, 0(t1)
	mv a1, t0
	sw a5, 0(a3)
	bgt a0, zero, label35
	mv a5, t0
	slli t1, t0, 1
	srli a3, t1, 60
	add t0, t0, a3
	andi t1, t0, -16
	subw a3, a1, t1
	bne a2, a3, label33
	sh2add a3, a2, s1
	lw a5, 0(a3)
	sh2add t0, a5, s0
	sw a1, 0(t0)
	addiw a1, a5, 1
	sw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label292:
	mv t0, a1
	mv a3, zero
	li a5, 8
	slli t1, a1, 1
	li a3, 4
	srli t3, t1, 48
	add t2, a1, t3
	sraiw t0, t2, 16
	bgt a0, a5, label39
	mv a5, t0
	addiw a3, a3, 1
	slli t1, t0, 1
	srli t2, t1, 60
	add t0, t0, t2
	sraiw a5, t0, 4
	bgt a0, a3, label36
	slli t1, a5, 1
	srli a3, t1, 60
	add t0, a5, a3
	andi t1, t0, -16
	subw a3, a5, t1
	bne a2, a3, label33
	sh2add a3, a2, s1
	lw a5, 0(a3)
	sh2add t0, a5, s0
	sw a1, 0(t0)
	addiw a1, a5, 1
	sw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label36:
	addiw a3, a3, 1
	slli t1, a5, 1
	srli t2, t1, 60
	add t0, a5, t2
	sraiw a5, t0, 4
	bgt a0, a3, label36
	slli t1, a5, 1
	srli a3, t1, 60
	add t0, a5, a3
	andi t1, t0, -16
	subw a3, a5, t1
	bne a2, a3, label33
	sh2add a3, a2, s1
	lw a5, 0(a3)
	sh2add t0, a5, s0
	sw a1, 0(t0)
	addiw a1, a5, 1
	sw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label39:
	addiw a5, a3, 8
	slli t1, t0, 1
	addiw a3, a3, 4
	srli t3, t1, 48
	add t2, t0, t3
	sraiw t0, t2, 16
	bgt a0, a5, label39
	mv a5, t0
	addiw a3, a3, 1
	slli t1, t0, 1
	srli t2, t1, 60
	add t0, t0, t2
	sraiw a5, t0, 4
	bgt a0, a3, label36
	slli t1, a5, 1
	srli a3, t1, 60
	add t0, a5, a3
	andi t1, t0, -16
	subw a3, a5, t1
	bne a2, a3, label33
	sh2add a3, a2, s1
	lw a5, 0(a3)
	sh2add t0, a5, s0
	sw a1, 0(t0)
	addiw a1, a5, 1
	sw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label28:
	sh2add a1, a2, s1
	lw a3, 0(a1)
	sh2add a5, a3, s0
	lw a1, 0(a5)
	bgt a0, zero, label35
	mv a5, a1
	slli t1, a1, 1
	srli a3, t1, 60
	add t0, a1, a3
	andi t1, t0, -16
	subw a3, a1, t1
	bne a2, a3, label33
	sh2add a3, a2, s1
	lw a5, 0(a3)
	sh2add t0, a5, s0
	sw a1, 0(t0)
	addiw a1, a5, 1
	sw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label35:
	li a5, 4
	bgt a0, a5, label292
	mv a3, zero
	mv a5, a1
	li a3, 1
	slli t1, a1, 1
	srli t2, t1, 60
	add t0, a1, t2
	sraiw a5, t0, 4
	bgt a0, a3, label36
	slli t1, a5, 1
	srli a3, t1, 60
	add t0, a5, a3
	andi t1, t0, -16
	subw a3, a5, t1
	bne a2, a3, label33
	sh2add a3, a2, s1
	lw a5, 0(a3)
	sh2add t0, a5, s0
	sw a1, 0(t0)
	addiw a1, a5, 1
	sw a1, 0(a3)
	sh2add a5, a2, s2
	lw a3, 0(a5)
	blt a1, a3, label28
	addiw a2, a2, 1
	li a1, 16
	blt a2, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label4:
	sh2add a2, a1, s0
	lw t0, 0(a2)
	bgt a0, zero, label6
	andi a5, t0, 15
	addiw a1, a1, 1
	sh2add a2, a5, s3
	lw t0, 0(a2)
	addi a5, t0, 1
	sw a5, 0(a2)
	bgt a3, a1, label4
	j label15
.p2align 2
label6:
	li a5, 4
	bgt a0, a5, label118
	mv a2, zero
	li a2, 1
	slli a5, t0, 1
	srli t1, a5, 60
	add t2, t0, t1
	sraiw t0, t2, 4
	bgt a0, a2, label7
	andi a5, t0, 15
	addiw a1, a1, 1
	sh2add a2, a5, s3
	lw t0, 0(a2)
	addi a5, t0, 1
	sw a5, 0(a2)
	bgt a3, a1, label4
	j label15
.p2align 2
label118:
	mv a5, t0
	mv a2, zero
	li t0, 8
	slli t3, a5, 1
	li a2, 4
	srli t2, t3, 48
	add t1, a5, t2
	sraiw a5, t1, 16
	bgt a0, t0, label10
	mv t0, a5
	addiw a2, a2, 1
	slli a5, a5, 1
	srli t1, a5, 60
	add t2, t0, t1
	sraiw t0, t2, 4
	bgt a0, a2, label7
	andi a5, t0, 15
	addiw a1, a1, 1
	sh2add a2, a5, s3
	lw t0, 0(a2)
	addi a5, t0, 1
	sw a5, 0(a2)
	bgt a3, a1, label4
	j label15
.p2align 2
label7:
	addiw a2, a2, 1
	slli a5, t0, 1
	srli t1, a5, 60
	add t2, t0, t1
	sraiw t0, t2, 4
	bgt a0, a2, label7
	andi a5, t0, 15
	addiw a1, a1, 1
	sh2add a2, a5, s3
	lw t0, 0(a2)
	addi a5, t0, 1
	sw a5, 0(a2)
	bgt a3, a1, label4
label15:
	sw a4, 136(sp)
	lw a2, 0(sp)
	addw a1, a4, a2
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
	blt zero, a1, label222
	sw a4, 136(sp)
	mv s5, zero
	lw a1, 0(sp)
	addw a0, a4, a1
	sw a0, 64(sp)
	li a0, 16
	blt zero, a0, label21
	j label2
.p2align 2
label10:
	addiw t0, a2, 8
	slli t3, a5, 1
	addiw a2, a2, 4
	srli t2, t3, 48
	add t1, a5, t2
	sraiw a5, t1, 16
	bgt a0, t0, label10
	mv t0, a5
	addiw a2, a2, 1
	slli a5, a5, 1
	srli t1, a5, 60
	add t2, t0, t1
	sraiw t0, t2, 4
	bgt a0, a2, label7
	andi a5, t0, 15
	addiw a1, a1, 1
	sh2add a2, a5, s3
	lw t0, 0(a2)
	addi a5, t0, 1
	sw a5, 0(a2)
	bgt a3, a1, label4
	j label15
.p2align 2
label21:
	bgt s5, zero, label23
.p2align 2
label22:
	sh2add a0, s5, s1
	sh2add a1, s5, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	blt s5, a0, label21
	j label2
label23:
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
	j label22
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel506:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel506)
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
	bgt s0, zero, label432
	mv s0, zero
	j label439
label432:
	li a1, 4
	bgt s0, a1, label450
	mv a0, zero
	mv a2, zero
	j label436
label450:
	mv a0, zero
	mv a1, zero
label433:
	sh2add a3, a0, s1
	addiw a4, a0, 3
	addiw t1, a0, 1
	lw a2, 0(a3)
	lw t0, 4(a3)
	remw a5, t0, a4
	mulw t0, a5, t1
	lw t1, 8(a3)
	addiw a5, a0, 2
	lw a3, 12(a3)
	remw a2, a2, a5
	mulw t2, a0, a2
	addiw a2, a0, 4
	addw t0, t0, t2
	remw t2, t1, a2
	mulw t1, a5, t2
	addw a5, t0, t1
	addiw t1, a0, 5
	remw t0, a3, t1
	mulw a3, a4, t0
	addw a4, a5, a3
	addiw a3, a0, 8
	addw a1, a1, a4
	bgt s0, a3, label481
	mv a0, a1
	j label436
label481:
	mv a0, a2
	j label433
label436:
	sh2add a3, a2, s1
	addiw a4, a2, 2
	lw a1, 0(a3)
	remw a3, a1, a4
	mulw a1, a2, a3
	addiw a2, a2, 1
	addw a0, a0, a1
	bgt s0, a2, label436
	mv s0, a0
label439:
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
