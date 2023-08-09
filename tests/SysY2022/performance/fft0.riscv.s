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
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
	sd s1, 24(sp)
	mv s1, a1
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	beq a1, zero, label54
	li a1, 1
	bne s1, a1, label6
	lui a3, 70493
	lui a5, 243712
	addiw a1, a3, -2031
	addiw a4, a5, 1
	mul a0, a0, a1
	srli a3, a0, 63
	srai a2, a0, 58
	add a1, a3, a2
	mulw a2, a1, a4
	subw a0, s0, a2
	j label2
label54:
	mv a0, zero
label2:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label6:
	addiw a1, s1, 1
	li a2, 3
	bltu a1, a2, label64
	addiw a1, s1, -2
	srliw a0, s1, 31
	li a3, 2
	add a2, s1, a0
	sraiw s2, a2, 1
	bgeu a1, a3, label12
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
	j label7
label64:
	mv a0, zero
label7:
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
	bne a1, a3, label2
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label2
label12:
	addiw a1, s1, 3
	li a2, 7
	bltu a1, a2, label85
	addiw a1, s1, -4
	slli a3, s1, 1
	srli a0, a3, 62
	li a3, 4
	add a2, s1, a0
	sraiw s3, a2, 2
	bgeu a1, a3, label18
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
	j label13
label85:
	mv a0, zero
label13:
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
	beq a1, a3, label15
	j label7
label18:
	addiw a1, s3, 1
	li a2, 3
	bltu a1, a2, label106
	addiw a1, s3, -2
	slli a3, s1, 1
	srli a0, a3, 61
	li a3, 2
	add a2, s1, a0
	sraiw s4, a2, 3
	bltu a1, a3, label49
	addiw a1, s1, 15
	slli a3, s1, 1
	srli a2, a3, 60
	li a3, 31
	add a0, s1, a2
	sraiw s5, a0, 4
	bgeu a1, a3, label24
	mv a0, zero
label46:
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
	beq a1, a3, label48
	j label19
label106:
	mv a0, zero
label19:
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
	beq a1, a3, label21
	j label13
label24:
	addiw a1, s1, -16
	li a0, 16
	bgeu a1, a0, label26
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
	j label46
label26:
	addiw a1, s5, 1
	li a2, 3
	bgeu a1, a2, label27
	mv a0, zero
label43:
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
	and a1, s5, a2
	beq a1, a3, label45
	j label46
label27:
	addiw a1, s5, -2
	slli a0, s1, 1
	srli a2, a0, 59
	li a0, 2
	add a3, s1, a2
	sraiw s6, a3, 5
	bltu a1, a0, label42
	addiw a1, s5, 3
	li a2, 7
	bgeu a1, a2, label32
	mv a0, zero
label29:
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
	and a1, s6, a2
	bne a1, a3, label43
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label43
label32:
	addiw a1, s5, -4
	slli a0, s1, 1
	srli a3, a0, 58
	li a0, 4
	add a2, s1, a3
	sraiw s7, a2, 6
	bltu a1, a0, label33
	addiw a1, s7, 1
	li a2, 3
	bgeu a1, a2, label38
	mv a0, zero
	j label35
label38:
	addiw a1, s7, -2
	slli a3, s1, 1
	srli a2, a3, 57
	li a3, 2
	add a0, s1, a2
	sraiw s8, a0, 7
	bltu a1, a3, label41
	slli a0, s1, 1
	srli a2, a0, 56
	mv a0, s0
	add a3, s1, a2
	sraiw a1, a3, 8
	jal multiply
	lui a4, 70493
	lui t0, 243712
	slliw a1, a0, 1
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
	and a1, s8, a2
	beq a1, a3, label40
label35:
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
	and a1, s7, a2
	bne a1, a3, label29
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	addiw a5, t0, 1
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label29
label42:
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
	j label43
label15:
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
	j label7
label40:
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
	j label35
label41:
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
	j label35
label33:
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
	j label29
label45:
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
	j label46
label49:
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
	j label19
label48:
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
	j label19
label21:
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
	j label13
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label756
	li a0, 1
label754:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label756:
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
	bne a1, a4, label754
	mv a1, s0
	jal multiply
	j label754
.p2align 2
fft:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	lui a0, 243712
	li s6, 1
	sd s2, 24(sp)
	mv s2, a1
	sd s0, 32(sp)
	lui a1, 70493
	mv s0, a3
	sd s5, 40(sp)
	addiw s5, a1, -2031
	sd s4, 48(sp)
	addiw s4, a0, 1
	sd s3, 56(sp)
	sd s7, 64(sp)
	beq a2, s6, label583
	srliw a0, a2, 31
