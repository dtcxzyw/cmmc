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
	mv a5, a2
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s5, 16(sp)
	mv a1, a3
	li s5, 16
	addiw a3, a2, 1
	sd s3, 24(sp)
	slt a2, a3, a1
	addi s3, sp, 192
	xori a3, a0, -1
	xori a0, a2, 1
	sd s2, 32(sp)
	sltiu a2, a3, 1
	addi s2, sp, 128
	or a0, a0, a2
	sd s1, 40(sp)
	li a2, 64
	addi s1, sp, 64
	sd s6, 48(sp)
	sd s4, 56(sp)
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
	beq a0, zero, label3
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s4, 56(sp)
	addi sp, sp, 256
	ret
label3:
	slliw a0, a4, 2
	slti a3, a4, 8
	addiw s4, a4, -1
	bge a5, a1, label9
	mv t0, a5
.p2align 2
label4:
	sh2add t2, t0, s0
	lw t1, 0(t2)
	bgt a4, zero, label8
.p2align 2
label6:
	andi t3, t1, 15
	addiw t0, t0, 1
	sh2add t1, t3, s3
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
	bgt a1, t0, label4
	j label9
.p2align 2
label8:
	slli t2, t1, 1
	subw t3, a2, a0
	srl t4, t2, t3
	add t2, t1, t4
	sraw t3, t2, a0
	mv t1, t3
	bne a3, zero, label6
	mv t1, zero
	mv t3, zero
	addiw t0, t0, 1
	mv t1, s3
	lw t2, 0(s3)
	addi t3, t2, 1
	sw t3, 0(s3)
	bgt a1, t0, label4
label9:
	sw a5, 64(sp)
	lw t0, 192(sp)
	addw a1, a5, t0
	sw a1, 128(sp)
	sw a1, 68(sp)
	lw t0, 196(sp)
	addw a1, a1, t0
	sw a1, 132(sp)
	sw a1, 72(sp)
	lw t0, 200(sp)
	addw a1, a1, t0
	sw a1, 136(sp)
	sw a1, 76(sp)
	lw t0, 204(sp)
	addw a1, a1, t0
	sw a1, 140(sp)
	sw a1, 80(sp)
	lw t0, 208(sp)
	addw a1, a1, t0
	sw a1, 144(sp)
	sw a1, 84(sp)
	lw t0, 212(sp)
	addw a1, a1, t0
	sw a1, 148(sp)
	sw a1, 88(sp)
	lw t0, 216(sp)
	addw a1, a1, t0
	sw a1, 152(sp)
	sw a1, 92(sp)
	lw t0, 220(sp)
	addw a1, a1, t0
	sw a1, 156(sp)
	sw a1, 96(sp)
	lw t0, 224(sp)
	addw a1, a1, t0
	sw a1, 160(sp)
	sw a1, 100(sp)
	lw t0, 228(sp)
	addw a1, a1, t0
	sw a1, 164(sp)
	sw a1, 104(sp)
	lw t0, 232(sp)
	addw a1, a1, t0
	sw a1, 168(sp)
	sw a1, 108(sp)
	lw t0, 236(sp)
	addw a1, a1, t0
	sw a1, 172(sp)
	sw a1, 112(sp)
	lw t0, 240(sp)
	addw a1, a1, t0
	sw a1, 176(sp)
	sw a1, 116(sp)
	lw t0, 244(sp)
	addw a1, a1, t0
	sw a1, 180(sp)
	sw a1, 120(sp)
	lw t0, 248(sp)
	addw a1, a1, t0
	sw a1, 184(sp)
	sw a1, 124(sp)
	lw t0, 252(sp)
	addw t1, a1, t0
	mv a1, zero
	sw t1, 188(sp)
	blt zero, s5, label12
label200:
	sw a5, 64(sp)
	mv s6, zero
	lw a0, 192(sp)
	addw a1, a5, a0
	sw a1, 128(sp)
	j label25
.p2align 2
label12:
	sh2add t1, a1, s1
	lw t0, 0(t1)
	sh2add t2, a1, s2
	lw t1, 0(t2)
	bge t0, t1, label210
.p2align 2
label15:
	sh2add t0, a1, s1
	lw t1, 0(t0)
	sh2add t2, t1, s0
	lw t0, 0(t2)
	bgt a4, zero, label22
	j label219
