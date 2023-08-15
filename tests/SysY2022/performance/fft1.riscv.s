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
	srliw a2, s1, 31
	li a3, 2
	add a0, s1, a2
	sraiw s2, a0, 1
	bltu a1, a3, label49
	addiw a1, s1, 3
	li a2, 7
	bgeu a1, a2, label15
	mv a0, zero
label12:
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
	beq a1, a3, label14
	j label7
label64:
	mv a0, zero
label7:
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
	beq a1, a3, label9
	j label2
label15:
	addiw a1, s1, -4
	slli a0, s1, 1
	srli a2, a0, 62
	li a0, 4
	add a3, s1, a2
	sraiw s3, a3, 2
	bgeu a1, a0, label17
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
	j label12
label17:
	addiw a1, s3, 1
	li a2, 3
	bgeu a1, a2, label18
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
	and a1, s3, a2
	beq a1, a3, label48
	j label12
label18:
	addiw a1, s3, -2
	slli a3, s1, 1
	srli a2, a3, 61
	li a3, 2
	add a0, s1, a2
	sraiw s4, a0, 3
	bgeu a1, a3, label19
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
label19:
	addiw a1, s1, 15
	slli a3, s1, 1
	srli a2, a3, 60
	li a3, 31
	add a0, s1, a2
	sraiw s5, a0, 4
	bgeu a1, a3, label20
	mv a0, zero
label42:
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
	beq a1, a3, label44
	j label46
label20:
	addiw a1, s1, -16
	li a0, 16
	bgeu a1, a0, label22
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
	j label42
label22:
	addiw a1, s5, 1
	li a2, 3
	bgeu a1, a2, label23
	mv a0, zero
label39:
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
	bne a1, a3, label42
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
	j label42
label23:
	addiw a1, s5, -2
	slli a3, s1, 1
	srli a2, a3, 59
	li a3, 2
	add a0, s1, a2
	sraiw s6, a0, 5
	bgeu a1, a3, label24
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
	j label39
label24:
	addiw a1, s5, 3
	li a2, 7
	bgeu a1, a2, label28
	mv a0, zero
label25:
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
	beq a1, a3, label27
	j label39
label28:
	addiw a1, s5, -4
	slli a3, s1, 1
	srli a0, a3, 58
	li a3, 4
	add a2, s1, a0
	sraiw s7, a2, 6
	bltu a1, a3, label29
	addiw a1, s7, 1
	li a2, 3
	bltu a1, a2, label160
	addiw a1, s7, -2
	slli a2, s1, 1
	srli a3, a2, 57
	li a2, 2
	add a0, s1, a3
	sraiw s8, a0, 7
	bgeu a1, a2, label35
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
	j label31
label160:
	mv a0, zero
label31:
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
	and a1, s7, a2
	bne a1, a3, label25
	addw a1, s0, a0
	lui a4, 70493
	addiw a2, a4, -2031
	mul a0, a1, a2
	srli a4, a0, 63
	srai a3, a0, 58
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, a1, a3
	j label25
label35:
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
	beq a1, a3, label36
	j label31
label27:
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
	j label39
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
	j label12
label36:
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
	j label31
label44:
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
	j label46
label29:
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
	j label25
label14:
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
	j label7
label9:
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
	j label2
label49:
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
.p2align 2
power:
	addi sp, sp, -24
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s1, 16(sp)
	mv s1, a1
	bne a1, zero, label760
	li a0, 1
label758:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	addi sp, sp, 24
	ret
label760:
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
	bne a1, a4, label758
	mv a1, s0
	jal multiply
	j label758
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
	beq a2, s6, label562
	srliw a0, a2, 31
pcrel756:
	auipc a3, %pcrel_hi(temp)
	add a1, a2, a0
	addi a0, a3, %pcrel_lo(pcrel756)
	sraiw s3, a1, 1
	addiw a1, a2, -3
	sh2add a4, s3, a0
	ble a2, zero, label582
	mv a3, zero
	j label564
.p2align 2
label695:
	mv t3, a0
