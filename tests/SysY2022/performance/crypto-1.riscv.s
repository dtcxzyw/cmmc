.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	131072
.text
.globl main
main:
	addi sp, sp, -416
	sd s0, 352(sp)
	addi s0, sp, 0
	sd s5, 408(sp)
	sd s1, 320(sp)
	addi s1, sp, 328
	sd s6, 400(sp)
	sd s2, 392(sp)
	sd s3, 384(sp)
	sd s4, 376(sp)
	sd s7, 368(sp)
	sd ra, 360(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
pcrel445:
	auipc a1, %pcrel_hi(buffer)
	mv a4, s2
	sw zero, 328(sp)
	addi a0, a1, %pcrel_lo(pcrel445)
	sw zero, 332(sp)
	mv a1, s3
	sd zero, 336(sp)
	sw zero, 344(sp)
	ble s3, zero, label5
label57:
	mv a2, zero
label6:
	slliw a5, a4, 13
	addw a3, a5, a4
	slli a4, a3, 1
	srli t1, a4, 47
	add a5, a3, t1
	sraiw t0, a5, 17
	addw a4, a3, t0
	slli t1, a4, 5
	addw a3, t1, a4
	slli a5, a3, 13
	addw a4, a5, a3
	slli t1, a4, 1
	srli a5, t1, 47
	add t0, a4, a5
	sraiw t1, t0, 17
	addw a4, a4, t1
	slli t0, a4, 5
	addw a5, t0, a4
	slli t1, a5, 13
	addw a4, t1, a5
	slli t2, a4, 1
	srli t1, t2, 47
	add t0, a4, t1
	sraiw t2, t0, 17
	addw a4, a4, t2
	slli t1, a4, 5
	addw t0, t1, a4
	slli t2, t0, 13
	addw a4, t2, t0
	slli t4, a4, 1
	srli t1, t4, 47
	add t3, a4, t1
	sraiw t2, t3, 17
	addw t1, a4, t2
	slli t3, t1, 5
	addw a4, t3, t1
	slli t1, a4, 1
	srli t4, t1, 56
	add t2, a4, t4
	andi t3, t2, -256
	slli t2, t0, 1
	subw t1, a4, t3
	srli t4, t2, 56
	add t3, t0, t4
	andi t2, t3, -256
	slli t3, a5, 1
	subw t0, t0, t2
	srli t4, t3, 56
	add t2, a5, t4
	slli t4, a3, 1
	andi t3, t2, -256
	srli t2, t4, 56
	subw a5, a5, t3
	add t3, a3, t2
	andi t4, t3, -256
	subw t2, a3, t4
	sh2add a3, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a3)
	sw a5, 4(a3)
	sw t0, 8(a3)
	sw t1, 12(a3)
	li a3, 32000
	bge a2, a3, label9
	j label6
label13:
	sh2add a2, a3, s0
	sw zero, 0(a2)
	addi a3, a3, 16
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	sw zero, 16(a2)
	sw zero, 20(a2)
	sw zero, 24(a2)
	sw zero, 28(a2)
	sw zero, 32(a2)
	sw zero, 36(a2)
	sw zero, 40(a2)
	sw zero, 44(a2)
	sw zero, 48(a2)
	sw zero, 52(a2)
	sw zero, 56(a2)
	sw zero, 60(a2)
	li a2, 80
	bge a3, a2, label139
	j label13
label139:
	li a2, -1009589776
	li a3, 271733878
	li t0, -1732584194
	mv t3, zero
	xori t1, a3, -1
	xori t2, t0, -1
	ble a5, zero, label22
	j label142
label22:
	lw a5, 328(sp)
	addiw a1, a1, -1
	addw t2, t2, a5
	subw t3, zero, t2
	sw t3, 328(sp)
	lw a5, 332(sp)
	addw t1, t1, a5
	subw t2, zero, t1
	sw t2, 332(sp)
	lw a5, 336(sp)
	addw t1, t0, a5
	subw t0, zero, t1
	sw t0, 336(sp)
	lw a5, 340(sp)
	addw t0, a3, a5
	subw a3, zero, t0
	sw a3, 340(sp)
	lw a5, 344(sp)
	addw a2, a2, a5
	subw a3, zero, a2
	sw a3, 344(sp)
	ble a1, zero, label5
	j label57
label142:
	addiw t4, t3, 4
	addiw t5, t3, 8
	addiw t6, t3, 12
	mv a6, zero
	mv a7, zero
	j label24
