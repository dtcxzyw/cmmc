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
	xori t0, a0, -1
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a1
	sd s5, 16(sp)
	mv a1, a3
	li s5, 16
	addiw a3, a2, 1
	sd s3, 24(sp)
	slt a0, a3, a1
	addi s3, sp, 192
	sltiu a3, t0, 1
	xori a2, a0, 1
	sd s2, 32(sp)
	or a0, a2, a3
	addi s2, sp, 128
	li a2, 64
	sd s1, 40(sp)
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
	ble a4, zero, label7
	slli t2, t1, 1
	subw t6, a2, a0
	srl t5, t2, t6
	add t3, t1, t5
	sraw t4, t3, a0
	mv t1, t4
	bne a3, zero, label7
	mv t1, zero
.p2align 2
label7:
	andi t2, t1, 15
	addiw t0, t0, 1
	sh2add t1, t2, s3
	lw t4, 0(t1)
	addi t3, t4, 1
	sw t3, 0(t1)
	bgt a1, t0, label4
label9:
	sw a5, 64(sp)
	lw t0, 192(sp)
	addw a1, a5, t0
	sw a1, 128(sp)
	sw a1, 68(sp)
	lw t1, 196(sp)
	addw t0, a1, t1
	sw t0, 132(sp)
	sw t0, 72(sp)
	lw t1, 200(sp)
	addw a1, t0, t1
	sw a1, 136(sp)
	sw a1, 76(sp)
	lw t1, 204(sp)
	addw t0, a1, t1
	sw t0, 140(sp)
	sw t0, 80(sp)
	lw t1, 208(sp)
	addw a1, t0, t1
	sw a1, 144(sp)
	sw a1, 84(sp)
	lw t1, 212(sp)
	addw t0, a1, t1
	sw t0, 148(sp)
	sw t0, 88(sp)
	lw t1, 216(sp)
	addw a1, t0, t1
	sw a1, 152(sp)
	sw a1, 92(sp)
	lw t1, 220(sp)
	addw t0, a1, t1
	sw t0, 156(sp)
	sw t0, 96(sp)
	lw t1, 224(sp)
	addw a1, t0, t1
	sw a1, 160(sp)
	sw a1, 100(sp)
	lw t1, 228(sp)
	addw t0, a1, t1
	sw t0, 164(sp)
	sw t0, 104(sp)
	lw t1, 232(sp)
	addw a1, t0, t1
	sw a1, 168(sp)
	sw a1, 108(sp)
	lw t1, 236(sp)
	addw t0, a1, t1
	sw t0, 172(sp)
	sw t0, 112(sp)
	lw t1, 240(sp)
	addw a1, t0, t1
	sw a1, 176(sp)
	sw a1, 116(sp)
	lw t0, 244(sp)
	addw t1, a1, t0
	sw t1, 180(sp)
	sw t1, 120(sp)
	lw a1, 248(sp)
	addw t0, t1, a1
	mv a1, zero
	sw t0, 184(sp)
	sw t0, 124(sp)
	lw t1, 252(sp)
	addw t2, t0, t1
	sw t2, 188(sp)
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
	sh2add t1, a1, s2
	lw t2, 0(t1)
	bge t0, t2, label210
.p2align 2
label15:
	sh2add t2, a1, s1
	lw t3, 0(t2)
	sh2add t1, t3, s0
	lw t0, 0(t1)
	bgt a4, zero, label18
	j label219
.p2align 2
label227:
	sh2add t1, a1, s1
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sw t0, 0(t3)
	addiw t0, t2, 1
	sw t0, 0(t1)
	sh2add t1, a1, s2
	lw t2, 0(t1)
	blt t0, t2, label15
	addiw a1, a1, 1
	blt a1, s5, label12
	j label200
label25:
	blt s6, s5, label27
	j label2
label210:
	addiw a1, a1, 1
	blt a1, s5, label12
	j label200
