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
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	bne a1, zero, label2
	mv a0, zero
	j label12
label2:
	li a1, 1
	bne s1, a1, label4
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label12
label4:
	addiw a1, s1, 1
	li a0, 3
	bgeu a1, a0, label8
	mv a0, zero
label5:
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
	and a1, s1, a2
	beq a1, a3, label7
	j label12
label8:
	addiw a1, s1, -2
	srliw a2, s1, 31
	add a0, s1, a2
	li a2, 2
	sraiw s2, a0, 1
	bgeu a1, a2, label10
	li a2, 288737297
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	li a1, 998244353
	mulw a2, a0, a1
	subw a0, s0, a2
	j label5
label10:
	slli a1, s1, 1
	srli a0, a1, 62
	add a2, s1, a0
	mv a0, s0
	sraiw a1, a2, 2
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
	and a1, s2, a3
	beq a1, a2, label11
	j label5
label12:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label7:
	addw a0, s0, a0
	li a3, 288737297
	li a4, 998244353
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, a0, a2
	j label12
label11:
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
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	mv s1, a1
	sd ra, 0(sp)
	bne a1, zero, label315
	li a0, 1
label313:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label315:
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
	bne a1, a3, label313
	mv a1, s0
	jal multiply
	j label313
fft:
.p2align 2
	addi sp, sp, -56
	sd s1, 48(sp)
	mv s1, a0
	sd s2, 40(sp)
	srliw a0, a2, 31
	mv s2, a1
	sd s0, 32(sp)
pcrel311:
	auipc a1, %pcrel_hi(temp)
	mv s0, a3
	sd s5, 24(sp)
	add a3, a2, a0
	sd s3, 16(sp)
	addi a0, a1, %pcrel_lo(pcrel311)
	sraiw s3, a3, 1
	sd s4, 8(sp)
	li a3, 1
	sd ra, 0(sp)
	beq a2, a3, label143
	mv a1, zero
	ble a2, zero, label130
.p2align 2
label140:
	andi a4, a1, 1
	beq a4, zero, label142
	srliw a3, a1, 31
	add t0, a1, a3
	sraiw a5, t0, 1
	addw t0, s2, a1
	addw a4, s3, a5
	addiw a1, a1, 1
	sh2add a5, t0, s1
	sh2add a3, a4, a0
	lw a4, 0(a5)
	sw a4, 0(a3)
	bgt a2, a1, label140
	bgt a2, zero, label134
	j label130
.p2align 2
label142:
	addw a5, s2, a1
	sh2add a4, a5, s1
	srliw a5, a1, 31
	lw a3, 0(a4)
	add t0, a1, a5
	addiw a1, a1, 1
	sraiw a4, t0, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	bgt a2, a1, label140
	bgt a2, zero, label134
	j label130
label143:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label134:
	li a1, 4
	bgt a2, a1, label135
	mv a3, zero
	j label138
label130:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s5, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s5
	jal fft
	mv a0, s1
	addw s4, s2, s3
	mv a1, s4
	mv a2, s3
	mv a3, s5
	jal fft
	ble s3, zero, label143
	mv a5, zero
	li t0, 1
.p2align 2
label131:
	addw a0, s2, a5
	sh2add t3, a0, s1
	addw a0, s4, a5
	lw t2, 0(t3)
	sh2add t1, a0, s1
	lw a1, 0(t1)
	mv a0, t0
	jal multiply
	addw a3, t2, a0
	li a1, 288737297
	mul a2, a3, a1
	srli t5, a2, 63
	srai t4, a2, 58
	li a2, 998244353
	add a4, t5, t4
	mulw t4, a4, a2
	subw a4, a3, t4
	subw a3, t2, a0
	addw a0, a3, a2
	sw a4, 0(t3)
	mul a1, a0, a1
	srli a4, a1, 63
	srai a3, a1, 58
	add t2, a4, a3
	mulw a1, t2, a2
	subw a2, a0, a1
	sw a2, 0(t1)
	mv a0, t0
	mv a1, s0
	jal multiply
	addiw a5, a5, 1
	ble s3, a5, label143
	mv t0, a0
	j label131
label136:
	addw t3, s2, a1
	sh2add t1, a1, a0
	addw t4, a3, a1
	sh2add t2, t3, s1
	lw t3, 0(t1)
	sw t3, 0(t2)
	sh2add t3, t4, s1
	lw t2, 4(t1)
	addw t4, a4, a1
	sw t2, 0(t3)
	sh2add t3, t4, s1
	lw t2, 8(t1)
	sw t2, 0(t3)
	addw t2, a5, a1
	lw t1, 12(t1)
	addiw a1, a1, 4
	sh2add t3, t2, s1
	sw t1, 0(t3)
	bgt t0, a1, label136
	mv a3, a1
label138:
	addw a5, s2, a3
	sh2add a4, a3, a0
	sh2add a1, a5, s1
	addiw a3, a3, 1
	lw a5, 0(a4)
	sw a5, 0(a1)
	bgt a2, a3, label138
	j label130
label135:
	addiw a3, s2, 1
	addiw a4, s2, 2
	addiw a5, s2, 3
	addiw t0, a2, -4
	mv a1, zero
	j label136
.globl main
main:
.p2align 2
	addi sp, sp, -32
pcrel415:
	auipc a1, %pcrel_hi(a)
	sd s0, 24(sp)
	addi a0, a1, %pcrel_lo(pcrel415)
	sd s1, 16(sp)
	mv s0, a0
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel416:
	auipc a1, %pcrel_hi(b)
	addiw s1, a0, -1
	addi a0, a1, %pcrel_lo(pcrel416)
	mv s2, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a1, 1
	bgt s1, a1, label362
	li t6, 1
	j label341
label362:
	li t6, 1
	j label350
label341:
	lui a1, 243712
	li a0, 3
	divw a6, a1, t6
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
	ble t6, zero, label345
	mv a5, zero
.p2align 2
label343:
	sh2add t0, a5, s0
	sh2add a2, a5, s2
	lw a0, 0(t0)
	lw a1, 0(a2)
	jal multiply
	addiw a5, a5, 1
	sw a0, 0(t0)
	bgt t6, a5, label343
label345:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a6
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, t6
	jal fft
	bgt t6, zero, label346
	j label349
.p2align 2
label350:
	slliw a1, t6, 1
	mv t6, a1
	bgt s1, a1, label350
	j label341
.p2align 2
label347:
	sh2add t1, t0, s0
	lw a0, 0(t1)
	mv a1, a5
	jal multiply
	addiw t0, t0, 1
	sw a0, 0(t1)
	bgt t6, t0, label347
label349:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label346:
	mv a0, t6
	li a1, 998244351
	jal power
	mv t0, zero
	mv a5, a0
	j label347
