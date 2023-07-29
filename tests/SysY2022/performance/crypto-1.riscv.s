.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
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
	addi s0, sp, 320
	sd s5, 384(sp)
	sd s2, 376(sp)
	sd s3, 368(sp)
	sd s4, 360(sp)
	sd s7, 352(sp)
	sd ra, 344(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	mv a3, s2
pcrel539:
	auipc a1, %pcrel_hi(buffer)
	sw zero, 320(sp)
	addi a0, a1, %pcrel_lo(pcrel539)
	sw zero, 324(sp)
	mv a1, s3
	sd zero, 328(sp)
	sw zero, 336(sp)
	ble s3, zero, label41
label56:
	mv a2, zero
	j label5
.p2align 2
label9:
	sh2add a5, a2, a0
	addiw a4, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a4, 63
	bne a5, t0, label95
.p2align 2
label11:
	sh2add a4, a4, a0
	li a5, 125
	li t0, -1732584194
	mv t2, zero
	sw zero, 0(a4)
	xori t3, t0, -1
	sw zero, 4(a4)
	sw a5, 8(a4)
	li a5, 271733878
	sw zero, 12(a4)
	xori t1, a5, -1
	addiw a4, a2, 5
	sw zero, 0(sp)
	li a2, -1009589776
	sw zero, 4(sp)
	sd zero, 8(sp)
	sd zero, 16(sp)
	sd zero, 24(sp)
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
	bgt a4, zero, label19
.p2align 2
label40:
	lw a4, 320(sp)
	addiw a1, a1, -1
	addw t2, t3, a4
	subw t3, zero, t2
	sw t3, 320(sp)
	lw t2, 324(sp)
	addw t1, t1, t2
	subw a4, zero, t1
	sw a4, 324(sp)
	lw t1, 328(sp)
	addw t0, t0, t1
	subw a4, zero, t0
	sw a4, 328(sp)
	lw t0, 332(sp)
	addw a4, a5, t0
	subw a5, zero, a4
	sw a5, 332(sp)
	lw a4, 336(sp)
	addw a2, a2, a4
	subw a5, zero, a2
	sw a5, 336(sp)
	bgt a1, zero, label56
label41:
	li a0, 184
	jal _sysy_stoptime
	mv a1, s0
	li a0, 5
	jal putarray
	ld ra, 344(sp)
	mv a0, zero
	ld s7, 352(sp)
	ld s4, 360(sp)
	ld s3, 368(sp)
	ld s2, 376(sp)
	ld s5, 384(sp)
	ld s0, 392(sp)
	ld s6, 400(sp)
	ld s1, 408(sp)
	addi sp, sp, 416
	ret
.p2align 2
label5:
	slliw a4, a3, 13
	addw a3, a4, a3
	slli t0, a3, 1
	srli a4, t0, 47
	add a5, a3, a4
	sraiw t0, a5, 17
	addw a4, a3, t0
	li a3, 270369
	mulw a5, a4, a3
	slli t1, a5, 1
	srli t2, t1, 47
	add t0, a5, t2
	sraiw t1, t0, 17
	addw a5, a5, t1
	mulw t0, a5, a3
	slli t1, t0, 1
	srli t4, t1, 47
	add t3, t0, t4
	sraiw t2, t3, 17
	addw t1, t0, t2
	mulw a3, t1, a3
	slli t3, a3, 1
	srli t0, t3, 47
	add t2, a3, t0
	sraiw t3, t2, 17
	addw a3, a3, t3
	slli t2, a3, 5
	addw t0, t2, a3
	slli t4, t0, 1
	mv a3, t0
	srli t3, t4, 56
	add t2, t0, t3
	andi t4, t2, -256
	slli t2, t1, 5
	subw t0, t0, t4
	addw t1, t2, t1
	slli t4, t1, 1
	srli t2, t4, 56
	add t3, t1, t2
	slli t2, a5, 5
	andi t4, t3, -256
	addw a5, t2, a5
	subw t1, t1, t4
	slli t3, a5, 1
	srli t2, t3, 56
	slli t3, a4, 5
	add t4, a5, t2
	addw a4, t3, a4
	andi t5, t4, -256
	slli t2, a4, 1
	subw a5, a5, t5
	srli t5, t2, 56
	add t3, a4, t5
	andi t4, t3, -256
	subw t2, a4, t4
	sh2add a4, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a4)
	sw a5, 4(a4)
	sw t1, 8(a4)
	sw t0, 12(a4)
	li a4, 32000
	blt a2, a4, label5
	li a4, 128000
	li a5, 128
	add a2, a0, a4
	sw a5, 0(a2)
	li a2, 32001
	sh2add a5, a2, a0
	addiw a4, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a4, 63
	beq a5, t0, label11
