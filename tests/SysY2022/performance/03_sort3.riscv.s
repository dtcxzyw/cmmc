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
	addiw a0, a2, 1
	sd s0, 8(sp)
	slt t0, a0, a3
	mv s0, a1
	xori a3, a4, -1
	xori a2, t0, 1
	addi a1, sp, 64
	sltiu t2, a3, 1
	sd s5, 16(sp)
	or a0, a2, t2
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
	bne a0, zero, label38
	slliw a0, a4, 2
	slti a3, a4, 8
	addiw s3, a4, -1
	bge t1, a5, label3
	sh2add t0, t1, s0
	mv t2, t1
	lw t3, 0(t0)
	ble a4, zero, label35
.p2align 2
label34:
	slli t4, t3, 1
	subw t6, a2, a0
	srl t5, t4, t6
	add a6, t3, t5
	sraw a7, a6, a0
	mv t3, a7
	bne a3, zero, label35
	mv t3, zero
.p2align 2
label35:
	andi t5, t3, 15
	addiw t2, t2, 1
	sh2add t3, t5, s2
	lw t6, 0(t3)
	addi t4, t6, 1
	sw t4, 0(t3)
	ble a5, t2, label3
	addi t0, t0, 4
	lw t3, 0(t0)
	bgt a4, zero, label34
	j label35
label38:
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
label3:
	sw t1, 64(sp)
	lw t0, 192(sp)
	addw a5, t1, t0
	sw a5, 128(sp)
	sw a5, 68(sp)
	lw t2, 196(sp)
	addw t0, a5, t2
	sw t0, 132(sp)
	sw t0, 72(sp)
	lw t2, 200(sp)
	addw a5, t0, t2
	sw a5, 136(sp)
	sw a5, 76(sp)
	lw t2, 204(sp)
	addw t0, a5, t2
	sw t0, 140(sp)
	sw t0, 80(sp)
	lw t2, 208(sp)
	addw a5, t0, t2
	sw a5, 144(sp)
	sw a5, 84(sp)
	lw t2, 212(sp)
	addw t0, a5, t2
	sw t0, 148(sp)
	sw t0, 88(sp)
	lw t2, 216(sp)
	addw a5, t0, t2
	sw a5, 152(sp)
	sw a5, 92(sp)
	lw t2, 220(sp)
	addw t0, a5, t2
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
	lw a5, 240(sp)
	addw t2, t0, a5
	sw t2, 176(sp)
	sw t2, 116(sp)
	lw t0, 244(sp)
	addw a5, t2, t0
	sw a5, 180(sp)
	sw a5, 120(sp)
	lw t2, 248(sp)
	addw t0, a5, t2
	mv t2, s1
	sw t0, 184(sp)
	sw t0, 124(sp)
	lw t3, 252(sp)
	addw a5, t0, t3
	mv t0, a1
	sw a5, 188(sp)
	mv a5, zero
	blt zero, s4, label18
label8:
	sw t1, 64(sp)
	mv s5, a1
	mv s6, zero
	lw a0, 192(sp)
	addw a2, t1, a0
	sw a2, 128(sp)
.p2align 2
label12:
	lw a2, 0(s5)
	sh2add a0, s6, s1
	lw a3, 0(a0)
	j label14
.p2align 2
label13:
	addiw a1, s6, -1
	sh2add a0, a1, s1
	sh2add a1, s6, s2
	lw a2, 0(a0)
	sh2add a0, s6, s1
	sw a2, 0(s5)
	lw a4, 0(a1)
	addw a3, a2, a4
	sw a3, 0(a0)
.p2align 2
label14:
	mv a0, s3
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	bge s6, s4, label38
	addi s5, s5, 4
	bgt s6, zero, label13
	j label12
.p2align 2
label18:
	lw t3, 0(t0)
	lw t4, 0(t2)
	bge t3, t4, label219
.p2align 2
label21:
	lw t4, 0(t0)
	sh2add t5, t4, s0
	lw t3, 0(t5)
	bgt a4, zero, label28
	j label226
.p2align 2
label26:
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label21
.p2align 2
label369:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label18
	j label8
.p2align 2
label226:
	mv t4, t3
.p2align 2
label24:
	slli t5, t4, 1
	srli a7, t5, 60
	add t6, t4, a7
	andi a6, t6, -16
	subw t5, t4, a6
	beq a5, t5, label26
.p2align 2
label27:
	sh2add t4, t5, a1
	lw t5, 0(t4)
	addi a7, t5, 1
	sh2add a6, t5, s0
	lw t6, 0(a6)
	sw t3, 0(a6)
	mv t3, t6
	sw a7, 0(t4)
	ble a4, zero, label370
.p2align 2
label28:
	slli t4, t3, 1
	subw a7, a2, a0
	srl a6, t4, a7
	add t6, t3, a6
	sraw t5, t6, a0
	mv t4, t5
	bne a3, zero, label24
	mv t4, zero
	mv a7, zero
	mv t6, zero
	mv a6, zero
	mv t5, zero
	bne a5, zero, label27
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label21
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label18
	j label8
.p2align 2
label370:
	mv t4, t3
	slli t5, t3, 1
	srli a7, t5, 60
	add t6, t3, a7
	andi a6, t6, -16
	subw t5, t3, a6
	bne a5, t5, label27
	lw t4, 0(t0)
	sh2add t5, t4, s0
	sw t3, 0(t5)
	addiw t3, t4, 1
	sw t3, 0(t0)
	lw t4, 0(t2)
	blt t3, t4, label21
	j label369
label219:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t2, t2, 4
	blt a5, s4, label18
	j label8
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel466:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel466)
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
	ble s1, a0, label409
	mv a0, s0
	mv a3, zero
	mv a2, zero
.p2align 2
label397:
	lw a4, 0(a0)
	addiw a5, a3, 3
	addiw t3, a3, 1
	lw t0, 4(a0)
	remw t2, t0, a5
	addiw t0, a3, 2
	remw t5, a4, t0
	addiw a4, a3, 4
	mulw t1, t2, t3
	lw t3, 8(a0)
	mulw t4, a3, t5
	remw t5, t3, a4
	addw t2, t1, t4
	lw t3, 12(a0)
	mulw t4, t0, t5
	addiw t5, a3, 5
	addw t1, t2, t4
	remw t2, t3, t5
	mulw t0, a5, t2
	addw a3, t1, t0
	addw a2, a2, a3
	ble a1, a4, label401
	addi a0, a0, 16
	mv a3, a4
	j label397
.p2align 2
label390:
	lw a0, 0(s0)
	addiw a1, a4, 2
	remw a5, a0, a1
	mulw a3, a4, a5
	addiw a4, a4, 1
	addw a2, a2, a3
	ble s1, a4, label395
	addi s0, s0, 4
	j label390
label401:
	sh2add s0, a4, s0
	j label390
label395:
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
label409:
	mv a2, zero
	mv a4, zero
	j label390
