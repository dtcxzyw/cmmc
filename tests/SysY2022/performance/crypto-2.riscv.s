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
pcrel536:
	auipc a1, %pcrel_hi(buffer)
	mv a3, s2
	sw zero, 320(sp)
	addi a0, a1, %pcrel_lo(pcrel536)
	sw zero, 324(sp)
	mv a1, s3
	sd zero, 328(sp)
	sw zero, 336(sp)
	ble s3, zero, label39
label54:
	mv a2, zero
	j label5
label39:
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
	srli t0, t1, 47
	add t2, a5, t0
	sraiw t1, t2, 17
	addw a5, a5, t1
	mulw t0, a5, a3
	slli t1, t0, 1
	srli t3, t1, 47
	add t4, t0, t3
	sraiw t2, t4, 17
	addw t1, t0, t2
	mulw a3, t1, a3
	slli t0, a3, 1
	srli t3, t0, 47
	add t2, a3, t3
	sraiw t0, t2, 17
	addw a3, a3, t0
	slli t2, a3, 5
	addw t0, t2, a3
	slli t2, t0, 1
	mv a3, t0
	srli t3, t2, 56
	slli t2, t1, 5
	add t5, t0, t3
	addw t1, t2, t1
	andi t4, t5, -256
	slli t5, t1, 1
	subw t0, t0, t4
	srli t4, t5, 56
	add t3, t1, t4
	andi t2, t3, -256
	slli t3, a5, 5
	subw t1, t1, t2
	addw a5, t3, a5
	slli t2, a5, 1
	srli t5, t2, 56
	slli t2, a4, 5
	add t4, a5, t5
	addw a4, t2, a4
	andi t3, t4, -256
	subw a5, a5, t3
	slli t3, a4, 1
	srli t2, t3, 56
	add t4, a4, t2
	andi t3, t4, -256
	subw t2, a4, t3
	sh2add a4, a2, a0
	addiw a2, a2, 4
	sw t2, 0(a4)
	sw a5, 4(a4)
	sw t1, 8(a4)
	sw t0, 12(a4)
	li a4, 32000
	blt a2, a4, label5
	li a5, 128000
	li a4, 128
	add a2, a0, a5
	sw a4, 0(a2)
	li a2, 32001
	sh2add a5, a2, a0
	addiw a4, a2, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a4, 63
	beq a5, t0, label11
.p2align 2
label93:
	mv a2, a4
	sh2add a5, a4, a0
	addiw a4, a4, 1
	li t0, 60
	sw zero, 0(a5)
	andi a5, a4, 63
	bne a5, t0, label93
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
	ble a4, zero, label19
.p2align 2
label182:
	addiw t4, t2, 4
	addiw t5, t2, 8
	addiw t6, t2, 12
	mv a6, zero
	mv a7, zero
	j label21
.p2align 2
label24:
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
	add s2, t6, a6
	andi a7, s2, -2
	subw a6, t6, a7
	sh1add t6, t6, a6
	sw t6, 12(t5)
	li t5, 80
	blt t4, t5, label24
	mv s2, a2
	mv t5, a5
	mv t4, t0
	mv a6, t1
	mv t6, t3
	mv a7, zero
	li s3, 80
	blt zero, s3, label34
	addw t3, t3, t3
	addw t1, t1, t1
	addw t0, t0, t0
	addw a5, a5, a5
	addw a2, a2, a2
	addiw t2, t2, 64
	bgt a4, t2, label182
	j label19
.p2align 2
label535:
	mv s3, s6
	j label36
.p2align 2
label34:
	li s3, 20
	blt a7, s3, label354
	addw s5, t4, a6
	slti s3, a7, 60
	mv s6, zero
	subw s4, s5, t5
	bne s3, zero, label503
	mv s6, s4
	slti s5, a7, 40
	bne s5, zero, label505
	li s6, -1894007588
	li s6, -899497722
	li s3, 1859775361
	j label535
.p2align 2
label354:
	li s3, 1518500249
	mv s4, zero
	j label36
.p2align 2
label503:
	slti s5, a7, 40
	bne s5, zero, label505
	mv s4, s6
.p2align 2
label505:
	li s6, -1894007588
	bne s3, zero, label507
	li s6, -899497722
.p2align 2
label507:
	li s3, 1859775361
	beq s5, zero, label535
.p2align 2
label36:
	slliw s6, t6, 5
	addw s5, s2, s6
	addw s3, s3, s5
	addw s2, s4, s3
	slli s4, t6, 1
	srli s5, s4, 59
	add s3, t6, s5
	andi s4, s3, -32
	subw s5, t6, s4
	sh2add s4, a7, s1
	addw s2, s2, s5
	addiw a7, a7, 1
	lw s5, 0(s4)
	addw s3, s2, s5
	slli s5, a6, 1
	slliw s2, a6, 30
	srli s7, s5, 34
	add s4, a6, s7
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
	blt a7, s3, label34
	addw t3, t3, t6
	addw t1, t1, a6
	addw t0, t0, s4
	addw a5, a5, t5
	addw a2, a2, s2
	addiw t2, t2, 64
	bgt a4, t2, label182
	j label19
.p2align 2
label21:
	addw s4, t2, a6
	sh2add s2, s4, a0
	lw s3, 0(s2)
	slli s6, s3, 24
	lw s5, 4(s2)
	slli s4, s5, 16
	lw s5, 8(s2)
	addw s3, s4, s6
	slli s6, s5, 8
	lw s5, 12(s2)
	addw s4, s3, s6
	sh2add s2, a7, s1
	addw s3, s4, s5
	addiw a7, a7, 4
	addw s5, t4, a6
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
	slli s6, s4, 24
	lw s7, 4(s3)
	slli s5, s7, 16
	addw s4, s5, s6
	lw s5, 8(s3)
	lw s3, 12(s3)
	slli s6, s5, 8
	addw s5, t6, a6
	addw s4, s4, s6
	addiw a6, a6, 16
	addw s6, s4, s3
	sh2add s3, s5, a0
	sw s6, 8(s2)
	lw s4, 0(s3)
	slli s7, s4, 24
	lw s6, 4(s3)
	slli s5, s6, 16
	addw s4, s5, s7
	lw s5, 8(s3)
	lw s3, 12(s3)
	slli s6, s5, 8
	addw s4, s4, s6
	addw s5, s4, s3
	sw s5, 12(s2)
	li s2, 16
	blt a7, s2, label21
	li t4, 16
	j label24
.p2align 2
label19:
	lw a4, 320(sp)
	addiw a1, a1, -1
	addw t3, t3, a4
	subw t2, zero, t3
	sw t2, 320(sp)
	lw a4, 324(sp)
	addw t2, t1, a4
	subw t1, zero, t2
	sw t1, 324(sp)
	lw a4, 328(sp)
	addw t0, t0, a4
	subw t1, zero, t0
	sw t1, 328(sp)
	lw t0, 332(sp)
	addw a4, a5, t0
	subw t1, zero, a4
	sw t1, 332(sp)
	lw a5, 336(sp)
	addw a4, a2, a5
	subw a2, zero, a4
	sw a2, 336(sp)
	bgt a1, zero, label54
	j label39