.p2align 2
label224:
	sh2add t1, a1, s1
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sw t0, 0(t3)
	addiw t0, t2, 1
	sw t0, 0(t1)
	sh2add t2, a1, s2
	lw t1, 0(t2)
	blt t0, t1, label15
.p2align 2
label333:
	addiw a1, a1, 1
	blt a1, s5, label12
	j label200
label25:
	blt s6, s5, label27
	j label2
.p2align 2
label18:
	slli t3, t1, 1
	srli t4, t3, 60
	add t2, t1, t4
	andi t3, t2, -16
	subw t1, t1, t3
	beq a1, t1, label224
.p2align 2
label20:
	sh2add t1, t1, s1
	lw t2, 0(t1)
	sh2add t4, t2, s0
	addi t2, t2, 1
	lw t3, 0(t4)
	sw t0, 0(t4)
	mv t0, t3
	sw t2, 0(t1)
	bgt a4, zero, label22
	mv t1, t3
	slli t3, t3, 1
	srli t4, t3, 60
	add t2, t0, t4
	andi t3, t2, -16
	subw t1, t0, t3
	bne a1, t1, label20
	j label336
.p2align 2
label22:
	slli t1, t0, 1
	subw t4, a2, a0
	srl t3, t1, t4
	add t2, t0, t3
	sraw t4, t2, a0
	mv t1, t4
	bne a3, zero, label18
	mv t1, zero
	mv t3, zero
	mv t4, zero
	mv t2, zero
	bne a1, zero, label20
	sh2add t1, a1, s1
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sw t0, 0(t3)
	addiw t0, t2, 1
	sw t0, 0(t1)
	sh2add t2, a1, s2
	lw t1, 0(t2)
	blt t0, t1, label15
	addiw a1, a1, 1
	blt a1, s5, label12
	j label200
.p2align 2
label27:
	bgt s6, zero, label32
	sh2add a0, s6, s1
	sh2add a1, s6, s2
	lw a2, 0(a0)
	lw a3, 0(a1)
.p2align 2
label29:
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	blt s6, s5, label27
	j label2
.p2align 2
label336:
	sh2add t1, a1, s1
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sw t0, 0(t3)
	addiw t0, t2, 1
	sw t0, 0(t1)
	sh2add t2, a1, s2
	lw t1, 0(t2)
	blt t0, t1, label15
	j label333
label210:
	addiw a1, a1, 1
	blt a1, s5, label12
	j label200
.p2align 2
label32:
	addiw a1, s6, -1
	sh2add a3, s6, s1
	sh2add a0, a1, s2
	sh2add a1, s6, s3
	lw a2, 0(a0)
	sw a2, 0(a3)
	lw a0, 0(a1)
	sh2add a1, s6, s2
	addw a3, a2, a0
	sw a3, 0(a1)
	j label29
.p2align 2
label219:
	mv t1, t0
	j label18
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel423:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel423)
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
	ble s1, zero, label360
	addiw a1, s1, -4
	li a2, 4
	ble s1, a2, label365
	mv a2, zero
	mv a0, zero
.p2align 2
label348:
	sh2add a3, a2, s0
	addiw a4, a2, 3
	addiw t3, a2, 1
	lw a5, 0(a3)
	lw t0, 4(a3)
	remw t2, t0, a4
	addiw t0, a2, 2
	remw a5, a5, t0
	mulw t1, t2, t3
	lw t2, 8(a3)
	lw a3, 12(a3)
	mulw t3, a2, a5
	addiw a5, a2, 4
	addw t1, t1, t3
	addiw a2, a2, 5
	remw t3, t2, a5
	mulw t2, t0, t3
	addw t0, t1, t2
	remw t1, a3, a2
	mulw a3, a4, t1
	addw a2, t0, a3
	addw a0, a0, a2
	ble a1, a5, label351
	mv a2, a5
	j label348
label351:
	sh2add a2, a5, s0
	addiw a3, a5, 2
	lw a1, 0(a2)
	remw a2, a1, a3
	mulw a1, a5, a2
	addiw a5, a5, 1
	addw a0, a0, a1
	bgt s1, a5, label351
	mv s0, a0
label354:
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
	addi sp, sp, 24
	ret
label365:
	mv a0, zero
	mv a5, zero
	j label351
label360:
	mv s0, zero
	j label354
