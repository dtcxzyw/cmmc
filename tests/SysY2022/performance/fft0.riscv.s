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
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	mv s0, a0
	mv s1, a1
	bne a1, zero, label4
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label4:
	li a0, 1
	bne s1, a0, label6
	li a0, 288737297
	mul a0, s0, a0
	srai a1, a0, 58
	srli a0, a0, 63
	add a0, a0, a1
	li a1, 998244353
	mulw a0, a0, a1
	subw a0, s0, a0
	j label2
label6:
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	mv a0, s0
	jal multiply
	slliw a0, a0, 1
	li a1, 288737297
	mul a1, a0, a1
	srai a2, a1, 58
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 998244353
	mulw a1, a1, a2
	subw a0, a0, a1
	srliw a1, s1, 31
	add a1, s1, a1
	sraiw a1, a1, 1
	li a2, 2
	mulw a1, a1, a2
	subw a1, s1, a1
	li a2, 1
	bne a1, a2, label2
	addw a0, s0, a0
	li a1, 288737297
	mul a1, a0, a1
	srai a2, a1, 58
	srli a1, a1, 63
	add a1, a1, a2
	li a2, 998244353
	mulw a1, a1, a2
	subw a0, a0, a1
	j label2
power:
	addi sp, sp, -24
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	mv s0, a0
	mv s1, a1
	bne a1, zero, label325
	li a0, 1
label323:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label325:
	srliw a0, s1, 31
	add a0, s1, a0
	sraiw a1, a0, 1
	mv a0, s0
	jal power
	mv a1, a0
	jal multiply
	srliw a1, s1, 31
	add a1, s1, a1
	sraiw a1, a1, 1
	li a2, 2
	mulw a1, a1, a2
	subw a1, s1, a1
	li a2, 1
	bne a1, a2, label323
	mv a1, s0
	jal multiply
	j label323
fft:
	addi sp, sp, -48
	sd s1, 40(sp)
	sd s2, 32(sp)
	sd s0, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	mv s1, a0
	mv s2, a1
	mv s0, a3
	li a0, 1
	bne a2, a0, label71
	j label70
label71:
	srliw a0, a2, 31
	add a0, a2, a0
	sraiw s3, a0, 1
pcrel321:
	auipc a0, %pcrel_hi(temp)
	addi a0, a0, %pcrel_lo(pcrel321)
	mv a1, zero
	bge zero, a2, label78
	andi a3, zero, 1
	bne a3, zero, label77
	j label75
label78:
	ble a2, zero, label79
	mv a1, zero
	addiw a3, zero, 4
	bge a3, a2, label86
	j label94
label79:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s4, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s4
	jal fft
	addw a1, s3, s2
	mv a0, s1
	mv a2, s3
	mv a3, s4
	jal fft
	li a4, 1
	mv a3, zero
	bge zero, s3, label70
label83:
	addw a0, a3, s2
	slliw a0, a0, 2
	add t1, s1, a0
	lw t2, 0(t1)
	addw a0, a3, s3
	addw a0, a0, s2
	slliw a0, a0, 2
	add a5, s1, a0
	lw a1, 0(a5)
	mv a0, a4
	jal multiply
	addw t3, t2, a0
	li a1, 288737297
	mul a2, t3, a1
	srai t4, a2, 58
	srli a2, a2, 63
	add t4, a2, t4
	li a2, 998244353
	mulw t4, t4, a2
	subw t3, t3, t4
	sw t3, 0(t1)
	subw a0, t2, a0
	addw a0, a0, a2
	mul a1, a0, a1
	srai t1, a1, 58
	srli a1, a1, 63
	add a1, a1, t1
	mulw a1, a1, a2
	subw a0, a0, a1
	sw a0, 0(a5)
	mv a0, a4
	mv a1, s0
	jal multiply
	addiw a3, a3, 1
	mv a4, a0
	bge a3, s3, label70
	j label83
label75:
	addw a3, a1, s2
	slliw a3, a3, 2
	add a3, s1, a3
	lw a3, 0(a3)
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	slli a4, a4, 2
	add a4, a0, a4
	sw a3, 0(a4)
	addiw a1, a1, 1
	bge a1, a2, label78
	andi a3, a1, 1
	bne a3, zero, label77
	j label75
