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
	# stack usage: CalleeArg[0] Local[340] RegSpill[0] CalleeSaved[104]
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
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s10, 80(sp)
	sd s9, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	li a2, 20
	mv a4, s3
	li a1, 80
	mv a5, s2
	lui t0, 66
pcrel788:
	auipc a0, %pcrel_hi(buffer)
	sd zero, 424(sp)
	addi a3, a0, %pcrel_lo(pcrel788)
	sd zero, 432(sp)
	addiw a0, t0, 33
	sw zero, 440(sp)
	bgt s3, zero, label6
	j label5
.p2align 2
label51:
	lw t0, 424(sp)
	addiw a4, a4, -1
	addw t1, a6, t0
	subw a7, zero, t1
	sw a7, 424(sp)
	lw a6, 428(sp)
	addw t5, t6, a6
	subw t0, zero, t5
	sw t0, 428(sp)
	lw t1, 432(sp)
	addw t5, t4, t1
	subw t0, zero, t5
	sw t0, 432(sp)
	lw t1, 436(sp)
	addw t5, t3, t1
	subw t4, zero, t5
	sw t4, 436(sp)
	lw t3, 440(sp)
	addw t0, t2, t3
	subw t1, zero, t0
	sw t1, 440(sp)
	ble a4, zero, label5
.p2align 2
label6:
	mv t0, a3
	mv t1, zero
	j label7
.p2align 2
label52:
	addi t0, t0, 32
.p2align 2
label7:
	slliw t3, a5, 13
	addiw t1, t1, 8
	addw a5, t3, a5
	slli t2, a5, 1
	srli t4, t2, 47
	add t3, a5, t4
	sraiw t5, t3, 17
	addw t2, a5, t5
	mulw t4, t2, a0
	slli t3, t4, 1
	srli a5, t3, 47
	add t6, t4, a5
	sraiw t5, t6, 17
	addw t3, t4, t5
	mulw a5, t3, a0
	slli t6, a5, 1
	srli t5, t6, 47
	add a7, a5, t5
	sraiw t6, a7, 17
	addw t4, a5, t6
	mulw a6, t4, a0
	slli t5, a6, 1
	srli a5, t5, 47
	add a7, a6, a5
	sraiw s2, a7, 17
	addw t6, a6, s2
	mulw t5, t6, a0
	slli a5, t5, 1
	srli a6, a5, 47
	add s3, t5, a6
	sraiw s2, s3, 17
	addw a7, t5, s2
	mulw a5, a7, a0
	slli a6, a5, 1
	srli s3, a6, 47
	add t5, a5, s3
	sraiw a6, t5, 17
	addw s2, a5, a6
	mulw t5, s2, a0
	slli a6, t5, 1
	srli a5, a6, 47
	add s4, t5, a5
	sraiw s3, s4, 17
	addw a6, t5, s3
	mulw a5, a6, a0
	slli s5, a5, 1
	srli t5, s5, 47
	add s3, a5, t5
	sraiw s4, s3, 17
	addw t5, a5, s4
	slli s5, t5, 5
	addw s3, s5, t5
	slli s5, a6, 5
	slli t5, s3, 1
	mv a5, s3
	srli s4, t5, 56
	add s6, s3, s4
	addw s4, s5, a6
	andi s7, s6, -256
	slli s6, s4, 1
	subw t5, s3, s7
	srli a6, s6, 56
	slli s6, s2, 5
	add s3, s4, a6
	andi s5, s3, -256
	addw s3, s6, s2
	subw a6, s4, s5
	slli s5, s3, 1
	srli s4, s5, 56
	slli s5, a7, 5
	add s7, s3, s4
	addw s4, s5, a7
	andi s6, s7, -256
	subw s2, s3, s6
	slli s6, s4, 1
	srli a7, s6, 56
	slli s6, t6, 5
	add s3, s4, a7
	andi s5, s3, -256
	addw s3, s6, t6
	subw a7, s4, s5
	slli s6, t4, 5
	slli s7, s3, 1
	srli t6, s7, 56
	slli s7, t3, 5
	add s4, s3, t6
	andi s5, s4, -256
	addw s4, s6, t4
	subw t6, s3, s5
	slli s3, s4, 1
	srli t4, s3, 56
	addw s3, s7, t3
	add s6, s4, t4
	andi s5, s6, -256
	slli s6, s3, 1
	subw t4, s4, s5
	srli t3, s6, 56
	slli s6, t2, 5
	add s4, s3, t3
	andi s5, s4, -256
	addw s4, s6, t2
	subw t3, s3, s5
	slli s5, s4, 1
	srli t2, s5, 56
	slli s5, t3, 32
	add s6, s4, t2
	slli t3, t6, 32
	andi s3, s6, -256
	slli t6, s2, 32
	subw t2, s4, s3
	add.uw s6, t2, s5
	add.uw t2, t4, t3
	sd s6, 0(t0)
	slli t3, t5, 32
	sd t2, 8(t0)
	add.uw t4, a6, t3
	add.uw t2, a7, t6
	li t3, 125
	sd t2, 16(t0)
	slli t2, t3, 8
	sd t4, 24(t0)
	blt t1, t2, label52
	li t2, 128
	slli t1, t3, 10
	addi t3, t1, 4
	add t0, a3, t1
	sw t2, 0(t0)
	srli t2, t3, 2
	add t0, a3, t3
	j label12
