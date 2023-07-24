.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
buffer:
	.zero	131072
.text
.globl main
main:
.p2align 2
	addi sp, sp, -416
	sd s1, 408(sp)
	addi s1, sp, 0
	sd s6, 400(sp)
	sd s0, 392(sp)
	addi s0, sp, 328
	sd s5, 384(sp)
	sd s2, 376(sp)
	sd s3, 368(sp)
	sd s4, 352(sp)
	sd s7, 360(sp)
	sd ra, 320(sp)
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
label58:
	mv a2, zero
	j label6
label5:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s0
	li a0, 5
	jal putarray
	ld ra, 320(sp)
	mv a0, zero
	ld s7, 360(sp)
	ld s4, 352(sp)
	ld s3, 368(sp)
	ld s2, 376(sp)
	ld s5, 384(sp)
	ld s0, 392(sp)
	ld s6, 400(sp)
	ld s1, 408(sp)
	addi sp, sp, 416
	ret
.p2align 2
label22:
	lw t2, 328(sp)
	addiw a1, a1, -1
	addw a2, t3, t2
	subw t3, zero, a2
	sw t3, 328(sp)
	lw a2, 332(sp)
	addw t1, t1, a2
	subw t2, zero, t1
	sw t2, 332(sp)
	lw t1, 336(sp)
	addw t0, t0, t1
	subw a2, zero, t0
	sw a2, 336(sp)
	lw t0, 340(sp)
	addw a2, a5, t0
	subw a5, zero, a2
	sw a5, 340(sp)
	lw a2, 344(sp)
	addw a5, a3, a2
	subw a3, zero, a5
	sw a3, 344(sp)
	bgt a1, zero, label58
	j label5
.p2align 2
label27:
	sh2add t5, t4, s1
	addiw t4, t4, 4
	lw t6, -12(t5)
	lw a7, -32(t5)
	addw a6, t6, a7
	lw t6, -56(t5)
	lw a7, -64(t5)
	addw s2, a6, a7
	subw a6, t6, s2
	srliw s3, a6, 31
	add a7, a6, s3
	andi s2, a7, -2
	subw a7, a6, s2
	sh1add a6, a6, a7
	sw a6, 0(t5)
	lw s2, -8(t5)
	lw s3, -28(t5)
	addw s2, s2, s3
	lw a7, -52(t5)
	lw s4, -60(t5)
	addw a6, a6, a7
	addw s3, s2, s4
	subw a7, a7, s3
	srliw s4, a7, 31
	add s2, a7, s4
	andi s3, s2, -2
	subw s4, a7, s3
	sh1add a7, a7, s4
	sw a7, 4(t5)
	lw a7, -4(t5)
	lw s2, -24(t5)
	addw t6, t6, a7
	lw s3, -48(t5)
	addw a7, t6, s2
	subw t6, s3, a7
	srliw a7, t6, 31
	add s3, t6, a7
	andi a7, s3, -2
	subw s2, t6, a7
	sh1add t6, t6, s2
	sw t6, 8(t5)
	lw t6, -20(t5)
	lw a7, -44(t5)
	addw a6, a6, t6
	subw t6, a7, a6
	srliw a6, t6, 31
	add a7, t6, a6
	andi s2, a7, -2
	subw a6, t6, s2
	sh1add t6, t6, a6
	sw t6, 12(t5)
	li t5, 80
	blt t4, t5, label27
	mv s2, a3
	mv t5, a5
	mv t4, t0
	mv a6, t1
	mv t6, t3
	mv a7, zero
	li s3, 80
	blt zero, s3, label36
	addw t3, t3, t3
	addw t1, t1, t1
	addw t0, t0, t0
	addw a5, a5, a5
	addw a3, a3, a3
	addiw t2, t2, 64
	bgt a2, t2, label143
	j label22
.p2align 2
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
	slli t2, a4, 1
	srli t0, t2, 47
	add t1, a4, t0
	sraiw a5, t1, 17
	addw a4, a4, a5
	slli t0, a4, 5
	addw a5, t0, a4
	slli t1, a5, 13
	addw a4, t1, a5
	slli t0, a4, 1
	srli t1, t0, 47
	add t2, a4, t1
	sraiw t0, t2, 17
	addw a4, a4, t0
	slli t1, a4, 5
	addw t0, t1, a4
	slli t5, t0, 1
	slli t2, t0, 13
	addw a4, t2, t0
	slli t1, a4, 1
	srli t4, t1, 47
	add t3, a4, t4
	sraiw t2, t3, 17
	addw t1, a4, t2
	slli t3, t1, 5
	addw a4, t3, t1
	slli t1, a4, 1
	srli t2, t1, 56
	add t4, a4, t2
	andi t3, t4, -256
	srli t4, t5, 56
	subw t1, a4, t3
	add t2, t0, t4
	andi t3, t2, -256
	slli t2, a5, 1
	subw t0, t0, t3
	srli t4, t2, 56
	add t3, a5, t4
	andi t2, t3, -256
	slli t3, a3, 1
	subw a5, a5, t2
	srli t2, t3, 56
	add t4, a3, t2
	andi t3, t4, -256
	subw t2, a3, t3
	sh2add a3, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a3)
	sw a5, 4(a3)
	sw t0, 8(a3)
	sw t1, 12(a3)
	li a3, 32000
	blt a2, a3, label6
	li a3, 128000
	li a5, 128
	add a2, a0, a3
	sw a5, 0(a2)
	li a2, 32001
	sh2add a5, a2, a0
	addiw a3, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a3, 63
	bne a5, t0, label111