.p2align 2
label18:
	slli t1, t0, 1
	subw t2, a2, a0
	srl t3, t1, t2
	add t4, t0, t3
	sraw t5, t4, a0
	mv t1, t5
	bne a3, zero, label19
	mv t1, zero
.p2align 2
label19:
	slli t2, t1, 1
	srli t4, t2, 60
	add t5, t1, t4
	andi t3, t5, -16
	subw t2, t1, t3
	beq a1, t2, label227
.p2align 2
label21:
	sh2add t1, t2, s1
	lw t2, 0(t1)
	addi t5, t2, 1
	sh2add t4, t2, s0
	lw t3, 0(t4)
	sw t0, 0(t4)
	mv t0, t3
	sw t5, 0(t1)
	bgt a4, zero, label18
	mv t1, t3
	slli t2, t3, 1
	srli t4, t2, 60
	add t5, t3, t4
	andi t3, t5, -16
	subw t2, t0, t3
	bne a1, t2, label21
	sh2add t1, a1, s1
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sw t0, 0(t3)
	addiw t0, t2, 1
	sw t0, 0(t1)
	sh2add t1, a1, s2
	lw t2, 0(t1)
	blt t0, t2, label15
	j label210
.p2align 2
label27:
	bgt s6, zero, label29
	sh2add a1, s6, s1
	sh2add a0, s6, s2
	lw a2, 0(a1)
	lw a3, 0(a0)
.p2align 2
label30:
	mv a0, s4
	mv a1, s0
	jal radixSort
	addiw s6, s6, 1
	blt s6, s5, label27
	j label2
.p2align 2
label219:
	mv t1, t0
	slli t2, t0, 1
	srli t4, t2, 60
	add t5, t0, t4
	andi t3, t5, -16
	subw t2, t0, t3
	bne a1, t2, label21
	sh2add t1, a1, s1
	lw t2, 0(t1)
	sh2add t3, t2, s0
	sw t0, 0(t3)
	addiw t0, t2, 1
	sw t0, 0(t1)
	sh2add t1, a1, s2
	lw t2, 0(t1)
	blt t0, t2, label15
	j label210
.p2align 2
label29:
	addiw a1, s6, -1
	sh2add a0, s6, s1
	sh2add a3, a1, s2
	sh2add a1, s6, s3
	lw a2, 0(a3)
	sw a2, 0(a0)
	sh2add a0, s6, s2
	lw a4, 0(a1)
	addw a3, a2, a4
	sw a3, 0(a0)
	j label30
.p2align 2
.globl main
main:
	addi sp, sp, -24
pcrel462:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel462)
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
	li a2, 4
	addiw a0, s1, -4
	ble s1, a2, label405
	mv a2, zero
	mv a1, zero
.p2align 2
label393:
	sh2add a3, a2, s0
	addiw a4, a2, 3
	addiw t3, a2, 1
	lw a5, 0(a3)
	lw t0, 4(a3)
	remw t2, t0, a4
	addiw t0, a2, 2
	remw t5, a5, t0
	addiw a5, a2, 4
	mulw t1, t2, t3
	lw t3, 8(a3)
	mulw t4, a2, t5
	remw t5, t3, a5
	addw t2, t1, t4
	lw t3, 12(a3)
	mulw t4, t0, t5
	addiw t0, a2, 5
	addw t1, t2, t4
	remw t2, t3, t0
	mulw a3, a4, t2
	addw a2, t1, a3
	addw a1, a1, a2
	ble a0, a5, label396
	mv a2, a5
	j label393
.p2align 2
label396:
	sh2add a2, a5, s0
	addiw a4, a5, 2
	lw a0, 0(a2)
	remw a3, a0, a4
	mulw a2, a5, a3
	addiw a5, a5, 1
	addw a1, a1, a2
	bgt s1, a5, label396
	subw a2, zero, a1
	li a0, 102
	max s0, a2, a1
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
label405:
	mv a1, zero
	mv a5, zero
	j label396
