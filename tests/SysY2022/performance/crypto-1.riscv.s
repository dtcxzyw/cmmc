.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
buffer:
	.zero	131072
.text
.p2align 2
.globl main
main:
	addi sp, sp, -448
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 104
	sd s5, 16(sp)
	sd s1, 24(sp)
	addi s1, sp, 424
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
pcrel759:
	auipc a1, %pcrel_hi(buffer)
	mv a2, s2
	addi a0, a1, %pcrel_lo(pcrel759)
	sd zero, 424(sp)
	mv a1, s3
	sd zero, 432(sp)
	sw zero, 440(sp)
	ble s3, zero, label39
.p2align 2
label54:
	mv a3, zero
.p2align 2
label5:
	slliw a4, a2, 13
	addw a2, a4, a2
	slli a5, a2, 1
	srli a4, a5, 47
	add t0, a2, a4
	sraiw a5, t0, 17
	addw a4, a2, a5
	li a2, 270369
	mulw a5, a4, a2
	slli t1, a5, 1
	srli t2, t1, 47
	add t0, a5, t2
	sraiw t1, t0, 17
	addw a5, a5, t1
	mulw t0, a5, a2
	slli t2, t0, 1
	srli t3, t2, 47
	add t1, t0, t3
	sraiw t2, t1, 17
	addw t0, t0, t2
	mulw t1, t0, a2
	slli t4, t1, 1
	srli t2, t4, 47
	add t3, t1, t2
	sraiw t4, t3, 17
	addw t2, t1, t4
	mulw t1, t2, a2
	slli t5, t1, 1
	srli t4, t5, 47
	add t3, t1, t4
	sraiw t5, t3, 17
	addw t4, t1, t5
	mulw t1, t4, a2
	slli t5, t1, 1
	srli t6, t5, 47
	add t3, t1, t6
	sraiw a6, t3, 17
	addw t5, t1, a6
	mulw t1, t5, a2
	slli a6, t1, 1
	srli t3, a6, 47
	add t6, t1, t3
	sraiw a6, t6, 17
	addw t3, t1, a6
	mulw a2, t3, a2
	slli t1, a2, 1
	srli t6, t1, 47
	add a6, a2, t6
	sraiw t1, a6, 17
	addw a2, a2, t1
	slli t6, a2, 5
	addw t1, t6, a2
	slli a6, t1, 1
	mv a2, t1
	srli t6, a6, 56
	add a7, t1, t6
	slli t6, t3, 5
	andi a6, a7, -256
	addw t3, t6, t3
	subw t1, t1, a6
	slli a6, t3, 1
	srli a7, a6, 56
	add t6, t3, a7
	andi a6, t6, -256
	slli t6, t5, 5
	subw t3, t3, a6
	addw t5, t6, t5
	slli a7, t5, 1
	srli t6, a7, 56
	add a6, t5, t6
	andi t6, a6, -256
	slli a6, t4, 5
	subw t5, t5, t6
	addw t4, a6, t4
	slli t6, t4, 1
	srli a6, t6, 56
	add a7, t4, a6
	slli a6, t2, 5
	andi t6, a7, -256
	addw t2, a6, t2
	subw t4, t4, t6
	slli t6, t2, 1
	srli a7, t6, 56
	add a6, t2, a7
	andi t6, a6, -256
	subw t2, t2, t6
	slli t6, t0, 5
	addw t0, t6, t0
	slli a6, t0, 1
	srli a7, a6, 56
	add a6, t0, a7
	andi t6, a6, -256
	slli a6, a5, 5
	subw t0, t0, t6
	addw a5, a6, a5
	slli t6, a5, 1
	srli a7, t6, 56
	add a6, a5, a7
	slli a7, a4, 5
	andi t6, a6, -256
	addw a4, a7, a4
	subw a5, a5, t6
	slli a6, a4, 1
	srli t6, a6, 56
	add a7, a4, t6
	andi a6, a7, -256
	subw t6, a4, a6
	sh2add a4, a3, a0
	addiw a3, a3, 8
	sw t6, 0(a4)
	sw a5, 4(a4)
	sw t0, 8(a4)
	sw t2, 12(a4)
	sw t4, 16(a4)
	sw t5, 20(a4)
	sw t3, 24(a4)
	sw t1, 28(a4)
	li a4, 32000
	blt a3, a4, label5
	li a4, 128000
	li a5, 128
	add a3, a0, a4
	sw a5, 0(a3)
	li a3, 32001
