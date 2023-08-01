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
	bne s1, a1, label6
	li a2, 288737297
	li a3, 998244353
	mul a0, a0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label2
label30:
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
label6:
	addiw a1, s1, 1
	li a0, 3
	bltu a1, a0, label40
	addiw a1, s1, -2
	srliw a0, s1, 31
	add a2, s1, a0
	li a0, 2
	sraiw s2, a2, 1
	bltu a1, a0, label25
	addiw a0, s1, 3
	li a1, 7
	bgeu a0, a1, label12
	mv a0, zero
label22:
	slliw a1, a0, 1
	li a3, 288737297
	li a4, 998244353
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a3, -2147483647
	mulw a2, a0, a4
	subw a0, a1, a2
	li a2, 1
	and a1, s2, a3
	beq a1, a2, label24
	j label7
label40:
	mv a0, zero
label7:
	slliw a1, a0, 1
	li a3, 288737297
	li a4, 998244353
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a3, -2147483647
	mulw a2, a0, a4
	subw a0, a1, a2
	li a2, 1
	and a1, s1, a3
	beq a1, a2, label9
	j label2
label12:
	addiw a1, s1, -4
	slli a3, s1, 1
	srli a2, a3, 62
	add a0, s1, a2
	li a2, 4
	sraiw s3, a0, 2
	bgeu a1, a2, label13
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label22
label13:
	addiw a0, s3, 1
	li a1, 3
	bgeu a0, a1, label14
	mv a0, zero
label18:
	slliw a1, a0, 1
	li a3, 288737297
	li a4, 998244353
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a3, -2147483647
	mulw a2, a0, a4
	subw a0, a1, a2
	li a2, 1
	and a1, s3, a3
	beq a1, a2, label20
	j label22
label14:
	addiw a1, s3, -2
	slli a2, s1, 1
	srli a0, a2, 61
	add a3, s1, a0
	li a0, 2
	sraiw s4, a3, 3
	bltu a1, a0, label17
	slli a0, s1, 1
	srli a3, a0, 60
	mv a0, s0
	add a2, s1, a3
	sraiw a1, a2, 4
	jal multiply
	li a4, 998244353
	li a3, 288737297
	slliw a1, a0, 1
	mul a0, a1, a3
	srli a3, a0, 63
	srai a2, a0, 58
	add a0, a3, a2
	li a3, -2147483647
	mulw a2, a0, a4
	subw a0, a1, a2
	li a2, 1
	and a1, s4, a3
	beq a1, a2, label16
	j label18
label25:
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label7
label20:
	addw a0, s0, a0
	li a3, 288737297
	li a4, 998244353
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	j label22
label16:
	addw a0, s0, a0
	li a3, 288737297
	li a4, 998244353
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	j label18
label17:
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label18
label9:
	addw a0, s0, a0
	li a3, 288737297
	li a4, 998244353
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	j label2
label24:
	addw a0, s0, a0
	li a3, 288737297
	li a4, 998244353
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	j label7
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label442
	li a0, 1
label440:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label442:
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
	bne a1, a3, label440
	mv a1, s0
	jal multiply
	j label440
.p2align 2
fft:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	sd s2, 24(sp)
	mv s2, a1
	sd s0, 32(sp)
	srliw a1, a2, 31
	mv s0, a3
	add a0, a2, a1
	sd s5, 40(sp)
pcrel438:
	auipc a1, %pcrel_hi(temp)
	li s5, 288737297
	sd s3, 48(sp)
	sraiw s3, a0, 1
	sd s7, 56(sp)
	addi a0, a1, %pcrel_lo(pcrel438)
	li s7, 1
	sd s4, 64(sp)
	li s4, 998244353
	sd s8, 72(sp)
	beq a2, s7, label269
	mv a1, zero
	ble a2, zero, label258
.p2align 2
label255:
	addw a3, s2, a1
	andi a4, a1, 1
	srliw t1, a1, 31
	add t0, a1, t1
	addiw a1, a1, 1
	sraiw a5, t0, 1
	beq a4, zero, label257
	addw a5, s3, a5
	sh2add a3, a3, s1
	sh2add a4, a5, a0
	lw a5, 0(a3)
	sw a5, 0(a4)
	bgt a2, a1, label255
	j label258
