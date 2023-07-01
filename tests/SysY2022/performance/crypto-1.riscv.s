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
	sd s5, 400(sp)
	sd s1, 392(sp)
	sd s6, 352(sp)
	sd s2, 384(sp)
	sd s3, 320(sp)
	sd s4, 376(sp)
	sd s7, 368(sp)
	sd ra, 360(sp)
	addi s0, sp, 0
	addi s1, sp, 328
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	sw zero, 328(sp)
	sw zero, 4(s1)
	sw zero, 8(s1)
	sw zero, 12(s1)
	sw zero, 16(s1)
pcrel594:
	auipc a0, %pcrel_hi(buffer)
	addi a0, a0, %pcrel_lo(pcrel594)
	mv a4, s2
	mv a1, s3
	ble s3, zero, label53
	j label67
label53:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 360(sp)
	ld s7, 368(sp)
	ld s4, 376(sp)
	ld s3, 320(sp)
	ld s2, 384(sp)
	ld s6, 352(sp)
	ld s1, 392(sp)
	ld s5, 400(sp)
	ld s0, 408(sp)
	addi sp, sp, 416
	ret
label67:
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
	slliw t1, a4, 13
	addw a4, t1, a4
	slli t1, a4, 1
	srli t1, t1, 47
	add t1, a4, t1
	sraiw t1, t1, 17
	addw t2, a4, t1
	slliw a4, t2, 5
	addw a4, a4, t2
	slliw t1, a4, 13
	addw a4, t1, a4
	slli t1, a4, 1
	srli t1, t1, 47
	add t1, a4, t1
	sraiw t1, t1, 17
	addw a4, a4, t1
	slliw t1, a4, 5
	addw a4, t1, a4
	slli t1, a4, 1
	srli t1, t1, 56
	add t1, a4, t1
	andi t1, t1, -256
	subw t1, a4, t1
	slliw t3, t2, 5
	addw t2, t3, t2
	slli t3, t2, 1
	srli t3, t3, 56
	add t3, t2, t3
	andi t3, t3, -256
	subw t2, t2, t3
	slliw t3, a5, 5
	addw a5, t3, a5
	slli t3, a5, 1
	srli t3, t3, 56
	add t3, a5, t3
	andi t3, t3, -256
	subw a5, a5, t3
	slliw t3, a3, 5
	addw a3, t3, a3
	slli t3, a3, 1
	srli t3, t3, 56
	add t3, a3, t3
	andi t3, t3, -256
	subw t3, a3, t3
	sh2add a3, a2, a0
	sw t3, 0(a3)
	sw a5, 4(a3)
	sw t2, 8(a3)
	sw t1, 12(a3)
	addiw a2, a2, 4
	li a3, 32000
	bge a2, a3, label8
	j label5
label23:
	lw a5, 328(sp)
	addw a5, t4, a5
	subw a5, zero, a5
	sw a5, 328(sp)
	lw a5, 4(s1)
	addw a5, t2, a5
	subw a5, zero, a5
	sw a5, 4(s1)
	lw a5, 8(s1)
	addw a5, t1, a5
	subw a5, zero, a5
	sw a5, 8(s1)
	lw a5, 12(s1)
	addw a3, a3, a5
	subw a3, zero, a3
	sw a3, 12(s1)
	lw a3, 16(s1)
	addw a2, a2, a3
	subw a2, zero, a2
	sw a2, 16(s1)
	addiw a1, a1, -1
	ble a1, zero, label53
	j label67
label8:
	li a2, 128000
	add a2, a0, a2
	li a3, 128
	sw a3, 0(a2)
	li a2, 32001
	sh2add a3, a2, a0
	sw zero, 0(a3)
	addiw a3, a2, 1
	slli a5, a3, 1
	srli a5, a5, 58
	add a5, a3, a5
	andi a5, a5, -64
	subw a5, a3, a5
	li t1, 60
	beq a5, t1, label11
label120:
	mv a2, a3
	sh2add a3, a3, a0
	sw zero, 0(a3)
	addiw a3, a2, 1
	slli a5, a3, 1
	srli a5, a5, 58
	add a5, a3, a5
	andi a5, a5, -64
	subw a5, a3, a5
	li t1, 60
	beq a5, t1, label11
	j label120
label11:
	sh2add a3, a3, a0
	sw zero, 0(a3)
	sw zero, 4(a3)
	li a5, 125
	sw a5, 8(a3)
	sw zero, 12(a3)
	addiw a5, a2, 5
	mv a3, zero