.p2align 2
label9:
	sh2add a5, a3, a0
	addiw a4, a3, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a4, 63
	beq a5, t0, label11
	mv a3, a4
	j label9
.p2align 2
label19:
	lw t4, 424(sp)
	addiw a1, a1, -1
	addw t0, t3, t4
	subw a3, zero, t0
	sw a3, 424(sp)
	lw t3, 428(sp)
	addw a3, t2, t3
	subw t0, zero, a3
	sw t0, 428(sp)
	lw a3, 432(sp)
	addw t0, t1, a3
	subw t1, zero, t0
	sw t1, 432(sp)
	lw t0, 436(sp)
	addw a3, a5, t0
	subw a5, zero, a3
	sw a5, 436(sp)
	lw a3, 440(sp)
	addw a5, a4, a3
	subw a4, zero, a5
	sw a4, 440(sp)
	bgt a1, zero, label54
	j label39
.p2align 2
label20:
	addiw t4, t0, 4
	addiw t5, t0, 8
	addiw t6, t0, 12
	addiw a6, t0, 16
	addiw a7, t0, 20
	addiw s2, t0, 24
	addiw s3, t0, 28
	mv s4, zero
	mv s5, zero
.p2align 2
label21:
	addw s8, t0, s4
	sh2add s6, s8, a0
	lw s7, 0(s6)
	slli s10, s7, 24
	lw s9, 4(s6)
	slli s8, s9, 16
	lw s9, 8(s6)
	addw s7, s8, s10
	slli s8, s9, 8
	lw s9, 12(s6)
	addw s7, s7, s8
	sh2add s6, s5, s0
	addw s8, s7, s9
	addiw s5, s5, 8
	addw s9, t4, s4
	sh2add s7, s9, a0
	sw s8, 0(s6)
	lw s8, 0(s7)
	slli s10, s8, 24
	lw s11, 4(s7)
	slli s9, s11, 16
	addw s8, s9, s10
	lw s9, 8(s7)
	lw s7, 12(s7)
	slli s10, s9, 8
	addw s8, s8, s10
	addw s10, t5, s4
	addw s9, s8, s7
	sh2add s7, s10, a0
	sw s9, 4(s6)
	lw s8, 0(s7)
	slli s11, s8, 24
	lw s10, 4(s7)
	slli s9, s10, 16
	addw s8, s9, s11
	lw s9, 8(s7)
	slli s10, s9, 8
	lw s9, 12(s7)
	addw s8, s8, s10
	addw s7, s8, s9
	addw s9, t6, s4
	sw s7, 8(s6)
	sh2add s7, s9, a0
	lw s8, 0(s7)
	slli s10, s8, 24
	lw s11, 4(s7)
	slli s9, s11, 16
	lw s11, 8(s7)
	addw s8, s9, s10
	lw s7, 12(s7)
	slli s9, s11, 8
	addw s8, s8, s9
	addw s9, a6, s4
	addw s10, s8, s7
	sh2add s7, s9, a0
	sw s10, 12(s6)
	lw s8, 0(s7)
	slli s10, s8, 24
	lw s11, 4(s7)
	slli s9, s11, 16
	addw s8, s9, s10
	lw s9, 8(s7)
	slli s10, s9, 8
	lw s9, 12(s7)
	addw s8, s8, s10
	addw s7, s8, s9
	addw s9, a7, s4
	sw s7, 16(s6)
	sh2add s7, s9, a0
	lw s8, 0(s7)
	slli s10, s8, 24
	lw s11, 4(s7)
	slli s9, s11, 16
	addw s8, s9, s10
	lw s9, 8(s7)
	lw s7, 12(s7)
	slli s10, s9, 8
	addw s9, s2, s4
	addw s8, s8, s10
	addw s10, s8, s7
	sh2add s7, s9, a0
	sw s10, 20(s6)
	lw s8, 0(s7)
	slli s10, s8, 24
	lw s11, 4(s7)
	slli s9, s11, 16
	lw s11, 8(s7)
	addw s8, s9, s10
	lw s10, 12(s7)
	slli s9, s11, 8
	addw s8, s8, s9
	addw s9, s3, s4
	addw s7, s8, s10
	addiw s4, s4, 32
	sw s7, 24(s6)
	sh2add s7, s9, a0
	lw s8, 0(s7)
	slli s10, s8, 24
	lw s11, 4(s7)
	slli s9, s11, 16
	lw s11, 8(s7)
	addw s8, s9, s10
	lw s7, 12(s7)
	slli s9, s11, 8
	addw s8, s8, s9
	addw s9, s8, s7
	sw s9, 28(s6)
	li s6, 16
	blt s5, s6, label21
	li t5, 16
