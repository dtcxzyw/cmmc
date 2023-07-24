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
	addiw a4, a2, 1
	xori t0, a0, -1
	slt a5, a4, a3
	sd s0, 240(sp)
	sltiu a4, t0, 1
	mv s0, a1
	sd s5, 232(sp)
	xori a1, a5, 1
	sd s3, 224(sp)
	or a1, a1, a4
	addi s3, sp, 0
	sd s2, 216(sp)
	addi s2, sp, 64
	sd s1, 208(sp)
	addi s1, sp, 128
	sd s4, 200(sp)
	sd ra, 192(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
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
	bne a1, zero, label44
	addiw s4, a0, -1
	bge a2, a3, label110
	mv a1, a2
	j label3
label198:
	sh2add a4, a1, s1
	lw a3, 0(a4)
	sh2add a5, a1, s2
	lw a4, 0(a5)
	blt a3, a4, label29
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label23
	j label44
.p2align 2
label29:
	sh2add a3, a1, s1
	lw a5, 0(a3)
	sh2add a4, a5, s0
	lw a3, 0(a4)
	bgt a0, zero, label246
	mv a4, a3
	slli t0, a3, 1
	srli t1, t0, 60
	add a5, a3, t1
	andi t0, a5, -16
	subw a4, a3, t0
	bne a1, a4, label34
	sh2add a4, a1, s1
	lw a5, 0(a4)
	sh2add t0, a5, s0
	sw a3, 0(t0)
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a5, a1, s2
	lw a4, 0(a5)
	blt a3, a4, label29
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label23
	j label44
.p2align 2
label246:
	mv t0, zero
	mv a4, a3
	li a5, 4
	bgt a0, a5, label42
	li t0, 1
	slli t2, a3, 1
	srli t1, t2, 60
	add a5, a3, t1
	sraiw a4, a5, 4
	bgt a0, t0, label39
	slli t0, a4, 1
	srli t1, t0, 60
	add a5, a4, t1
	andi t0, a5, -16
	subw a4, a4, t0
	bne a1, a4, label34
	sh2add a4, a1, s1
	lw a5, 0(a4)
	sh2add t0, a5, s0
	sw a3, 0(t0)
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a5, a1, s2
	lw a4, 0(a5)
	blt a3, a4, label29
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label23
label44:
	ld ra, 192(sp)
	ld s4, 200(sp)
	ld s1, 208(sp)
	ld s2, 216(sp)
	ld s3, 224(sp)
	ld s5, 232(sp)
	ld s0, 240(sp)
	addi sp, sp, 248
	ret
.p2align 2
label34:
	sh2add a4, a4, s1
	lw a5, 0(a4)
	sh2add t1, a5, s0
	addi a5, a5, 1
	lw t0, 0(t1)
	sw a3, 0(t1)
	mv a3, t0
	sw a5, 0(a4)
	bgt a0, zero, label246
	mv a4, t0
	slli t0, t0, 1
	srli t1, t0, 60
	add a5, a3, t1
	andi t0, a5, -16
	subw a4, a3, t0
	bne a1, a4, label34
	sh2add a4, a1, s1
	lw a5, 0(a4)
	sh2add t0, a5, s0
	sw a3, 0(t0)
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a5, a1, s2
	lw a4, 0(a5)
	blt a3, a4, label29
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label23
	j label44
.p2align 2
label36:
	addiw a5, t0, 4
	bgt a0, a5, label42
	addiw t0, t0, 1
	slli t2, a4, 1
	srli t1, t2, 60
	add a5, a4, t1
	sraiw a4, a5, 4
	bgt a0, t0, label39
	slli t0, a4, 1
	srli t1, t0, 60
	add a5, a4, t1
	andi t0, a5, -16
	subw a4, a4, t0
	bne a1, a4, label34
	sh2add a4, a1, s1
	lw a5, 0(a4)
	sh2add t0, a5, s0
	sw a3, 0(t0)
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a5, a1, s2
	lw a4, 0(a5)
	blt a3, a4, label29
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label23
	j label44
.p2align 2
label39:
	addiw t0, t0, 1
	slli t2, a4, 1
	srli t1, t2, 60
	add a5, a4, t1
	sraiw a4, a5, 4
	bgt a0, t0, label39
	slli t0, a4, 1
	srli t1, t0, 60
	add a5, a4, t1
	andi t0, a5, -16
	subw a4, a4, t0
	bne a1, a4, label34
	sh2add a4, a1, s1
	lw a5, 0(a4)
	sh2add t0, a5, s0
	sw a3, 0(t0)
	addiw a3, a5, 1
	sw a3, 0(a4)
	sh2add a5, a1, s2
	lw a4, 0(a5)
	blt a3, a4, label29
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	blt zero, a0, label23
	j label44
.p2align 2
label42:
	slli t2, a4, 1
	srli t0, t2, 48
	add t1, a4, t0
	mv t0, a5
	sraiw a4, t1, 16
	j label36
.p2align 2
label3:
	sh2add a5, a1, s0
	lw a4, 0(a5)
	bgt a0, zero, label117
	andi a5, a4, 15
	addiw a1, a1, 1
	sh2add a4, a5, s3
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	bgt a3, a1, label3
	j label110
.p2align 2
label117:
	mv t0, zero
.p2align 2
label5:
	addiw a5, t0, 4
	bgt a0, a5, label8
	addiw t0, t0, 1
	slli t2, a4, 1
	srli a5, t2, 60
	add t1, a4, a5
	sraiw a4, t1, 4
	bgt a0, t0, label9
	andi a5, a4, 15
	addiw a1, a1, 1
	sh2add a4, a5, s3
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	bgt a3, a1, label3
	j label110
.p2align 2
label8:
	slli t0, a4, 1
	srli t2, t0, 48
	mv t0, a5
	add t1, a4, t2
	sraiw a4, t1, 16
	j label5
.p2align 2
label9:
	addiw t0, t0, 1
	slli t2, a4, 1
	srli a5, t2, 60
	add t1, a4, a5
	sraiw a4, t1, 4
	bgt a0, t0, label9
	andi a5, a4, 15
	addiw a1, a1, 1
	sh2add a4, a5, s3
	lw t0, 0(a4)
	addi a5, t0, 1
	sw a5, 0(a4)
	bgt a3, a1, label3
.p2align 2
label110:
	sw a2, 128(sp)
	lw a1, 0(sp)
	addw a3, a2, a1
	li a1, 1
	sw a3, 64(sp)
label15:
	addiw a3, a1, -1
	sh2add a4, a3, s2
	sh2add a3, a1, s1
	lw a5, 0(a4)
	sh2add a4, a1, s3
	sw a5, 0(a3)
	lw t1, 0(a4)
	addw t0, a5, t1
	sh2add a5, a1, s2
	sw t0, 0(a5)
	sw t0, 4(a3)
	lw t1, 4(a4)
	addw t0, t0, t1
	sw t0, 4(a5)
	sw t0, 8(a3)
	lw t1, 8(a4)
	addw t0, t0, t1
	sw t0, 8(a5)
	sw t0, 12(a3)
	lw a3, 12(a4)
	addw a4, t0, a3
	addiw a3, a1, 4
	sw a4, 12(a5)
	li a4, 13
	bge a3, a4, label17
	mv a1, a3
	j label15
label17:
	addiw a4, a1, 3
	sh2add a1, a4, s2
	sh2add a4, a3, s1
	lw a5, 0(a1)
	sh2add a3, a3, s3
	sw a5, 0(a4)
	lw t0, 0(a3)
	addw a5, a5, t0
	sw a5, 4(a1)
	sw a5, 4(a4)
	lw t0, 4(a3)
	addw a5, a5, t0
	sw a5, 8(a1)
	sw a5, 8(a4)
	lw a3, 8(a3)
	addw a4, a5, a3
	sw a4, 12(a1)
	mv a1, zero
	li a3, 16
	blt zero, a3, label198
	sw a2, 128(sp)
	mv s5, zero
	lw a0, 0(sp)
	addw a1, a2, a0
	sw a1, 64(sp)
	li a0, 16
	bge zero, a0, label44
.p2align 2
label23:
	bgt s5, zero, label25
.p2align 2
label24:
	sh2add a0, s5, s1
	sh2add a1, s5, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	blt s5, a0, label23
	j label44
label25:
	addiw a2, s5, -1
	sh2add a3, s5, s1
	sh2add a1, a2, s2
	sh2add a2, s5, s3
	lw a0, 0(a1)
	sw a0, 0(a3)
	lw a1, 0(a2)
	sh2add a2, s5, s2
	addw a0, a0, a1
	sw a0, 0(a2)
	j label24
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel429:
	auipc a0, %pcrel_hi(a)
	sd s2, 24(sp)
	addi s2, a0, %pcrel_lo(pcrel429)
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
	bgt s0, zero, label378
	mv s0, zero
	j label371
label378:
	mv a2, zero
	mv a0, zero
.p2align 2
label364:
	addiw a1, a0, 4
	ble s0, a1, label368
	sh2add a3, a0, s1
	addiw a4, a0, 3
	addiw t3, a0, 1
	lw t0, 0(a3)
	lw a5, 4(a3)
	remw t2, a5, a4
	addiw a5, a0, 2
	mulw t1, t2, t3
	remw t3, t0, a5
	mulw t0, a0, t3
	addiw a0, a0, 5
	addw t2, a2, t0
	lw t0, 8(a3)
	addw a2, t1, t2
	lw a3, 12(a3)
	remw t1, t0, a1
	mulw a5, a5, t1
	addw a2, a2, a5
	remw a5, a3, a0
	mv a0, a1
	mulw a3, a4, a5
	addw a2, a2, a3
	j label364
label368:
	sh2add a3, a0, s1
	addiw a4, a0, 2
	lw a1, 0(a3)
	remw a3, a1, a4
	mulw a1, a0, a3
	addiw a0, a0, 1
	addw a2, a2, a1
	bgt s0, a0, label368
	mv s0, a2
label371:
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
