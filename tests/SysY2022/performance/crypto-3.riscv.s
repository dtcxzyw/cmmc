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
	sd s7, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s10, 72(sp)
	sd s8, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	li a4, 60
pcrel665:
	auipc a0, %pcrel_hi(buffer)
	li a1, 80
	li a3, 125
	li a2, 20
	li t0, 128
	mv t3, s1
	mv t5, s0
	sd zero, 448(sp)
	addi s7, a0, %pcrel_lo(pcrel665)
	sd zero, 456(sp)
	lui a0, 66
	sw zero, 464(sp)
	addiw t2, a0, 33
	sd s7, 104(sp)
	slli a0, a3, 8
	sd s1, 120(sp)
	li a3, 16
	sd t2, 112(sp)
	li t2, 125
	slli a5, t2, 10
	addi t1, a5, 4
	ble s1, zero, label51
.p2align 2
label5:
	ld s7, 104(sp)
	mv t2, t5
	mv t4, zero
	mv t3, s7
.p2align 2
label6:
	slliw a6, t2, 13
	addiw t4, t4, 4
	addw t6, a6, t2
	slli t5, t6, 1
	srli t2, t5, 47
	add a7, t6, t2
	ld t2, 112(sp)
	sraiw a6, a7, 17
	addw t5, t6, a6
	mulw a7, t5, t2
	slli s1, a7, 1
	srli t6, s1, 47
	add a6, a7, t6
	sraiw s0, a6, 17
	addw t6, a7, s0
	slli s4, t6, 5
	mulw a6, t6, t2
	slli s1, a6, 1
	srli a7, s1, 47
	add s0, a6, a7
	sraiw s2, s0, 17
	addw a7, a6, s2
	mulw s1, a7, t2
	slli s0, s1, 1
	srli a6, s0, 47
	add s3, s1, a6
	sraiw t2, s3, 17
	addw a6, s1, t2
	slli s2, a6, 5
	addw s0, s2, a6
	slli a6, s0, 1
	mv t2, s0
	srli s3, a6, 56
	add s1, s0, s3
	slli s3, a7, 5
	andi s2, s1, -256
	addw s1, s3, a7
	subw a6, s0, s2
	slli s0, s1, 1
	srli a7, s0, 56
	addw s0, s4, t6
	add s3, s1, a7
	andi s2, s3, -256
	slli s3, s0, 1
	subw a7, s1, s2
	srli t6, s3, 56
	slli s3, t5, 5
	add s1, s0, t6
	andi s2, s1, -256
	addw s1, s3, t5
	subw t6, s0, s2
	slli s2, s1, 1
	srli t5, s2, 56
	slli s2, t6, 32
	add s0, s1, t5
	slli t6, a6, 32
	andi s3, s0, -256
	subw t5, s1, s3
	add.uw s0, t5, s2
	add.uw t5, a7, t6
	sd s0, 0(t3)
	sd t5, 8(t3)
	bge t4, a0, label93
	addi t3, t3, 16
	j label6
.p2align 2
label24:
	addiw s1, t6, 4
	addiw s2, t6, 8
	addiw s3, t6, 12
	addi s4, sp, 128
	mv s5, zero
	mv s6, zero
	j label25
.p2align 2
label357:
	addw s0, s0, s8
	addw a7, a7, s3
	addw a6, a6, s9
	addw t5, t5, s2
	addw t4, t4, s4
	addiw t6, t6, 64
	bgt t3, t6, label24
.p2align 2
label50:
	lw t3, 448(sp)
	addw s1, s0, t3
	subw t6, zero, s1
	sw t6, 448(sp)
	lw s0, 452(sp)
	addw t6, a7, s0
	subw t3, zero, t6
	sw t3, 452(sp)
	lw a7, 456(sp)
	addw t6, a6, a7
	subw t3, zero, t6
	sw t3, 456(sp)
	lw a7, 460(sp)
	addw a6, t5, a7
	subw t6, zero, a6
	sw t6, 460(sp)
	lw t3, 464(sp)
	addw a6, t4, t3
	subw t5, zero, a6
	sw t5, 464(sp)
	mv t5, t2
	ld t3, 120(sp)
	addiw t3, t3, -1
	sd t3, 120(sp)
	bgt t3, zero, label5
label51:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	addi a1, sp, 448
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s7, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s10, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 472
	ret
.p2align 2
label25:
	addw s10, t6, s5
	addiw s6, s6, 4
	ld s7, 104(sp)
	sh2add s8, s10, s7
	lw s9, 0(s8)
	slli s9, s9, 24
	lw s10, 4(s8)
	slli s11, s10, 16
	addw s10, s11, s9
	lw s9, 8(s8)
	slli s11, s9, 8
	addw s9, s10, s11
	lw s11, 12(s8)
	addw s10, s9, s11
	addw s9, s1, s5
	sh2add s8, s9, s7
	sw s10, 0(s4)
	lw s10, 0(s8)
	lw s9, 4(s8)
	slli s11, s9, 16
	slli s9, s10, 24
	lw s10, 8(s8)
	addw s9, s11, s9
	slli s11, s10, 8
	addw s10, s9, s11
	lw s11, 12(s8)
	addw s9, s10, s11
	addw s11, s2, s5
	sh2add s8, s11, s7
	sw s9, 4(s4)
	lw s9, 0(s8)
	slli s9, s9, 24
	lw s10, 4(s8)
	slli s11, s10, 16
	addw s10, s11, s9
	lw s9, 8(s8)
	slli s11, s9, 8
	addw s9, s10, s11
	addw s11, s3, s5
	lw s10, 12(s8)
	addiw s5, s5, 16
	addw s8, s9, s10
	sw s8, 8(s4)
	sh2add s8, s11, s7
	lw s9, 0(s8)
	slli s11, s9, 24
	lw s7, 4(s8)
	lw s9, 8(s8)
	slli s10, s7, 16
	addw s7, s10, s11
	lw s10, 12(s8)
	slli s11, s9, 8
	addw s9, s7, s11
	addw s7, s9, s10
	sw s7, 12(s4)
	bge s6, a3, label268
	addi s4, s4, 16
	j label25