.p2align 2
label15:
	addi t0, t0, 4
	mv t2, t1
.p2align 2
label12:
	addiw t1, t2, 1
	li t4, 60
	sw zero, 0(t0)
	andi t3, t1, 63
	bne t3, t4, label15
	sw zero, 4(t0)
	li t1, 125
	lui t4, 802094
	lui t6, 66341
	lui t5, 625582
	addiw t3, t6, 1142
	sw zero, 8(t0)
	xori t6, t3, -1
	sw t1, 12(t0)
	mv t1, a3
	sw zero, 16(t0)
	addiw t0, t2, 5
	sd zero, 104(sp)
	addiw t2, t4, 496
	sd zero, 112(sp)
	addiw t4, t5, -770
	sd zero, 120(sp)
	mv t5, zero
	xori a6, t4, -1
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
	bgt t0, zero, label25
	j label51
.p2align 2
label49:
	addw a6, a6, s8
	addw t6, t6, s3
	addw t4, t4, s9
	addw t3, t3, s2
	addw t2, t2, s4
	addiw t5, t5, 64
	addi t1, t1, 256
	ble t0, t5, label51
.p2align 2
label25:
	mv a7, s0
	mv s3, zero
	mv s4, zero
	j label26
.p2align 2
label30:
	addi a7, a7, 32
.p2align 2
label26:
	sh2add s2, s3, t1
	addiw s4, s4, 8
	addiw s3, s3, 32
	lw s6, 0(s2)
	slli s10, s6, 24
	lw s8, 4(s2)
	lw s9, 8(s2)
	slli s7, s8, 16
	slli s8, s9, 8
	addw s5, s7, s10
	lw s7, 12(s2)
	addw s6, s5, s8
	addw s9, s6, s7
	sw s9, 0(a7)
	lw s8, 16(s2)
	lw s9, 20(s2)
	slli s5, s8, 24
	slli s7, s9, 16
	lw s8, 24(s2)
	addw s6, s5, s7
	slli s9, s8, 8
	lw s7, 28(s2)
	addw s5, s6, s9
	addw s8, s5, s7
	sw s8, 4(a7)
	lw s6, 32(s2)
	lw s9, 36(s2)
	slli s5, s6, 24
	lw s8, 40(s2)
	slli s7, s9, 16
	lw s10, 44(s2)
	slli s9, s8, 8
	addw s6, s5, s7
	addw s5, s6, s9
	addw s7, s5, s10
	sw s7, 8(a7)
	lw s6, 48(s2)
	lw s7, 52(s2)
	slli s5, s6, 24
	lw s8, 56(s2)
	slli s9, s7, 16
	slli s7, s8, 8
	addw s6, s5, s9
	lw s9, 60(s2)
	addw s5, s6, s7
	addw s8, s5, s9
	sw s8, 12(a7)
	lw s6, 64(s2)
	lw s9, 68(s2)
	slli s5, s6, 24
	lw s8, 72(s2)
	slli s7, s9, 16
	slli s9, s8, 8
	addw s6, s5, s7
	lw s7, 76(s2)
	addw s5, s6, s9
	addw s8, s5, s7
	sw s8, 16(a7)
	lw s6, 80(s2)
	lw s7, 84(s2)
	slli s5, s6, 24
	lw s9, 88(s2)
	slli s8, s7, 16
	slli s7, s9, 8
	addw s6, s5, s8
	lw s8, 92(s2)
	addw s5, s6, s7
	addw s9, s5, s8
	sw s9, 20(a7)
	lw s6, 96(s2)
	lw s8, 100(s2)
	slli s5, s6, 24
	lw s9, 104(s2)
	slli s7, s8, 16
	lw s10, 108(s2)
	slli s8, s9, 8
	addw s6, s5, s7
	addw s5, s6, s8
	addw s7, s5, s10
	sw s7, 24(a7)
	lw s9, 112(s2)
	lw s7, 116(s2)
	slli s6, s9, 24
	slli s8, s7, 16
	lw s9, 120(s2)
	addw s5, s6, s8
	lw s10, 124(s2)
	slli s7, s9, 8
	li s2, 16
	addw s6, s5, s7
	addw s8, s6, s10
	sw s8, 28(a7)
	blt s4, s2, label30
	addi a7, s0, 64
	j label32
