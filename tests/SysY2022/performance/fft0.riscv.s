.data
.section .rodata
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
	mul a2, a0, a1
	srai a1, a2, 58
	srli a2, a2, 63
	add a1, a2, a1
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
	bne a1, zero, label553
	li a0, 1
label551:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label553:
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
	bne a1, a2, label551
	mv a1, s0
	jal multiply
	j label551
fft:
	addi sp, sp, -48
	sd s2, 40(sp)
	sd s3, 32(sp)
	sd s0, 24(sp)
	sd s4, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	mv s2, a0
	mv s3, a1
	mv s0, a3
	li a0, 1
	bne a2, a0, label70
	j label94
label70:
	srliw a0, a2, 31
	add a0, a2, a0
	sraiw s4, a0, 1
pcrel549:
	auipc a0, %pcrel_hi(temp)
	addi a1, a0, %pcrel_lo(pcrel549)
	mv a0, zero
	bge zero, a2, label77
	srliw a3, zero, 31
	add a3, zero, a3
	sraiw a3, a3, 1
	li a4, 2
	mulw a3, a3, a4
	subw a3, zero, a3
	bne a3, zero, label75
	j label74
label75:
	srliw a3, a0, 31
	add a3, a0, a3
	sraiw a3, a3, 1
	addw a3, s4, a3
	slli a3, a3, 2
	add a3, a1, a3
	addw a4, a0, s3
	slliw a4, a4, 2
	add a4, s2, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label77
	srliw a3, a0, 31
	add a3, a0, a3
	sraiw a3, a3, 1
	li a4, 2
	mulw a3, a3, a4
	subw a3, a0, a3
	bne a3, zero, label75
	j label74
label77:
	ble a2, zero, label78
	mv a0, zero
	addiw a3, zero, 16
	bge a3, a2, label85
	j label93
label78:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s1, a0
	mv a0, s2
	mv a1, s3
	mv a2, s4
	mv a3, s1
	jal fft
	addw a1, s4, s3
	mv a0, s2
	mv a2, s4
	mv a3, s1
	jal fft
	li a3, 1
	mv a4, zero
	bge zero, s4, label94
label82:
	addw a0, a4, s3
	slliw a0, a0, 2
	add t1, s2, a0
	lw t2, 0(t1)
	addw a0, a4, s4
	addw a0, a0, s3
	slliw a0, a0, 2
	add a5, s2, a0
	lw a1, 0(a5)
	mv a0, a3
	jal multiply
	addw t3, t2, a0
	li a1, 288737297
	mul t4, t3, a1
	srai a2, t4, 58
	srli t4, t4, 63
	add t4, t4, a2
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
	mv a0, a3
	mv a1, s0
	jal multiply
	addiw a4, a4, 1
	mv a3, a0
	bge a4, s4, label94
	j label82
label74:
	addw a3, a0, s3
	slliw a3, a3, 2
	add a3, s2, a3
	lw a3, 0(a3)
	srliw a4, a0, 31
	add a4, a0, a4
	sraiw a4, a4, 1
	slli a4, a4, 2
	add a4, a1, a4
	sw a3, 0(a4)
	addiw a0, a0, 1
	bge a0, a2, label77
	srliw a3, a0, 31
	add a3, a0, a3
	sraiw a3, a3, 1
	li a4, 2
	mulw a3, a3, a4
	subw a3, a0, a3
	bne a3, zero, label75
	j label74
label85:
	addiw a3, a0, 16
	bge a3, a2, label87
	j label92
label87:
	addiw a3, a0, 16
	bge a3, a2, label90
label89:
	addw a4, a0, s3
	slliw a4, a4, 2
	add a5, s2, a4
	slliw a4, a0, 2
	add a4, a1, a4
	lw t1, 0(a4)
	sw t1, 0(a5)
	addiw a5, a0, 1
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 4(a4)
	sw t1, 0(a5)
	addiw a5, a0, 2
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 8(a4)
	sw t1, 0(a5)
	addiw a5, a0, 3
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 12(a4)
	sw t1, 0(a5)
	addiw a5, a0, 4
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 16(a4)
	sw t1, 0(a5)
	addiw a5, a0, 5
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 20(a4)
	sw t1, 0(a5)
	addiw a5, a0, 6
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 24(a4)
	sw t1, 0(a5)
	addiw a5, a0, 7
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 28(a4)
	sw t1, 0(a5)
	addiw a5, a0, 8
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 32(a4)
	sw t1, 0(a5)
	addiw a5, a0, 9
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 36(a4)
	sw t1, 0(a5)
	addiw a5, a0, 10
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 40(a4)
	sw t1, 0(a5)
	addiw a5, a0, 11
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 44(a4)
	sw t1, 0(a5)
	addiw a5, a0, 12
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 48(a4)
	sw t1, 0(a5)
	addiw a5, a0, 13
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 52(a4)
	sw t1, 0(a5)
	addiw a5, a0, 14
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 56(a4)
	sw t1, 0(a5)
	addiw a0, a0, 15
	addw a0, a0, s3
	slliw a0, a0, 2
	add a0, s2, a0
	lw a4, 60(a4)
	sw a4, 0(a0)
	mv a0, a3
	addiw a3, a3, 16
	bge a3, a2, label90
	j label89
