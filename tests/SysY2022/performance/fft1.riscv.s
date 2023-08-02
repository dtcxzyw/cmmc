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
	bltu a1, a3, label23
	addiw a1, s1, 3
	li a2, 7
	bgeu a1, a2, label13
	mv a0, zero
label10:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
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
	and a1, s2, a2
	beq a1, a3, label12
	j label5
label40:
	mv a0, zero
label5:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
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
	and a1, s1, a2
	beq a1, a3, label7
	j label24
label13:
	addiw a1, s1, -4
	slli a0, s1, 1
	srli a3, a0, 62
	li a0, 4
	add a2, s1, a3
	sraiw s3, a2, 2
	bgeu a1, a0, label15
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
	j label10
label15:
	addiw a1, s3, 1
	li a2, 3
	bgeu a1, a2, label16
	mv a0, zero
label20:
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
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
	and a1, s3, a2
	beq a1, a3, label22
	j label10
label16:
	addiw a1, s3, -2
	slli a2, s1, 1
	srli a0, a2, 61
	li a2, 2
	add a3, s1, a0
	sraiw s4, a3, 3
	bltu a1, a2, label19
	slli a0, s1, 1
	srli a2, a0, 60
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 4
	jal multiply
	slliw a1, a0, 1
	lui a4, 70493
	lui t0, 243712
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
	bne a1, a3, label20
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
	j label20
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
	j label5
label22:
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
	j label10
label19:
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
	j label20
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
label12:
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
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label480
	li a0, 1
label478:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label480:
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
	bne a1, a4, label478
	mv a1, s0
	jal multiply
	j label478
.p2align 2
fft:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	srliw a0, a2, 31
	sd s2, 24(sp)
	mv s2, a1
	sd s0, 32(sp)
	add a1, a2, a0
	mv s0, a3
	sd s5, 40(sp)
pcrel476:
	auipc a3, %pcrel_hi(temp)
	sd s3, 48(sp)
	addi a0, a3, %pcrel_lo(pcrel476)
	sraiw s3, a1, 1
	lui a3, 70493
	sd s7, 56(sp)
	lui a1, 243712
	addiw s5, a3, -2031
	li s7, 1
	sd s4, 64(sp)
	addiw s4, a1, 1
	sd s8, 72(sp)
	beq a2, s7, label282
	mv a1, zero
	bgt a2, zero, label302
label285:
	ble a2, zero, label286
	li a1, 4
	ble a2, a1, label291
	addiw a4, s2, 1
	addiw a5, s2, 2
	addiw t0, s2, 3
	addiw t1, a2, -4
	mv a1, a0
	mv a3, zero
.p2align 2
label297:
	addw t2, s2, a3
	addw t4, a4, a3
	lw t5, 0(a1)
	sh2add t3, t2, s1
	sh2add t6, t4, s1
	sw t5, 0(t3)
	addw t5, a5, a3
	lw t2, 4(a1)
	sh2add t4, t5, s1
	addw t5, t0, a3
	addiw a3, a3, 4
	sw t2, 0(t6)
	lw t3, 8(a1)
	sw t3, 0(t4)
	sh2add t3, t5, s1
	lw t2, 12(a1)
	sw t2, 0(t3)
	ble t1, a3, label389
	addi a1, a1, 16
	j label297
.p2align 2
label302:
	addw a3, s2, a1
	andi a4, a1, 1
	srliw t0, a1, 31
	add t1, a1, t0
	addiw a1, a1, 1
	sraiw a5, t1, 1
	beq a4, zero, label304
	addw t1, s3, a5
	sh2add t0, a3, s1
	sh2add a4, t1, a0
	lw a5, 0(t0)
	sw a5, 0(a4)
	bgt a2, a1, label302
	j label285
.p2align 2
label304:
	sh2add a4, a5, a0
	sh2add t0, a3, s1
	lw t1, 0(t0)
	sw t1, 0(a4)
	bgt a2, a1, label302
	j label285
label282:
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
label291:
	mv a3, zero
label292:
	addw a5, s2, a3
	lw a4, 0(a0)
	addiw a3, a3, 1
	sh2add a1, a5, s1
	sw a4, 0(a1)
	ble a2, a3, label286
	addi a0, a0, 4
	j label292
label286:
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
	bgt s3, zero, label328
	j label282
label389:
	sh2add a0, a3, a0
	j label292
label328:
	mv t1, zero
	mv t2, s7
.p2align 2
label287:
	addw a0, s2, t1
	addw a2, s6, t1
	sh2add t4, a0, s1
	sh2add t3, a2, s1
	lw t5, 0(t4)
	lw a1, 0(t3)
	mv a0, t2
	jal multiply
	addw a1, t5, a0
	mul a2, a1, s5
	srli t0, a2, 63
	srai a3, a2, 58
	add a4, t0, a3
	subw a3, t5, a0
	mulw a5, a4, s4
	subw a2, a1, a5
	addw a1, a3, s4
	sw a2, 0(t4)
	mul a2, a1, s5
	srli a3, a2, 63
	srai a0, a2, 58
	add a5, a3, a0
	mulw a4, a5, s4
	subw a2, a1, a4
	sw a2, 0(t3)
	mv a0, t2
	mv a1, s0
	jal multiply
	addiw t1, t1, 1
	ble s3, t1, label282
	mv t2, a0
	j label287
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel593:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel593)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	mv a0, s0
	jal getarray
pcrel594:
	auipc a1, %pcrel_hi(b)
	mv s3, a0
	addi s2, a1, %pcrel_lo(pcrel594)
	mv a0, s2
	jal getarray
	mv s4, a0
	li a0, 60
	jal _sysy_starttime
	li a6, 1
	addiw a1, s3, -1
	addw s1, s4, a1
	bgt s1, a6, label523
label509:
	lui a2, 243712
	li a0, 3
	divw a7, a2, a6
	mv a1, a7
	jal power
	mv a1, zero
	mv s3, a0
	mv a0, s0
	mv a2, a6
	mv a3, s3
	jal fft
	mv a1, zero
	mv a0, s2
	mv a2, a6
	mv a3, s3
	jal fft
	bgt a6, zero, label511
	j label516
.p2align 2
label523:
	slliw a1, a6, 1
	mv a6, a1
	bgt s1, a1, label523
	j label509
label511:
	mv t1, s0
	mv t2, zero
.p2align 2
label512:
	lw a0, 0(t1)
	sh2add a2, t2, s2
	lw a1, 0(a2)
	jal multiply
	addiw t2, t2, 1
	sw a0, 0(t1)
	ble a6, t2, label516
	addi t1, t1, 4
	j label512
label516:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a7
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, a6
	jal fft
	ble a6, zero, label522
	mv a0, a6
	lui a2, 243712
	addiw a1, a2, -1
	jal power
	mv t3, zero
	mv t2, s0
	mv t1, a0
.p2align 2
label518:
	lw a0, 0(t2)
	mv a1, t1
	jal multiply
	addiw t3, t3, 1
	sw a0, 0(t2)
	ble a6, t3, label522
	addi t2, t2, 4
	j label518
label522:
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
