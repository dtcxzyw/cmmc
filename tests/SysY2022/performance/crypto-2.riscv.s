.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	131072
.text
.globl main
main:
	addi sp, sp, -400
	sd s0, 392(sp)
	addi s0, sp, 0
	sd s5, 320(sp)
	sd s1, 384(sp)
	addi s1, sp, 328
	sd s2, 376(sp)
	sd s3, 368(sp)
	sd s4, 360(sp)
	sd ra, 352(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	mv a1, s3
	mv a4, s2
pcrel485:
	auipc a0, %pcrel_hi(buffer)
	sw zero, 328(sp)
	addi a0, a0, %pcrel_lo(pcrel485)
	sw zero, 332(sp)
	sd zero, 336(sp)
	sw zero, 344(sp)
	ble s3, zero, label44
	j label58
label44:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s1
	li a0, 5
	jal putarray
	ld ra, 352(sp)
	mv a0, zero
	ld s4, 360(sp)
	ld s3, 368(sp)
	ld s2, 376(sp)
	ld s1, 384(sp)
	ld s5, 320(sp)
	ld s0, 392(sp)
	addi sp, sp, 400
	ret
label58:
	mv a2, zero
label5:
	slliw a3, a4, 13
	addw a3, a3, a4
	slli a4, a3, 1
	srli a4, a4, 47
	add a4, a3, a4
	sraiw a4, a4, 17
	addw a3, a3, a4
	slliw a4, a3, 5
	addw a4, a4, a3
	slliw a5, a4, 13
	addw a4, a5, a4
	slli a5, a4, 1
	srli a5, a5, 47
	add a5, a4, a5
	sraiw a5, a5, 17
	addw a5, a4, a5
	slliw a4, a5, 5
	addw a4, a4, a5
	slliw t0, a4, 13
	addw a4, t0, a4
	slli t0, a4, 1
	srli t0, t0, 47
	add t0, a4, t0
	sraiw t0, t0, 17
	addw t1, a4, t0
	slliw t2, t1, 5
	slliw a4, t1, 5
	addw a4, a4, t1
	addw t1, t2, t1
	slliw t0, a4, 13
	slli t2, t1, 1
	addw a4, t0, a4
	srli t2, t2, 56
	slli t0, a4, 1
	add t2, t1, t2
	srli t0, t0, 47
	andi t2, t2, -256
	add t0, a4, t0
	subw t1, t1, t2
	sraiw t0, t0, 17
	slliw t2, a5, 5
	addw a4, a4, t0
	addw a5, t2, a5
	slliw t0, a4, 5
	slli t2, a5, 1
	addw a4, t0, a4
	srli t2, t2, 56
	slli t0, a4, 1
	add t2, a5, t2
	srli t0, t0, 56
	andi t2, t2, -256
	add t0, a4, t0
	subw a5, a5, t2
	andi t0, t0, -256
	slliw t2, a3, 5
	subw t0, a4, t0
	addw a3, t2, a3
	slli t2, a3, 1
	srli t2, t2, 56
	add t2, a3, t2
	andi t2, t2, -256
	subw t2, a3, t2
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
	li a2, 128000
	li a3, 128
	add a2, a0, a2
	sw a3, 0(a2)
	li a2, 32001
	j label9
label43:
	lw a5, 328(sp)
	addiw a1, a1, -1
	addw a5, t2, a5
	subw a5, zero, a5
	sw a5, 328(sp)
	lw a5, 332(sp)
	addw a5, t1, a5
	subw a5, zero, a5
	sw a5, 332(sp)
	lw a5, 336(sp)
	addw a5, t0, a5
	subw a5, zero, a5
	sw a5, 336(sp)
	lw a5, 340(sp)
	addw a3, a3, a5
	subw a3, zero, a3
	sw a3, 340(sp)
	lw a3, 344(sp)
	addw a2, a2, a3
	subw a2, zero, a2
	sw a2, 344(sp)
	ble a1, zero, label44
	j label58
label9:
	sh2add a3, a2, a0
	li t0, 60
	sw zero, 0(a3)
	addiw a3, a2, 1
	slli a5, a3, 1
	srli a5, a5, 58
	add a5, a3, a5
	andi a5, a5, -64
	subw a5, a3, a5
	beq a5, t0, label11
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
	ble a5, zero, label43
label143:
	mv t4, zero
	j label21
label25:
	sh2add t5, t4, s0
	addiw t4, t4, 1
	lw t6, -12(t5)
	lw a6, -32(t5)
	addw t6, t6, a6
	lw a6, -56(t5)
	subw t6, t6, a6
	lw a6, -64(t5)
	addw t6, t6, a6
	subw t6, zero, t6
	srliw a6, t6, 31
	add a6, t6, a6
	andi a6, a6, -2
	subw a6, t6, a6
	sh1add t6, t6, a6
	sw t6, 0(t5)
	li t5, 80
	bge t4, t5, label252
	j label25
label252:
	mv s2, a2
	mv t4, a3
	mv t5, t0
	mv a6, t1
	mv t6, t2
	mv a7, zero
	li s3, 80
	bge zero, s3, label41
	li s3, 20
	bge zero, s3, label35
	j label476
label41:
	addw t2, t2, t6
	addw t1, t1, a6
	addw t0, t0, t5
	addw a3, a3, t4
	addw a2, a2, s2
	addiw t3, t3, 64
	ble a5, t3, label43
	j label143
label476:
	li s3, 1518500249
	mv s4, zero
label38:
	slliw s5, t6, 5
	addw s2, s2, s5
	addw s2, s3, s2
	slli s3, t6, 1
	addw s2, s4, s2
	srli s3, s3, 59
	slli s4, a6, 1
	add s3, t6, s3
	srli s4, s4, 34
	andi s3, s3, -32
	add s4, a6, s4
	subw s3, t6, s3
	sraiw s4, s4, 30
	addw s2, s2, s3
	slliw s4, s4, 30
	sh2add s3, a7, s0
	addiw a7, a7, 1
	lw s3, 0(s3)
	addw s3, s2, s3
	slliw s2, a6, 30
	subw a6, a6, s4
	addw s4, s2, a6
	mv a6, t6
	mv s2, t4
	mv t6, s3
	mv t4, t5
	mv t5, s4
	li s3, 80
	bge a7, s3, label41
	li s3, 20
	bge a7, s3, label35
	j label476
label35:
	li s3, 40
	bge a7, s3, label36
	addw s3, t5, a6
	subw s4, s3, t4
	li s3, 1859775361
	j label38
label36:
	addw s3, t5, a6
	mv s4, zero
	subw s5, s3, t4
	slti s3, a7, 60
	bne s3, zero, label466
	mv s4, s5
label466:
	li s5, -1894007588
	bne s3, zero, label468
	li s5, -899497722
label468:
	mv s3, s5
	j label38
label21:
	sh2add t5, t4, t3
	sh2add t5, t5, a0
	lw t6, 0(t5)
	slliw t6, t6, 24
	lw a6, 4(t5)
	slliw a6, a6, 16
	addw t6, a6, t6
	lw a6, 8(t5)
	lw t5, 12(t5)
	slliw a6, a6, 8
	addw t6, t6, a6
	addw t6, t6, t5
	sh2add t5, t4, s0
	sw t6, 0(t5)
	addiw t6, t4, 1
	sh2add t6, t6, t3
	sh2add t6, t6, a0
	lw a6, 0(t6)
	slliw a6, a6, 24
	lw a7, 4(t6)
	slliw a7, a7, 16
	addw a6, a7, a6
	lw a7, 8(t6)
	lw t6, 12(t6)
	slliw a7, a7, 8
	addw a6, a6, a7
	addw t6, a6, t6
	sw t6, 4(t5)
	addiw t6, t4, 2
	sh2add t6, t6, t3
	sh2add t6, t6, a0
	lw a6, 0(t6)
	slliw a6, a6, 24
	lw a7, 4(t6)
	slliw a7, a7, 16
	addw a6, a7, a6
	lw a7, 8(t6)
	lw t6, 12(t6)
	slliw a7, a7, 8
	addw a6, a6, a7
	addw t6, a6, t6
	sw t6, 8(t5)
	addiw t6, t4, 3
	sh2add t6, t6, t3
	sh2add t6, t6, a0
	lw a6, 0(t6)
	slliw a6, a6, 24
	lw a7, 4(t6)
	slliw a7, a7, 16
	addw a6, a7, a6
	lw a7, 8(t6)
	lw t6, 12(t6)
	slliw a7, a7, 8
	addw a6, a6, a7
	addw t6, a6, t6
	sw t6, 12(t5)
	addiw t5, t4, 4
	li t4, 16
	bge t5, t4, label23
	mv t4, t5
	j label21
label23:
	addiw t4, t5, 4
	li t6, 80
	bge t4, t6, label230
	j label42
label230:
	mv t4, t5
	j label25
label42:
	sh2add t5, t5, s0
	lw t6, -12(t5)
	lw a6, -32(t5)
	addw t6, t6, a6
	lw a6, -56(t5)
	lw a7, -64(t5)
	subw t6, t6, a6
	addw t6, t6, a7
	subw t6, zero, t6
	srliw a7, t6, 31
	add a7, t6, a7
	andi a7, a7, -2
	subw a7, t6, a7
	sh1add t6, t6, a7
	sw t6, 0(t5)
	lw a7, -8(t5)
	lw s2, -28(t5)
	addw s2, a7, s2
	lw a7, -52(t5)
	lw s3, -60(t5)
	subw s2, s2, a7
	addw s2, s2, s3
	subw s2, zero, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 4(t5)
	lw s2, -4(t5)
	lw s3, -24(t5)
	addw s2, s2, s3
	lw s3, -48(t5)
	subw s2, s2, s3
	addw a6, a6, s2
	subw a6, zero, a6
	srliw s2, a6, 31
	add s2, a6, s2
	andi s2, s2, -2
	subw s2, a6, s2
	sh1add a6, a6, s2
	sw a6, 8(t5)
	lw a6, -20(t5)
	addw t6, t6, a6
	lw a6, -44(t5)
	subw t6, t6, a6
	addw t6, a7, t6
	subw t6, zero, t6
	srliw a6, t6, 31
	add a6, t6, a6
	andi a6, a6, -2
	subw a6, t6, a6
	sh1add t6, t6, a6
	sw t6, 12(t5)
	mv t5, t4
	addiw t4, t4, 4
	li t6, 80
	bge t4, t6, label230
	j label42