label77:
	srliw a3, a1, 31
	add a3, a1, a3
	sraiw a3, a3, 1
	addw a3, s3, a3
	slli a3, a3, 2
	add a3, a0, a3
	addw a4, a1, s2
	slliw a4, a4, 2
	add a4, s1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label78
	andi a3, a1, 1
	bne a3, zero, label77
	j label75
label86:
	addiw a3, a1, 4
	bge a3, a2, label89
label88:
	addw a4, a1, s2
	slliw a4, a4, 2
	add a5, s1, a4
	slliw a4, a1, 2
	add a4, a0, a4
	lw t1, 0(a4)
	sw t1, 0(a5)
	addiw a5, a1, 1
	addw a5, a5, s2
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 4(a4)
	sw t1, 0(a5)
	addiw a5, a1, 2
	addw a5, a5, s2
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 8(a4)
	sw t1, 0(a5)
	addiw a1, a1, 3
	addw a1, a1, s2
	slliw a1, a1, 2
	add a1, s1, a1
	lw a4, 12(a4)
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	bge a3, a2, label89
	j label88
label89:
	addiw a3, a1, 4
	bge a3, a2, label91
	j label93
label91:
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
label319:
	addw a3, s2, a1
	slliw a3, a3, 2
	add a3, s1, a3
	slliw a4, a1, 2
	add a4, a0, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a1, a1, 1
	bge a1, a2, label79
	j label319
label94:
	addw a4, a1, s2
	slliw a4, a4, 2
	add a5, s1, a4
	slliw a4, a1, 2
	add a4, a0, a4
	lw t1, 0(a4)
	sw t1, 0(a5)
	addiw a5, a1, 1
	addw a5, a5, s2
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 4(a4)
	sw t1, 0(a5)
	addiw a5, a1, 2
	addw a5, a5, s2
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 8(a4)
	sw t1, 0(a5)
	addiw a1, a1, 3
	addw a1, a1, s2
	slliw a1, a1, 2
	add a1, s1, a1
	lw a4, 12(a4)
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	bge a3, a2, label86
	j label94
label93:
	addw a4, a1, s2
	slliw a4, a4, 2
	add a5, s1, a4
	slliw a4, a1, 2
	add a4, a0, a4
	lw t1, 0(a4)
	sw t1, 0(a5)
	addiw a5, a1, 1
	addw a5, a5, s2
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 4(a4)
	sw t1, 0(a5)
	addiw a5, a1, 2
	addw a5, a5, s2
	slliw a5, a5, 2
	add a5, s1, a5
	lw t1, 8(a4)
	sw t1, 0(a5)
	addiw a1, a1, 3
	addw a1, a1, s2
	slliw a1, a1, 2
	add a1, s1, a1
	lw a4, 12(a4)
	sw a4, 0(a1)
	mv a1, a3
	addiw a3, a3, 4
	bge a3, a2, label91
	j label93
label70:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s1, 40(sp)
	addi sp, sp, 48
	ret
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s1, 16(sp)
	sd s2, 8(sp)
	sd ra, 0(sp)
pcrel500:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel500)
	mv s0, a0
	jal getarray
	addiw s1, a0, -1
pcrel501:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel501)
	mv s2, a0
	jal getarray
	addw s1, s1, a0
	li a0, 60
	jal _sysy_starttime
	li a0, 1
	ble s1, a0, label376
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	slliw a0, a0, 1
	bge a0, s1, label381
	j label486
label376:
	li t5, 1
	j label357
label486:
	slliw a0, a0, 1
	bge a0, s1, label381
	j label486
label357:
	li a0, 998244352
	divw t6, a0, t5
	li a0, 3
	mv a1, t6
	jal power
	mv a6, a0
	mv a0, s0
	mv a1, zero
	mv a2, t5
	mv a3, a6
	jal fft
	mv a0, s2
	mv a1, zero
	mv a2, t5
	mv a3, a6
	jal fft
	ble t5, zero, label361
	mv a3, zero
	slli a0, zero, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, zero, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	j label489
label361:
	li a0, 998244352
	subw a1, a0, t6
	li a0, 3
	jal power
	mv a3, a0
	mv a0, s0
	mv a1, zero
	mv a2, t5
	jal fft
	ble t5, zero, label365
	mv a0, t5
	li a1, 998244351
	jal power
	mv a3, a0
	mv a4, zero
	slli a0, zero, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
label491:
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label365
	j label491
label489:
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s2, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label361
	j label489
label381:
	mv t5, a0
	j label357
label365:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s1
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
