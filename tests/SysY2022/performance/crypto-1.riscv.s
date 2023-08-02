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
	addi sp, sp, -456
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	li t1, 128
	li a5, 60
	sd zero, 424(sp)
	li a1, 32000
pcrel636:
	auipc a0, %pcrel_hi(buffer)
	li a3, 20
	mv t3, s0
	mv t2, s1
	li t0, 128000
	li a2, 80
	li a4, 16
	addi s2, a0, %pcrel_lo(pcrel636)
	sd zero, 432(sp)
	li a0, 270369
	sw zero, 440(sp)
	sd s2, 448(sp)
	ble s1, zero, label39
.p2align 2
label54:
	mv t4, zero
.p2align 2
label5:
	slliw t5, t3, 13
	addw t3, t5, t3
	slli t6, t3, 1
	srli t5, t6, 47
	add a6, t3, t5
	sraiw t6, a6, 17
	addw t5, t3, t6
	mulw t3, t5, a0
	slli a6, t3, 1
	srli t6, a6, 47
	add a7, t3, t6
	sraiw a6, a7, 17
	addw t6, t3, a6
	mulw t3, t6, a0
	slli a7, t3, 1
	srli a6, a7, 47
	add a7, t3, a6
	sraiw a6, a7, 17
	addw a7, t3, a6
	mulw t3, a7, a0
	slli s0, t3, 1
	srli a6, s0, 47
	add s1, t3, a6
	sraiw a6, s1, 17
	addw t3, t3, a6
	slli s0, t3, 5
	addw a6, s0, t3
	slli s1, a6, 1
	mv t3, a6
	srli s2, s1, 56
	add s0, a6, s2
	andi s1, s0, -256
	slli s0, a7, 5
	subw a6, a6, s1
	addw a7, s0, a7
	slli a6, a6, 32
	slli s2, a7, 1
	srli s0, s2, 56
	add s1, a7, s0
	slli s0, t6, 5
	andi s2, s1, -256
	addw t6, s0, t6
	subw a7, a7, s2
	slli s1, t6, 1
	srli s2, s1, 56
	slli s1, t5, 5
	add s3, t6, s2
	addw t5, s1, t5
	andi s0, s3, -256
	slli s2, t5, 1
	subw t6, t6, s0
	slli t6, t6, 32
	srli s0, s2, 56
	ld s2, 448(sp)
	add s1, t5, s0
	andi s3, s1, -256
	subw s0, t5, s3
	add.uw s0, s0, t6
	sh2add t5, t4, s2
	add.uw t6, a7, a6
	addiw t4, t4, 4
	sd s0, 0(t5)
	sd t6, 8(t5)
	blt t4, a1, label5
	li t4, 32001
	add t5, s2, t0
	sw t1, 0(t5)
.p2align 2
label9:
	ld s2, 448(sp)
	addiw t5, t4, 1
	sh2add t6, t4, s2
	sw zero, 0(t6)
	andi t6, t5, 63
	beq t6, a5, label11
	mv t4, t5
	j label9
.p2align 2
label19:
	lw a6, 424(sp)
	addiw t2, t2, -1
	addw t4, s1, a6
	subw a6, zero, t4
	sw a6, 424(sp)
	lw t4, 428(sp)
	addw s0, s0, t4
	subw a6, zero, s0
	sw a6, 428(sp)
	lw a6, 432(sp)
	addw t4, a7, a6
	subw a6, zero, t4
	sw a6, 432(sp)
	lw t4, 436(sp)
	addw a6, t6, t4
	subw t6, zero, a6
	sw t6, 436(sp)
	lw t4, 440(sp)
	addw t6, t5, t4
	subw t5, zero, t6
	sw t5, 440(sp)
	bgt t2, zero, label54
	j label39
.p2align 2
label20:
	addiw s3, a6, 4
	addiw s4, a6, 8
	addiw s5, a6, 12
	mv s6, zero
	mv s7, zero
.p2align 2
label21:
	addw s9, a6, s6
	ld s2, 448(sp)
	sh2add s8, s9, s2
	lw s9, 0(s8)
	lw s11, 4(s8)
	slli s10, s11, 16
	slli s11, s9, 24
	addw s9, s10, s11
	lw s10, 8(s8)
	lw s8, 12(s8)
	slli s11, s10, 8
	addw s9, s9, s11
	addw s11, s3, s6
	addw s10, s9, s8
	addi s8, sp, 104
	sh2add s9, s7, s8
	addiw s7, s7, 4
	sh2add s8, s11, s2
	sw s10, 0(s9)
	lw s10, 0(s8)
	slli s10, s10, 24
	lw s11, 4(s8)
	slli s11, s11, 16
	addw s10, s11, s10
	lw s11, 8(s8)
	slli s11, s11, 8
	addw s10, s10, s11
	lw s11, 12(s8)
	addw s8, s10, s11
	addw s11, s4, s6
	sw s8, 4(s9)
	sh2add s8, s11, s2
	lw s10, 0(s8)
	slli s10, s10, 24
	lw s11, 4(s8)
	slli s11, s11, 16
	addw s10, s11, s10
	lw s11, 8(s8)
	lw s8, 12(s8)
	slli s11, s11, 8
	addw s10, s10, s11
	addw s11, s10, s8
	addw s10, s5, s6
	addiw s6, s6, 16
	sh2add s2, s10, s2
	sw s11, 8(s9)
	lw s8, 0(s2)
	lw s11, 4(s2)
	slli s10, s11, 16
	slli s11, s8, 24
	addw s8, s10, s11
	lw s10, 8(s2)
	lw s2, 12(s2)
	slli s11, s10, 8
	addw s8, s8, s11
	addw s10, s8, s2
	sw s10, 12(s9)
	blt s7, a4, label21
	mv s3, a4