.p2align 2
label584:
	addw a1, s2, t2
	sh2add t4, a1, t1
	sh2add t6, a1, s1
	lw t5, 0(t6)
	lw a1, 0(t4)
	mv a0, t3
	jal multiply
	addw a1, t5, a0
	mul a2, a1, s5
	srli t0, a2, 63
	srai a3, a2, 58
	add a5, t0, a3
	subw a3, t5, a0
	mulw a4, a5, s4
	subw a2, a1, a4
	addw a1, a3, s4
	sw a2, 0(t6)
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
	bgt s3, t2, label695
label562:
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
label566:
	sh2add t2, t0, s1
	addiw a3, a3, 1
	sh2add t3, t1, a4
	lw a5, 0(t2)
	sw a5, 0(t3)
	ble a2, a3, label569
.p2align 2
label564:
	andi a5, a3, 1
	addw t0, s2, a3
	srliw t3, a3, 31
	add t2, a3, t3
	sraiw t1, t2, 1
	bne a5, zero, label566
	sh2add t2, t0, s1
	sh2add t3, t1, a0
	lw a5, 0(t2)
	sw a5, 0(t3)
	addiw a3, a3, 1
	bgt a2, a3, label564
label569:
	li a4, 3
	ble a2, a4, label628
	addiw t0, s2, 1
	mv a3, a0
	mv a5, zero
	sh2add a4, t0, s1
	j label578
.p2align 2
label581:
	addi a3, a3, 16
.p2align 2
label578:
	addw t0, s2, a5
	lw t3, 0(a3)
	sh2add t1, t0, s1
	sh2add t0, a5, a4
	addiw a5, a5, 4
	sw t3, 0(t1)
	lw t2, 4(a3)
	sw t2, 0(t0)
	lw t3, 8(a3)
	sw t3, 4(t0)
	lw t1, 12(a3)
	sw t1, 8(t0)
	bgt a1, a5, label581
label570:
	ble a2, a5, label582
	sh2add a0, a5, a0
	mv a1, a5
	j label573
label576:
	addi a0, a0, 4
label573:
	addw t0, s2, a1
	lw a4, 0(a0)
	addiw a1, a1, 1
	sh2add a3, t0, s1
	sw a4, 0(a3)
	bgt a2, a1, label576
label582:
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
	ble s3, zero, label562
	sh2add t1, s3, s1
	mv t2, zero
	mv t3, s6
	j label584
label628:
	mv a5, zero
	j label570
.p2align 2
.globl main
main:
	addi sp, sp, -48
pcrel872:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a1, %pcrel_lo(pcrel872)
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s4, 32(sp)
	sd s1, 40(sp)
	mv a0, s0
	jal getarray
pcrel873:
	auipc a1, %pcrel_hi(b)
	mv s3, a0
	addi s2, a1, %pcrel_lo(pcrel873)
	mv a0, s2
	jal getarray
	mv s4, a0
	li a0, 60
	jal _sysy_starttime
	li a6, 1
	addiw a1, s3, -1
	addw s1, s4, a1
	ble s1, a6, label789
.p2align 2
label803:
	slliw a1, a6, 1
	mv a6, a1
	bgt s1, a1, label803
label789:
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
	ble a6, zero, label796
	mv t1, s0
	mv t2, zero
.p2align 2
label792:
	sh2add a2, t2, s2
	lw a0, 0(t1)
	lw a1, 0(a2)
	jal multiply
	addiw t2, t2, 1
	sw a0, 0(t1)
	ble a6, t2, label796
	addi t1, t1, 4
	j label792
label796:
	lui a2, 243712
	li a0, 3
	subw a1, a2, a7
	jal power
	mv a1, zero
	mv a3, a0
	mv a0, s0
	mv a2, a6
	jal fft
	ble a6, zero, label802
	mv a0, a6
	lui a2, 243712
	addiw a1, a2, -1
	jal power
	mv t3, zero
	mv t2, s0
	mv t1, a0
	j label798
.p2align 2
label801:
	addi t2, t2, 4
.p2align 2
label798:
	lw a0, 0(t2)
	mv a1, t1
	jal multiply
	addiw t3, t3, 1
	sw a0, 0(t2)
	bgt a6, t3, label801
label802:
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
