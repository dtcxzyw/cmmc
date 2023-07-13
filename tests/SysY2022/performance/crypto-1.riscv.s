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
	sd s0, 408(sp)
	addi s0, sp, 0
	sd s5, 352(sp)
	sd s1, 400(sp)
	addi s1, sp, 328
	sd s6, 320(sp)
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
	mv a4, s2
pcrel487:
	auipc a1, %pcrel_hi(buffer)
	sw zero, 328(sp)
	addi a0, a1, %pcrel_lo(pcrel487)
	sw zero, 332(sp)
	mv a1, s3
	sd zero, 336(sp)
	sw zero, 344(sp)
	ble s3, zero, label44
label58:
	mv a2, zero
label5:
	slliw a5, a4, 13
	addw a3, a5, a4
	slli a4, a3, 1
	srli t1, a4, 47
	add t0, a3, t1
	sraiw a5, t0, 17
	addw a3, a3, a5
	slliw a4, a3, 5
	addw a5, a4, a3
	slliw t0, a5, 13
	addw a4, t0, a5
	slli t1, a4, 1
	srli a5, t1, 47
	add t0, a4, a5
	sraiw t1, t0, 17
	addw a5, a4, t1
	slliw a4, a5, 5
	addw t0, a4, a5
	slliw t1, t0, 13
	addw a4, t1, t0
	slli t0, a4, 1
	srli t1, t0, 47
	add t2, a4, t1
	sraiw t0, t2, 17
	addw t1, a4, t0
	slliw a4, t1, 5
	addw t0, a4, t1
	slliw t2, t0, 13
	addw a4, t2, t0
	slli t0, a4, 1
	srli t4, t0, 47
	add t2, a4, t4
	sraiw t3, t2, 17
	addw t0, a4, t3
	slliw t2, t0, 5
	addw a4, t2, t0
	slli t0, a4, 1
	srli t3, t0, 56
	add t2, a4, t3
	andi t4, t2, -256
	slliw t2, t1, 5
	subw t0, a4, t4
	addw t1, t2, t1
	slli t3, t1, 1
	srli t4, t3, 56
	slliw t3, a5, 5
	add t2, t1, t4
	addw a5, t3, a5
	andi t5, t2, -256
	slli t2, a5, 1
	subw t1, t1, t5
	srli t4, t2, 56
	slliw t2, a3, 5
	add t5, a5, t4
	addw a3, t2, a3
	andi t3, t5, -256
	subw a5, a5, t3
	slli t3, a3, 1
	srli t2, t3, 56
	add t4, a3, t2
	andi t3, t4, -256
	subw t2, a3, t3
	sh2add a3, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a3)
	sw a5, 4(a3)
	sw t1, 8(a3)
	sw t0, 12(a3)
	li a3, 32000
	bge a2, a3, label8
	j label5
label8:
	li a3, 128000
	li a5, 128
	add a2, a0, a3
	sw a5, 0(a2)
	li a2, 32001
	j label9
label12:
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
	bge a3, a2, label140
	j label12
label140:
	li a2, -1009589776
	li a3, 271733878
	li t0, -1732584194
	mv t3, zero
	xori t1, a3, -1
	xori t2, t0, -1
	ble a5, zero, label21
	j label143
label21:
	lw a5, 328(sp)
	addiw a1, a1, -1
	addw t2, t2, a5
	subw t3, zero, t2
	sw t3, 328(sp)
	lw t2, 332(sp)
	addw t1, t1, t2
	subw a5, zero, t1
	sw a5, 332(sp)
	lw t1, 336(sp)
	addw a5, t0, t1
	subw t0, zero, a5
	sw t0, 336(sp)
	lw t1, 340(sp)
	addw a3, a3, t1
	subw a5, zero, a3
	sw a5, 340(sp)
	lw a3, 344(sp)
	addw a2, a2, a3
	subw a5, zero, a2
	sw a5, 344(sp)
	ble a1, zero, label44
	j label58
label143:
	mv t4, zero
label22:
	sh2add a6, t4, t3
	sh2add t5, a6, a0
	lw t6, 0(t5)
	lw a7, 4(t5)
	slliw a6, a7, 16
	slliw a7, t6, 24
	addw t6, a6, a7
	lw a6, 8(t5)
	slliw a7, a6, 8
	addw t6, t6, a7
	lw a7, 12(t5)
	sh2add t5, t4, s0
	addw a6, t6, a7
	sw a6, 0(t5)
	addiw a6, t4, 1
	sh2add a7, a6, t3
	sh2add t6, a7, a0
	lw a6, 0(t6)
	slliw s3, a6, 24
	lw s2, 4(t6)
	slliw a7, s2, 16
	addw a6, a7, s3
	lw a7, 8(t6)
	slliw s2, a7, 8
	lw a7, 12(t6)
	addw a6, a6, s2
	addw t6, a6, a7
	addiw a6, t4, 2
	sh2add a7, a6, t3
	sw t6, 4(t5)
	sh2add t6, a7, a0
	lw a6, 0(t6)
	slliw s3, a6, 24
	lw s2, 4(t6)
	slliw a7, s2, 16
	addw a6, a7, s3
	lw a7, 8(t6)
	slliw s2, a7, 8
	lw a7, 12(t6)
	addw a6, a6, s2
	addw t6, a6, a7
	addiw a6, t4, 3
	sh2add a7, a6, t3
	sw t6, 8(t5)
	sh2add t6, a7, a0
	lw a6, 0(t6)
	slliw s3, a6, 24
	lw s2, 4(t6)
	slliw a7, s2, 16
	lw s2, 8(t6)
	addw a6, a7, s3
	lw t6, 12(t6)
	slliw a7, s2, 8
	addw a6, a6, a7
	addw a7, a6, t6
	li t6, 16
	sw a7, 12(t5)
	addiw t5, t4, 4
	bge t5, t6, label24
	mv t4, t5
	j label22