.p2align 2
label437:
	sh2add a3, a3, a0
	li a5, 125
	addiw a2, a2, 5
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw a5, 8(a3)
	sw zero, 12(a3)
	mv a3, zero
	j label13
.p2align 2
label111:
	mv a2, a3
	j label10
.p2align 2
label143:
	addiw t4, t2, 4
	addiw t5, t2, 8
	addiw t6, t2, 12
	mv a6, zero
	mv a7, zero
	j label24
.p2align 2
label36:
	li s3, 20
	blt a7, s3, label309
	li s4, 40
	blt a7, s4, label313
	addw s3, t4, a6
	slti s4, a7, 60
	subw s5, s3, t5
	mv s3, zero
	bne s4, zero, label418
	mv s3, s5
	li s5, -1894007588
	j label443
.p2align 2
label309:
	li s4, 1518500249
	mv s3, zero
	j label40
.p2align 2
label313:
	addw s5, t4, a6
	li s4, 1859775361
	subw s3, s5, t5
	j label40
.p2align 2
label418:
	li s5, -1894007588
	bne s4, zero, label420
	li s5, -899497722
.p2align 2
label420:
	mv s4, s5
.p2align 2
label40:
	slliw s5, t6, 5
	addw s6, s2, s5
	addw s4, s4, s6
	addw s2, s3, s4
	slli s3, t6, 1
	srli s5, s3, 59
	add s4, t6, s5
	andi s6, s4, -32
	sh2add s4, a7, s1
	subw s3, t6, s6
	addiw a7, a7, 1
	addw s2, s2, s3
	lw s5, 0(s4)
	addw s3, s2, s5
	slli s5, a6, 1
	slliw s2, a6, 30
	srli s6, s5, 34
	add s4, a6, s6
	sraiw s5, s4, 30
	slli s6, s5, 30
	subw a6, a6, s6
	addw s4, s2, a6
	mv a6, t6
	mv s2, t5
	mv t6, s3
	mv t5, t4
	mv t4, s4
	li s3, 80
	blt a7, s3, label36
	addw t3, t3, t6
	addw t1, t1, a6
	addw t0, t0, s4
	addw a5, a5, t5
	addw a3, a3, s2
	addiw t2, t2, 64
	bgt a2, t2, label143
	j label22
.p2align 2
label24:
	addw s4, t2, a6
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
	sh2add s2, a7, s1
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
	slli s5, s6, 8
	lw s6, 12(s3)
	addw s4, s4, s5
	addw s5, t5, a6
	addw s3, s4, s6
	sw s3, 4(s2)
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
	addw s5, t6, a6
	addw s6, s4, s3
	addiw a6, a6, 16
	sh2add s3, s5, a0
	sw s6, 8(s2)
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	lw s6, 8(s3)
	addw s4, s5, s7
	lw s3, 12(s3)
	slli s5, s6, 8
	addw s4, s4, s5
	addw s5, s4, s3
	sw s5, 12(s2)
	li s2, 16
	blt a7, s2, label24
	li t4, 16
	j label27
.p2align 2
label443:
	li s5, -899497722
	mv s4, s5
	j label40
.p2align 2
label13:
	sh2add a5, a3, s1
	sw zero, 0(a5)
	addi a3, a3, 16
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	sw zero, 16(a5)
	sw zero, 20(a5)
	sw zero, 24(a5)
	sw zero, 28(a5)
	sw zero, 32(a5)
	sw zero, 36(a5)
	sw zero, 40(a5)
	sw zero, 44(a5)
	sw zero, 48(a5)
	sw zero, 52(a5)
	sw zero, 56(a5)
	sw zero, 60(a5)
	li a5, 80
	blt a3, a5, label13
	li a3, -1009589776
	li a5, 271733878
	li t0, -1732584194
	mv t2, zero
	xori t1, a5, -1
	xori t3, t0, -1
	bgt a2, zero, label143
	j label22
.p2align 2
label10:
	sh2add a5, a2, a0
	addiw a3, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a3, 63
	bne a5, t0, label111
	j label437
