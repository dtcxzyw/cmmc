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
	bne a1, zero, label556
	li a0, 1
label554:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label556:
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
	bne a1, a2, label554
	mv a1, s0
	jal multiply
	j label554
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
	bne a2, a0, label71
	j label70
label71:
	srliw a0, a2, 31
	add a0, a2, a0
	sraiw s4, a0, 1
pcrel552:
	auipc a0, %pcrel_hi(temp)
	addi a1, a0, %pcrel_lo(pcrel552)
	mv a0, zero
	bge zero, a2, label78
	srliw a3, zero, 31
	add a3, zero, a3
	sraiw a3, a3, 1
	li a4, 2
	mulw a3, a3, a4
	subw a3, zero, a3
	bne a3, zero, label76
	j label75
label78:
	ble a2, zero, label79
	mv a0, zero
	addiw a3, zero, 16
	bge a3, a2, label86
	j label94
label79:
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
	bge zero, s4, label70
label83:
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
	bge a4, s4, label70
	j label83
label86:
	addiw a3, a0, 16
	bge a3, a2, label89
	j label88
label89:
	addiw a3, a0, 16
	bge a3, a2, label92
	j label91
label92:
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
label549:
	addw a3, s3, a0
	slliw a3, a3, 2
	add a3, s2, a3
	slliw a4, a0, 2
	add a4, a1, a4
	lw a4, 0(a4)
	sw a4, 0(a3)
	addiw a0, a0, 1
	bge a0, a2, label79
	j label549
label75:
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
	bge a0, a2, label78
	srliw a3, a0, 31
	add a3, a0, a3
	sraiw a3, a3, 1
	li a4, 2
	mulw a3, a3, a4
	subw a3, a0, a3
	bne a3, zero, label76
	j label75
label76:
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
	bge a0, a2, label78
	srliw a3, a0, 31
	add a3, a0, a3
	sraiw a3, a3, 1
	li a4, 2
	mulw a3, a3, a4
	subw a3, a0, a3
	bne a3, zero, label76
	j label75
label70:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s4, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	addi sp, sp, 48
	ret
label88:
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
	bge a3, a2, label89
	j label88
label91:
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
	bge a3, a2, label92
	j label91
label94:
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
	bge a3, a2, label86
	j label94
.globl main
main:
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s2, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
pcrel730:
	auipc a0, %pcrel_hi(a)
	addi a0, a0, %pcrel_lo(pcrel730)
	mv s0, a0
	jal getarray
	addiw s2, a0, -1
pcrel731:
	auipc a0, %pcrel_hi(b)
	addi a0, a0, %pcrel_lo(pcrel731)
	mv s1, a0
	jal getarray
	addw s2, s2, a0
	li a0, 60
	jal _sysy_starttime
	li a0, 1
	ble s2, a0, label607
	li t5, 1
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	slliw t5, t5, 1
	bge t5, s2, label586
	j label722
label607:
	li t5, 1
	j label586
label722:
	slliw t5, t5, 1
	bge t5, s2, label586
	j label722
label586:
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
	ble t5, zero, label590
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
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
label719:
	slli a0, a3, 2
	add a4, s0, a0
	lw a0, 0(a4)
	slli a1, a3, 2
	add a1, s1, a1
	lw a1, 0(a1)
	jal multiply
	sw a0, 0(a4)
	addiw a3, a3, 1
	bge a3, t5, label590
	j label719
label590:
	li a0, 998244352
	subw a1, a0, a6
	li a0, 3
	jal power
	mv a3, a0
	mv a0, s0
	mv a1, zero
	mv a2, t5
	jal fft
	ble t5, zero, label594
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
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
label721:
	slli a0, a4, 2
	add a5, s0, a0
	lw a0, 0(a5)
	mv a1, a3
	jal multiply
	sw a0, 0(a5)
	addiw a4, a4, 1
	bge a4, t5, label594
	j label721
label594:
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
