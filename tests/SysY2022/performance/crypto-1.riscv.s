.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	131072
.text
.globl main
main:
	addi sp, sp, -408
	sd s0, 400(sp)
	sd s5, 392(sp)
	sd s1, 352(sp)
	sd s6, 384(sp)
	sd s2, 320(sp)
	sd s3, 376(sp)
	sd s4, 368(sp)
	sd ra, 360(sp)
	addi s1, sp, 328
	addi s0, sp, 0
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
	mv a1, s3
	mv a4, s2
pcrel596:
	auipc a0, %pcrel_hi(buffer)
	addi a0, a0, %pcrel_lo(pcrel596)
	ble s3, zero, label5
	j label67
label5:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s1
	li a0, 5
	jal putarray
	ld ra, 360(sp)
	mv a0, zero
	ld s4, 368(sp)
	ld s3, 376(sp)
	ld s2, 320(sp)
	ld s6, 384(sp)
	ld s1, 352(sp)
	ld s5, 392(sp)
	ld s0, 400(sp)
	addi sp, sp, 408
	ret
label67:
	mv a2, zero
label6:
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
	sw t2, 0(a3)
	sw a5, 4(a3)
	sw t1, 8(a3)
	sw t0, 12(a3)
	li a3, 32000
	addiw a2, a2, 4
	bge a2, a3, label9
	j label6
label24:
	lw a5, 328(sp)
	addw a5, t3, a5
	subw a5, zero, a5
	sw a5, 328(sp)
	lw a5, 4(s1)
	addw a5, t1, a5
	subw a5, zero, a5
	sw a5, 4(s1)
	lw a5, 8(s1)
	addw a5, t0, a5
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
	ble a1, zero, label5
	j label67
label9:
	li a2, 128000
	li a3, 128
	add a2, a0, a2
	sw a3, 0(a2)
	li a2, 32001
	sh2add a3, a2, a0
	sw zero, 0(a3)
	li t0, 60
	addiw a3, a2, 1
	slli a5, a3, 1
	srli a5, a5, 58
	add a5, a3, a5
	andi a5, a5, -64
	subw a5, a3, a5
	beq a5, t0, label12
label120:
	mv a2, a3
	sh2add a3, a3, a0
	sw zero, 0(a3)
	li t0, 60
	addiw a3, a2, 1
	slli a5, a3, 1
	srli a5, a5, 58
	add a5, a3, a5
	andi a5, a5, -64
	subw a5, a3, a5
	beq a5, t0, label12
	j label120
label12:
	sh2add a3, a3, a0
	sw zero, 0(a3)
	sw zero, 4(a3)
	li a5, 125
	sw a5, 8(a3)
	sw zero, 12(a3)
	mv a3, zero
	addiw a5, a2, 5
label13:
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
	li a2, 80
	addi a3, a3, 16
	bge a3, a2, label149
	j label13
label149:
	mv t5, zero
	mv t4, zero
	mv t2, zero
	li t3, 1732584193
	li t1, -271733879
	li t0, -1732584194
	li a3, 271733878
	li a2, -1009589776
	ble a5, zero, label24
label152:
	mv t6, zero
