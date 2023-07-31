.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
radixSort:
.p2align 2
	addi sp, sp, -248
	mv a4, a0
	mv a5, a2
	sd ra, 0(sp)
	addiw a2, a2, 1
	sd s0, 8(sp)
	mv s0, a1
	sd s5, 16(sp)
	slt a1, a2, a3
	sd s3, 24(sp)
	xori a2, a0, -1
	xori a0, a1, 1
	addi s3, sp, 184
	sd s2, 32(sp)
	sltiu a1, a2, 1
	addi s2, sp, 120
	or a0, a0, a1
	sd s1, 40(sp)
	addi s1, sp, 56
	sd s4, 48(sp)
	sd zero, 56(sp)
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
	beq a0, zero, label3
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 248
	ret
label3:
	slliw a0, a4, 2
	slti a2, a4, 8
	addiw s4, a4, -1
	bge a5, a3, label9
	mv a1, a5
.p2align 2
label4:
	sh2add t1, a1, s0
	lw t0, 0(t1)
	bgt a4, zero, label8
.p2align 2
label6:
	andi t2, t0, 15
	addiw a1, a1, 1
	sh2add t0, t2, s3
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	bgt a3, a1, label4
	j label9
.p2align 2
label8:
	slli t1, t0, 1
	li t2, 64
	subw t3, t2, a0
	srl t4, t1, t3
	add t1, t0, t4
	sraw t2, t1, a0
	mv t0, t2
	bne a2, zero, label6
	mv t0, zero
	mv t2, zero
	addiw a1, a1, 1
	mv t0, s3
	lw t1, 0(s3)
	addi t2, t1, 1
	sw t2, 0(s3)
	bgt a3, a1, label4
label9:
	sw a5, 56(sp)
	lw a3, 184(sp)
	addw a1, a5, a3
	sw a1, 120(sp)
	sw a1, 60(sp)
	lw a3, 188(sp)
	addw a1, a1, a3
	sw a1, 124(sp)
	sw a1, 64(sp)
	lw a3, 192(sp)
	addw a1, a1, a3
	sw a1, 128(sp)
	sw a1, 68(sp)
	lw a3, 196(sp)
	addw a1, a1, a3
	sw a1, 132(sp)
	sw a1, 72(sp)
	lw a3, 200(sp)
	addw a1, a1, a3
	sw a1, 136(sp)
	sw a1, 76(sp)
	lw a3, 204(sp)
	addw a1, a1, a3
	sw a1, 140(sp)
	sw a1, 80(sp)
	lw a3, 208(sp)
	addw a1, a1, a3
	sw a1, 144(sp)
	sw a1, 84(sp)
	lw a3, 212(sp)
	addw a1, a1, a3
	sw a1, 148(sp)
	sw a1, 88(sp)
	lw a3, 216(sp)
	addw a1, a1, a3
	sw a1, 152(sp)
	sw a1, 92(sp)
	lw a3, 220(sp)
	addw a1, a1, a3
	sw a1, 156(sp)
	sw a1, 96(sp)
	lw a3, 224(sp)
	addw a1, a1, a3
	sw a1, 160(sp)
	sw a1, 100(sp)
	lw a3, 228(sp)
	addw a1, a1, a3
	sw a1, 164(sp)
	sw a1, 104(sp)
	lw a3, 232(sp)
	addw a1, a1, a3
	sw a1, 168(sp)
	sw a1, 108(sp)
	lw a3, 236(sp)
	addw a1, a1, a3
	sw a1, 172(sp)
	sw a1, 112(sp)
	lw a3, 240(sp)
	addw a1, a1, a3
	sw a1, 176(sp)
	sw a1, 116(sp)
	lw a3, 244(sp)
	addw t0, a1, a3
	mv a1, zero
	sw t0, 180(sp)
	li a3, 16
	blt zero, a3, label12
label200:
	sw a5, 56(sp)
	mv s5, zero
	lw a0, 184(sp)
	addw a1, a5, a0
	sw a1, 120(sp)
	j label25
.p2align 2
label12:
	sh2add t0, a1, s1
	lw a3, 0(t0)
	sh2add t1, a1, s2
	lw t0, 0(t1)
	bge a3, t0, label210
