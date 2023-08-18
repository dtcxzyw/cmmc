.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
buffer:
	.zero	131072
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[340] RegSpill[0] CalleeSaved[104]
	addi sp, sp, -448
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s8, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	sd zero, 104(sp)
pcrel654:
	auipc a0, %pcrel_hi(buffer)
	lui a2, 66
	li t0, 125
	lui a3, 31
	addi a4, a0, %pcrel_lo(pcrel654)
	sd zero, 112(sp)
	addiw a1, a3, 1028
	addiw a0, a2, 33
	li a3, 20
	add a5, a4, a1
	li a2, 80
	sw zero, 120(sp)
	slli a1, t0, 8
	ble s1, zero, label51
	mv t1, s0
	mv t0, s1
	j label2
.p2align 2
label47:
	lw t2, 104(sp)
	addiw t0, t0, -1
	addw t3, t4, t2
	subw s0, zero, t3
	sw s0, 104(sp)
	lw t4, 108(sp)
	addw t2, t5, t4
	subw t3, zero, t2
	sw t3, 108(sp)
	lw t4, 112(sp)
	addw t5, t6, t4
	subw t2, zero, t5
	sw t2, 112(sp)
	lw t4, 116(sp)
	addw t3, a6, t4
	subw t2, zero, t3
	sw t2, 116(sp)
	lw t4, 120(sp)
	addw t3, a7, t4
	subw t2, zero, t3
	sw t2, 120(sp)
	ble t0, zero, label51
.p2align 2
label2:
	mv t2, a4
	mv t3, zero
	j label5
.p2align 2
label9:
	addi t2, t2, 16
.p2align 2
label5:
	slliw t6, t1, 13
	addiw t3, t3, 4
	addw t5, t6, t1
	slli t4, t5, 1
	srli a6, t4, 47
	add t6, t5, a6
	sraiw a7, t6, 17
	addw t4, t5, a7
	mulw t1, t4, a0
	slli t5, t1, 1
	srli t6, t5, 47
	add a6, t1, t6
	sraiw a7, a6, 17
	addw t5, t1, a7
	mulw t6, t5, a0
	slli a6, t6, 1
	srli t1, a6, 47
	add a7, t6, t1
	sraiw s0, a7, 17
	addw a6, t6, s0
	slli s3, a6, 5
	mulw t1, a6, a0
	slli s1, t1, 1
	srli t6, s1, 47
	add a7, t1, t6
	sraiw s0, a7, 17
	addw t6, t1, s0
	slli s1, t6, 5
	addw a7, s1, t6
	slli t6, a7, 1
	mv t1, a7
	srli s1, t6, 56
	add s0, a7, s1
	andi s2, s0, -256
	subw t6, a7, s2
	addw a7, s3, a6
	slli s1, a7, 1
	srli a6, s1, 56
	slli s1, t5, 5
	add s0, a7, a6
	andi s2, s0, -256
	subw a6, a7, s2
	slli s2, t4, 5
	addw a7, s1, t5
	slli s0, a7, 1
	srli t5, s0, 56
	add s3, a7, t5
	andi s1, s3, -256
	subw t5, a7, s1
	addw a7, s2, t4
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
	blt t3, a1, label9
	li t4, 125
	li t5, 128
	mv t6, a5
	li a6, 60
	slli t3, t4, 10
	addi t4, t3, 8
	add t2, a4, t3
	srli t3, t4, 2
	sw t5, 0(t2)
	addiw t5, t3, 1
	add t2, a4, t4
	sw zero, 0(a5)
	andi t4, t3, 63
	beq t4, a6, label15
.p2align 2
label50:
	addi t4, t2, 4
	mv t3, t5
	mv t6, t2
	mv t2, t4
	andi t4, t5, 63
	addiw t5, t5, 1
	li a6, 60
	sw zero, 0(t6)
	bne t4, a6, label50
.p2align 2
label15:
	sw zero, 0(t2)
	li t4, 125
	addiw t3, t3, 4
	mv s0, zero
	lui t6, 422994
	lui a7, 982235
	lui s2, 802094
	addiw t5, a7, -1143
	sw zero, 4(t2)
	addiw a7, s2, 496
	xori a6, t5, -1
	sw t4, 8(t2)
	addiw t4, t6, 769
	sw zero, 12(t2)
	xori t6, t4, -1
	mv t2, a4
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
	sd zero, 424(sp)
	sd zero, 432(sp)
	sd zero, 440(sp)
	addi s1, sp, 128
	mv s2, zero
	j label24
.p2align 2
label27:
	addi s1, s1, 16