label90:
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
label546:
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label78
	j label546
label94:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s4, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	addi sp, sp, 48
	ret
label92:
	addw a4, a0, s3
	slliw a4, a4, 2
	add a5, s2, a4
	slliw a4, a0, 2
	add a4, a1, a4
	lw t1, 0(a4)
	sw t1, 0(a5)
	addiw a5, a0, 1
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 4(a4)
	sw t1, 0(a5)
	addiw a5, a0, 2
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 8(a4)
	sw t1, 0(a5)
	addiw a5, a0, 3
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 12(a4)
	sw t1, 0(a5)
	addiw a5, a0, 4
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 16(a4)
	sw t1, 0(a5)
	addiw a5, a0, 5
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 20(a4)
	sw t1, 0(a5)
	addiw a5, a0, 6
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 24(a4)
	sw t1, 0(a5)
	addiw a5, a0, 7
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 28(a4)
	sw t1, 0(a5)
	addiw a5, a0, 8
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 32(a4)
	sw t1, 0(a5)
	addiw a5, a0, 9
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 36(a4)
	sw t1, 0(a5)
	addiw a5, a0, 10
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 40(a4)
	sw t1, 0(a5)
	addiw a5, a0, 11
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 44(a4)
	sw t1, 0(a5)
	addiw a5, a0, 12
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 48(a4)
	sw t1, 0(a5)
	addiw a5, a0, 13
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 52(a4)
	sw t1, 0(a5)
	addiw a5, a0, 14
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 56(a4)
	sw t1, 0(a5)
	addiw a0, a0, 15
	addw a0, a0, s3
	slliw a0, a0, 2
	add a0, s2, a0
	lw a4, 60(a4)
	sw a4, 0(a0)
	mv a0, a3
	addiw a3, a3, 16
	bge a3, a2, label87
	j label92
label93:
	addw a4, a0, s3
	slliw a4, a4, 2
	add a5, s2, a4
	slliw a4, a0, 2
	add a4, a1, a4
	lw t1, 0(a4)
	sw t1, 0(a5)
	addiw a5, a0, 1
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 4(a4)
	sw t1, 0(a5)
	addiw a5, a0, 2
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 8(a4)
	sw t1, 0(a5)
	addiw a5, a0, 3
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 12(a4)
	sw t1, 0(a5)
	addiw a5, a0, 4
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 16(a4)
	sw t1, 0(a5)
	addiw a5, a0, 5
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 20(a4)
	sw t1, 0(a5)
	addiw a5, a0, 6
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 24(a4)
	sw t1, 0(a5)
	addiw a5, a0, 7
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 28(a4)
	sw t1, 0(a5)
	addiw a5, a0, 8
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 32(a4)
	sw t1, 0(a5)
	addiw a5, a0, 9
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 36(a4)
	sw t1, 0(a5)
	addiw a5, a0, 10
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 40(a4)
	sw t1, 0(a5)
	addiw a5, a0, 11
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 44(a4)
	sw t1, 0(a5)
	addiw a5, a0, 12
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 48(a4)
	sw t1, 0(a5)
	addiw a5, a0, 13
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 52(a4)
	sw t1, 0(a5)
	addiw a5, a0, 14
	addw a5, a5, s3
	slliw a5, a5, 2
	add a5, s2, a5
	lw t1, 56(a4)
	sw t1, 0(a5)
	addiw a0, a0, 15
	addw a0, a0, s3
	slliw a0, a0, 2
	add a0, s2, a0
	lw a4, 60(a4)
	sw a4, 0(a0)
	mv a0, a3
	addiw a3, a3, 16
	bge a3, a2, label85
	j label93
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel727:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel727)
	mv s0, a0
	jal getarray
	addiw s2, a0, -1
pcrel728:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel728)
	mv s1, a0
	jal getarray
	addw s2, s2, a0
	li a0, 60
	jal _sysy_starttime
	li a0, 1
	ble s2, a0, label604
	li t5, 1
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	slliw t5, t5, 1
	bge t5, s2, label585
	j label714
label604:
	li t5, 1
	j label585
label714:
	slliw t5, t5, 1
	bge t5, s2, label585
	j label714
label585:
	li a0, 998244352
	divw a6, a0, t5
	li a0, 3
	mv a1, a6
	jal power
	mv t6, a0
	mv a0, s0
	mv a1, zero
	mv a2, t5
	mv a3, t6
	jal fft
	mv a0, s1
	mv a1, zero
	mv a2, t5
	mv a3, t6
	jal fft
	ble t5, zero, label589
	mv a3, zero
	slli a0, zero, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, zero, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	j label717
label589:
	li a0, 998244352
	subw a1, a0, a6
	li a0, 3
	jal power
	mv a3, a0
	mv a0, s0
	mv a1, zero
	mv a2, t5
	jal fft
	ble t5, zero, label593
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
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
label719:
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label593
	j label719
label717:
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label589
	j label717
label593:
	li a0, 79
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s0
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
