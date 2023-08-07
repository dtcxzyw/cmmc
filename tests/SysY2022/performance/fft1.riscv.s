.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
a:
	.zero	8388608
.align 8
b:
	.zero	8388608
.text
.p2align 2
multiply:
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s2, 24(sp)
	sd s3, 32(sp)
	sd s4, 40(sp)
	beq a1, zero, label30
	li a1, 1
	bne s1, a1, label4
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, a0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label24
label30:
	mv a0, zero
label24:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label4:
	addiw a1, s1, 1
	li a2, 3
	bltu a1, a2, label40
	addiw a1, s1, -2
	srliw a0, s1, 31
	li a3, 2
	add a2, s1, a0
	sraiw s2, a2, 1
	bgeu a1, a3, label10
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label5
label40:
	mv a0, zero
label5:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s1, a2
	beq a1, a3, label7
	j label24
label10:
	addiw a1, s1, 3
	li a2, 7
	bltu a1, a2, label61
	addiw a1, s1, -4
	slli a2, s1, 1
	srli a0, a2, 62
	li a2, 4
	add a3, s1, a0
	sraiw s3, a3, 2
	bltu a1, a2, label23
	addiw a1, s3, 1
	li a2, 3
	bgeu a1, a2, label19
	mv a0, zero
label16:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s3, a2
	beq a1, a3, label18
	j label11
label61:
	mv a0, zero
label11:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	lui a4, 524288
	mulw a3, a2, a5
	addiw a2, a4, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s2, a2
	beq a1, a3, label13
	j label5
label19:
	addiw a1, s3, -2
	slli a2, s1, 1
	srli a3, a2, 61
	li a2, 2
	add a0, s1, a3
	sraiw s4, a0, 3
	bgeu a1, a2, label20
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a3, a5, 1
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, s0, a2
	j label16
label20:
	slli a0, s1, 1
	srli a3, a0, 60
	mv a0, s0
	add a2, s1, a3
	sraiw a1, a2, 4
	jal multiply
	slliw a1, a0, 1
	lui t0, 243712
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	lui a5, 524288
	mulw a3, a2, a4
	addiw a2, a5, 1
	subw a0, a1, a3
	li a3, 1
	and a1, s4, a2
	bne a1, a3, label16
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label16
label13:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label5
label7:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label24
label23:
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, s0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label11
label18:
	addw a1, s0, a0
	lui a4, 70493
	lui t0, 243712
	addiw a2, a4, -2031
	addiw a4, t0, 1
	mul a0, a1, a2
	srli a5, a0, 63
	srai a3, a0, 58
	add a2, a5, a3
	mulw a3, a2, a4
	subw a0, a1, a3
	j label11
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label479
	li a0, 1
label477:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label479:
	srliw a2, s1, 31
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 1
	jal power
	mv a1, a0
	jal multiply
	li a4, 1
	lui a3, 524288
	addiw a2, a3, 1
	and a1, s1, a2
	bne a1, a4, label477
	mv a1, s0
	jal multiply
	j label477
.p2align 2
fft:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	lui a0, 243712
	sd s2, 24(sp)
	mv s2, a1
	sd s0, 32(sp)
	lui a1, 70493
	mv s0, a3
	sd s5, 40(sp)
	addiw s5, a1, -2031
	sd s7, 48(sp)
	li s7, 1
	sd s4, 56(sp)
	addiw s4, a0, 1
	sd s3, 64(sp)
	sd s8, 72(sp)
	beq a2, s7, label304
	srliw a0, a2, 31
pcrel475:
	auipc a3, %pcrel_hi(temp)
	add a1, a2, a0
	addi a0, a3, %pcrel_lo(pcrel475)
	sraiw s3, a1, 1
	ble a2, zero, label300
	mv a1, zero
.p2align 2
label283:
	addw a3, s2, a1
	andi a4, a1, 1
	srliw t0, a1, 31
	add t1, a1, t0
	sraiw a5, t1, 1
	beq a4, zero, label286
	addw t2, s3, a5
	sh2add a4, a3, s1
	addiw a1, a1, 1
	sh2add t0, t2, a0
	lw t1, 0(a4)
	sw t1, 0(t0)
	bgt a2, a1, label283
	j label288
.p2align 2
label286:
	sh2add a4, a5, a0
	sh2add t0, a3, s1
	lw t1, 0(t0)
	sw t1, 0(a4)
	addiw a1, a1, 1
	bgt a2, a1, label283