label25:
	sh2add a6, t6, t2
	sh2add a6, a6, a0
	lw a7, 0(a6)
	lw s2, 4(a6)
	slliw a7, a7, 24
	slliw s2, s2, 16
	addw a7, s2, a7
	lw s2, 8(a6)
	lw a6, 12(a6)
	slliw s2, s2, 8
	addw a7, a7, s2
	addw a7, a7, a6
	sh2add a6, t6, s0
	sw a7, 0(a6)
	addiw a7, t6, 1
	sh2add a7, a7, t2
	sh2add a7, a7, a0
	lw s2, 0(a7)
	lw s3, 4(a7)
	slliw s2, s2, 24
	slliw s3, s3, 16
	addw s2, s3, s2
	lw s3, 8(a7)
	lw a7, 12(a7)
	slliw s3, s3, 8
	addw s2, s2, s3
	addw a7, s2, a7
	sw a7, 4(a6)
	addiw a7, t6, 2
	sh2add a7, a7, t2
	sh2add a7, a7, a0
	lw s2, 0(a7)
	lw s3, 4(a7)
	slliw s2, s2, 24
	slliw s3, s3, 16
	addw s2, s3, s2
	lw s3, 8(a7)
	lw a7, 12(a7)
	slliw s3, s3, 8
	addw s2, s2, s3
	addw a7, s2, a7
	sw a7, 8(a6)
	addiw a7, t6, 3
	sh2add a7, a7, t2
	sh2add a7, a7, a0
	lw s2, 0(a7)
	lw s3, 4(a7)
	slliw s2, s2, 24
	slliw s3, s3, 16
	addw s2, s3, s2
	lw s3, 8(a7)
	lw a7, 12(a7)
	slliw s3, s3, 8
	addw s2, s2, s3
	addw a7, s2, a7
	sw a7, 12(a6)
	addiw a6, t6, 4
	li t6, 16
	bge a6, t6, label27
	mv t6, a6
	j label25
label27:
	li t6, 80
	bge a6, t6, label258
	addiw t6, a6, 4
	li a7, 80
	bge t6, a7, label30
	j label35
label258:
	mv s2, t5
	mv s4, t4
	mv s3, a2
	mv t6, t0
	mv a7, t1
	mv a6, t3
	mv t5, a3
	mv t4, zero
	slti s5, zero, 80
	li s6, 80
	bge zero, s6, label45
	li s6, 20
	bge zero, s6, label47
	j label590
label45:
	addw t3, t3, a6
	addw t1, t1, a7
	addw t0, t0, t6
	addw a3, a3, t5
	addw a2, a2, s3
	addiw t2, t2, 64
	mv t4, s4
	mv t5, s2
	ble a5, t2, label24
	j label152
label47:
	li s6, 40
	bge t4, s6, label49
	j label425
label588:
	li s2, -1894007588
	mv s4, zero
	j label51
label49:
	li s6, 60
	bge t4, s6, label50
	j label588
label51:
	slliw s5, a6, 5
	addw s3, s3, s5
	slli s5, a6, 1
	addw s3, s2, s3
	srli s5, s5, 59
	addw s3, s4, s3
	add s5, a6, s5
	andi s5, s5, -32
	subw s5, a6, s5
	addw s3, s3, s5
	sh2add s5, t4, s0
	lw s5, 0(s5)
	addw s5, s3, s5
	slli s6, a7, 1
	addiw t4, t4, 1
	slliw s3, a7, 30
	srli s6, s6, 34
	add s6, a7, s6
	sraiw s6, s6, 30
	slliw s6, s6, 30
	subw a7, a7, s6
	addw s6, s3, a7
	mv a7, a6
	mv s3, t5
	mv a6, s5
	mv t5, t6
	mv t6, s6
	slti s5, t4, 80
	li s6, 80
	bge t4, s6, label45
	li s6, 20
	bge t4, s6, label47
label590:
	li s2, 1518500249
	mv s4, zero
	j label51
label30:
	addiw t6, a6, 4
	li a7, 80
	bge t6, a7, label268
	j label32
label268:
	mv t6, a6
label33:
	sh2add a6, t6, s0
	lw a7, -12(a6)
	lw s2, -32(a6)
	addw a7, a7, s2
	lw s2, -56(a6)
	subw a7, a7, s2
	lw s2, -64(a6)
	addw a7, a7, s2
	subw a7, zero, a7
	srliw s2, a7, 31
	add s2, a7, s2
	andi s2, s2, -2
	subw s2, a7, s2
	sh1add a7, a7, s2
	sw a7, 0(a6)
	li a6, 80
	addiw t6, t6, 1
	bge t6, a6, label349
	j label33
label349:
	mv s2, t5
	mv s4, t4
	mv s3, a2
	mv t6, t0
	mv a7, t1
	mv a6, t3
	mv t5, a3
	mv t4, zero
	slti s5, zero, 80
	li s6, 80
	bge zero, s6, label45
	li s6, 20
	bge zero, s6, label47
	j label590