label27:
	sh2add t5, t4, s0
	addiw t4, t4, 4
	lw t6, -12(t5)
	lw a7, -32(t5)
	addw a6, t6, a7
	lw t6, -56(t5)
	lw a7, -64(t5)
	addw s3, a6, a7
	subw a6, t6, s3
	srliw s2, a6, 31
	add a7, a6, s2
	andi s3, a7, -2
	subw a7, a6, s3
	sh1add a6, a6, a7
	sw a6, 0(t5)
	lw s2, -8(t5)
	lw s3, -28(t5)
	addw s2, s2, s3
	lw a7, -52(t5)
	lw s3, -60(t5)
	addw a6, a6, a7
	addw s4, s2, s3
	subw a7, a7, s4
	srliw s2, a7, 31
	add s4, a7, s2
	andi s3, s4, -2
	subw s2, a7, s3
	sh1add a7, a7, s2
	sw a7, 4(t5)
	lw a7, -4(t5)
	lw s3, -24(t5)
	addw t6, t6, a7
	lw s2, -48(t5)
	addw a7, t6, s3
	subw t6, s2, a7
	srliw a7, t6, 31
	add s3, t6, a7
	andi s2, s3, -2
	subw a7, t6, s2
	sh1add t6, t6, a7
	sw t6, 8(t5)
	lw a7, -20(t5)
	addw a6, a6, a7
	lw a7, -44(t5)
	subw t6, a7, a6
	srliw a7, t6, 31
	add a6, t6, a7
	andi s2, a6, -2
	subw a7, t6, s2
	sh1add t6, t6, a7
	sw t6, 12(t5)
	li t5, 80
	bge t4, t5, label301
	j label27
label301:
	mv s2, a2
	mv t4, a3
	mv t5, t0
	mv a6, t1
	mv t6, t2
	mv a7, zero
	li s3, 80
	bge zero, s3, label43
	li s4, 20
	bge zero, s4, label37
	j label438
label37:
	li s3, 40
	bge a7, s3, label38
	addw s5, t5, a6
	li s3, 1859775361
	subw s4, s5, t4
	j label40
label43:
	addw t2, t2, t6
	addw t1, t1, a6
	addw t0, t0, t5
	addw a3, a3, t4
	addw a2, a2, s2
	addiw t3, t3, 64
	ble a5, t3, label22
	j label142
label438:
	li s3, 1518500249
	mv s4, zero
label40:
	slliw s6, t6, 5
	addw s5, s2, s6
	addw s3, s3, s5
	addw s2, s4, s3
	slli s4, t6, 1
	srli s3, s4, 59
	add s5, t6, s3
	andi s4, s5, -32
	subw s3, t6, s4
	sh2add s4, a7, s0
	addw s2, s2, s3
	addiw a7, a7, 1
	lw s5, 0(s4)
	slli s4, a6, 1
	addw s3, s2, s5
	srli s5, s4, 34
	slliw s2, a6, 30
	add s6, a6, s5
	sraiw s4, s6, 30
	slli s5, s4, 30
	subw a6, a6, s5
	addw s4, s2, a6
	mv a6, t6
	mv s2, t4
	mv t6, s3
	mv t4, t5
	mv t5, s4
	li s3, 80
	bge a7, s3, label43
	li s4, 20
	bge a7, s4, label37
	j label438
label38:
	addw s4, t5, a6
	slti s3, a7, 60
	subw s5, s4, t4
	mv s4, zero
	bne s3, zero, label425
	mv s4, s5
label425:
	li s5, -1894007588
	bne s3, zero, label427
	li s5, -899497722
label427:
	mv s3, s5
	j label40
label24:
	addw s4, t3, a6
	sh2add s2, s4, a0
	lw s3, 0(s2)
	slli s6, s3, 24
	lw s5, 4(s2)
	lw s7, 8(s2)
	slli s4, s5, 16
	slli s5, s7, 8
	addw s3, s4, s6
	lw s6, 12(s2)
	addw s4, s3, s5
	sh2add s2, a7, s0
	addw s5, t4, a6
	addw s3, s4, s6
	addiw a7, a7, 4
	sw s3, 0(s2)
	sh2add s3, s5, a0
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	lw s6, 8(s3)
	addw s4, s5, s7
	lw s3, 12(s3)
	slli s5, s6, 8
	addw s4, s4, s5
	addw s5, t5, a6
	addw s6, s4, s3
	sh2add s3, s5, a0
	sw s6, 4(s2)
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	lw s6, 8(s3)
	addw s4, s5, s7
	slli s5, s6, 8
	lw s6, 12(s3)
	addw s4, s4, s5
	addw s5, t6, a6
	addw s3, s4, s6
	addiw a6, a6, 16
	sw s3, 8(s2)
	sh2add s3, s5, a0
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	lw s6, 8(s3)
	addw s4, s5, s7
	slli s5, s6, 8
	lw s6, 12(s3)
	addw s4, s4, s5
	addw s3, s4, s6
	sw s3, 12(s2)
	li s2, 16
	bge a7, s2, label241
	j label24
label241:
	li t4, 16
	j label27
label9:
	li a3, 128000
	li a5, 128
	add a2, a0, a3
	sw a5, 0(a2)
	li a2, 32001
label10:
	sh2add a5, a2, a0
	addiw a3, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a3, 63
	beq a5, t0, label12
	mv a2, a3
	j label10
label12:
	sh2add a3, a3, a0
	li a5, 125
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw a5, 8(a3)
	addiw a5, a2, 5
	sw zero, 12(a3)
	mv a3, zero
	j label13
label5:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s1
	li a0, 5
	jal putarray
	ld ra, 360(sp)
	mv a0, zero
	ld s7, 368(sp)
	ld s4, 376(sp)
	ld s3, 384(sp)
	ld s2, 392(sp)
	ld s6, 400(sp)
	ld s1, 320(sp)
	ld s5, 408(sp)
	ld s0, 352(sp)
	addi sp, sp, 416
	ret
