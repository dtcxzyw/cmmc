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
	sd s1, 384(sp)
	addi s1, sp, 320
	sd s6, 376(sp)
	sd s2, 368(sp)
	sd s3, 360(sp)
	sd s4, 352(sp)
	sd ra, 344(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
pcrel449:
	auipc a1, %pcrel_hi(buffer)
	mv a4, s2
	sw zero, 320(sp)
	addi a0, a1, %pcrel_lo(pcrel449)
	sw zero, 324(sp)
	mv a1, s3
	sd zero, 328(sp)
	sw zero, 336(sp)
	ble s3, zero, label5
label55:
	mv a2, zero
label6:
	slliw a5, a4, 13
	addw a3, a5, a4
	slli t0, a3, 1
	srli a4, t0, 47
	add a5, a3, a4
	sraiw t0, a5, 17
	addw a3, a3, t0
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
	slli t3, a4, 1
	srli t0, t3, 47
	add t2, a4, t0
	sraiw t3, t2, 17
	addw t1, a4, t3
	slliw a4, t1, 5
	addw t0, a4, t1
	slliw t2, t0, 13
	addw a4, t2, t0
	slli t4, a4, 1
	srli t0, t4, 47
	add t3, a4, t0
	sraiw t2, t3, 17
	addw t0, a4, t2
	slliw t3, t0, 5
	addw a4, t3, t0
	slli t4, a4, 1
	srli t0, t4, 56
	add t2, a4, t0
	andi t3, t2, -256
	slliw t2, t1, 5
	subw t0, a4, t3
	addw t1, t2, t1
	slli t4, t1, 1
	srli t3, t4, 56
	add t2, t1, t3
	andi t4, t2, -256
	slliw t2, a5, 5
	subw t1, t1, t4
	addw a5, t2, a5
	slli t4, a5, 1
	srli t3, t4, 56
	add t2, a5, t3
	andi t4, t2, -256
	slliw t2, a3, 5
	subw a5, a5, t4
	addw a3, t2, a3
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
	bge a2, a3, label9
	j label6
label9:
	li a3, 128000
	li a5, 128
	add a2, a0, a3
	sw a5, 0(a2)
	li a2, 32001
	j label10
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
	bge a3, a2, label137
	j label13
label137:
	li a2, -1009589776
	li a3, 271733878
	li t0, -1732584194
	mv t3, zero
	xori t1, a3, -1
	xori t2, t0, -1
	ble a5, zero, label41
	j label140
label41:
	lw t3, 320(sp)
	addiw a1, a1, -1
	addw t2, t2, t3
	subw a5, zero, t2
	sw a5, 320(sp)
	lw t2, 324(sp)
	addw a5, t1, t2
	subw t1, zero, a5
	sw t1, 324(sp)
	lw t2, 328(sp)
	addw t0, t0, t2
	subw a5, zero, t0
	sw a5, 328(sp)
	lw t0, 332(sp)
	addw a3, a3, t0
	subw a5, zero, a3
	sw a5, 332(sp)
	lw a3, 336(sp)
	addw a5, a2, a3
	subw a2, zero, a5
	sw a2, 336(sp)
	ble a1, zero, label5
	j label55
label140:
	mv t5, zero
	j label22
label24:
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
	add s2, a6, a7
	andi s3, s2, -2
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
	lw s2, -24(t5)
	addw t6, t6, a7
	lw s3, -48(t5)
	addw a7, t6, s2
	subw t6, s3, a7
	srliw s2, t6, 31
	add a7, t6, s2
	andi s3, a7, -2
	subw a7, t6, s3
	sh1add t6, t6, a7
	sw t6, 8(t5)
	lw t6, -20(t5)
	lw a7, -44(t5)
	addw a6, a6, t6
	subw t6, a7, a6
	srliw a7, t6, 31
	add a6, t6, a7
	andi a7, a6, -2
	subw a6, t6, a7
	sh1add t6, t6, a6
	sw t6, 12(t5)
	li t5, 80
	bge t4, t5, label282
	j label24
label282:
	mv s2, a2
	mv t4, a3
	mv t5, t0
	mv a6, t1
	mv t6, t2
	mv a7, zero
	li s3, 80
	bge zero, s3, label33
	li s4, 20
	bge zero, s4, label35
	j label442
label33:
	addw t2, t2, t6
	addw t1, t1, a6
	addw t0, t0, t5
	addw a3, a3, t4
	addw a2, a2, s2
	addiw t3, t3, 64
	ble a5, t3, label41
	j label140
label35:
	li s3, 40
	bge a7, s3, label36
	addw s5, t5, a6
	li s3, 1859775361
	subw s4, s5, t4
	j label38
label36:
	addw s4, t5, a6
	slti s3, a7, 60
	subw s5, s4, t4
	mv s4, zero
	bne s3, zero, label431
	mv s4, s5
label431:
	li s5, -1894007588
	bne s3, zero, label433
	li s5, -899497722
label433:
	mv s3, s5
	j label38
label442:
	li s3, 1518500249
	mv s4, zero
label38:
	slliw s6, t6, 5
	addw s5, s2, s6
	addw s3, s3, s5
	addw s2, s4, s3
	slli s4, t6, 1
	srli s5, s4, 59
	add s3, t6, s5
	andi s4, s3, -32
	subw s5, t6, s4
	sh2add s4, a7, s0
	addw s2, s2, s5
	addiw a7, a7, 1
	lw s5, 0(s4)
	slli s4, a6, 1
	addw s3, s2, s5
	srli s5, s4, 34
	slliw s2, a6, 30
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
	bge a7, s3, label33
	li s4, 20
	bge a7, s4, label35
	j label442
label22:
	sh2add a6, t5, t3
	sh2add t4, a6, a0
	lw t6, 0(t4)
	lw a7, 4(t4)
	slliw a6, a7, 16
	slliw a7, t6, 24
	addw t6, a6, a7
	lw a6, 8(t4)
	slliw a7, a6, 8
	addw a6, t6, a7
	lw a7, 12(t4)
	sh2add t4, t5, s0
	addw t6, a6, a7
	addiw a6, t5, 1
	sh2add a7, a6, t3
	sw t6, 0(t4)
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
	slliw a7, s3, 8
	addw a6, a6, a7
	lw a7, 12(t6)
	addw t6, a6, a7
	addiw a6, t5, 3
	addiw t5, t5, 4
	sh2add a7, a6, t3
	sw t6, 8(t4)
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
	j label22
label222:
	li t4, 16
	j label24
label10:
	sh2add a5, a2, a0
	addiw a3, a2, 1
	sw zero, 0(a5)
	slli a5, a3, 1
	srli t2, a5, 58
	add t1, a3, t2
	andi t0, t1, -64
	li t1, 60
	subw a5, a3, t0
	beq a5, t1, label12
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
	ld ra, 344(sp)
	mv a0, zero
	ld s4, 352(sp)
	ld s3, 360(sp)
	ld s2, 368(sp)
	ld s6, 376(sp)
	ld s1, 384(sp)
	ld s5, 392(sp)
	ld s0, 400(sp)
	addi sp, sp, 408
	ret
