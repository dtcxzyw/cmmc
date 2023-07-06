.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	40000
.text
.globl main
main:
	addi sp, sp, -168
	sd s0, 160(sp)
	addi s0, sp, 0
	sd s2, 152(sp)
	sd s3, 144(sp)
	sd s1, 136(sp)
	sd ra, 128(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 56
	jal _sysy_starttime
pcrel208:
	auipc a0, %pcrel_hi(a)
	addi s1, a0, %pcrel_lo(pcrel208)
	ble s2, zero, label9
	mv a1, s3
	mv a0, s2
label2:
	li a2, 19971231
	li a4, 19981013
	li a5, 1152921497
	mulw a1, a1, a2
	addw a3, a1, a4
	mul a1, a3, a5
	srai t0, a1, 60
	srli a1, a1, 63
	add t0, a1, t0
	li a1, 1000000007
	mulw t0, t0, a1
	subw t0, a3, t0
	addw a3, t0, a1
	slti t1, t0, 0
	bne t1, zero, label198
	mv a3, t0
label198:
	mulw a2, a3, a2
	addw a2, a2, a4
	mul a4, a2, a5
	srai a5, a4, 60
	srli a4, a4, 63
	add a4, a4, a5
	mulw a4, a4, a1
	subw a2, a2, a4
	addw a1, a2, a1
	slti a4, a2, 0
	bne a4, zero, label196
	mv a1, a2
label196:
	srliw a2, a1, 31
	li a4, 1876499845
	li t1, 1
	addiw a0, a0, -1
	add a2, a1, a2
	mul a4, a3, a4
	sw t1, 0(sp)
	andi a2, a2, -2
	srai a5, a4, 49
	li t1, 2
	subw a2, a1, a2
	srli a4, a4, 63
	sw t1, 4(s0)
	add a4, a4, a5
	li t1, 4
	li a5, 300000
	sw t1, 8(s0)
	li t1, 8
	mulw a4, a4, a5
	sw t1, 12(s0)
	li a5, -2004318071
	subw a4, a3, a4
	li t1, 16
	sw t1, 16(s0)
	mul a3, a4, a5
	li t1, 32
	mul a5, a4, a5
	srli a3, a3, 32
	sw t1, 20(s0)
	srli a5, a5, 32
	add a3, a3, a4
	li t1, 64
	add a5, a5, a4
	sraiw t0, a3, 4
	sw t1, 24(s0)
	srliw a3, a3, 31
	li t1, 128
	add a3, a3, t0
	sw t1, 28(s0)
	sh2add t0, a3, s1
	li t1, 256
	sw t1, 32(s0)
	li t1, 512
	sw t1, 36(s0)
	li t1, 1024
	sw t1, 40(s0)
	slli t1, t1, 1
	sw t1, 44(s0)
	slli t1, t1, 1
	sw t1, 48(s0)
	slli t1, t1, 1
	sw t1, 52(s0)
	slli t1, t1, 1
	sw t1, 56(s0)
	slli t1, t1, 1
	sw t1, 60(s0)
	slli t1, t1, 1
	sw t1, 64(s0)
	slli t1, t1, 1
	sw t1, 68(s0)
	slli t1, t1, 1
	sw t1, 72(s0)
	slli t1, t1, 1
	sw t1, 76(s0)
	slli t1, t1, 1
	sw t1, 80(s0)
	slli t1, t1, 1
	sw t1, 84(s0)
	slli t1, t1, 1
	sw t1, 88(s0)
	slli t1, t1, 1
	sw t1, 92(s0)
	slli t1, t1, 1
	sw t1, 96(s0)
	slli t1, t1, 1
	sw t1, 100(s0)
	slli t1, t1, 1
	sw t1, 104(s0)
	slli t1, t1, 1
	sw t1, 108(s0)
	slli t1, t1, 1
	sw t1, 112(s0)
	slli t1, t1, 1
	sw t1, 116(s0)
	slli t1, t1, 1
	sw t1, 120(s0)
	sraiw t1, a5, 4
	lw t0, 0(t0)
	srliw a5, a5, 31
	add a5, a5, t1
	li t1, 30
	mulw a5, a5, t1
	subw a4, a4, a5
	sh2add a5, a4, s0
	lw t1, 0(a5)
	divw a5, t0, t1
	srliw t0, a5, 31
	add t0, a5, t0
	andi t0, t0, -2
	subw t0, a5, t0
	beq a2, t0, label5
	j label6
label5:
	ble a0, zero, label9
	j label2
label6:
	andi t0, a5, 1
	xori t2, a2, 1
	or t0, t0, t2
	sltiu t0, t0, 1
	subw t0, zero, t0
	and t0, t1, t0
	li t1, -2147483647
	and a5, a5, t1
	xori a5, a5, 1
	or a2, a2, a5
	bne a2, zero, label8
	sh2add a2, a4, s0
	lw a2, 0(a2)
	subw a4, t0, a2
	sh2add a2, a3, s1
	lw a3, 0(a2)
	addw a3, a4, a3
	sw a3, 0(a2)
	ble a0, zero, label9
	j label2
label8:
	sh2add a2, a3, s1
	lw a3, 0(a2)
	addw a3, t0, a3
	sw a3, 0(a2)
	ble a0, zero, label9
	j label2
label9:
	li a0, 64
	jal _sysy_stoptime
	mv a1, s1
	li a0, 10000
	jal putarray
	ld ra, 128(sp)
	mv a0, zero
	ld s1, 136(sp)
	ld s3, 144(sp)
	ld s2, 152(sp)
	ld s0, 160(sp)
	addi sp, sp, 168
	ret