.p2align 2
label257:
	sh2add a4, a5, a0
	sh2add a3, a3, s1
	lw a5, 0(a3)
	sw a5, 0(a4)
	bgt a2, a1, label255
label258:
	ble a2, zero, label265
	li a3, 4
	bgt a2, a3, label262
	j label309
label260:
	addw a4, s2, a1
	sh2add a5, a1, a0
	sh2add a3, a4, s1
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a3)
	bgt a2, a1, label260
	j label265
label262:
	addiw a3, s2, 1
	addiw a4, s2, 2
	addiw a5, s2, 3
	addiw t0, a2, -4
	mv a1, zero
.p2align 2
label263:
	addw t3, s2, a1
	sh2add t1, a1, a0
	addw t4, a3, a1
	sh2add t2, t3, s1
	lw t3, 0(t1)
	sw t3, 0(t2)
	sh2add t3, t4, s1
	lw t2, 4(t1)
	sw t2, 0(t3)
	addw t3, a4, a1
	lw t2, 8(t1)
	sh2add t4, t3, s1
	addw t3, a5, a1
	addiw a1, a1, 4
	sw t2, 0(t4)
	sh2add t2, t3, s1
	lw t1, 12(t1)
	sw t1, 0(t2)
	bgt t0, a1, label263
	j label260
label265:
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
	ble s3, zero, label269
	mv a5, zero
	mv t0, s7
.p2align 2
label266:
	addw a0, s2, a5
	sh2add t3, a0, s1
	addw a0, s6, a5
	lw t2, 0(t3)
	sh2add t1, a0, s1
	lw a1, 0(t1)
	mv a0, t0
	jal multiply
	addw a1, t2, a0
	mul a2, a1, s5
	srli a4, a2, 63
	srai a3, a2, 58
	add t4, a4, a3
	mulw a2, t4, s4
	subw a1, a1, a2
	subw a2, t2, a0
	addw a0, a2, s4
	sw a1, 0(t3)
	mul a1, a0, s5
	srli a3, a1, 63
	srai a2, a1, 58
	add a4, a3, a2
	mulw a2, a4, s4
	subw a1, a0, a2
	sw a1, 0(t1)
	mv a0, t0
	mv a1, s0
	jal multiply
	addiw a5, a5, 1
	ble s3, a5, label269
	mv t0, a0
	j label266
label269:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label309:
	mv a1, zero
	j label260
.p2align 2
.globl main
main:
	addi sp, sp, -40
pcrel548:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel548)
	sd s1, 16(sp)
	sd s2, 24(sp)
	sd s3, 32(sp)
	mv a0, s0
	jal getarray
pcrel549:
	auipc a1, %pcrel_hi(b)
	mv s1, a0
	addi s2, a1, %pcrel_lo(pcrel549)
	mv a0, s2
	jal getarray
	mv s3, a0
	li a0, 60
	jal _sysy_starttime
	li t5, 1
	addiw a1, s1, -1
	addw s1, s3, a1
	bgt s1, t5, label479
label470:
	lui a1, 243712
	li a0, 3
	divw t6, a1, t5
	mv a1, t6
	jal power
	mv a1, zero
	mv a6, a0
	mv a0, s0
	mv a2, t5
	mv a3, a6
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, t5
	mv a3, a6
	jal fft
	bgt t5, zero, label497
	j label474
.p2align 2
label479:
	slliw a1, t5, 1
	mv t5, a1
	bgt s1, a1, label479
	j label470
label497:
	mv a5, zero
.p2align 2
label472:
	sh2add t0, a5, s0
	sh2add a2, a5, s2
	lw a0, 0(t0)
	lw a1, 0(a2)
	jal multiply
	addiw a5, a5, 1
	sw a0, 0(t0)
	bgt t5, a5, label472
label474:
	lui a2, 243712
	li a0, 3
	subw a1, a2, t6
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, t5
	jal fft
	ble t5, zero, label478
	mv a0, t5
	li a1, 998244351
	jal power
	mv t0, zero
	mv a5, a0
.p2align 2
label476:
	sh2add t1, t0, s0
	lw a0, 0(t1)
	mv a1, a5
	jal multiply
	addiw t0, t0, 1
	sw a0, 0(t1)
	bgt t5, t0, label476
label478:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
