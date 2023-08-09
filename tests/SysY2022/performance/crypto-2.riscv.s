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
	addi sp, sp, -472
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	li a5, 128
	li a2, 20
	sd zero, 432(sp)
	li a1, 80
pcrel649:
	auipc a0, %pcrel_hi(buffer)
	li a3, 125
	mv t3, s0
	mv t2, s1
	sd zero, 440(sp)
	addi t5, a0, %pcrel_lo(pcrel649)
	sw zero, 448(sp)
	lui a0, 66
	sd t5, 424(sp)
	addiw t1, a0, 33
	sd s1, 464(sp)
	slli a0, a3, 8
	sd t1, 456(sp)
	li a3, 16
	li t1, 125
	slli a4, t1, 10
	addi t0, a4, 4
	bgt s1, zero, label5
	j label51
.p2align 2
label50:
	lw t3, 432(sp)
	addw t2, s0, t3
	subw a6, zero, t2
	sw a6, 432(sp)
	lw t3, 436(sp)
	addw a6, a7, t3
	subw t2, zero, a6
	sw t2, 436(sp)
	lw t3, 440(sp)
	addw a6, t6, t3
	subw t2, zero, a6
	sw t2, 440(sp)
	lw t6, 444(sp)
	addw t3, t5, t6
	subw t2, zero, t3
	sw t2, 444(sp)
	lw t5, 448(sp)
	addw t6, t4, t5
	subw t3, zero, t6
	sw t3, 448(sp)
	mv t3, t1
	ld t2, 464(sp)
	addiw t2, t2, -1
	sd t2, 464(sp)
	ble t2, zero, label51
.p2align 2
label5:
	ld t5, 424(sp)
	mv t1, t3
	mv t2, t5
	mv t3, zero
	j label6
.p2align 2
label10:
	addi t2, t2, 16
.p2align 2
label6:
	slliw a6, t1, 13
	addiw t3, t3, 4
	addw t5, a6, t1
	ld t1, 456(sp)
	slli t4, t5, 1
	srli t6, t4, 47
	add a6, t5, t6
	sraiw a7, a6, 17
	addw t4, t5, a7
	mulw t6, t4, t1
	slli t5, t6, 1
	srli a7, t5, 47
	add s0, t6, a7
	sraiw a6, s0, 17
	addw t5, t6, a6
	mulw a7, t5, t1
	slli a6, a7, 1
	srli s0, a6, 47
	add t6, a7, s0
	sraiw s1, t6, 17
	addw a6, a7, s1
	slli s3, a6, 5
	mulw t6, a6, t1
	slli a7, t6, 1
	srli s1, a7, 47
	add t1, t6, s1
	sraiw a7, t1, 17
	addw s0, t6, a7
	slli s1, s0, 5
	addw a7, s1, s0
	slli s2, a7, 1
	mv t1, a7
	srli t6, s2, 56
	add s1, a7, t6
	andi s0, s1, -256
	subw t6, a7, s0
	addw a7, s3, a6
	slli s2, a7, 1
	srli a6, s2, 56
	slli s2, t5, 5
	add s1, a7, a6
	andi s0, s1, -256
	subw a6, a7, s0
	addw a7, s2, t5
	slli s1, a7, 1
	srli t5, s1, 56
	slli s1, t4, 5
	add s2, a7, t5
	andi s0, s2, -256
	subw t5, a7, s0
	addw a7, s1, t4
	slli s0, a7, 1
	srli t4, s0, 56
	slli s0, t5, 32
	add s2, a7, t4
	slli t5, t6, 32
	andi s1, s2, -256
	subw t4, a7, s1
	add.uw a7, t4, s0
	add.uw t4, a6, t5
	sd a7, 0(t2)
	sd t4, 8(t2)
	blt t3, a0, label10
	ld t5, 424(sp)
	li t6, 60
	add t2, t5, t0
	add t3, t5, a4
	sw a5, 0(t3)
	sw zero, 0(t2)
	lui t3, 8
	addiw t4, t3, -767
	addiw t3, t4, 1
	andi t5, t3, 63
	beq t5, t6, label16
.p2align 2
label15:
	addi t2, t2, 4
	mv t4, t3
	sw zero, 0(t2)
	addiw t3, t3, 1
	li t6, 60
	andi t5, t3, 63
	bne t5, t6, label15
.p2align 2
label16:
	ld t5, 424(sp)
	addiw t2, t4, 5
	lui a7, 66341
	lui a6, 625582
	sh2add t6, t3, t5
	li t3, 125
	sw zero, 0(t6)
	sw zero, 4(t6)
	sw t3, 8(t6)
	mv t3, t5
	sw zero, 12(t6)
	addiw t5, a7, 1142
	lui t6, 802094
	xori a7, t5, -1
	sd zero, 104(sp)
	addiw t4, t6, 496
	sd zero, 112(sp)
	addiw t6, a6, -770
	sd zero, 120(sp)
	mv a6, zero
	xori s0, t6, -1
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
	bgt t2, zero, label25
	j label50
.p2align 2
label47:
	addw s0, s0, s8
	addw a7, a7, s3
	addw t6, t6, s9
	addw t5, t5, s2
	addw t4, t4, s4
	addiw a6, a6, 64
	addi t3, t3, 256
	ble t2, a6, label50
.p2align 2
label25:
	mv s1, t3
	mv s2, zero
	j label26
