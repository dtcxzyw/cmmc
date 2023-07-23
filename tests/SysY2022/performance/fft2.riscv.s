.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
temp:
	.zero	8388608
.align 4
a:
	.zero	8388608
.align 4
b:
	.zero	8388608
.text
multiply:
	addi sp, sp, -32
	sd s0, 24(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	sd s2, 8(sp)
	sd ra, 0(sp)
	beq a1, zero, label18
	li a1, 1
	beq s1, a1, label5
	addiw a1, s1, 1
	li a0, 3
	bltu a1, a0, label28
	addiw a1, s1, -2
	srliw a0, s1, 31
	add a2, s1, a0
	li a0, 2
	sraiw s2, a2, 1
	bltu a1, a0, label11
	j label12
label18:
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label5:
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label2
label12:
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
	bne a1, a2, label7
	addw a0, s0, a0
	li a3, 288737297
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	li a2, 998244353
	mulw a3, a1, a2
	subw a0, a0, a3
	j label7
label28:
	mv a0, zero
label7:
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
	beq a1, a3, label9
	j label2
label11:
	li a2, 288737297
	li a3, 998244353
	mul a0, s0, a2
	srli a2, a0, 63
	srai a1, a0, 58
	add a0, a2, a1
	mulw a1, a0, a3
	subw a0, s0, a1
	j label7
label9:
	addw a0, s0, a0
	li a3, 288737297
	mul a1, a0, a3
	srli a3, a1, 63
	srai a2, a1, 58
	add a1, a3, a2
	li a2, 998244353
	mulw a3, a1, a2
	subw a0, a0, a3
	j label2
power:
	addi sp, sp, -24
	sd s0, 16(sp)
	mv s0, a0
	sd s1, 8(sp)
	mv s1, a1
	sd ra, 0(sp)
	bne a1, zero, label300
	li a0, 1
label298:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label300:
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
	bne a1, a3, label298
	mv a1, s0
	jal multiply
	j label298
fft:
	addi sp, sp, -56
	sd s1, 48(sp)
	mv s1, a0
	sd s2, 40(sp)
	mv s2, a1
	sd s0, 32(sp)
	srliw a1, a2, 31
	mv s0, a3
	add a0, a2, a1
	sd s5, 24(sp)
	li a3, 1
pcrel296:
	auipc a1, %pcrel_hi(temp)
	sd s3, 16(sp)
	sraiw s3, a0, 1
	sd s4, 8(sp)
	addi a0, a1, %pcrel_lo(pcrel296)
	sd ra, 0(sp)
	beq a2, a3, label146
	mv a1, zero
	bgt a2, zero, label133
label142:
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
	ble s3, zero, label146
	mv a5, zero
	li t0, 1
label143:
	addw a0, s2, a5
	sh2add t2, a0, s1
	addw a0, s4, a5
	lw t3, 0(t2)
	sh2add t1, a0, s1
	lw a1, 0(t1)
	mv a0, t0
	jal multiply
	addw a3, t3, a0
	li a1, 288737297
	mul a2, a3, a1
	srli t5, a2, 63
	srai t4, a2, 58
	li a2, 998244353
	add a4, t5, t4
	mulw t4, a4, a2
	subw a4, a3, t4
	subw a3, t3, a0
	addw a0, a3, a2
	sw a4, 0(t2)
	mul a1, a0, a1
	srli t2, a1, 63
	srai a3, a1, 58
	add a4, t2, a3
	mulw a2, a4, a2
	subw a1, a0, a2
	sw a1, 0(t1)
	mv a0, t0
	mv a1, s0
	jal multiply
	addiw a5, a5, 1
	ble s3, a5, label146
	mv t0, a0
	j label143
label146:
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s5, 24(sp)
	ld s0, 32(sp)
	ld s2, 40(sp)
	ld s1, 48(sp)
	addi sp, sp, 56
	ret
label133:
	andi a3, a1, 1
	bne a3, zero, label135
	addw a4, s2, a1
	srliw t0, a1, 31
	sh2add a5, a4, s1
	add t1, a1, t0
	lw a3, 0(a5)
	addiw a1, a1, 1
	sraiw a4, t1, 1
	sh2add a5, a4, a0
	sw a3, 0(a5)
	bgt a2, a1, label133
	bgt a2, zero, label186
	j label142
label135:
	srliw a3, a1, 31
	add a5, a1, a3
	sraiw a4, a5, 1
	addw t0, s3, a4
	addw a4, s2, a1
	sh2add a3, t0, a0
	addiw a1, a1, 1
	sh2add t0, a4, s1
	lw a5, 0(t0)
	sw a5, 0(a3)
	bgt a2, a1, label133
	ble a2, zero, label142
label186:
	mv a1, zero
label137:
	addiw a3, a1, 4
	bgt a2, a3, label139
	addw a4, s2, a1
	sh2add a5, a1, a0
	sh2add a3, a4, s1
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a3)
	bgt a2, a1, label140
	j label142
label139:
	addw t0, s2, a1
	sh2add a4, a1, a0
	addiw t1, a1, 1
	sh2add a5, t0, s1
	lw t0, 0(a4)
	sw t0, 0(a5)
	addw t0, s2, t1
	lw t1, 4(a4)
	sh2add a5, t0, s1
	addiw t0, a1, 2
	sw t1, 0(a5)
	addw t1, s2, t0
	lw t0, 8(a4)
	sh2add a5, t1, s1
	sw t0, 0(a5)
	lw a4, 12(a4)
	addiw a5, a1, 3
	addw t0, s2, a5
	sh2add a1, t0, s1
	sw a4, 0(a1)
	mv a1, a3
	j label137
label140:
	addw a4, s2, a1
	sh2add a5, a1, a0
	sh2add a3, a4, s1
	addiw a1, a1, 1
	lw a4, 0(a5)
	sw a4, 0(a3)
	bgt a2, a1, label140
	j label142
.globl main
main:
	addi sp, sp, -32
pcrel398:
	auipc a1, %pcrel_hi(a)
	sd s0, 24(sp)
	addi a0, a1, %pcrel_lo(pcrel398)
	sd s1, 16(sp)
	mv s0, a0
	sd s2, 8(sp)
	sd ra, 0(sp)
	jal getarray
pcrel399:
	auipc a1, %pcrel_hi(b)
	addiw s1, a0, -1
	addi a0, a1, %pcrel_lo(pcrel399)
	mv s2, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a1, 1
	bgt s1, a1, label347
	li t6, 1
	j label328
label347:
	li t6, 1
label326:
	slliw t6, t6, 1
	bgt s1, t6, label326
label328:
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
	ble t6, zero, label332
	mv a5, zero
label330:
	sh2add t0, a5, s0
	sh2add a2, a5, s2
	lw a0, 0(t0)
	lw a1, 0(a2)
	jal multiply
	addiw a5, a5, 1
	sw a0, 0(t0)
	bgt t6, a5, label330
label332:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a6
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, t6
	jal fft
	bgt t6, zero, label333
	j label336
label334:
	sh2add t1, t0, s0
	lw a0, 0(t1)
	mv a1, a5
	jal multiply
	addiw t0, t0, 1
	sw a0, 0(t1)
	bgt t6, t0, label334
label336:
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
label333:
	mv a0, t6
	li a1, 998244351
	jal power
	mv t0, zero
	mv a5, a0
	j label334
