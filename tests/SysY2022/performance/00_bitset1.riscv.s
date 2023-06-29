.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -168
	sd s3, 160(sp)
	sd s1, 152(sp)
	sd s2, 128(sp)
	sd s0, 144(sp)
	sd ra, 136(sp)
	addi s3, sp, 0
	jal getint
	mv s1, a0
	jal getint
	mv s2, a0
	li a0, 56
	jal _sysy_starttime
pcrel219:
	auipc a0, %pcrel_hi(a)
	addi s0, a0, %pcrel_lo(pcrel219)
	ble s1, zero, label2
	mv a0, s2
	mv a1, s1
label3:
	li a3, 19971231
	mulw a0, a0, a3
	li a5, 19981013
	addw a0, a0, a5
	li t1, 1152921497
	mul a2, a0, t1
	srai a4, a2, 60
	srli a2, a2, 63
	add a2, a2, a4
	li a4, 1000000007
	mulw a2, a2, a4
	subw a0, a0, a2
	slti t2, a0, 0
	addw a2, a0, a4
	bne t2, zero, label205
	mv a2, a0
label205:
	mulw a0, a2, a3
	addw a0, a0, a5
	mul a3, a0, t1
	srai a5, a3, 60
	srli a3, a3, 63
	add a3, a3, a5
	mulw a3, a3, a4
	subw a3, a0, a3
	slti a5, a3, 0
	addw a0, a3, a4
	bne a5, zero, label203
	mv a0, a3
label203:
	li a3, 1876499845
	mul a4, a2, a3
	srai a3, a4, 49
	srli a4, a4, 63
	add a3, a4, a3
	li a4, 300000
	mulw a3, a3, a4
	subw a4, a2, a3
	li a2, -2004318071
	mul a2, a4, a2
	srli a2, a2, 32
	add a3, a2, a4
	sraiw a2, a3, 4
	srliw a3, a3, 31
	add a3, a3, a2
	addiw a2, a1, -1
	li a1, 1
	sw a1, 0(sp)
	li a1, 2
	sw a1, 4(s3)
	li a1, 4
	sw a1, 8(s3)
	li a1, 8
	sw a1, 12(s3)
	li a1, 16
	sw a1, 16(s3)
	li a1, 32
	sw a1, 20(s3)
	li a1, 64
	sw a1, 24(s3)
	li a1, 128
	sw a1, 28(s3)
	li a1, 256
	sw a1, 32(s3)
	li a1, 512
	sw a1, 36(s3)
	li a1, 1024
	sw a1, 40(s3)
	slli a1, a1, 1
	sw a1, 44(s3)
	slli a1, a1, 1
	sw a1, 48(s3)
	slli a1, a1, 1
	sw a1, 52(s3)
	slli a1, a1, 1
	sw a1, 56(s3)
	slli a1, a1, 1
	sw a1, 60(s3)
	slli a1, a1, 1
	sw a1, 64(s3)
	slli a1, a1, 1
	sw a1, 68(s3)
	slli a1, a1, 1
	sw a1, 72(s3)
	slli a1, a1, 1
	sw a1, 76(s3)
	slli a1, a1, 1
	sw a1, 80(s3)
	slli a1, a1, 1
	sw a1, 84(s3)
	slli a1, a1, 1
	sw a1, 88(s3)
	slli a1, a1, 1
	sw a1, 92(s3)
	slli a1, a1, 1
	sw a1, 96(s3)
	slli a1, a1, 1
	sw a1, 100(s3)
	slli a1, a1, 1
	sw a1, 104(s3)
	slli a1, a1, 1
	sw a1, 108(s3)
	slli a1, a1, 1
	sw a1, 112(s3)
	slli a1, a1, 1
	sw a1, 116(s3)
	slli a1, a1, 1
	sw a1, 120(s3)
	li a1, 9999
	ble a3, a1, label7
	ble a2, zero, label2
label211:
	mv a1, a2
	j label3
label7:
	slliw a1, a3, 2
	add a1, s0, a1
	lw a1, 0(a1)
	li a5, -2004318071
	mul a5, a4, a5
	srli a5, a5, 32
	add a5, a5, a4
	sraiw t1, a5, 4
	srliw a5, a5, 31
	add a5, a5, t1
	li t1, 30
	mulw a5, a5, t1
	subw a4, a4, a5
	slli a5, a4, 2
	add a5, s3, a5
	lw a5, 0(a5)
	divw t1, a1, a5
	srliw t2, t1, 31
	add t2, t1, t2
	sraiw t2, t2, 1
	li t3, 2
	mulw t2, t2, t3
	subw t2, t1, t2
	srliw t4, a0, 31
	add t4, a0, t4
	sraiw t4, t4, 1
	mulw t3, t4, t3
	subw t3, a0, t3
	beq t2, t3, label12
	andi a1, t1, 1
	xori t1, t3, 1
	or a1, a1, t1
	sltiu a1, a1, 1
	subw a1, zero, a1
	and a1, a5, a1
	xori a5, t2, 1
	or a5, a5, t3
	bne a5, zero, label10
	slli a4, a4, 2
	add a4, s3, a4
	lw a4, 0(a4)
	subw a1, a1, a4
	slliw a3, a3, 2
	add a3, s0, a3
	lw a4, 0(a3)
	addw a1, a1, a4
	sw a1, 0(a3)
	ble a2, zero, label2
	j label211
label12:
	slliw a3, a3, 2
	add a3, s0, a3
	sw a1, 0(a3)
	ble a2, zero, label2
	j label211
label10:
	slliw a3, a3, 2
	add a3, s0, a3
	lw a4, 0(a3)
	addw a1, a1, a4
	sw a1, 0(a3)
	ble a2, zero, label2
	j label211
label2:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 136(sp)
	ld s0, 144(sp)
	ld s2, 128(sp)
	ld s1, 152(sp)
	ld s3, 160(sp)
	addi sp, sp, 168
	ret