.p2align 2
label49:
	addi s1, s1, 64
.p2align 2
label26:
	lw s4, 0(s1)
	slli s7, s4, 24
	lw s6, 4(s1)
	lw s8, 8(s1)
	slli s5, s6, 16
	slli s6, s8, 8
	addw s3, s5, s7
	lw s7, 12(s1)
	addw s5, s3, s6
	addi s6, sp, 104
	addw s4, s5, s7
	sh2add s3, s2, s6
	addiw s2, s2, 4
	sw s4, 0(s3)
	lw s8, 16(s1)
	lw s7, 20(s1)
	slli s5, s8, 24
	slli s6, s7, 16
	lw s8, 24(s1)
	addw s4, s5, s6
	slli s7, s8, 8
	lw s6, 28(s1)
	addw s5, s4, s7
	addw s8, s5, s6
	sw s8, 4(s3)
	lw s9, 32(s1)
	lw s7, 36(s1)
	slli s4, s9, 24
	lw s8, 40(s1)
	slli s6, s7, 16
	slli s7, s8, 8
	addw s5, s4, s6
	lw s6, 44(s1)
	addw s4, s5, s7
	addw s8, s4, s6
	sw s8, 8(s3)
	lw s5, 48(s1)
	lw s6, 52(s1)
	slli s4, s5, 24
	lw s7, 56(s1)
	slli s8, s6, 16
	slli s6, s7, 8
	addw s5, s4, s8
	lw s8, 60(s1)
	addw s4, s5, s6
	addw s7, s4, s8
	sw s7, 12(s3)
	blt s2, a3, label49
	addi s6, sp, 104
	mv s2, a3
	addi s1, s6, 64
	j label30
.p2align 2
label33:
	addi s1, s1, 16
.p2align 2
label30:
	lw s4, -12(s1)
	addiw s2, s2, 4
	lw s6, -32(s1)
	lw s3, -56(s1)
	addw s5, s4, s6
	lw s7, -64(s1)
	addw s6, s5, s7
	subw s4, s3, s6
	srliw s9, s4, 31
	add s7, s4, s9
	andi s6, s7, -2
	subw s8, s4, s6
	sh1add s5, s4, s8
	sw s5, 0(s1)
	lw s7, -8(s1)
	lw s8, -28(s1)
	addw s9, s7, s8
	lw s6, -52(s1)
	lw s11, -60(s1)
	addw s4, s5, s6
	addw s10, s9, s11
	subw s5, s6, s10
	srliw s7, s5, 31
	add s8, s5, s7
	andi s9, s8, -2
	subw s6, s5, s9
	sh1add s7, s5, s6
	sw s7, 4(s1)
	lw s8, -4(s1)
	lw s9, -24(s1)
	addw s6, s3, s8
	lw s7, -48(s1)
	addw s5, s6, s9
	subw s3, s7, s5
	srliw s9, s3, 31
	add s6, s3, s9
	andi s8, s6, -2
	subw s5, s3, s8
	sh1add s7, s3, s5
	sw s7, 8(s1)
	lw s6, -20(s1)
	lw s7, -44(s1)
	addw s5, s4, s6
	subw s3, s7, s5
	srliw s6, s3, 31
	add s4, s3, s6
	andi s5, s4, -2
	subw s7, s3, s5
	sh1add s6, s3, s7
	sw s6, 12(s1)
	blt s2, a1, label33
	addi s6, sp, 104
	mv s5, zero
	mv s3, s0
	mv s2, t6
	mv s4, t5
	mv s7, t4
	mv s1, s6
	mv s6, a7
	blt zero, a2, label322
	addw s9, a7, t6
	li s10, 1
	mv s11, zero
	subw s8, s9, t5
	bne s10, zero, label601
	mv s11, s8
	li s9, 1
	bne s9, zero, label603
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label642
.p2align 2
label322:
	lui s9, 370728
	mv s8, zero
	addiw s10, s9, -1639
.p2align 2
label44:
	slliw s9, s3, 5
	addiw s5, s5, 1
	addw s7, s7, s9
	addw s11, s10, s7
	slli s7, s3, 1
	addw s9, s8, s11
	srli s10, s7, 59
	add s11, s3, s10
	andi s8, s11, -32
	lw s11, 0(s1)
	subw s7, s3, s8
	addw s10, s9, s7
	slli s9, s6, 1
	slliw s7, s6, 30
	addw s8, s10, s11
	srli s10, s9, 34
	add s9, s6, s10
	sraiw s11, s9, 30
	slli s10, s11, 30
	subw s11, s6, s10
	addw s9, s7, s11
	bge s5, a1, label47
	addi s1, s1, 4
	mv s6, s3
	mv s7, s4
	mv s3, s8
	mv s4, s2
	mv s2, s9
	blt s5, a2, label322
	addw s9, s6, s9
	slti s10, s5, 60
	mv s11, zero
	subw s8, s9, s4
	bne s10, zero, label601
	mv s11, s8
	slti s9, s5, 40
	bne s9, zero, label603
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label642
.p2align 2
label601:
	slti s9, s5, 40
	bne s9, zero, label603
	mv s8, s11
.p2align 2
label603:
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label605
	lui s10, 828972
	addiw s11, s10, 262
.p2align 2
label605:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label44
.p2align 2
label642:
	mv s10, s11
	j label44
label51:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	addi a1, sp, 432
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
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 472
	ret