label12:
	sh2add a2, a3, s0
	sw zero, 0(a2)
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
	addi a3, a3, 16
	li a2, 80
	bge a3, a2, label149
	j label12
label149:
	mv t6, zero
	mv t5, zero
	mv t3, zero
	li a2, -1009589776
	li a3, 271733878
	li t1, -1732584194
	li t2, -271733879
	li t4, 1732584193
	ble a5, zero, label23
label152:
	mv a6, zero
label24:
	sh2add a7, a6, t3
	sh2add a7, a7, a0
	lw s2, 0(a7)
	lw s3, 4(a7)
	slliw s3, s3, 16
	slliw s2, s2, 24
	addw s2, s3, s2
	lw s3, 8(a7)
	slliw s3, s3, 8
	addw s2, s2, s3
	lw a7, 12(a7)
	addw s2, s2, a7
	sh2add a7, a6, s0
	sw s2, 0(a7)
	addiw s2, a6, 1
	sh2add s2, s2, t3
	sh2add s2, s2, a0
	lw s3, 0(s2)
	lw s4, 4(s2)
	slliw s4, s4, 16
	slliw s3, s3, 24
	addw s3, s4, s3
	lw s4, 8(s2)
	slliw s4, s4, 8
	addw s3, s3, s4
	lw s2, 12(s2)
	addw s2, s3, s2
	sw s2, 4(a7)
	addiw s2, a6, 2
	sh2add s2, s2, t3
	sh2add s2, s2, a0
	lw s3, 0(s2)
	lw s4, 4(s2)
	slliw s4, s4, 16
	slliw s3, s3, 24
	addw s3, s4, s3
	lw s4, 8(s2)
	slliw s4, s4, 8
	addw s3, s3, s4
	lw s2, 12(s2)
	addw s2, s3, s2
	sw s2, 8(a7)
	addiw s2, a6, 3
	sh2add s2, s2, t3
	sh2add s2, s2, a0
	lw s3, 0(s2)
	lw s4, 4(s2)
	slliw s4, s4, 16
	slliw s3, s3, 24
	addw s3, s4, s3
	lw s4, 8(s2)
	slliw s4, s4, 8
	addw s3, s3, s4
	lw s2, 12(s2)
	addw s2, s3, s2
	sw s2, 12(a7)
	addiw a7, a6, 4
	li a6, 16
	bge a7, a6, label26
	mv a6, a7
	j label24
label36:
	addw t4, t4, a7
	addw t2, t2, s2
	addw t1, t1, a6
	addw a3, a3, t6
	addw a2, a2, s4
	addiw t3, t3, 64
	mv t6, s3
	mv t5, s5
	ble a5, t3, label23
	j label152
label26:
	li a6, 80
	bge a7, a6, label258
	addiw a6, a7, 4
	li s2, 80
	bge a6, s2, label47
	j label52
label258:
	mv s3, t6
	mv s5, t5
	mv t5, zero
	mv s4, a2
	mv t6, a3
	mv a6, t1
	mv s2, t2
	mv a7, t4
	slti s6, zero, 80
	li s7, 80
	bge zero, s7, label36
	li s7, 20
	bge zero, s7, label38
	j label583
label38:
	li s7, 40
	bge t5, s7, label39
	j label275
label39:
	li s7, 60
	bge t5, s7, label40
	li s3, -1894007588
	mv s5, zero
	j label42
label47:
	addiw a6, a7, 4
	li s2, 80
	bge a6, s2, label313
	j label51
label313:
	mv a6, a7
label49:
	sh2add a7, a6, s0
	lw s2, -12(a7)
	lw s3, -32(a7)
	addw s2, s2, s3
	lw s3, -56(a7)
	subw s2, s2, s3
	lw s3, -64(a7)
	addw s2, s2, s3
	subw s2, zero, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 0(a7)
	addiw a6, a6, 1
	li a7, 80
	bge a6, a7, label335
	j label49
label335:
	mv s3, t6
	mv s5, t5
	mv t5, zero
	mv s4, a2
	mv t6, a3
	mv a6, t1
	mv s2, t2
	mv a7, t4
	slti s6, zero, 80
	li s7, 80
	bge zero, s7, label36
	li s7, 20
	bge zero, s7, label38
	j label583
