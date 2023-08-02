.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	120000040
.text
.p2align 2
radixSort:
	addi sp, sp, -264
	mv a4, a0
	mv t1, a2
	mv a5, a3
	addi t2, sp, 200
	addiw a0, a2, 1
	sd ra, 0(sp)
	slt t0, a0, a3
	sd s0, 8(sp)
	xori a3, a4, -1
	xori a2, t0, 1
	mv s0, a1
	sd s5, 16(sp)
	sltiu t3, a3, 1
	addi a1, sp, 72
	or a0, a2, t3
	sd s1, 24(sp)
	li a2, 64
	addi s1, sp, 136
	sd s6, 32(sp)
	sd s3, 40(sp)
	li s3, 16
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
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
	sd zero, 256(sp)
	bne a0, zero, label2
	slliw a0, a4, 2
	slti a3, a4, 8
	addiw s2, a4, -1
	bge t1, a5, label4
	sh2add t0, t1, s0
	mv t3, t1
	lw t4, 0(t0)
	ble a4, zero, label38
.p2align 2
label37:
	slli t5, t4, 1
	subw a7, a2, a0
	srl a6, t5, a7
	add s4, t4, a6
	sraw t6, s4, a0
	mv t4, t6
	bne a3, zero, label38
	mv t4, zero
.p2align 2
label38:
	andi t5, t4, 15
	addiw t3, t3, 1
	sh2add t4, t5, t2
	lw a6, 0(t4)
	addi t6, a6, 1
	sw t6, 0(t4)
	ble a5, t3, label4
	addi t0, t0, 4
	lw t4, 0(t0)
	bgt a4, zero, label37
	j label38
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 264
	ret
.p2align 2
label27:
	ble s7, zero, label28
	addiw a1, s7, -1
	sh2add a0, a1, s1
	lw a2, 0(a0)
	sw a2, 0(s6)
	lw a1, 0(s4)
	addw a3, a2, a1
	sw a3, 0(s5)
.p2align 2
label30:
	mv a0, s2
	mv a1, s0
	jal radixSort
	addi s4, s4, 4
	addi s5, s5, 4
	addi s6, s6, 4
	addiw s7, s7, 1
	blt s7, s3, label27
	j label2
.p2align 2
label28:
	lw a2, 0(s6)
	lw a3, 0(s5)
	j label30
label4:
	sw t1, 72(sp)
	lw t0, 200(sp)
	addw a5, t1, t0
	sw a5, 136(sp)
	sw a5, 76(sp)
	lw t3, 204(sp)
	addw t0, a5, t3
	sw t0, 140(sp)
	sw t0, 80(sp)
	lw t3, 208(sp)
	addw a5, t0, t3
	sw a5, 144(sp)
	sw a5, 84(sp)
	lw t3, 212(sp)
	addw t0, a5, t3
	sw t0, 148(sp)
	sw t0, 88(sp)
	lw t3, 216(sp)
	addw a5, t0, t3
	sw a5, 152(sp)
	sw a5, 92(sp)
	lw t3, 220(sp)
	addw t0, a5, t3
	sw t0, 156(sp)
	sw t0, 96(sp)
	lw a5, 224(sp)
	addw t3, t0, a5
	sw t3, 160(sp)
	sw t3, 100(sp)
	lw t0, 228(sp)
	addw a5, t3, t0
	sw a5, 164(sp)
	sw a5, 104(sp)
	lw t3, 232(sp)
	addw t0, a5, t3
	sw t0, 168(sp)
	sw t0, 108(sp)
	lw t3, 236(sp)
	addw a5, t0, t3
	sw a5, 172(sp)
	sw a5, 112(sp)
	lw t0, 240(sp)
	addw t3, a5, t0
	sw t3, 176(sp)
	sw t3, 116(sp)
	lw a5, 244(sp)
	addw t0, t3, a5
	sw t0, 180(sp)
	sw t0, 120(sp)
	lw t3, 248(sp)
	addw a5, t0, t3
	sw a5, 184(sp)
	sw a5, 124(sp)
	lw t3, 252(sp)
	addw t0, a5, t3
	sw t0, 188(sp)
	sw t0, 128(sp)
	lw t3, 256(sp)
	addw a5, t0, t3
	mv t3, s1
	sw a5, 192(sp)
	sw a5, 132(sp)
	lw t0, 260(sp)
	addw t4, a5, t0
	mv a5, zero
	mv t0, a1
	sw t4, 196(sp)
	blt zero, s3, label9