.p2align 2
label15:
	sh2add a3, a1, s1
	lw t0, 0(a3)
	sh2add t1, t0, s0
	lw a3, 0(t1)
	bgt a4, zero, label22
	j label219
.p2align 2
label224:
	sh2add t0, a1, s1
	lw t1, 0(t0)
	sh2add t2, t1, s0
	sw a3, 0(t2)
	addiw a3, t1, 1
	sw a3, 0(t0)
	sh2add t1, a1, s2
	lw t0, 0(t1)
	blt a3, t0, label15
label328:
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label12
	j label200
label25:
	li a0, 16
	blt s5, a0, label27
	j label2
.p2align 2
label219:
	mv t0, a3
.p2align 2
label18:
	slli t2, t0, 1
	srli t3, t2, 60
	add t1, t0, t3
	andi t2, t1, -16
	subw t0, t0, t2
	beq a1, t0, label224
.p2align 2
label20:
	sh2add t0, t0, s1
	lw t1, 0(t0)
	sh2add t3, t1, s0
	addi t1, t1, 1
	lw t2, 0(t3)
	sw a3, 0(t3)
	mv a3, t2
	sw t1, 0(t0)
	ble a4, zero, label322
.p2align 2
label22:
	slli t0, a3, 1
	li t1, 64
	subw t2, t1, a0
	srl t0, t0, t2
	add t1, a3, t0
	sraw t2, t1, a0
	mv t0, t2
	bne a2, zero, label18
	mv t0, zero
	mv t2, zero
	mv t3, zero
	mv t1, zero
	bne a1, zero, label20
	sh2add t0, a1, s1
	lw t1, 0(t0)
	sh2add t2, t1, s0
	sw a3, 0(t2)
	addiw a3, t1, 1
	sw a3, 0(t0)
	sh2add t1, a1, s2
	lw t0, 0(t1)
	blt a3, t0, label15
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label12
	j label200
.p2align 2
label27:
	bgt s5, zero, label32
	j label28
.p2align 2
label29:
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s5, s5, 1
	li a0, 16
	blt s5, a0, label27
	j label2
.p2align 2
label32:
	addiw a1, s5, -1
	sh2add a0, a1, s2
	sh2add a1, s5, s1
	lw a2, 0(a0)
	sh2add a0, s5, s3
	sw a2, 0(a1)
	lw a1, 0(a0)
	sh2add a0, s5, s2
	addw a3, a2, a1
	sw a3, 0(a0)
	j label29
.p2align 2
label322:
	mv t0, a3
	slli t2, a3, 1
	srli t3, t2, 60
	add t1, a3, t3
	andi t2, t1, -16
	subw t0, a3, t2
	bne a1, t0, label20
	sh2add t0, a1, s1
	lw t1, 0(t0)
	sh2add t2, t1, s0
	sw a3, 0(t2)
	addiw a3, t1, 1
	sw a3, 0(t0)
	sh2add t1, a1, s2
	lw t0, 0(t1)
	blt a3, t0, label15
	j label328
.p2align 2
label28:
	sh2add a1, s5, s1
	sh2add a0, s5, s2
	lw a2, 0(a1)
	lw a3, 0(a0)
	j label29
label210:
	addiw a1, a1, 1
	li a3, 16
	blt a1, a3, label12
	j label200
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel421:
	auipc a0, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s2, 8(sp)
	addi s2, a0, %pcrel_lo(pcrel421)
	sd s1, 16(sp)
	mv s1, s2
	sd s0, 24(sp)
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
	ble s0, zero, label357
	addiw a2, s0, -4
	li a1, 4
	ble s0, a1, label362
	mv a1, zero
	mv a0, zero
label345:
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
	ble a2, a3, label348
	mv a1, a3
	j label345
label348:
	sh2add a2, a3, s1
	addiw a4, a3, 2
	lw a1, 0(a2)
	remw a2, a1, a4
	mulw a1, a3, a2
	addiw a3, a3, 1
	addw a0, a0, a1
	bgt s0, a3, label348
	mv s0, a0
label351:
	li a0, 102
	jal _sysy_stoptime
	subw a1, zero, s0
	max a0, a1, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label362:
	mv a0, zero
	mv a3, zero
	j label348
label357:
	mv s0, zero
	j label351
