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
multiply:
.p2align 2
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
	li a2, 288737297
	li a3, 998244353
	mul a0, a0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
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
	li a0, 3
	bltu a1, a0, label40
	addiw a1, s1, -2
	srliw a2, s1, 31
	add a0, s1, a2
	li a2, 2
	sraiw s2, a0, 1
	bltu a1, a2, label23
	addiw a0, s1, 3
	li a1, 7
	bgeu a0, a1, label10
	mv a0, zero
label20:
	slliw a1, a0, 1
	li a3, 288737297
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a3, -2147483647
	li a2, 998244353
	mulw a4, a0, a2
	li a2, 1
	subw a0, a1, a4
	and a1, s2, a3
	beq a1, a2, label22
	j label5
label40:
	mv a0, zero
label5:
	slliw a1, a0, 1
	li a3, 288737297
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a3, -2147483647
	li a2, 998244353
	mulw a4, a0, a2
	li a2, 1
	subw a0, a1, a4
	and a1, s1, a3
	beq a1, a2, label7
	j label24
label10:
	addiw a1, s1, -4
	slli a0, s1, 1
	srli a3, a0, 62
	li a0, 4
	add a2, s1, a3
	sraiw s3, a2, 2
	bgeu a1, a0, label11
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label20
label11:
	addiw a0, s3, 1
	li a1, 3
	bgeu a0, a1, label12
	mv a0, zero
label16:
	slliw a1, a0, 1
	li a3, 288737297
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a2, 998244353
	mulw a3, a0, a2
	li a2, -2147483647
	subw a0, a1, a3
	li a3, 1
	and a1, s3, a2
	beq a1, a3, label18
	j label20
label12:
	addiw a1, s3, -2
	slli a0, s1, 1
	srli a2, a0, 61
	li a0, 2
	add a3, s1, a2
	sraiw s4, a3, 3
	bltu a1, a0, label15
	slli a1, s1, 1
	srli a0, a1, 60
	add a2, s1, a0
	mv a0, s0
	sraiw a1, a2, 4
	jal multiply
	li a3, 288737297
	slliw a1, a0, 1
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a2, 998244353
	mulw a3, a0, a2
	li a2, -2147483647
	subw a0, a1, a3
	li a3, 1
	and a1, s4, a2
	beq a1, a3, label14
	j label16
label23:
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label5
label18:
	addw a0, s0, a0
	li a3, 288737297
	mul a1, a0, a3
	li a3, 998244353
	srli a4, a1, 63
	srai a2, a1, 58
	add a1, a4, a2
	mulw a2, a1, a3
	subw a0, a0, a2
	j label20
label14:
	addw a0, s0, a0
	li a3, 288737297
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	li a2, 998244353
	mulw a3, a1, a2
	subw a0, a0, a3
	j label16
label15:
	li a2, 288737297
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	li a1, 998244353
	mulw a2, a0, a1
	subw a0, s0, a2
	j label16
label7:
	addw a0, s0, a0
	li a3, 288737297
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	li a2, 998244353
	mulw a3, a1, a2
	subw a0, a0, a3
	j label24
label22:
	addw a0, s0, a0
	li a3, 288737297
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	li a2, 998244353
	mulw a3, a1, a2
	subw a0, a0, a3
	j label5
power:
.p2align 2
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label465
	li a0, 1
label463:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label465:
	srliw a2, s1, 31
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 1
	jal power
	mv a1, a0
	jal multiply
	li a3, 1
	li a2, -2147483647
	and a1, s1, a2
	bne a1, a3, label463
	mv a1, s0
	jal multiply
	j label463
fft:
.p2align 2
	addi sp, sp, -56
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s2, 24(sp)
	mv s2, a1
	sd s1, 32(sp)
	srliw a1, a2, 31
	mv s1, a3
	add a0, a2, a1
	sd s3, 40(sp)
	li a3, 1
pcrel461:
	auipc a1, %pcrel_hi(temp)
	sraiw s3, a0, 1
	sd s4, 48(sp)
	addi a0, a1, %pcrel_lo(pcrel461)
	beq a2, a3, label253
	mv a1, zero
	ble a2, zero, label259
.p2align 2
label256:
	addw a3, s2, a1
	andi a4, a1, 1
	srliw t1, a1, 31
	add t0, a1, t1
	addiw a1, a1, 1
	sraiw a5, t0, 1
	beq a4, zero, label257
	addw a5, s3, a5
	sh2add t0, a3, s0
	sh2add a4, a5, a0
	lw a3, 0(t0)
	sw a3, 0(a4)
	bgt a2, a1, label256
	j label259
.p2align 2
label257:
	sh2add a4, a5, a0
	sh2add a5, a3, s0
	lw a3, 0(a5)
	sw a3, 0(a4)
	bgt a2, a1, label256
label259:
	bgt a2, zero, label264