.p2align 2
label24:
	addi s8, sp, 104
	sh2add s2, s3, s8
	addiw s3, s3, 4
	lw s4, -12(s2)
	lw s6, -32(s2)
	addw s5, s4, s6
	lw s4, -56(s2)
	lw s6, -64(s2)
	addw s7, s5, s6
	subw s5, s4, s7
	srliw s6, s5, 31
	add s8, s5, s6
	andi s7, s8, -2
	subw s6, s5, s7
	sh1add s5, s5, s6
	sw s5, 0(s2)
	lw s7, -8(s2)
	lw s8, -28(s2)
	addw s7, s7, s8
	lw s6, -52(s2)
	lw s9, -60(s2)
	addw s5, s5, s6
	addw s8, s7, s9
	subw s6, s6, s8
	srliw s9, s6, 31
	add s7, s6, s9
	andi s8, s7, -2
	subw s9, s6, s8
	sh1add s7, s6, s9
	sw s7, 4(s2)
	lw s6, -4(s2)
	lw s7, -24(s2)
	addw s4, s4, s6
	lw s8, -48(s2)
	addw s6, s4, s7
	subw s4, s8, s6
	srliw s6, s4, 31
	add s8, s4, s6
	andi s7, s8, -2
	subw s9, s4, s7
	sh1add s6, s4, s9
	sw s6, 8(s2)
	lw s4, -20(s2)
	lw s6, -44(s2)
	addw s5, s5, s4
	subw s4, s6, s5
	srliw s5, s4, 31
	add s6, s4, s5
	andi s7, s6, -2
	subw s5, s4, s7
	sh1add s4, s4, s5
	sw s4, 12(s2)
	blt s3, a2, label24
	mv s7, t5
	mv s5, t6
	mv s2, a7
	mv s6, s0
	mv s3, s1
	mv s4, zero
	bge zero, a2, label33
.p2align 2
label34:
	bge s4, a3, label353
	li s8, 1518500249
	mv s9, zero
.p2align 2
label35:
	slliw s11, s3, 5
	addw s10, s7, s11
	slli s11, s3, 1
	addw s8, s8, s10
	addw s7, s9, s8
	srli s9, s11, 59
	add s10, s3, s9
	andi s8, s10, -32
	subw s9, s3, s8
	addi s8, sp, 104
	addw s7, s7, s9
	sh2add s10, s4, s8
	addiw s4, s4, 1
	lw s9, 0(s10)
	addw s8, s7, s9
	slli s9, s6, 1
	slliw s7, s6, 30
	srli s11, s9, 34
	add s10, s6, s11
	sraiw s9, s10, 30
	slli s11, s9, 30
	subw s6, s6, s11
	addw s9, s7, s6
	mv s6, s3
	mv s7, s5
	mv s3, s8
	mv s5, s2
	mv s2, s9
	blt s4, a2, label34
	addw s1, s1, s8
	addw s0, s0, s6
	addw a7, a7, s9
	addw t6, t6, s5
	addw t5, t5, s7
	addiw a6, a6, 64
	bgt t4, a6, label20
	j label19
.p2align 2
label353:
	addw s10, s2, s6
	slti s8, s4, 60
	mv s11, zero
	subw s9, s10, s5
	bne s8, zero, label601
	mv s11, s9
	slti s10, s4, 40
	bne s10, zero, label603
	j label627
.p2align 2
label629:
	mv s8, s11
	j label35
.p2align 2
label603:
	li s11, -1894007588
	bne s8, zero, label605
	li s11, -899497722
.p2align 2
label605:
	li s8, 1859775361
	bne s10, zero, label35
	j label629
.p2align 2
label601:
	slti s10, s4, 40
	bne s10, zero, label603
	mv s9, s11
	j label603
.p2align 2
label627:
	mv s9, s11
	li s11, -1894007588
	bne s8, zero, label605
	li s11, -899497722
	li s8, 1859775361
	bne s10, zero, label35
	j label629
.p2align 2
label11:
	ld s2, 448(sp)
	li t6, 125
	addiw t4, t4, 5
	li a7, -1732584194
	mv a6, zero
	sh2add t5, t5, s2
	xori s1, a7, -1
	sw zero, 0(t5)
	sw zero, 4(t5)
	sw t6, 8(t5)
	li t6, 271733878
	sw zero, 12(t5)
	xori s0, t6, -1
	li t5, -1009589776
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
	bgt t4, zero, label20
	j label19
.p2align 2
label33:
	addw s1, s1, s3
	addw s0, s0, s6
	addw a7, a7, s2
	addw t6, t6, s5
	addw t5, t5, s7
	addiw a6, a6, 64
	bgt t4, a6, label20
	j label19
label39:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	addi a1, sp, 424
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
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 456
	ret