.p2align 2
label95:
	mv a2, a4
	j label9
.p2align 2
label19:
	addiw t4, t2, 4
	addiw t5, t2, 8
	addiw t6, t2, 12
	mv a6, zero
	mv a7, zero
	j label20
.p2align 2
label23:
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
	add s2, t6, a7
	andi a7, s2, -2
	subw s3, t6, a7
	sh1add t6, t6, s3
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
	blt t4, t5, label23
	mv s2, a2
	mv t5, a5
	mv t4, t0
	mv a6, t1
	mv t6, t3
	mv a7, zero
	li s3, 80
	blt zero, s3, label33
	addw t3, t3, t3
	addw t1, t1, t1
	addw t0, t0, t0
	addw a5, a5, a5
	addw a2, a2, a2
	addiw t2, t2, 64
	bgt a4, t2, label19
	j label40
.p2align 2
label537:
	li s5, -899497722
	mv s4, s5
	j label37
.p2align 2
label33:
	li s3, 20
	blt a7, s3, label336
	li s4, 40
	blt a7, s4, label340
	addw s3, t4, a6
	slti s4, a7, 60
	subw s5, s3, t5
	mv s3, zero
	bne s4, zero, label509
	mv s3, s5
	li s5, -1894007588
	j label537
.p2align 2
label336:
	li s4, 1518500249
	mv s3, zero
	j label37
.p2align 2
label340:
	addw s5, t4, a6
	li s4, 1859775361
	subw s3, s5, t5
.p2align 2
label37:
	slliw s5, t6, 5
	addw s6, s2, s5
	slli s5, t6, 1
	addw s4, s4, s6
	slli s6, a6, 1
	addw s2, s3, s4
	srli s3, s5, 59
	add s4, t6, s3
	andi s5, s4, -32
	sh2add s4, a7, s1
	subw s3, t6, s5
	addiw a7, a7, 1
	addw s2, s2, s3
	lw s5, 0(s4)
	srli s4, s6, 34
	addw s3, s2, s5
	add s5, a6, s4
	slliw s2, a6, 30
	sraiw s6, s5, 30
	slli s7, s6, 30
	subw a6, a6, s7
	addw s4, s2, a6
	mv a6, t6
	mv s2, t5
	mv t6, s3
	mv t5, t4
	mv t4, s4
	li s3, 80
	blt a7, s3, label33
	addw t3, t3, t6
	addw t1, t1, a6
	addw t0, t0, s4
	addw a5, a5, t5
	addw a2, a2, s2
	addiw t2, t2, 64
	bgt a4, t2, label19
	j label40
.p2align 2
label509:
	li s5, -1894007588
	bne s4, zero, label511
	li s5, -899497722
.p2align 2
label511:
	mv s4, s5
	j label37
.p2align 2
label20:
	addw s4, t2, a6
	sh2add s2, s4, a0
	lw s3, 0(s2)
	slli s5, s3, 24
	lw s6, 4(s2)
	slli s4, s6, 16
	lw s6, 8(s2)
	addw s3, s4, s5
	slli s5, s6, 8
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
	addw s4, s5, s7
	lw s5, 8(s3)
	lw s3, 12(s3)
	slli s6, s5, 8
	addw s5, t5, a6
	addw s4, s4, s6
	addw s6, s4, s3
	sh2add s3, s5, a0
	sw s6, 4(s2)
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	addw s4, s5, s7
	lw s5, 8(s3)
	slli s6, s5, 8
	lw s5, 12(s3)
	addw s4, s4, s6
	addw s3, s4, s5
	addw s5, t6, a6
	addiw a6, a6, 16
	sw s3, 8(s2)
	sh2add s3, s5, a0
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	addw s4, s5, s7
	lw s5, 8(s3)
	slli s6, s5, 8
	lw s5, 12(s3)
	addw s4, s4, s6
	addw s3, s4, s5
	sw s3, 12(s2)
	li s2, 16
	blt a7, s2, label20
	li t4, 16
	j label23
