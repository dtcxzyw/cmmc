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
	# stack usage: CalleeArg[0] Local[340] RegSpill[8] CalleeSaved[104]
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
	sd s10, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s9, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
pcrel889:
	auipc a1, %pcrel_hi(buffer)
	lui a0, 31
	sd zero, 432(sp)
	addi a5, a1, %pcrel_lo(pcrel889)
	addiw a3, a0, 1028
	li a1, 20
	sd zero, 440(sp)
	li a0, 80
	add a2, a5, a3
	sw zero, 448(sp)
	sd a5, 104(sp)
	ble s1, zero, label51
	mv a4, s0
	mv a3, s1
	j label2
.p2align 2
label47:
	lw t0, 432(sp)
	addiw a3, a3, -1
	addw t6, t1, t0
	subw a5, zero, t6
	sw a5, 432(sp)
	lw t0, 436(sp)
	addw t6, t2, t0
	subw t1, zero, t6
	sw t1, 436(sp)
	lw t0, 440(sp)
	addw a5, t3, t0
	subw t1, zero, a5
	sw t1, 440(sp)
	lw t0, 444(sp)
	addw a5, t4, t0
	subw t1, zero, a5
	sw t1, 444(sp)
	lw t2, 448(sp)
	addw t0, t5, t2
	subw a5, zero, t0
	sw a5, 448(sp)
	ble a3, zero, label51
.p2align 2
label2:
	ld a5, 104(sp)
	mv t0, zero
	j label5
.p2align 2
label9:
	addi a5, a5, 32
.p2align 2
label5:
	slliw t3, a4, 13
	addiw t0, t0, 8
	addw t2, t3, a4
	slli t1, t2, 1
	srli t4, t1, 47
	add a4, t2, t4
	lui t4, 66
	sraiw t3, a4, 17
	addiw a4, t4, 33
	addw t1, t2, t3
	mulw t3, t1, a4
	slli t2, t3, 1
	srli t4, t2, 47
	add a6, t3, t4
	sraiw t6, a6, 17
	addw t2, t3, t6
	mulw t5, t2, a4
	slli t4, t5, 1
	srli a6, t4, 47
	add a7, t5, a6
	sraiw t6, a7, 17
	addw t3, t5, t6
	mulw t4, t3, a4
	slli a6, t4, 1
	srli t6, a6, 47
	add a7, t4, t6
	sraiw a6, a7, 17
	addw t5, t4, a6
	mulw t6, t5, a4
	slli a7, t6, 1
	srli a6, a7, 47
	add t4, t6, a6
	sraiw a7, t4, 17
	addw a6, t6, a7
	mulw t4, a6, a4
	slli a7, t4, 1
	srli t6, a7, 47
	add s1, t4, t6
	sraiw s2, s1, 17
	addw a7, t4, s2
	slli s4, a7, 5
	mulw s0, a7, a4
	slli t6, s0, 1
	srli s2, t6, 47
	add t4, s0, s2
	sraiw s1, t4, 17
	addw t6, s0, s1
	mulw t4, t6, a4
	slli s2, t4, 1
	srli s0, s2, 47
	add s3, t4, s0
	sraiw a4, s3, 17
	addw s1, t4, a4
	slli s2, s1, 5
	addw s0, s2, s1
	slli s3, s0, 1
	mv a4, s0
	srli t4, s3, 56
	slli s3, t6, 5
	add s1, s0, t4
	andi s2, s1, -256
	addw s1, s3, t6
	subw t4, s0, s2
	slli s0, s1, 1
	srli t6, s0, 56
	addw s0, s4, a7
	add s2, s1, t6
	andi s3, s2, -256
	slli s2, s0, 1
	subw t6, s1, s3
	srli a7, s2, 56
	slli s2, a6, 5
	add s1, s0, a7
	andi s3, s1, -256
	addw s1, s2, a6
	subw a7, s0, s3
	slli s3, s1, 1
	srli a6, s3, 56
	slli s3, t5, 5
	add s0, s1, a6
	andi s2, s0, -256
	addw s0, s3, t5
	subw a6, s1, s2
	slli s1, s0, 1
	srli t5, s1, 56
	slli s1, t3, 5
	add s2, s0, t5
	andi s3, s2, -256
	addw s2, s1, t3
	subw t5, s0, s3
	slli s0, s2, 1
	srli t3, s0, 56
	slli s0, t2, 5
	add s1, s2, t3
	andi s3, s1, -256
	addw s1, s0, t2
	subw t3, s2, s3
	slli s2, s1, 1
	srli t2, s2, 56
	slli s2, t1, 5
	add s0, s1, t2
	andi s3, s0, -256
	addw s0, s2, t1
	subw t2, s1, s3
	slli s2, t2, 32
	slli s3, s0, 1
	slli t2, t5, 32
	srli t1, s3, 56
	add s4, s0, t1
	andi s1, s4, -256
	subw t1, s0, s1
	add.uw s0, t3, t2
	add.uw s3, t1, s2
	slli t2, t4, 32
	slli t1, a7, 32
	sd s3, 0(a5)
	add.uw t3, a6, t1
	sd s0, 8(a5)
	add.uw t1, t6, t2
	sd t3, 16(a5)
	li t2, 125
	sd t1, 24(a5)
	slli t1, t2, 8
	blt t0, t1, label9
	li t1, 125
	li t3, 128
	ld a5, 104(sp)
	slli t0, t1, 10
	addi t1, t0, 8
	add t2, a5, t0
	srli t0, t1, 2
	add a5, a5, t1
	sw t3, 0(t2)
	mv t3, a2
	j label11