label24:
	addiw t4, t5, 4
	li t6, 80
	bge t4, t6, label250
	j label43
label250:
	mv t4, t5
	j label26
label43:
	sh2add t5, t5, s0
	lw t6, -12(t5)
	lw a6, -32(t5)
	addw a7, t6, a6
	lw t6, -56(t5)
	lw s2, -64(t5)
	subw a6, a7, t6
	addw a7, a6, s2
	subw a6, zero, a7
	srliw s3, a6, 31
	add a7, a6, s3
	andi s2, a7, -2
	subw a7, a6, s2
	sh1add a6, a6, a7
	sw a6, 0(t5)
	lw a7, -8(t5)
	lw s2, -28(t5)
	addw s3, a7, s2
	lw a7, -52(t5)
	subw s2, s3, a7
	lw s3, -60(t5)
	addw s4, s2, s3
	subw s2, zero, s4
	srliw s3, s2, 31
	add s5, s2, s3
	andi s4, s5, -2
	subw s3, s2, s4
	sh1add s2, s2, s3
	sw s2, 4(t5)
	lw s3, -4(t5)
	lw s5, -24(t5)
	lw s4, -48(t5)
	addw s2, s3, s5
	subw s3, s2, s4
	addw s2, t6, s3
	subw t6, zero, s2
	srliw s3, t6, 31
	add s5, t6, s3
	andi s4, s5, -2
	subw s2, t6, s4
	sh1add t6, t6, s2
	sw t6, 8(t5)
	lw s3, -20(t5)
	lw s2, -44(t5)
	addw t6, a6, s3
	subw a6, t6, s2
	addw a7, a7, a6
	subw t6, zero, a7
	srliw a6, t6, 31
	add a7, t6, a6
	andi s2, a7, -2
	subw a6, t6, s2
	sh1add t6, t6, a6
	sw t6, 12(t5)
	mv t5, t4
	addiw t4, t4, 4
	li t6, 80
	bge t4, t6, label250
	j label43
label26:
	sh2add t5, t4, s0
	addiw t4, t4, 1
	lw t6, -12(t5)
	lw a7, -32(t5)
	addw a6, t6, a7
	lw a7, -56(t5)
	subw t6, a6, a7
	lw a6, -64(t5)
	addw a7, t6, a6
	subw t6, zero, a7
	srliw a6, t6, 31
	add a7, t6, a6
	andi s2, a7, -2
	subw a6, t6, s2
	sh1add t6, t6, a6
	sw t6, 0(t5)
	li t5, 80
	bge t4, t5, label272
	j label26
label272:
	mv s2, a2
	mv t4, a3
	mv t5, t0
	mv a6, t1
	mv t6, t2
	mv a7, zero
	li s3, 80
	bge zero, s3, label42
	li s4, 20
	bge zero, s4, label36
	j label479
label42:
	addw t2, t2, t6
	addw t1, t1, a6
	addw t0, t0, t5
	addw a3, a3, t4
	addw a2, a2, s2
	addiw t3, t3, 64
	ble a5, t3, label21
	j label143
label479:
	li s3, 1518500249
	mv s4, zero
label39:
	slliw s5, t6, 5
	addw s6, s2, s5
	slli s5, t6, 1
	addw s3, s3, s6
	addw s2, s4, s3
	srli s4, s5, 59
	add s3, t6, s4
	andi s5, s3, -32
	subw s4, t6, s5
	sh2add s5, a7, s0
	addw s2, s2, s4
	addiw a7, a7, 1
	lw s4, 0(s5)
	slli s5, a6, 1
	addw s3, s2, s4
	srli s4, s5, 34
	slliw s2, a6, 30
	add s7, a6, s4
	sraiw s6, s7, 30
	slliw s5, s6, 30
	subw a6, a6, s5
	addw s4, s2, a6
	mv a6, t6
	mv s2, t4
	mv t6, s3
	mv t4, t5
	mv t5, s4
	li s3, 80
	bge a7, s3, label42
	li s4, 20
	bge a7, s4, label36
	j label479
label36:
	li s3, 40
	bge a7, s3, label37
	addw s5, t5, a6
	li s3, 1859775361
	subw s4, s5, t4
	j label39
label37:
	addw s4, t5, a6
	slti s3, a7, 60
	subw s5, s4, t4
	mv s4, zero
	bne s3, zero, label466
	mv s4, s5
label466:
	li s5, -1894007588
	bne s3, zero, label468
	li s5, -899497722
label468:
	mv s3, s5
	j label39
label9:
	sh2add a5, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a5)
	slli t0, a3, 1
	srli a5, t0, 58
	add t1, a3, a5
	andi t0, t1, -64
	li t1, 60
	subw a5, a3, t0
	beq a5, t1, label11
	mv a2, a3
	j label9
label11:
	sh2add a3, a3, a0
	li a5, 125
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw a5, 8(a3)
	addiw a5, a2, 5
	sw zero, 12(a3)
	mv a3, zero
	j label12
label44:
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
	ld s6, 320(sp)
	ld s1, 400(sp)
	ld s5, 352(sp)
	ld s0, 408(sp)
	addi sp, sp, 416
	ret