.p2align 2
label268:
	addi s4, sp, 128
	mv s2, a3
	addi s1, s4, 64
.p2align 2
label31:
	lw s4, -12(s1)
	addiw s2, s2, 4
	lw s7, -32(s1)
	lw s3, -56(s1)
	addw s5, s4, s7
	lw s6, -64(s1)
	addw s7, s5, s6
	subw s4, s3, s7
	srliw s8, s4, 31
	add s6, s4, s8
	andi s7, s6, -2
	subw s9, s4, s7
	sh1add s5, s4, s9
	sw s5, 0(s1)
	lw s7, -8(s1)
	lw s8, -28(s1)
	addw s9, s7, s8
	lw s6, -52(s1)
	lw s10, -60(s1)
	addw s4, s5, s6
	addw s11, s9, s10
	subw s5, s6, s11
	srliw s8, s5, 31
	add s7, s5, s8
	andi s9, s7, -2
	subw s6, s5, s9
	sh1add s8, s5, s6
	sw s8, 4(s1)
	lw s7, -4(s1)
	lw s8, -24(s1)
	addw s5, s3, s7
	lw s7, -48(s1)
	addw s6, s5, s8
	subw s3, s7, s6
	srliw s8, s3, 31
	add s5, s3, s8
	andi s7, s5, -2
	subw s6, s3, s7
	sh1add s8, s3, s6
	sw s8, 8(s1)
	lw s7, -20(s1)
	lw s8, -44(s1)
	addw s5, s4, s7
	subw s3, s8, s5
	srliw s4, s3, 31
	add s6, s3, s4
	andi s5, s6, -2
	subw s7, s3, s5
	sh1add s4, s3, s7
	sw s4, 12(s1)
	bge s2, a1, label328
	addi s1, s1, 16
	j label31
.p2align 2
label93:
	ld s7, 104(sp)
	add t3, s7, t1
	add t4, s7, a5
	sw t0, 0(t4)
	sw zero, 0(t3)
	lui t4, 8
	addiw t5, t4, -767
	addiw t4, t5, 1
	andi t6, t4, 63
	bne t6, a4, label15
	j label16
.p2align 2
label12:
	sw zero, 0(t3)
	addiw t4, t5, 1
	andi t6, t4, 63
	beq t6, a4, label16
.p2align 2
label15:
	addi t3, t3, 4
	mv t5, t4
	j label12
.p2align 2
label328:
	addi s4, sp, 128
	mv s5, zero
	mv s3, s0
	mv s6, a7
	mv s2, a6
	mv s7, t4
	mv s1, s4
	mv s4, t5
	blt zero, a2, label334
	addw s9, a7, a6
	li s10, 1
	mv s11, zero
	subw s8, s9, t5
	bne s10, zero, label614
	mv s11, s8
	li s9, 1
	bne s9, zero, label616
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label656
.p2align 2
label334:
	lui s9, 370728
	mv s8, zero
	addiw s10, s9, -1639
.p2align 2
label45:
	slliw s11, s3, 5
	addiw s5, s5, 1
	addw s9, s7, s11
	slli s11, s3, 1
	addw s7, s10, s9
	addw s9, s8, s7
	srli s7, s11, 59
	add s8, s3, s7
	andi s11, s8, -32
	subw s7, s3, s11
	lw s11, 0(s1)
	addw s10, s9, s7
	slli s9, s6, 1
	slliw s7, s6, 30
	addw s8, s10, s11
	srli s10, s9, 34
	add s11, s6, s10
	sraiw s10, s11, 30
	slli s9, s10, 30
	subw s11, s6, s9
	addw s9, s7, s11
	bge s5, a1, label357
	addi s1, s1, 4
	mv s6, s3
	mv s7, s4
	mv s3, s8
	mv s4, s2
	mv s2, s9
	blt s5, a2, label334
	addw s9, s6, s9
	slti s10, s5, 60
	mv s11, zero
	subw s8, s9, s4
	bne s10, zero, label614
	mv s11, s8
	slti s9, s5, 40
	bne s9, zero, label616
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
.p2align 2
label656:
	mv s10, s11
	j label45
.p2align 2
label614:
	slti s9, s5, 40
	bne s9, zero, label616
	mv s8, s11
.p2align 2
label616:
	lui s11, 586172
	addiw s11, s11, -804
	beq s10, zero, label617
.p2align 2
label618:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label45
	j label656
.p2align 2
label16:
	ld s7, 104(sp)
	addiw t3, t5, 5
	lui a7, 66341
	sh2add t6, t4, s7
	addiw t5, a7, 1142
	li t4, 125
	xori a7, t5, -1
	sw zero, 0(t6)
	sw zero, 4(t6)
	sw t4, 8(t6)
	sw zero, 12(t6)
	lui t6, 802094
	sd zero, 128(sp)
	addiw t4, t6, 496
	sd zero, 136(sp)
	lui t6, 625582
	sd zero, 144(sp)
	addiw a6, t6, -770
	sd zero, 152(sp)
	mv t6, zero
	xori s0, a6, -1
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
	sd zero, 424(sp)
	sd zero, 432(sp)
	sd zero, 440(sp)
	bgt t3, zero, label24
	j label50
.p2align 2
label617:
	lui s10, 828972
	addiw s11, s10, 262
	j label618