label425:
	addw s2, t6, a7
	subw s4, s2, t5
	li s2, 1859775361
	j label51
label32:
	sh2add a6, a6, s0
	lw a7, -12(a6)
	lw s2, -32(a6)
	addw a7, a7, s2
	lw s2, -56(a6)
	lw s3, -64(a6)
	subw a7, a7, s2
	addw a7, a7, s3
	subw a7, zero, a7
	srliw s3, a7, 31
	add s3, a7, s3
	andi s3, s3, -2
	subw s3, a7, s3
	sh1add a7, a7, s3
	sw a7, 0(a6)
	lw s3, -8(a6)
	lw s4, -28(a6)
	addw s4, s3, s4
	lw s3, -52(a6)
	lw s5, -60(a6)
	subw s4, s4, s3
	addw s4, s4, s5
	subw s4, zero, s4
	srliw s5, s4, 31
	add s5, s4, s5
	andi s5, s5, -2
	subw s5, s4, s5
	sh1add s4, s4, s5
	sw s4, 4(a6)
	lw s4, -4(a6)
	lw s5, -24(a6)
	addw s4, s4, s5
	lw s5, -48(a6)
	subw s4, s4, s5
	addw s2, s2, s4
	subw s2, zero, s2
	srliw s4, s2, 31
	add s4, s2, s4
	andi s4, s4, -2
	subw s4, s2, s4
	sh1add s2, s2, s4
	sw s2, 8(a6)
	lw s2, -20(a6)
	addw a7, a7, s2
	lw s2, -44(a6)
	subw a7, a7, s2
	addw a7, s3, a7
	subw a7, zero, a7
	srliw s2, a7, 31
	add s2, a7, s2
	andi s2, s2, -2
	subw s2, a7, s2
	sh1add a7, a7, s2
	sw a7, 12(a6)
	mv a6, t6
	addiw t6, t6, 4
	li a7, 80
	bge t6, a7, label268
	j label32
label35:
	sh2add a6, a6, s0
	lw a7, -12(a6)
	lw s2, -32(a6)
	addw s2, a7, s2
	lw a7, -56(a6)
	lw s3, -64(a6)
	subw s2, s2, a7
	addw s2, s2, s3
	subw s2, zero, s2
	srliw s3, s2, 31
	add s3, s2, s3
	andi s3, s3, -2
	subw s3, s2, s3
	sh1add s2, s2, s3
	sw s2, 0(a6)
	lw s3, -8(a6)
	lw s4, -28(a6)
	addw s4, s3, s4
	lw s3, -52(a6)
	lw s5, -60(a6)
	subw s4, s4, s3
	addw s4, s4, s5
	subw s4, zero, s4
	srliw s5, s4, 31
	add s5, s4, s5
	andi s5, s5, -2
	subw s5, s4, s5
	sh1add s4, s4, s5
	sw s4, 4(a6)
	lw s4, -4(a6)
	lw s5, -24(a6)
	addw s4, s4, s5
	lw s5, -48(a6)
	subw s4, s4, s5
	addw a7, a7, s4
	subw a7, zero, a7
	srliw s4, a7, 31
	add s4, a7, s4
	andi s4, s4, -2
	subw s4, a7, s4
	sh1add a7, a7, s4
	sw a7, 8(a6)
	lw a7, -20(a6)
	addw a7, s2, a7
	lw s2, -44(a6)
	subw a7, a7, s2
	addw a7, s3, a7
	subw a7, zero, a7
	srliw s2, a7, 31
	add s2, a7, s2
	andi s2, s2, -2
	subw s2, a7, s2
	sh1add a7, a7, s2
	sw a7, 12(a6)
	mv a6, t6
	addiw t6, t6, 4
	li a7, 80
	bge t6, a7, label30
	j label35
label50:
	addw s6, t6, a7
	subw s6, s6, t5
	bne s5, zero, label570
	mv s6, s4
label570:
	li s4, -899497722
	bne s5, zero, label568
	mv s4, s2
label568:
	mv s2, s4
	mv s4, s6
	j label51
