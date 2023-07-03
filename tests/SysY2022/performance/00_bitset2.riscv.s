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
	sd s2, 152(sp)
	sd s3, 144(sp)
	sd s1, 136(sp)
	sd ra, 128(sp)
	addi s0, sp, 0
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 56
	jal _sysy_starttime
pcrel216:
	auipc a0, %pcrel_hi(a)
	addi s1, a0, %pcrel_lo(pcrel216)
	ble s2, zero, label2
	mv a0, s3
	mv a1, s2
label3:
	li a3, 19971231
	mulw a0, a0, a3
	li a4, 19981013
	addw a2, a0, a4
	li a5, 1152921497
	mul a0, a2, a5
	srai t0, a0, 60
	srli a0, a0, 63
	add t0, a0, t0
	li a0, 1000000007
	mulw t0, t0, a0
	subw t0, a2, t0
	slti t1, t0, 0
	addw a2, t0, a0
	bne t1, zero, label209
	mv a2, t0
label209:
	mulw a3, a2, a3
	addw a3, a3, a4
	mul a4, a3, a5
	srai a5, a4, 60
	srli a4, a4, 63
	add a4, a4, a5
	mulw a4, a4, a0
	subw a3, a3, a4
	slti a4, a3, 0
	addw a0, a3, a0
	bne a4, zero, label207
	mv a0, a3
label207:
	li a3, 1876499845
	mul a3, a2, a3
	srai a4, a3, 49
	srli a3, a3, 63
	add a3, a3, a4
	li a4, 300000
	mulw a3, a3, a4
	subw a3, a2, a3
	li a2, -2004318071
	mul a2, a3, a2
	srli a2, a2, 32
	add a2, a2, a3
	sraiw a4, a2, 4
	srliw a2, a2, 31
	add a2, a2, a4
	addiw a1, a1, -1
	li a4, 1
	sw a4, 0(sp)
	li a4, 2
	sw a4, 4(s0)
	li a4, 4
	sw a4, 8(s0)
	li a4, 8
	sw a4, 12(s0)
	li a4, 16
	sw a4, 16(s0)
	li a4, 32
	sw a4, 20(s0)
	li a4, 64
	sw a4, 24(s0)
	li a4, 128
	sw a4, 28(s0)
	li a4, 256
	sw a4, 32(s0)
	li a4, 512
	sw a4, 36(s0)
	li a4, 1024
	sw a4, 40(s0)
	slli a4, a4, 1
	sw a4, 44(s0)
	slli a4, a4, 1
	sw a4, 48(s0)
	slli a4, a4, 1
	sw a4, 52(s0)
	slli a4, a4, 1
	sw a4, 56(s0)
	slli a4, a4, 1
	sw a4, 60(s0)
	slli a4, a4, 1
	sw a4, 64(s0)
	slli a4, a4, 1
	sw a4, 68(s0)
	slli a4, a4, 1
	sw a4, 72(s0)
	slli a4, a4, 1
	sw a4, 76(s0)
	slli a4, a4, 1
	sw a4, 80(s0)
	slli a4, a4, 1
	sw a4, 84(s0)
	slli a4, a4, 1
	sw a4, 88(s0)
	slli a4, a4, 1
	sw a4, 92(s0)
	slli a4, a4, 1
	sw a4, 96(s0)
	slli a4, a4, 1
	sw a4, 100(s0)
	slli a4, a4, 1
	sw a4, 104(s0)
	slli a4, a4, 1
	sw a4, 108(s0)
	slli a4, a4, 1
	sw a4, 112(s0)
	slli a4, a4, 1
	sw a4, 116(s0)
	slli a4, a4, 1
	sw a4, 120(s0)
	li a4, 9999
	ble a2, a4, label7
label6:
	ble a1, zero, label2
	j label3
label7:
	sh2add a4, a2, s1
	lw a4, 0(a4)
	li a5, -2004318071
	mul a5, a3, a5
	srli a5, a5, 32
	add a5, a5, a3
	sraiw t0, a5, 4
	srliw a5, a5, 31
	add a5, a5, t0
	li t0, 30
	mulw a5, a5, t0
	subw a3, a3, a5
	sh2add a5, a3, s0
	lw t0, 0(a5)
	divw a5, a4, t0
	srliw t1, a5, 31
	add t1, a5, t1
	andi t1, t1, -2
	subw t2, a5, t1
	srliw t1, a0, 31
	add t1, a0, t1
	andi t1, t1, -2
	subw t1, a0, t1
	beq t2, t1, label89
	j label11
label89:
	mv t0, zero
	addw a3, a4, zero
	sh2add a2, a2, s1
	sw a3, 0(a2)
	j label6
label11:
	andi a4, a5, 1
	xori t2, t1, 1
	or a4, a4, t2
	sltiu a4, a4, 1
	subw a4, zero, a4
	and t0, t0, a4
	li a4, -2147483647
	and a4, a5, a4
	xori a4, a4, 1
	or a4, t1, a4
	bne a4, zero, label105
	j label104
label105:
	sh2add a3, a2, s1
	lw a4, 0(a3)
	addw a3, a4, t0
	sh2add a2, a2, s1
	sw a3, 0(a2)
	j label6
label104:
	sh2add a3, a3, s0
	lw a3, 0(a3)
	subw t0, t0, a3
	sh2add a3, a2, s1
	lw a4, 0(a3)
	addw a3, a4, t0
	sh2add a2, a2, s1
	sw a3, 0(a2)
	j label6
label2:
	li a0, 64
	jal _sysy_stoptime
	li a0, 10000
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 128(sp)
	ld s1, 136(sp)
	ld s3, 144(sp)
	ld s2, 152(sp)
	ld s0, 160(sp)
	addi sp, sp, 168
	ret