.p2align 2
label24:
	sh2add t4, t5, s0
	addiw t5, t5, 8
	lw a6, -12(t4)
	lw s2, -32(t4)
	lw s3, -56(t4)
	addw t6, a6, s2
	lw s4, -64(t4)
	addw a7, t6, s4
	subw t6, s3, a7
	srliw s4, t6, 31
	add a7, t6, s4
	andi s5, a7, -2
	subw a7, t6, s5
	sh1add s4, t6, a7
	sw s4, 0(t4)
	lw s6, -8(t4)
	lw t6, -28(t4)
	lw a7, -52(t4)
	lw s8, -60(t4)
	addw s7, s4, a7
	addw s4, s6, t6
	addw s5, s4, s8
	subw a7, a7, s5
	srliw s8, a7, 31
	add s4, a7, s8
	andi s5, s4, -2
	subw s8, a7, s5
	sh1add s4, a7, s8
	sw s4, 4(t4)
	lw a7, -4(t4)
	lw s9, -24(t4)
	addw s3, s3, a7
	lw s8, -48(t4)
	addw s5, s3, s9
	subw s3, s8, s5
	srliw s5, s3, 31
	add s10, s3, s5
	andi s9, s10, -2
	subw s5, s3, s9
	sh1add s10, s3, s5
	sh1add s3, s3, a6
	addw a6, s5, s3
	sw s10, 8(t4)
	lw s9, -20(t4)
	addw s10, s7, s9
	lw s7, -44(t4)
	addw s5, s7, a6
	subw s9, s7, s10
	srliw s10, s9, 31
	sh1add s6, s9, s6
	add s11, s9, s10
	andi s10, s11, -2
	subw s11, s9, s10
	addw s10, s6, s11
	sh1add s6, s9, s11
	sw s6, 12(t4)
	lw s9, -16(t4)
	lw s6, -40(t4)
	addw s10, s10, s6
	subw s2, s2, s10
	srliw s11, s2, 31
	add s10, s2, s11
	andi s10, s10, -2
	subw s11, s2, s10
	addw s10, s4, s8
	sh1add s2, s2, s11
	addw s8, s9, s10
	subw s4, s6, s8
	srliw s6, s4, 31
	add s8, s4, s6
	andi s9, s8, -2
	subw s6, s4, s9
	sh1add s8, s4, s6
	sw s8, 16(t4)
	lw a6, -36(t4)
	subw s3, a6, s5
	srliw s8, s3, 31
	add s7, s3, s8
	andi s5, s7, -2
	subw s8, s3, s5
	sh1add s3, s3, s8
	sw s3, 20(t4)
	sw s2, 24(t4)
	sh1add s2, s4, a7
	addw a7, s6, s2
	addw a6, a6, a7
	subw t6, t6, a6
	srliw a7, t6, 31
	add a6, t6, a7
	andi a7, a6, -2
	subw a6, t6, a7
	sh1add t6, t6, a6
	sw t6, 28(t4)
	li t4, 80
	blt t5, t4, label24
	mv s2, a4
	mv a6, a5
	mv t4, t1
	mv a7, t2
	mv t5, t3
	mv t6, zero
	li s3, 80
	bge zero, s3, label33