.p2align 2
label24:
	slliw s5, s2, 2
	addiw s2, s2, 4
	sh2add s3, s5, t2
	ld s4, 0(s3)
	ld s5, 8(s3)
	slliw s9, s4, 24
	srai s8, s4, 32
	slliw s4, s5, 8
	slli s7, s8, 16
	srai s8, s5, 32
	addw s6, s7, s9
	addw s7, s6, s4
	addw s9, s7, s8
	sw s9, 0(s1)
	ld s4, 16(s3)
	srai s7, s4, 32
	slliw s6, s4, 24
	slli s8, s7, 16
	ld s4, 24(s3)
	addw s5, s6, s8
	srai s9, s4, 32
	slliw s7, s4, 8
	addw s6, s5, s7
	addw s8, s6, s9
	sw s8, 4(s1)
	ld s4, 32(s3)
	srai s7, s4, 32
	sext.w s6, s4
	slli s8, s7, 16
	slli s5, s6, 24
	ld s4, 40(s3)
	addw s6, s5, s8
	slliw s7, s4, 8
	srai s8, s4, 32
	addw s5, s6, s7
	addw s9, s5, s8
	sw s9, 8(s1)
	ld s4, 48(s3)
	srai s8, s4, 32
	sext.w s5, s4
	slli s7, s8, 16
	slli s6, s5, 24
	ld s4, 56(s3)
	addw s5, s6, s7
	srai s9, s4, 32
	sext.w s8, s4
	slli s6, s8, 8
	addw s3, s5, s6
	addw s7, s3, s9
	li s3, 16
	sw s7, 12(s1)
	blt s2, s3, label27
	addi s1, sp, 128
	li s2, 16
	addi s1, s1, 64
.p2align 2
label29:
	lw s4, -12(s1)
	addiw s2, s2, 4
	lw s6, -32(s1)
	lw s3, -56(s1)
	addw s5, s4, s6
	lw s8, -64(s1)
	addw s7, s5, s8
	subw s4, s3, s7
	srliw s6, s4, 31
	add s8, s4, s6
	andi s7, s8, -2
	subw s9, s4, s7
	sh1add s5, s4, s9
	sw s5, 0(s1)
	lw s7, -8(s1)
	lw s8, -28(s1)
	addw s9, s7, s8
	lw s6, -52(s1)
	lw s11, -60(s1)
	addw s4, s5, s6
	addw s10, s9, s11
	subw s5, s6, s10
	srliw s8, s5, 31
	add s9, s5, s8
	andi s7, s9, -2
	subw s6, s5, s7
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
	andi s6, s5, -2
	subw s7, s3, s6
	sh1add s8, s3, s7
	sw s8, 8(s1)
	lw s6, -20(s1)
	lw s7, -44(s1)
	addw s5, s4, s6
	subw s3, s7, s5
	srliw s4, s3, 31
	add s6, s3, s4
	andi s7, s6, -2
	subw s5, s3, s7
	sh1add s4, s3, s5
	sw s4, 12(s1)
	bge s2, a2, label32
	addi s1, s1, 16
	j label29
.p2align 2
label32:
	addi s1, sp, 128
	mv s5, zero
	mv s3, t4
	mv s6, t5
	mv s2, t6
	mv s4, a6
	mv s7, a7
	blt zero, a3, label319
	addw s9, t5, t6
	li s10, 1
	mv s11, zero
	subw s8, s9, a6
	bne s10, zero, label612
	mv s11, s8
	li s9, 1
	bne s9, zero, label614
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label644
.p2align 2
label319:
	lui s9, 370728
	mv s8, zero
	addiw s10, s9, -1639
.p2align 2
label42:
	slliw s9, s3, 5
	addiw s5, s5, 1
	addw s11, s7, s9
	addw s7, s10, s11
	addw s9, s8, s7
	slli s7, s3, 1
	srli s10, s7, 59
	add s8, s3, s10
	andi s11, s8, -32
	subw s7, s3, s11
	lw s11, 0(s1)
	addw s10, s9, s7
	slliw s7, s6, 30
	addw s8, s10, s11
	slli s11, s6, 1
	srli s10, s11, 34
	add s9, s6, s10
	sraiw s10, s9, 30
	slli s9, s10, 30
	subw s11, s6, s9
	addw s9, s7, s11
	bge s5, a2, label342
	addi s1, s1, 4
	mv s6, s3
	mv s7, s4
	mv s3, s8
	mv s4, s2
	mv s2, s9
	blt s5, a3, label319
	addw s9, s6, s9
	slti s10, s5, 60
	mv s11, zero
	subw s8, s9, s4
	beq s10, zero, label639
.p2align 2
label612:
	slti s9, s5, 40
	bne s9, zero, label614
	mv s8, s11
.p2align 2
label614:
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label616
	lui s10, 828972
	addiw s11, s10, 262
.p2align 2
label616:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label42
.p2align 2
label644:
	mv s10, s11
	j label42
.p2align 2
label639:
	mv s11, s8
	slti s9, s5, 40
	bne s9, zero, label614
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label616
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label644
.p2align 2
label342:
	addiw s0, s0, 64
	addw t4, t4, s8
	addw t5, t5, s3
	addw t6, t6, s9
	addw a6, a6, s2
	addw a7, a7, s4
	ble t3, s0, label47
	addi t2, t2, 256
	addi s1, sp, 128
	mv s2, zero
	j label24
label51:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	addi a1, sp, 104
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
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 448
	ret
