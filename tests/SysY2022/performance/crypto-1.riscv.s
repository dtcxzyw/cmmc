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
	addi sp, sp, -440
	sd s1, 0(sp)
	addi s1, sp, 24
	sd s6, 16(sp)
	sd s0, 432(sp)
	addi s0, sp, 344
	sd s5, 424(sp)
	sd s2, 416(sp)
	sd s3, 408(sp)
	sd s4, 368(sp)
	sd s7, 400(sp)
	sd s8, 8(sp)
	sd s9, 392(sp)
	sd s10, 384(sp)
	sd ra, 376(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	mv t0, s2
pcrel758:
	auipc a1, %pcrel_hi(buffer)
	sw zero, 344(sp)
	addi a0, a1, %pcrel_lo(pcrel758)
	sw zero, 348(sp)
	mv a1, s3
	sd zero, 352(sp)
	sw zero, 360(sp)
	ble s3, zero, label5
label56:
	mv a2, zero
	j label6
label5:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s0
	li a0, 5
	jal putarray
	mv a0, zero
	ld ra, 376(sp)
	ld s10, 384(sp)
	ld s9, 392(sp)
	ld s8, 8(sp)
	ld s7, 400(sp)
	ld s4, 368(sp)
	ld s3, 408(sp)
	ld s2, 416(sp)
	ld s5, 424(sp)
	ld s0, 432(sp)
	ld s6, 16(sp)
	ld s1, 0(sp)
	addi sp, sp, 440
	ret
.p2align 2
label20:
	lw t2, 344(sp)
	addiw a1, a1, -1
	addw a3, t3, t2
	subw t3, zero, a3
	sw t3, 344(sp)
	lw t2, 348(sp)
	addw t1, t1, t2
	subw a3, zero, t1
	sw a3, 348(sp)
	lw t1, 352(sp)
	addw a5, a5, t1
	subw a3, zero, a5
	sw a3, 352(sp)
	lw a5, 356(sp)
	addw a3, a4, a5
	subw t1, zero, a3
	sw t1, 356(sp)
	lw a4, 360(sp)
	addw a3, a2, a4
	subw a2, zero, a3
	sw a2, 360(sp)
	bgt a1, zero, label56
	j label5
.p2align 2
label35:
	li s3, 20
	blt a7, s3, label428
	li s4, 40
	blt a7, s4, label432
	addw s3, t4, a6
	slti s4, a7, 60
	subw s5, s3, t5
	mv s3, zero
	bne s4, zero, label725
	mv s3, s5
	li s5, -1894007588
	j label756
.p2align 2
label428:
	li s4, 1518500249
	mv s3, zero
.p2align 2
label39:
	slliw s6, t6, 5
	addw s5, s2, s6
	slli s6, a6, 1
	addw s4, s4, s5
	addw s2, s3, s4
	slli s3, t6, 1
	srli s4, s3, 59
	add s5, t6, s4
	andi s3, s5, -32
	sh2add s5, a7, s1
	subw s4, t6, s3
	addiw a7, a7, 1
	addw s2, s2, s4
	lw s4, 0(s5)
	srli s5, s6, 34
	addw s3, s2, s4
	add s4, a6, s5
	slliw s2, a6, 30
	sraiw s6, s4, 30
	slli s5, s6, 30
	subw a6, a6, s5
	addw s4, s2, a6
	mv a6, t6
	mv s2, t5
	mv t6, s3
	mv t5, t4
	mv t4, s4
	li s3, 80
	blt a7, s3, label35
	addw t3, t3, t6
	addw t1, t1, a6
	addw a5, a5, s4
	addw a4, a4, t5
	addw a2, a2, s2
	addiw t2, t2, 64
	bgt a3, t2, label256
	j label20
.p2align 2
label6:
	slliw a4, t0, 13
	addw a3, a4, t0
	slli a5, a3, 1
	srli t0, a5, 47
	add a4, a3, t0
	li t0, 270369
	sraiw a5, a4, 17
	addw a3, a3, a5
	mulw a4, a3, t0
	slli a5, a4, 1
	srli t2, a5, 47
	add t1, a4, t2
	sraiw t3, t1, 17
	addw a4, a4, t3
	mulw a5, a4, t0
	slli t1, a5, 1
	srli t2, t1, 47
	add t3, a5, t2
	sraiw t4, t3, 17
	addw a5, a5, t4
	mulw t1, a5, t0
	slli t3, t1, 1
	srli t2, t3, 47
	add t4, t1, t2
	sraiw t3, t4, 17
	addw t1, t1, t3
	mulw t2, t1, t0
	slli t4, t2, 1
	srli t3, t4, 47
	add t5, t2, t3
	sraiw t4, t5, 17
	addw t2, t2, t4
	mulw t3, t2, t0
	slli t5, t3, 1
	srli t4, t5, 47
	add t6, t3, t4
	sraiw t5, t6, 17
	addw t3, t3, t5
	mulw t4, t3, t0
	slli t5, t4, 1
	srli a7, t5, 47
	add a6, t4, a7
	sraiw t6, a6, 17
	addw t5, t4, t6
	mulw t4, t5, t0
	slli a6, t4, 1
	srli t6, a6, 47
	add a7, t4, t6
	sraiw t6, a7, 17
	addw a6, t4, t6
	mulw t4, a6, t0
	slli t6, t4, 1
	srli a7, t6, 47
	add s2, t4, a7
	sraiw t6, s2, 17
	addw s3, t4, t6
	mulw t4, s3, t0
	slli t6, t4, 1
	srli a7, t6, 47
	add s2, t4, a7
	sraiw t6, s2, 17
	addw s6, t4, t6
	mulw t4, s6, t0
	slli t6, t4, 1
	srli s2, t6, 47
	add a7, t4, s2
	sraiw t6, a7, 17
	addw s5, t4, t6
	mulw t4, s5, t0
	slli a7, t4, 1
	srli s2, a7, 47
	add t6, t4, s2
	sraiw a7, t6, 17
	addw s4, t4, a7
	mulw t4, s4, t0
	slli t6, t4, 1
	srli a7, t6, 47
	add s7, t4, a7
	sraiw t6, s7, 17
	addw s2, t4, t6
	mulw t4, s2, t0
	slli t6, t4, 1
	srli s7, t6, 47
	add a7, t4, s7
	sraiw t6, a7, 17
	addw a7, t4, t6
	mulw t4, a7, t0
	slli t6, t4, 1
	srli s7, t6, 47
	add t6, t4, s7
	sraiw s8, t6, 17
	addw t6, t4, s8
	mulw t0, t6, t0
	slli t4, t0, 1
	srli s7, t4, 47
	add t4, t0, s7
	sraiw s8, t4, 17
	addw t0, t0, s8
	slli s7, t0, 5
	addw t4, s7, t0
	slli s7, t4, 1
	mv t0, t4
	srli s8, s7, 56
	add s9, t4, s8
	andi s7, s9, -256
	slli s9, t6, 5
	subw t4, t4, s7
	addw t6, s9, t6
	slli s8, t6, 1
	srli s7, s8, 56
	add s9, t6, s7
	slli s7, a7, 5
	andi s8, s9, -256
	addw a7, s7, a7
	subw t6, t6, s8
	slli s8, a7, 1
	srli s9, s8, 56
	add s7, a7, s9
	andi s8, s7, -256
	slli s7, s2, 5
	subw a7, a7, s8
	addw s2, s7, s2
	slli s8, s2, 1
	srli s7, s8, 56
	add s9, s2, s7
	slli s7, s4, 5
	andi s8, s9, -256
	addw s4, s7, s4
	subw s2, s2, s8
	slli s9, s4, 1
	srli s8, s9, 56
	slli s9, s5, 5
	add s10, s4, s8
	addw s5, s9, s5
	andi s7, s10, -256
	slli s8, s5, 1
	subw s4, s4, s7
	srli s10, s8, 56
	slli s8, s6, 5
	add s7, s5, s10
	addw s6, s8, s6
	andi s9, s7, -256
	slli s7, s6, 1
	subw s5, s5, s9
	srli s8, s7, 56
	add s9, s6, s8
	slli s8, s3, 5
	andi s7, s9, -256
	addw s3, s8, s3
	subw s6, s6, s7
	slli s7, s3, 1
	srli s9, s7, 56
	add s8, s3, s9
	andi s7, s8, -256
	slli s8, a6, 5
	subw s3, s3, s7
	addw a6, s8, a6
	slli s7, a6, 1
	srli s9, s7, 56
	add s8, a6, s9
	slli s9, t5, 5
	andi s7, s8, -256
	addw t5, s9, t5
	subw a6, a6, s7
	slli s8, t5, 1
	srli s9, s8, 56
	add s7, t5, s9
	andi s8, s7, -256
	slli s7, t3, 5
	subw t5, t5, s8
	addw t3, s7, t3
	slli s9, t3, 1
	srli s8, s9, 56
	add s7, t3, s8
	andi s9, s7, -256
	slli s7, t2, 5
	subw t3, t3, s9
	addw t2, s7, t2
	slli s9, t2, 1
	srli s8, s9, 56
	add s7, t2, s8
	andi s9, s7, -256
	slli s7, t1, 5
	subw t2, t2, s9
	addw t1, s7, t1
	slli s8, t1, 1
	srli s7, s8, 56
	add s9, t1, s7
	andi s8, s9, -256
	slli s9, a5, 5
	subw t1, t1, s8
	addw a5, s9, a5
	slli s7, a5, 1
	srli s8, s7, 56
	add s9, a5, s8
	slli s8, a4, 5
	andi s7, s9, -256
	addw a4, s8, a4
	subw a5, a5, s7
	slli s9, a4, 1
	srli s7, s9, 56
	add s10, a4, s7
	slli s7, a3, 5
	andi s8, s10, -256
	addw a3, s7, a3
	subw a4, a4, s8
	slli s8, a3, 1
	srli s7, s8, 56
	add s9, a3, s7
	andi s8, s9, -256
	subw s7, a3, s8
	sh2add a3, a2, a0
	sw s7, 0(a3)
	addiw a2, a2, 16
	sw a4, 4(a3)
	sw a5, 8(a3)
	sw t1, 12(a3)
	sw t2, 16(a3)
	sw t3, 20(a3)
	sw t5, 24(a3)
	sw a6, 28(a3)
	sw s3, 32(a3)
	sw s6, 36(a3)
	sw s5, 40(a3)
	sw s4, 44(a3)
	sw s2, 48(a3)
	sw a7, 52(a3)
	sw t6, 56(a3)
	sw t4, 60(a3)
	li a3, 32000
	blt a2, a3, label6
	li a3, 128000
	li a4, 128
	add a2, a0, a3
	sw a4, 0(a2)
	li a2, 32001
	sh2add a4, a2, a0
	addiw a3, a2, 1
	li a5, 60
	sw zero, 0(a4)
	andi a4, a3, 63
	beq a4, a5, label12
.p2align 2
label167:
	mv a2, a3
	j label10
.p2align 2
label256:
	addiw t4, t2, 4
	addiw t5, t2, 8
	addiw t6, t2, 12
	mv a6, zero
	mv a7, zero
	j label22
.p2align 2
label25:
	sh2add t5, t4, s1
	addiw t4, t4, 4
	lw t6, -12(t5)
	lw a7, -32(t5)
	addw a6, t6, a7
	lw t6, -56(t5)
	lw s2, -64(t5)
	addw a7, a6, s2
	subw a6, t6, a7
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
	srliw a6, t6, 31
	add s2, t6, a6
	andi a7, s2, -2
	subw a6, t6, a7
	sh1add t6, t6, a6
	sw t6, 12(t5)
	li t5, 80
	blt t4, t5, label25
	mv s2, a2
	mv t5, a4
	mv t4, a5
	mv a6, t1
	mv t6, t3
	mv a7, zero
	li s3, 80
	blt zero, s3, label35
	addw t3, t3, t3
	addw t1, t1, t1
	addw a5, a5, a5
	addw a4, a4, a4
	addw a2, a2, a2
	addiw t2, t2, 64
	bgt a3, t2, label256
	j label20
.p2align 2
label432:
	addw s5, t4, a6
	li s4, 1859775361
	subw s3, s5, t5
	j label39
.p2align 2
label725:
	li s5, -1894007588
	bne s4, zero, label727
	li s5, -899497722
.p2align 2
label727:
	mv s4, s5
	j label39
.p2align 2
label22:
	addw s4, t2, a6
	sh2add s2, s4, a0
	lw s3, 0(s2)
	slli s5, s3, 24
	lw s6, 4(s2)
	slli s4, s6, 16
	addw s3, s4, s5
	lw s4, 8(s2)
	lw s6, 12(s2)
	slli s5, s4, 8
	sh2add s2, a7, s1
	addw s3, s3, s5
	addiw a7, a7, 4
	addw s5, t4, a6
	addw s4, s3, s6
	sh2add s3, s5, a0
	sw s4, 0(s2)
	lw s4, 0(s3)
	slli s6, s4, 24
	lw s7, 4(s3)
	slli s5, s7, 16
	lw s7, 8(s3)
	addw s4, s5, s6
	lw s3, 12(s3)
	slli s5, s7, 8
	addw s4, s4, s5
	addw s5, t5, a6
	addw s6, s4, s3
	sh2add s3, s5, a0
	sw s6, 4(s2)
	lw s4, 0(s3)
	slli s6, s4, 24
	lw s7, 4(s3)
	slli s5, s7, 16
	lw s7, 8(s3)
	addw s4, s5, s6
	lw s3, 12(s3)
	addw s6, t6, a6
	slli s5, s7, 8
	addiw a6, a6, 16
	addw s4, s4, s5
	addw s5, s4, s3
	sh2add s3, s6, a0
	sw s5, 8(s2)
	lw s4, 0(s3)
	slli s6, s4, 24
	lw s7, 4(s3)
	slli s5, s7, 16
	lw s7, 8(s3)
	addw s4, s5, s6
	lw s3, 12(s3)
	slli s5, s7, 8
	addw s4, s4, s5
	addw s5, s4, s3
	sw s5, 12(s2)
	li s2, 16
	blt a7, s2, label22
	li t4, 16
	j label25
.p2align 2
label756:
	li s5, -899497722
	mv s4, s5
	j label39
.p2align 2
label10:
	sh2add a4, a2, a0
	addiw a3, a2, 1
	li a5, 60
	sw zero, 0(a4)
	andi a4, a3, 63
	bne a4, a5, label167
.p2align 2
label12:
	sh2add a3, a3, a0
	li a4, 125
	li a5, -1732584194
	mv t2, zero
	sw zero, 0(a3)
	xori t3, a5, -1
	sw zero, 4(a3)
	sw a4, 8(a3)
	li a4, 271733878
	sw zero, 12(a3)
	xori t1, a4, -1
	addiw a3, a2, 5
	sw zero, 24(sp)
	li a2, -1009589776
	sw zero, 28(sp)
	sd zero, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
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
	bgt a3, zero, label256
	j label20