label51:
	sh2add a7, a7, s0
	lw s2, -12(a7)
	lw s3, -32(a7)
	addw s2, s2, s3
	lw s3, -56(a7)
	subw s2, s2, s3
	lw s4, -64(a7)
	addw s2, s2, s4
	subw s2, zero, s2
	srliw s4, s2, 31
	add s4, s2, s4
	andi s4, s4, -2
	subw s4, s2, s4
	sh1add s2, s2, s4
	sw s2, 0(a7)
	lw s4, -8(a7)
	lw s5, -28(a7)
	addw s5, s4, s5
	lw s4, -52(a7)
	subw s5, s5, s4
	lw s6, -60(a7)
	addw s5, s5, s6
	subw s5, zero, s5
	srliw s6, s5, 31
	add s6, s5, s6
	andi s6, s6, -2
	subw s6, s5, s6
	sh1add s5, s5, s6
	sw s5, 4(a7)
	lw s5, -4(a7)
	lw s6, -24(a7)
	addw s5, s5, s6
	lw s6, -48(a7)
	subw s5, s5, s6
	addw s3, s3, s5
	subw s3, zero, s3
	srliw s5, s3, 31
	add s5, s3, s5
	andi s5, s5, -2
	subw s5, s3, s5
	sh1add s3, s3, s5
	sw s3, 8(a7)
	lw s3, -20(a7)
	addw s2, s2, s3
	lw s3, -44(a7)
	subw s2, s2, s3
	addw s2, s4, s2
	subw s2, zero, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 12(a7)
	mv a7, a6
	addiw a6, a6, 4
	li s2, 80
	bge a6, s2, label313
	j label51
label583:
	li s3, 1518500249
	mv s5, zero
label42:
	slliw s6, a7, 5
	addw s4, s4, s6
	addw s4, s3, s4
	addw s4, s5, s4
	slli s6, a7, 1
	srli s6, s6, 59
	add s6, a7, s6
	andi s6, s6, -32
	subw s6, a7, s6
	addw s4, s4, s6
	sh2add s6, t5, s0
	lw s6, 0(s6)
	addw s6, s4, s6
	slliw s4, s2, 30
	slli s7, s2, 1
	srli s7, s7, 34
	add s7, s2, s7
	sraiw s7, s7, 30
	slliw s7, s7, 30
	subw s2, s2, s7
	addw s7, s4, s2
	addiw t5, t5, 1
	mv s4, t6
	mv s2, a7
	mv t6, a6
	mv a7, s6
	mv a6, s7
	slti s6, t5, 80
	li s7, 80
	bge t5, s7, label36
	li s7, 20
	bge t5, s7, label38
	j label583
label275:
	addw s3, a6, s2
	subw s5, s3, t6
	li s3, 1859775361
	j label42
label52:
	sh2add a7, a7, s0
	lw s2, -12(a7)
	lw s3, -32(a7)
	addw s3, s2, s3
	lw s2, -56(a7)
	subw s3, s3, s2
	lw s4, -64(a7)
	addw s3, s3, s4
	subw s3, zero, s3
	srliw s4, s3, 31
	add s4, s3, s4
	andi s4, s4, -2
	subw s4, s3, s4
	sh1add s3, s3, s4
	sw s3, 0(a7)
	lw s4, -8(a7)
	lw s5, -28(a7)
	addw s5, s4, s5
	lw s4, -52(a7)
	subw s5, s5, s4
	lw s6, -60(a7)
	addw s5, s5, s6
	subw s5, zero, s5
	srliw s6, s5, 31
	add s6, s5, s6
	andi s6, s6, -2
	subw s6, s5, s6
	sh1add s5, s5, s6
	sw s5, 4(a7)
	lw s5, -4(a7)
	lw s6, -24(a7)
	addw s5, s5, s6
	lw s6, -48(a7)
	subw s5, s5, s6
	addw s2, s2, s5
	subw s2, zero, s2
	srliw s5, s2, 31
	add s5, s2, s5
	andi s5, s5, -2
	subw s5, s2, s5
	sh1add s2, s2, s5
	sw s2, 8(a7)
	lw s2, -20(a7)
	addw s2, s3, s2
	lw s3, -44(a7)
	subw s2, s2, s3
	addw s2, s4, s2
	subw s2, zero, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 12(a7)
	mv a7, a6
	addiw a6, a6, 4
	li s2, 80
	bge a6, s2, label47
	j label52
label40:
	addw s7, a6, s2
	subw s7, s7, t6
	bne s6, zero, label570
	mv s7, s5
label570:
	li s5, -899497722
	bne s6, zero, label568
	mv s5, s3
label568:
	mv s3, s5
	mv s5, s7
	j label42