label260:
	mv a0, s1
	mv a1, s1
	jal multiply
	mv s5, a0
	mv a0, s0
	mv a1, s2
	mv a2, s3
	mv a3, s5
	jal fft
	mv a0, s0
	addw s4, s2, s3
	mv a1, s4
	mv a2, s3
	mv a3, s5
	jal fft
	bgt s3, zero, label312
	j label253
label264:
	li a3, 8
	ble a2, a3, label335
	addiw a3, s2, 1
	addiw a4, s2, 2
	addiw a5, s2, 3
	addiw t0, s2, 4
	addiw t1, s2, 5
	addiw t2, s2, 6
	addiw t3, s2, 7
	addiw t4, a2, -8
	mv a1, zero
label266:
	addw a6, s2, a1
	sh2add t5, a1, a0
	addw a7, a3, a1
	sh2add t6, a6, s0
	lw a6, 0(t5)
	sw a6, 0(t6)
	sh2add a6, a7, s0
	lw t6, 4(t5)
	sw t6, 0(a6)
	addw a6, a4, a1
	lw t6, 8(t5)
	sh2add a7, a6, s0
	addw a6, a5, a1
	sw t6, 0(a7)
	sh2add a7, a6, s0
	lw t6, 12(t5)
	sw t6, 0(a7)
	addw a7, t0, a1
	lw t6, 16(t5)
	sh2add a6, a7, s0
	addw a7, t1, a1
	sw t6, 0(a6)
	sh2add a6, a7, s0
	lw t6, 20(t5)
	addw a7, t2, a1
	sw t6, 0(a6)
	sh2add a6, a7, s0
	lw t6, 24(t5)
	sw t6, 0(a6)
	addw t6, t3, a1
	lw t5, 28(t5)
	addiw a1, a1, 8
	sh2add a6, t6, s0
	sw t5, 0(a6)
	bgt t4, a1, label266
label268:
	addw a5, s2, a1
	sh2add a4, a1, a0
	sh2add a3, a5, s0
	addiw a1, a1, 1
	lw a5, 0(a4)
	sw a5, 0(a3)
	bgt a2, a1, label268
	j label260
label312:
	mv a5, zero
	li t0, 1
.p2align 2
label261:
	addw a0, s2, a5
	sh2add t2, a0, s0
	addw a0, s4, a5
	lw t3, 0(t2)
	sh2add t1, a0, s0
	lw a1, 0(t1)
	mv a0, t0
	jal multiply
	addw a3, t3, a0
	li a1, 288737297
	mul a2, a3, a1
	srli t5, a2, 63
	srai a4, a2, 58
	li a2, 998244353
	add t4, t5, a4
	mulw a4, t4, a2
	subw a3, a3, a4
	subw a4, t3, a0
	addw a0, a4, a2
	sw a3, 0(t2)
	mul a1, a0, a1
	srli a4, a1, 63
	srai a3, a1, 58
	add t2, a4, a3
	mulw a1, t2, a2
	subw a2, a0, a1
	sw a2, 0(t1)
	mv a0, t0
	mv a1, s1
	jal multiply
	addiw a5, a5, 1
	ble s3, a5, label253
	mv t0, a0
	j label261
label253:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label335:
	mv a1, zero
	j label268
.globl main
main:
.p2align 2
	addi sp, sp, -56
pcrel573:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel573)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	jal getarray
pcrel574:
	auipc a1, %pcrel_hi(b)
	addiw s1, a0, -1
	addi a0, a1, %pcrel_lo(pcrel574)
	mv s3, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a1, 1
	ble s1, a1, label513
	li s2, 1
	j label502
label493:
	lui a1, 243712
	li a0, 3
	divw s4, a1, s2
	mv a1, s4
	jal power
	mv a1, zero
	mv s5, a0
	mv a0, s0
	mv a2, s2
	mv a3, s5
	jal fft
	mv a1, zero
	mv a0, s3
	mv a2, s2
	mv a3, s5
	jal fft
	bgt s2, zero, label520
	j label497
.p2align 2
label502:
	slliw a1, s2, 1
	mv s2, a1
	bgt s1, a1, label502
	j label493
label520:
	mv a5, zero
.p2align 2
label495:
	sh2add t0, a5, s0
	sh2add a2, a5, s3
	lw a0, 0(t0)
	lw a1, 0(a2)
	jal multiply
	addiw a5, a5, 1
	sw a0, 0(t0)
	bgt s2, a5, label495
label497:
	lui a2, 243712
	li a0, 3
	subw a1, a2, s4
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, s2
	jal fft
	ble s2, zero, label501
	mv a0, s2
	li a1, 998244351
	jal power
	mv t0, zero
	mv a5, a0
.p2align 2
label499:
	sh2add t1, t0, s0
	lw a0, 0(t1)
	mv a1, a5
	jal multiply
	addiw t0, t0, 1
	sw a0, 0(t1)
	bgt s2, t0, label499
label501:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label513:
	li s2, 1
	j label493
