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
	addi s0, sp, 0
	sd s5, 392(sp)
	sd s1, 352(sp)
	addi s1, sp, 328
	sd s6, 384(sp)
	sd s2, 320(sp)
	sd s3, 376(sp)
	sd s4, 368(sp)
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
	ble s3, zero, label41
label55:
	mv a2, zero
	j label5
label40:
	lw a5, 328(sp)
	addiw a1, a1, -1
	addw t2, t2, a5
	subw t3, zero, t2
	sw t3, 328(sp)
	lw a5, 332(sp)
	addw t1, t1, a5
	subw t2, zero, t1
	sw t2, 332(sp)
	lw t1, 336(sp)
	addw t0, t0, t1
	subw a5, zero, t0
	sw a5, 336(sp)
	lw t0, 340(sp)
	addw a3, a3, t0
	subw a5, zero, a3
	sw a5, 340(sp)
	lw a3, 344(sp)
	addw a2, a2, a3
	subw a5, zero, a2
	sw a5, 344(sp)
	ble a1, zero, label41
	j label55
label5:
	slliw a5, a4, 13
	addw a3, a5, a4
	slli t0, a3, 1
	srli a4, t0, 47
	add t1, a3, a4
	sraiw a5, t1, 17
	addw a4, a3, a5
	slliw t0, a4, 5
	addw a3, t0, a4
	slliw a5, a3, 13
	addw a4, a5, a3
	slli t0, a4, 1
	srli a5, t0, 47
	add t1, a4, a5
	sraiw t0, t1, 17
	addw a4, a4, t0
	slliw t1, a4, 5
	addw a5, t1, a4
	slliw t0, a5, 13
	addw a4, t0, a5
	slli t2, a4, 1
	srli t1, t2, 47
	add t0, a4, t1
	sraiw t2, t0, 17
	addw a4, a4, t2
	slliw t1, a4, 5
	addw t0, t1, a4
	slliw t3, t0, 13
	addw a4, t3, t0
	slli t2, a4, 1
	srli t1, t2, 47
	add t3, a4, t1
	sraiw t2, t3, 17
	addw t1, a4, t2
	slliw t3, t1, 5
	addw a4, t3, t1
	slli t2, a4, 1
	srli t1, t2, 56
	add t3, a4, t1
	andi t2, t3, -256
	slli t3, t0, 1
	subw t1, a4, t2
	srli t2, t3, 56
	add t4, t0, t2
	slli t2, a5, 1
	andi t3, t4, -256
	srli t5, t2, 56
	subw t0, t0, t3
	slli t2, a3, 1
	add t3, a5, t5
	srli t5, t2, 56
	andi t4, t3, -256
	subw a5, a5, t4
	add t4, a3, t5
	andi t3, t4, -256
	subw t2, a3, t3
	sh2add a3, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a3)
	sw a5, 4(a3)
	sw t0, 8(a3)
	sw t1, 12(a3)
	li a3, 32000
	bge a2, a3, label8
	j label5
label8:
	li a5, 128000
	li a3, 128
	add a2, a0, a5
	sw a3, 0(a2)
	li a2, 32001
label9:
	sh2add a5, a2, a0
	addiw a3, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a3, 63
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
	bge a3, a2, label137
	j label12
label137:
	li a2, -1009589776
	li a3, 271733878
	li t0, -1732584194
	mv t3, zero
	xori t1, a3, -1
	xori t2, t0, -1
	ble a5, zero, label40
label140:
	mv t5, zero
	j label21
label23:
	sh2add t5, t4, s0
	addiw t4, t4, 4
	lw t6, -12(t5)
	lw a7, -32(t5)
	addw a6, t6, a7
	lw t6, -56(t5)
	lw s2, -64(t5)
	addw a7, a6, s2
	subw a6, t6, a7
	srliw a7, a6, 31
	add s3, a6, a7
	andi a7, s3, -2
	subw s2, a6, a7
	sh1add a6, a6, s2
	sw a6, 0(t5)
	lw s2, -8(t5)
	lw s3, -28(t5)
	addw s2, s2, s3
	lw a7, -52(t5)
	lw s4, -60(t5)
	addw a6, a6, a7
	addw s3, s2, s4
	subw a7, a7, s3
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
	add s2, t6, a7
	andi a7, s2, -2
	subw s3, t6, a7
	sh1add t6, t6, s3
	sw t6, 8(t5)
	lw t6, -20(t5)
	lw a7, -44(t5)
	addw a6, a6, t6
	subw t6, a7, a6
	srliw a7, t6, 31
	add a6, t6, a7
	andi s2, a6, -2
	subw a7, t6, s2
	sh1add t6, t6, a7
	sw t6, 12(t5)
	li t5, 80
	bge t4, t5, label282
	j label23