.p2align 2
label50:
	addi t1, a5, 4
	mv t0, t2
	mv t3, a5
	mv a5, t1
.p2align 2
label11:
	andi t1, t0, 63
	addiw t2, t0, 1
	li t4, 60
	sw zero, 0(t3)
	bne t1, t4, label50
	sw zero, 0(a5)
	li t1, 125
	addiw t0, t0, 4
	mv t6, zero
	lui t3, 422994
	lui t5, 982235
	lui a7, 802094
	addiw t2, t5, -1143
	sw zero, 4(a5)
	addiw t5, a7, 496
	xori t4, t2, -1
	sw t1, 8(a5)
	addiw t1, t3, 769
	sw zero, 12(a5)
	xori t3, t1, -1
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
	sd zero, 424(sp)
	ld a5, 104(sp)
	addi a6, sp, 112
	mv a7, zero
	j label24
.p2align 2
label27:
	addi a6, a6, 32
.p2align 2
label24:
	slliw s2, a7, 2
	sh2add s0, s2, a5
	lw s1, 0(s0)
	slli s5, s1, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s2, s3, s5
	slli s6, s4, 8
	lw s3, 12(s0)
	addiw s4, a7, 1
	addw s1, s2, s6
	slliw s2, s4, 2
	addw s5, s1, s3
	sh2add s0, s2, a5
	sw s5, 0(a6)
	lw s1, 0(s0)
	slli s6, s1, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s2, s3, s6
	slli s5, s4, 8
	lw s3, 12(s0)
	addw s1, s2, s5
	addiw s2, a7, 2
	addw s4, s1, s3
	slliw s3, s2, 2
	sh2add s0, s3, a5
	sw s4, 4(a6)
	lw s1, 0(s0)
	slli s5, s1, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s2, s3, s5
	slli s6, s4, 8
	lw s3, 12(s0)
	addw s1, s2, s6
	addiw s2, a7, 3
	addw s4, s1, s3
	slliw s3, s2, 2
	sh2add s0, s3, a5
	sw s4, 8(a6)
	lw s1, 0(s0)
	slli s5, s1, 24
	lw s4, 4(s0)
	lw s6, 8(s0)
	slli s3, s4, 16
	slli s4, s6, 8
	addw s2, s3, s5
	lw s3, 12(s0)
	addw s1, s2, s4
	addiw s4, a7, 4
	addw s5, s1, s3
	slliw s2, s4, 2
	sh2add s0, s2, a5
	sw s5, 12(a6)
	lw s1, 0(s0)
	slli s6, s1, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s2, s3, s6
	slli s5, s4, 8
	lw s3, 12(s0)
	addw s1, s2, s5
	addiw s2, a7, 5
	addw s4, s1, s3
	slliw s3, s2, 2
	sh2add s0, s3, a5
	sw s4, 16(a6)
	lw s1, 0(s0)
	slli s5, s1, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s2, s3, s5
	slli s6, s4, 8
	addiw s5, a7, 6
	lw s3, 12(s0)
	addw s1, s2, s6
	addw s4, s1, s3
	slliw s1, s5, 2
	sh2add s0, s1, a5
	sw s4, 20(a6)
	lw s2, 0(s0)
	slli s5, s2, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s1, s3, s5
	slli s6, s4, 8
	lw s3, 12(s0)
	addiw s4, a7, 7
	addw s2, s1, s6
	addiw a7, a7, 8
	addw s5, s2, s3
	slliw s2, s4, 2
	sh2add s0, s2, a5
	sw s5, 24(a6)
	lw s1, 0(s0)
	slli s6, s1, 24
	lw s4, 4(s0)
	slli s3, s4, 16
	lw s4, 8(s0)
	addw s2, s3, s6
	slli s5, s4, 8
	lw s3, 12(s0)
	addw s1, s2, s5
	li s0, 16
	addw s4, s1, s3
	sw s4, 28(a6)
	blt a7, s0, label27
	addi a6, sp, 112
	li a7, 16
	addi a6, a6, 64