pcrel752:
	auipc a3, %pcrel_hi(temp)
	add a1, a2, a0
	addi a0, a3, %pcrel_lo(pcrel752)
	sraiw s3, a1, 1
	addiw a1, a2, -4
	sh2add a4, s3, a0
	ble a2, zero, label578
	mv a3, zero
	j label561
.p2align 2
label692:
	mv t3, a0
.p2align 2
label580:
	addw a1, s2, t2
	sh2add t4, a1, t1
	sh2add t5, a1, s1
	lw t6, 0(t5)
	lw a1, 0(t4)
	mv a0, t3
	jal multiply
	addw a1, t6, a0
	mul a2, a1, s5
	srli t0, a2, 63
	srai a3, a2, 58
	add a5, t0, a3
	subw a3, t6, a0
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
	sw a2, 0(t4)
	mv a0, t3
	mv a1, s0
	jal multiply
	addiw t2, t2, 1
	bgt s3, t2, label692
label583:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
label563:
	sh2add t2, t1, a4
	addiw a3, a3, 1
	sh2add t0, a5, s1
	lw t3, 0(t0)
	sw t3, 0(t2)
	ble a2, a3, label566
.p2align 2
label561:
	addw a5, s2, a3
	andi t0, a3, 1
	srliw t2, a3, 31
	add t3, a3, t2
	sraiw t1, t3, 1
	bne t0, zero, label563
	sh2add t0, t1, a0
	sh2add t2, a5, s1
	lw t3, 0(t2)
	sw t3, 0(t0)
	addiw a3, a3, 1
	bgt a2, a3, label561
label566:
	li a4, 4
	ble a2, a4, label567
	addiw a3, s2, 1
	mv a4, zero
	sh2add a5, a3, s1
	mv a3, a0
	addi t1, a5, 8
	addi t0, a5, 4
	j label573
.p2align 2
label576:
	addi a3, a3, 16
.p2align 2
label573:
	addw t3, s2, a4
	sh2add t5, a4, a5
	sh2add t6, a4, t0
	lw t4, 0(a3)
	sh2add t2, t3, s1
	sw t4, 0(t2)
	sh2add t4, a4, t1
	lw t3, 4(a3)
	addiw a4, a4, 4
	sw t3, 0(t5)
	lw t2, 8(a3)
	sw t2, 0(t6)
	lw t3, 12(a3)
	sw t3, 0(t4)
	bgt a1, a4, label576
	sh2add a0, a4, a0
	j label568
label571:
	addi a0, a0, 4
label568:
	addw a5, s2, a4
	lw a3, 0(a0)
	addiw a4, a4, 1
	sh2add a1, a5, s1
	sw a3, 0(a1)
	bgt a2, a4, label571
label578:
	mv a0, s0
	mv a1, s0
	jal multiply
	mv s7, a0
	mv a0, s1
	mv a1, s2
	mv a2, s3
	mv a3, s7
	jal fft
	mv a0, s1
	addw a1, s2, s3
	mv a2, s3
	mv a3, s7
	jal fft
	ble s3, zero, label583
	sh2add t1, s3, s1
	mv t2, zero
	mv t3, s6
	j label580
label567:
	mv a4, zero
	j label568
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel868:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel868)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	mv a0, s0
	jal getarray
pcrel869:
	auipc a1, %pcrel_hi(b)
	mv s3, a0
	addi s2, a1, %pcrel_lo(pcrel869)
	mv a0, s2
	jal getarray
	mv s4, a0
	li a0, 60
	jal _sysy_starttime
	li a6, 1
	addiw a1, s3, -1
	addw s1, s4, a1
	ble s1, a6, label785
.p2align 2
label799:
	slliw a1, a6, 1
	mv a6, a1
	bgt s1, a1, label799
label785:
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
	ble a6, zero, label792
	mv t1, s0
	mv t2, zero
.p2align 2
label788:
	lw a0, 0(t1)
	sh2add a2, t2, s2
	lw a1, 0(a2)
	jal multiply
	addiw t2, t2, 1
	sw a0, 0(t1)
	ble a6, t2, label792
	addi t1, t1, 4
	j label788
label792:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a7
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, a6
	jal fft
	ble a6, zero, label798
	mv a0, a6
	lui a2, 243712
	addiw a1, a2, -1
	jal power
	mv t2, s0
	mv t3, zero
	mv t1, a0
	j label794
.p2align 2
label797:
	addi t2, t2, 4
.p2align 2
label794:
	lw a0, 0(t2)
	mv a1, t1
	jal multiply
	addiw t3, t3, 1
	sw a0, 0(t2)
	bgt a6, t3, label797
label798:
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