label282:
	mv s2, a2
	mv t4, a3
	mv t5, t0
	mv a6, t1
	mv t6, t2
	mv a7, zero
	li s3, 80
	bge zero, s3, label39
	li s4, 20
	bge zero, s4, label33
	j label437
label39:
	addw t2, t2, t6
	addw t1, t1, a6
	addw t0, t0, t5
	addw a3, a3, t4
	addw a2, a2, s2
	addiw t3, t3, 64
	ble a5, t3, label40
	j label140
label437:
	li s3, 1518500249
	mv s4, zero
	j label36
label33:
	li s3, 40
	bge a7, s3, label34
	j label293
label34:
	addw s4, t5, a6
	slti s3, a7, 60
	subw s5, s4, t4
	mv s4, zero
	bne s3, zero, label426
	mv s4, s5
label426:
	li s5, -1894007588
	bne s3, zero, label428
	li s5, -899497722
label428:
	mv s3, s5
label36:
	slliw s5, t6, 5
	addw s6, s2, s5
	addw s3, s3, s6
	addw s2, s4, s3
	slli s4, t6, 1
	srli s3, s4, 59
	add s5, t6, s3
	andi s4, s5, -32
	sh2add s5, a7, s0
	subw s3, t6, s4
	addiw a7, a7, 1
	addw s2, s2, s3
	lw s4, 0(s5)
	addw s3, s2, s4
	slli s4, a6, 1
	slliw s2, a6, 30
	srli s5, s4, 34
	add s6, a6, s5
	sraiw s4, s6, 30
	slliw s5, s4, 30
	subw a6, a6, s5
	addw s4, s2, a6
	mv a6, t6
	mv s2, t4
	mv t6, s3
	mv t4, t5
	mv t5, s4
	li s3, 80
	bge a7, s3, label39
	li s4, 20
	bge a7, s4, label33
	j label437
label293:
	addw s5, t5, a6
	li s3, 1859775361
	subw s4, s5, t4
	j label36
label21:
	sh2add a6, t5, t3
	sh2add t4, a6, a0
	lw t6, 0(t4)
	lw a7, 4(t4)
	slliw a6, a7, 16
	slliw a7, t6, 24
	addw t6, a6, a7
	lw a6, 8(t4)
	lw t4, 12(t4)
	slliw a7, a6, 8
	addw t6, t6, a7
	addw a6, t6, t4
	sh2add t4, t5, s0
	sw a6, 0(t4)
	addiw a6, t5, 1
	sh2add a7, a6, t3
	sh2add t6, a7, a0
	lw a6, 0(t6)
	slliw s3, a6, 24
	lw s2, 4(t6)
	slliw a7, s2, 16
	lw s2, 8(t6)
	addw a6, a7, s3
	slliw a7, s2, 8
	addw a6, a6, a7
	lw a7, 12(t6)
	addw t6, a6, a7
	addiw a6, t5, 2
	sh2add a7, a6, t3
	sw t6, 4(t4)
	sh2add t6, a7, a0
	lw a6, 0(t6)
	slliw s2, a6, 24
	lw s3, 4(t6)
	slliw a7, s3, 16
	lw s3, 8(t6)
	addw a6, a7, s2
	lw t6, 12(t6)
	slliw a7, s3, 8
	addw a6, a6, a7
	addw a7, a6, t6
	addiw a6, t5, 3
	addiw t5, t5, 4
	sw a7, 8(t4)
	sh2add a7, a6, t3
	sh2add t6, a7, a0
	lw a6, 0(t6)
	slliw s3, a6, 24
	lw s2, 4(t6)
	slliw a7, s2, 16
	lw s2, 8(t6)
	addw a6, a7, s3
	slliw a7, s2, 8
	addw a6, a6, a7
	lw a7, 12(t6)
	addw t6, a6, a7
	sw t6, 12(t4)
	li t4, 16
	bge t5, t4, label222
	j label21
label222:
	li t4, 16
	j label23
label41:
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