label288:
	li a3, 4
	ble a2, a3, label289
	addiw a4, s2, 1
	addiw a5, s2, 2
	addiw t0, s2, 3
	addiw t1, a2, -4
	mv a1, a0
	mv a3, zero
.p2align 2
label295:
	addw t2, s2, a3
	addw t5, a4, a3
	lw t4, 0(a1)
	sh2add t3, t2, s1
	sw t4, 0(t3)
	sh2add t4, t5, s1
	lw t2, 4(a1)
	addw t5, a5, a3
	sw t2, 0(t4)
	sh2add t4, t5, s1
	lw t3, 8(a1)
	addw t5, t0, a3
	addiw a3, a3, 4
	sw t3, 0(t4)
	sh2add t3, t5, s1
	lw t2, 12(a1)
	sw t2, 0(t3)
	ble t1, a3, label382
	addi a1, a1, 16
	j label295
label304:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s7, 48(sp)
	ld s4, 56(sp)
	ld s3, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label289:
	mv a3, zero
label290:
	addw a5, s2, a3
	lw a4, 0(a0)
	addiw a3, a3, 1
	sh2add a1, a5, s1
	sw a4, 0(a1)
	ble a2, a3, label300
	addi a0, a0, 4
	j label290
label300:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s8, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s8
	jal fft
	mv a0, s1
	addw s6, s2, s3
	mv a1, s6
	mv a2, s3
	mv a3, s8
	jal fft
	ble s3, zero, label304
	mv t1, zero
	mv t2, s7
.p2align 2
label301:
	addw a0, s2, t1
	addw a2, s6, t1
	sh2add t5, a0, s1
	sh2add t3, a2, s1
	lw t4, 0(t5)
	lw a1, 0(t3)
	mv a0, t2
	jal multiply
	addw a1, t4, a0
	mul a2, a1, s5
	srli t0, a2, 63
	srai a3, a2, 58
	add a5, t0, a3
	subw a3, t4, a0
	mulw a4, a5, s4
	subw a2, a1, a4
	addw a1, a3, s4
	sw a2, 0(t5)
	mul a2, a1, s5
	srli a4, a2, 63
	srai a0, a2, 58
	add a3, a4, a0
	mulw a5, a3, s4
	subw a2, a1, a5
	sw a2, 0(t3)
	mv a0, t2
	mv a1, s0
	jal multiply
	addiw t1, t1, 1
	ble s3, t1, label304
	mv t2, a0
	j label301
label382:
	sh2add a0, a3, a0
	j label290
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel592:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel592)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	mv a0, s0
	jal getarray
pcrel593:
	auipc a1, %pcrel_hi(b)
	mv s3, a0
	addi s2, a1, %pcrel_lo(pcrel593)
	mv a0, s2
	jal getarray
	mv s4, a0
	li a0, 60
	jal _sysy_starttime
	li t6, 1
	addiw a1, s3, -1
	addw s1, s4, a1
	bgt s1, t6, label522
label508:
	lui a2, 243712
	li a0, 3
	divw a6, a2, t6
	mv a1, a6
	jal power
	mv a1, zero
	mv a7, a0
	mv a0, s0
	mv a2, t6
	mv a3, a7
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, t6
	mv a3, a7
	jal fft
	bgt t6, zero, label510
	j label515
.p2align 2
label522:
	slliw a1, t6, 1
	mv t6, a1
	bgt s1, a1, label522
	j label508
label510:
	mv t1, s0
	mv t2, zero
.p2align 2
label511:
	lw a0, 0(t1)
	sh2add a2, t2, s2
	lw a1, 0(a2)
	jal multiply
	addiw t2, t2, 1
	sw a0, 0(t1)
	ble t6, t2, label515
	addi t1, t1, 4
	j label511
label515:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a6
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, t6
	jal fft
	ble t6, zero, label521
	mv a0, t6
	lui a2, 243712
	addiw a1, a2, -1
	jal power
	mv t3, zero
	mv t2, s0
	mv t1, a0
.p2align 2
label517:
	lw a0, 0(t2)
	mv a1, t1
	jal multiply
	addiw t3, t3, 1
	sw a0, 0(t2)
	ble t6, t3, label521
	addi t2, t2, 4
	j label517
label521:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s4, 32(sp)
	ld s1, 40(sp)
	addi sp, sp, 48
	ret