label189:
	sw t1, 72(sp)
	mv s4, t2
	mv s5, s1
	mv s6, a1
	mv s7, zero
	lw a0, 200(sp)
	addw a2, t1, a0
	sw a2, 136(sp)
	j label22
.p2align 2
label9:
	lw t4, 0(t0)
	lw t5, 0(t3)
	bge t4, t5, label195
.p2align 2
label12:
	lw t5, 0(t0)
	sh2add t6, t5, s0
	lw t4, 0(t6)
	bgt a4, zero, label15
	j label202
.p2align 2
label210:
	lw t5, 0(t0)
	sh2add t6, t5, s0
	sw t4, 0(t6)
	addiw t4, t5, 1
	sw t4, 0(t0)
	lw t5, 0(t3)
	blt t4, t5, label12
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t3, t3, 4
	blt a5, s3, label9
	j label189
label22:
	blt s7, s3, label27
	j label2
label195:
	addiw a5, a5, 1
	addi t0, t0, 4
	addi t3, t3, 4
	blt a5, s3, label9
	j label189
.p2align 2
label15:
	slli t5, t4, 1
	subw a6, a2, a0
	srl a7, t5, a6
	add s4, t4, a7
	sraw t6, s4, a0
	mv t5, t6
	bne a3, zero, label16
	mv t5, zero
.p2align 2
label16:
	slli t6, t5, 1
	srli a6, t6, 60
	add a7, t5, a6
	andi s4, a7, -16
	subw t6, t5, s4
	beq a5, t6, label210
.p2align 2
label18:
	sh2add t5, t6, a1
	lw t6, 0(t5)
	addi s4, t6, 1
	sh2add a7, t6, s0
	lw a6, 0(a7)
	sw t4, 0(a7)
	mv t4, a6
	sw s4, 0(t5)
	bgt a4, zero, label15
	mv t5, a6
	slli t6, a6, 1
	srli a6, t6, 60
	add a7, t4, a6
	andi s4, a7, -16
	subw t6, t4, s4
	bne a5, t6, label18
	lw t5, 0(t0)
	sh2add t6, t5, s0
	sw t4, 0(t6)
	addiw t4, t5, 1
	sw t4, 0(t0)
	lw t5, 0(t3)
	blt t4, t5, label12
	j label195
.p2align 2
label202:
	mv t5, t4
	slli t6, t4, 1
	srli a6, t6, 60
	add a7, t4, a6
	andi s4, a7, -16
	subw t6, t4, s4
	bne a5, t6, label18
	lw t5, 0(t0)
	sh2add t6, t5, s0
	sw t4, 0(t6)
	addiw t4, t5, 1
	sw t4, 0(t0)
	lw t5, 0(t3)
	blt t4, t5, label12
	j label195
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
	li a0, 4
	addiw a1, s1, -4
	ble s1, a0, label405
	mv a0, s0
	mv a3, zero
	mv a2, zero
.p2align 2
label393:
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
	addw t2, t1, t5
	remw t5, t3, a4
	lw t3, 12(a0)
	mulw t4, t0, t5
	addiw t5, a3, 5
	addw t1, t2, t4
	remw t2, t3, t5
	mulw t0, a5, t2
	addw a3, t1, t0
	addw a2, a2, a3
	ble a1, a4, label445
	addi a0, a0, 16
	mv a3, a4
	j label393
.p2align 2
label386:
	lw a0, 0(s0)
	addiw a1, a4, 2
	remw a5, a0, a1
	mulw a3, a4, a5
	addiw a4, a4, 1
	addw a2, a2, a3
	ble s1, a4, label391
	addi s0, s0, 4
	j label386
label445:
	sh2add s0, a4, s0
	j label386
label391:
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
label405:
	mv a2, zero
	mv a4, zero
	j label386