.p2align 2
label35:
	addi a7, a7, 16
.p2align 2
label32:
	lw s4, -12(a7)
	addiw s2, s2, 4
	lw s6, -32(a7)
	lw s3, -56(a7)
	addw s5, s4, s6
	lw s8, -64(a7)
	addw s6, s5, s8
	subw s4, s3, s6
	srliw s7, s4, 31
	add s9, s4, s7
	andi s6, s9, -2
	subw s8, s4, s6
	sh1add s5, s4, s8
	sw s5, 0(a7)
	lw s7, -8(a7)
	lw s8, -28(a7)
	addw s9, s7, s8
	lw s6, -52(a7)
	lw s10, -60(a7)
	addw s4, s5, s6
	addw s11, s9, s10
	subw s5, s6, s11
	srliw s7, s5, 31
	add s10, s5, s7
	andi s9, s10, -2
	subw s8, s5, s9
	sh1add s6, s5, s8
	sw s6, 4(a7)
	lw s7, -4(a7)
	lw s9, -24(a7)
	addw s5, s3, s7
	lw s8, -48(a7)
	addw s6, s5, s9
	subw s3, s8, s6
	srliw s7, s3, 31
	add s5, s3, s7
	andi s9, s5, -2
	subw s8, s3, s9
	sh1add s6, s3, s8
	sw s6, 8(a7)
	lw s7, -20(a7)
	lw s6, -44(a7)
	addw s5, s4, s7
	subw s3, s6, s5
	srliw s4, s3, 31
	add s7, s3, s4
	andi s6, s7, -2
	subw s5, s3, s6
	sh1add s4, s3, s5
	sw s4, 12(a7)
	blt s2, a1, label35
	mv a7, s0
	mv s5, zero
	mv s3, a6
	mv s6, t6
	mv s2, t4
	mv s4, t3
	mv s7, t2
	blt zero, a2, label409
	addw s9, t6, t4
	li s10, 1
	mv s11, zero
	subw s8, s9, t3
	bne s10, zero, label744
	mv s11, s8
	li s9, 1
	bne s9, zero, label746
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label781
.p2align 2
label409:
	lui s9, 370728
	mv s8, zero
	addiw s10, s9, -1639
.p2align 2
label46:
	slliw s11, s3, 5
	addiw s5, s5, 1
	addw s9, s7, s11
	slli s7, s3, 1
	addw s11, s10, s9
	srli s10, s7, 59
	addw s9, s8, s11
	add s8, s3, s10
	andi s11, s8, -32
	subw s7, s3, s11
	lw s11, 0(a7)
	addw s10, s9, s7
	slliw s7, s6, 30
	addw s8, s10, s11
	slli s11, s6, 1
	srli s10, s11, 34
	add s9, s6, s10
	sraiw s11, s9, 30
	slli s10, s11, 30
	subw s11, s6, s10
	addw s9, s7, s11
	bge s5, a1, label49
	addi a7, a7, 4
	mv s6, s3
	mv s7, s4
	mv s3, s8
	mv s4, s2
	mv s2, s9
	blt s5, a2, label409
	addw s9, s6, s9
	slti s10, s5, 60
	mv s11, zero
	subw s8, s9, s4
	beq s10, zero, label772
.p2align 2
label744:
	slti s9, s5, 40
	bne s9, zero, label746
	mv s8, s11
.p2align 2
label746:
	lui s11, 586172
	addiw s11, s11, -804
	beq s10, zero, label747
.p2align 2
label748:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label46
.p2align 2
label781:
	mv s10, s11
	j label46
.p2align 2
label772:
	mv s11, s8
	slti s9, s5, 40
	bne s9, zero, label746
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label748
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label781
label5:
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
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s10, 80(sp)
	ld s9, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 448
	ret
.p2align 2
label747:
	lui s10, 828972
	addiw s11, s10, 262
	j label748