.p2align 2
label29:
	lw s0, -12(a6)
	addiw a7, a7, 8
	lw s2, -32(a6)
	lw s4, -56(a6)
	addw s3, s0, s2
	lw s7, -64(a6)
	addw s6, s3, s7
	subw s1, s4, s6
	srliw s5, s1, 31
	add s3, s1, s5
	andi s7, s3, -2
	subw s6, s1, s7
	sh1add s5, s1, s6
	sw s5, 0(a6)
	lw s7, -8(a6)
	lw s1, -28(a6)
	addw s8, s7, s1
	lw s3, -52(a6)
	lw s11, -60(a6)
	addw s10, s5, s3
	addw s9, s8, s11
	subw s6, s3, s9
	srliw s5, s6, 31
	add s11, s6, s5
	andi s3, s11, -2
	subw s8, s6, s3
	sh1add s5, s6, s8
	sw s5, 4(a6)
	lw s3, -4(a6)
	lw s11, -24(a6)
	addw s6, s4, s3
	lw s9, -48(a6)
	addw s8, s6, s11
	subw s4, s9, s8
	srliw s6, s4, 31
	add s11, s4, s6
	andi s8, s11, -2
	subw s6, s4, s8
	sh1add s11, s4, s6
	sw s11, 8(a6)
	lw s8, -20(a6)
	addw s11, s10, s8
	lw s8, -44(a6)
	subw s10, s8, s11
	srliw s11, s10, 31
	sh1add s7, s10, s7
	add s11, s10, s11
	andi s11, s11, -2
	subw s11, s10, s11
	sh1add s10, s10, s11
	addw s7, s7, s11
	sw s10, 12(a6)
	lw s11, -16(a6)
	lw s10, -40(a6)
	addw s7, s7, s10
	subw s7, s2, s7
	srliw s2, s7, 31
	add s2, s7, s2
	andi s2, s2, -2
	subw s2, s7, s2
	sh1add s2, s7, s2
	addw s7, s5, s9
	addw s5, s11, s7
	subw s7, s10, s5
	srliw s9, s7, 31
	add s11, s7, s9
	andi s10, s11, -2
	sh1add s11, s4, s0
	subw s5, s7, s10
	addw s10, s6, s11
	sh1add s9, s7, s5
	sw s9, 16(a6)
	lw s0, -36(a6)
	addw s9, s8, s10
	subw s4, s0, s9
	srliw s6, s4, 31
	add s8, s4, s6
	andi s10, s8, -2
	sh1add s8, s7, s3
	subw s9, s4, s10
	sh1add s6, s4, s9
	addw s4, s5, s8
	sw s6, 20(a6)
	addw s6, s0, s4
	subw s3, s1, s6
	srliw s5, s3, 31
	add s4, s3, s5
	andi s0, s4, -2
	subw s6, s3, s0
	sh1add s5, s3, s6
	slli s1, s5, 32
	add.uw s0, s2, s1
	sd s0, 24(a6)
	bge a7, a0, label32
	addi a6, a6, 32
	j label29