.p2align 2
label34:
	li s3, 20
	bge t6, s3, label486
	li s4, 1518500249
	mv s3, zero
.p2align 2
label36:
	slliw s5, t5, 5
	addw s6, s2, s5
	addw s7, s4, s6
	slli s4, t5, 1
	addw s2, s3, s7
	srli s3, s4, 59
	add s5, t5, s3
	andi s4, s5, -32
	sh2add s5, t6, s0
	subw s3, t5, s4
	addiw t6, t6, 1
	addw s2, s2, s3
	lw s4, 0(s5)
	addw s3, s2, s4
	slli s4, a7, 1
	slliw s2, a7, 30
	srli s6, s4, 34
	add s5, a7, s6
	sraiw s4, s5, 30
	slli s6, s4, 30
	subw a7, a7, s6
	addw s4, s2, a7
	mv a7, t5
	mv s2, a6
	mv t5, s3
	mv a6, t4
	mv t4, s4
	li s3, 80
	blt t6, s3, label34
	addw t3, t3, t5
	addw t2, t2, a7
	addw t1, t1, s4
	addw a5, a5, a6
	addw a4, a4, s2
	addiw t0, t0, 64
	bgt a3, t0, label20
	j label19
.p2align 2
label486:
	addw s5, t4, a7
	slti s4, t6, 60
	mv s6, zero
	subw s3, s5, a6
	bne s4, zero, label724
	mv s6, s3
	slti s5, t6, 40
	bne s5, zero, label726
	j label749
.p2align 2
label751:
	mv s4, s6
	j label36
.p2align 2
label726:
	li s6, -1894007588
	bne s4, zero, label728
	li s6, -899497722
.p2align 2
label728:
	li s4, 1859775361
	bne s5, zero, label36
	j label751
.p2align 2
label724:
	slti s5, t6, 40
	bne s5, zero, label726
	mv s3, s6
	j label726
.p2align 2
label749:
	mv s3, s6
	li s6, -1894007588
	bne s4, zero, label728
	li s6, -899497722
	li s4, 1859775361
	bne s5, zero, label36
	j label751
.p2align 2
label11:
	sh2add a4, a4, a0
	li a5, 125
	addiw a3, a3, 5
	li t1, -1732584194
	mv t0, zero
	xori t3, t1, -1
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw a5, 8(a4)
	li a5, 271733878
	sw zero, 12(a4)
	xori t2, a5, -1
	li a4, -1009589776
	sd zero, 104(sp)
	sd zero, 112(sp)
	sd zero, 120(sp)
	sd zero, 128(sp)
	sd zero, 136(sp)
	sd zero, 144(sp)
	sd zero, 152(sp)
	sd zero, 160(sp)
	sd zero, 168(sp)
	sd zero, 176(sp)
	sd zero, 184(sp)
	sd zero, 192(sp)
	sd zero, 200(sp)
	sd zero, 208(sp)
	sd zero, 216(sp)
	sd zero, 224(sp)
	sd zero, 232(sp)
	sd zero, 240(sp)
	sd zero, 248(sp)
	sd zero, 256(sp)
	sd zero, 264(sp)
	sd zero, 272(sp)
	sd zero, 280(sp)
	sd zero, 288(sp)
	sd zero, 296(sp)
	sd zero, 304(sp)
	sd zero, 312(sp)
	sd zero, 320(sp)
	sd zero, 328(sp)
	sd zero, 336(sp)
	sd zero, 344(sp)
	sd zero, 352(sp)
	sd zero, 360(sp)
	sd zero, 368(sp)
	sd zero, 376(sp)
	sd zero, 384(sp)
	sd zero, 392(sp)
	sd zero, 400(sp)
	sd zero, 408(sp)
	sd zero, 416(sp)
	bgt a3, zero, label20
	j label19
.p2align 2
label33:
	addw t3, t3, t5
	addw t2, t2, a7
	addw t1, t1, t4
	addw a5, a5, a6
	addw a4, a4, s2
	addiw t0, t0, 64
	bgt a3, t0, label20
	j label19
label39:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s1
	li a0, 5
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 448
	ret