.p2align 2
label32:
	addi a6, sp, 112
	mv s2, zero
	mv s0, t1
	mv s3, t2
	mv a7, t3
	mv s1, t4
	mv s4, t5
	blt zero, a1, label461
	addw s6, t2, t3
	li s7, 1
	mv s9, zero
	subw s8, s6, t4
	bne s7, zero, label848
	mv s9, s8
	li s6, 1
	mv s5, s8
	bne s6, zero, label850
	lui s10, 586172
	lui s11, 828972
	lui s9, 454047
	addiw s8, s11, 262
	addiw s7, s9, -1151
	j label880
.p2align 2
label461:
	lui s6, 370728
	mv s5, zero
	addiw s7, s6, -1639
.p2align 2
label42:
	slliw s8, s0, 5
	addiw s2, s2, 1
	addw s10, s4, s8
	slli s8, s0, 1
	addw s9, s7, s10
	srli s4, s8, 59
	addw s6, s5, s9
	add s9, s0, s4
	slliw s4, s3, 30
	andi s5, s9, -32
	lw s9, 0(a6)
	subw s8, s0, s5
	addw s7, s6, s8
	slli s8, s3, 1
	addw s5, s7, s9
	srli s10, s8, 34
	add s6, s3, s10
	sraiw s9, s6, 30
	slli s7, s9, 30
	subw s8, s3, s7
	addw s6, s4, s8
	bge s2, a0, label484
	addi a6, a6, 4
	mv s3, s0
	mv s4, s1
	mv s0, s5
	mv s1, a7
	mv a7, s6
	blt s2, a1, label461
	addw s6, s3, s6
	slti s7, s2, 60
	mv s9, zero
	subw s8, s6, s1
	bne s7, zero, label848
	mv s9, s8
	slti s6, s2, 40
	mv s5, s8
	bne s6, zero, label850
	lui s10, 586172
	lui s11, 828972
	lui s9, 454047
	addiw s8, s11, 262
	addiw s7, s9, -1151
	j label880
.p2align 2
label848:
	slti s6, s2, 40
	mv s5, s8
	bne s6, zero, label850
	mv s5, s9
.p2align 2
label850:
	lui s10, 586172
	addiw s8, s10, -804
	beq s7, zero, label851
.p2align 2
label852:
	lui s9, 454047
	addiw s7, s9, -1151
	bne s6, zero, label42
.p2align 2
label880:
	mv s7, s8
	j label42
.p2align 2
label484:
	addiw t6, t6, 64
	addw t1, t1, s5
	addw t2, t2, s0
	addw t3, t3, s6
	addw t4, t4, a7
	addw t5, t5, s1
	ble t0, t6, label47
	addi a5, a5, 256
	addi a6, sp, 112
	mv a7, zero
	j label24
label51:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	addi a1, sp, 432
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s10, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s9, 96(sp)
	addi sp, sp, 456
	ret
.p2align 2
label851:
	lui s11, 828972
	addiw s8, s11, 262
	j label852
