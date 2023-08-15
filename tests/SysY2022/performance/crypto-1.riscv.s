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
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s2, a0
	jal getint
	mv s3, a0
	li a0, 161
	jal _sysy_starttime
	lui a5, 31
	li a1, 20
pcrel736:
	auipc a0, %pcrel_hi(buffer)
	addiw a4, a5, 1028
	sd zero, 424(sp)
	addi a2, a0, %pcrel_lo(pcrel736)
	sd zero, 432(sp)
	li a0, 80
	add a3, a2, a4
	sw zero, 440(sp)
	ble s3, zero, label51
	mv a5, s2
	mv a4, s3
	j label2
.p2align 2
label48:
	lw a6, 424(sp)
	addiw a4, a4, -1
	addw t1, t2, a6
	subw t0, zero, t1
	sw t0, 424(sp)
	lw a7, 428(sp)
	addw a6, t3, a7
	subw t2, zero, a6
	sw t2, 428(sp)
	lw t1, 432(sp)
	addw t0, t4, t1
	subw t2, zero, t0
	sw t2, 432(sp)
	lw t1, 436(sp)
	addw t0, t5, t1
	subw t2, zero, t0
	sw t2, 436(sp)
	lw t3, 440(sp)
	addw t0, t6, t3
	subw t1, zero, t0
	sw t1, 440(sp)
	ble a4, zero, label51
.p2align 2
label2:
	mv t0, a2
	mv t1, zero
.p2align 2
label5:
	slliw t2, a5, 13
	addiw t1, t1, 8
	addw t3, t2, a5
	slli t6, t3, 1
	srli t5, t6, 47
	add a5, t3, t5
	lui t5, 66
	sraiw t4, a5, 17
	addiw a5, t5, 33
	addw t2, t3, t4
	mulw t4, t2, a5
	slli t3, t4, 1
	srli t5, t3, 47
	add a6, t4, t5
	sraiw t6, a6, 17
	addw t3, t4, t6
	mulw t5, t3, a5
	slli a6, t5, 1
	srli t6, a6, 47
	add a7, t5, t6
	sraiw s2, a7, 17
	addw t4, t5, s2
	mulw a6, t4, a5
	slli t6, a6, 1
	srli t5, t6, 47
	add a7, a6, t5
	sraiw s2, a7, 17
	addw t6, a6, s2
	mulw t5, t6, a5
	slli a7, t5, 1
	srli a6, a7, 47
	add s2, t5, a6
	sraiw s3, s2, 17
	addw a7, t5, s3
	mulw a6, a7, a5
	slli s2, a6, 1
	srli s3, s2, 47
	add t5, a6, s3
	sraiw s5, t5, 17
	addw s2, a6, s5
	slli s7, s2, 5
	mulw t5, s2, a5
	slli s4, t5, 1
	srli a6, s4, 47
	add s3, t5, a6
	sraiw s6, s3, 17
	addw a6, t5, s6
	mulw s4, a6, a5
	slli s5, s4, 1
	srli t5, s5, 47
	add s3, s4, t5
	sraiw a5, s3, 17
	addw t5, s4, a5
	slli s5, t5, 5
	addw s3, s5, t5
	slli t5, s3, 1
	mv a5, s3
	srli s6, t5, 56
	add s5, s3, s6
	slli s6, a6, 5
	andi s4, s5, -256
	addw s5, s6, a6
	subw t5, s3, s4
	slli s4, s5, 1
	srli a6, s4, 56
	addw s4, s7, s2
	add s3, s5, a6
	andi s6, s3, -256
	subw a6, s5, s6
	slli s5, s4, 1
	srli s3, s5, 56
	slli s5, a7, 5
	add s7, s4, s3
	addw s3, s5, a7
	andi s6, s7, -256
	subw s2, s4, s6
	slli s6, s3, 1
	srli a7, s6, 56
	slli s6, t6, 5
	add s4, s3, a7
	andi s5, s4, -256
	addw s4, s6, t6
	subw a7, s3, s5
	slli s3, s4, 1
	srli t6, s3, 56
	slli s3, t4, 5
	add s5, s4, t6
	andi s6, s5, -256
	addw s5, s3, t4
	subw t6, s4, s6
	slli s6, s5, 1
	srli t4, s6, 56
	slli s6, t3, 5
	add s3, s5, t4
	andi s4, s3, -256
	addw s3, s6, t3
	subw t4, s5, s4
	slli s5, t2, 5
	slli s4, s3, 1
	srli t3, s4, 56
	addw s4, s5, t2
	add s7, s3, t3
	andi s6, s7, -256
	subw t3, s3, s6
	slli s3, s4, 1
	srli t2, s3, 56
	slli s3, t3, 32
	add s5, s4, t2
	slli t3, t6, 32
	andi s6, s5, -256
	slli t6, s2, 32
	subw t2, s4, s6
	add.uw s5, t2, s3
	add.uw t2, t4, t3
	sd s5, 0(t0)
	add.uw t4, a7, t6
	sd t2, 8(t0)
	slli t2, t5, 32
	sd t4, 16(t0)
	add.uw t3, a6, t2
	li t4, 125
	sd t3, 24(t0)
	slli t2, t4, 8
	bge t1, t2, label119
	addi t0, t0, 32
	j label5
.p2align 2
label119:
	li t2, 125
	li t3, 128
	mv t4, a3
	li t5, 60
	slli t1, t2, 10
	addi t2, t1, 8
	add t0, a2, t1
	srli t1, t2, 2
	sw t3, 0(t0)
	addiw t3, t1, 1
	add t0, a2, t2
	sw zero, 0(a3)
	andi t2, t1, 63
	beq t2, t5, label15
.p2align 2
label50:
	addi t2, t0, 4
	mv t1, t3
	mv t4, t0
	mv t0, t2
	andi t2, t3, 63
	addiw t3, t3, 1
	li t5, 60
	sw zero, 0(t4)
	bne t2, t5, label50
.p2align 2
label15:
	sw zero, 0(t0)
	li t2, 125
	addiw t1, t1, 4
	mv a6, zero
	lui t4, 422994
	lui t6, 982235
	lui a7, 802094
	addiw t3, t6, -1143
	sw zero, 4(t0)
	addiw t6, a7, 496
	xori t5, t3, -1
	sw t2, 8(t0)
	addiw t2, t4, 769
	sw zero, 12(t0)
	xori t4, t2, -1
	mv t0, a2
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
	mv a7, s0
	mv s2, zero
	j label24
.p2align 2
label27:
	addi a7, a7, 16
.p2align 2
label24:
	slliw s5, s2, 2
	sh2add s3, s5, t0
	lw s4, 0(s3)
	slli s8, s4, 24
	lw s7, 4(s3)
	slli s6, s7, 16
	lw s7, 8(s3)
	addw s5, s6, s8
	slli s9, s7, 8
	addiw s8, s2, 1
	lw s6, 12(s3)
	addw s4, s5, s9
	slliw s5, s8, 2
	addw s7, s4, s6
	sh2add s3, s5, t0
	sw s7, 0(a7)
	lw s4, 0(s3)
	slli s10, s4, 24
	lw s7, 4(s3)
	lw s8, 8(s3)
	slli s6, s7, 16
	slli s9, s8, 8
	addw s5, s6, s10
	lw s7, 12(s3)
	addiw s6, s2, 2
	addw s4, s5, s9
	addw s8, s4, s7
	slliw s4, s6, 2
	sh2add s3, s4, t0
	sw s8, 4(a7)
	lw s5, 0(s3)
	slli s8, s5, 24
	lw s7, 4(s3)
	lw s9, 8(s3)
	slli s6, s7, 16
	slli s7, s9, 8
	addw s4, s6, s8
	lw s8, 12(s3)
	addw s5, s4, s7
	addiw s7, s2, 3
	addw s6, s5, s8
	addiw s2, s2, 4
	slliw s4, s7, 2
	sh2add s3, s4, t0
	sw s6, 8(a7)
	lw s5, 0(s3)
	slli s8, s5, 24
	lw s7, 4(s3)
	slli s6, s7, 16
	lw s7, 8(s3)
	addw s4, s6, s8
	slli s9, s7, 8
	lw s8, 12(s3)
	addw s5, s4, s9
	li s3, 16
	addw s6, s5, s8
	sw s6, 12(a7)
	blt s2, s3, label27
	addi a7, s0, 64
	li s2, 16
.p2align 2
label29:
	lw s4, -12(a7)
	addiw s2, s2, 4
	lw s6, -32(a7)
	lw s3, -56(a7)
	addw s5, s4, s6
	lw s7, -64(a7)
	addw s6, s5, s7
	subw s4, s3, s6
	srliw s8, s4, 31
	add s9, s4, s8
	andi s7, s9, -2
	subw s6, s4, s7
	sh1add s5, s4, s6
	sw s5, 0(a7)
	lw s7, -8(a7)
	lw s8, -28(a7)
	addw s9, s7, s8
	lw s6, -52(a7)
	lw s11, -60(a7)
	addw s4, s5, s6
	addw s10, s9, s11
	subw s5, s6, s10
	srliw s7, s5, 31
	add s8, s5, s7
	andi s9, s8, -2
	subw s6, s5, s9
	sh1add s7, s5, s6
	sw s7, 4(a7)
	lw s8, -4(a7)
	lw s7, -24(a7)
	addw s6, s3, s8
	lw s8, -48(a7)
	addw s5, s6, s7
	subw s3, s8, s5
	srliw s6, s3, 31
	add s7, s3, s6
	andi s5, s7, -2
	subw s8, s3, s5
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
	bge s2, a0, label32
	addi a7, a7, 16
	j label29
.p2align 2
label32:
	mv a7, s0
	mv s5, zero
	mv s3, t2
	mv s6, t3
	mv s2, t4
	mv s4, t5
	mv s7, t6
	blt zero, a1, label352
	addw s9, t3, t4
	li s10, 1
	mv s11, zero
	subw s8, s9, t5
	bne s10, zero, label693
	mv s11, s8
	li s9, 1
	bne s9, zero, label695
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label725
.p2align 2
label352:
	lui s9, 370728
	mv s8, zero
	addiw s10, s9, -1639
.p2align 2
label42:
	slliw s11, s3, 5
	addiw s5, s5, 1
	addw s9, s7, s11
	slli s11, s3, 1
	addw s7, s10, s9
	srli s10, s11, 59
	addw s9, s8, s7
	add s8, s3, s10
	andi s7, s8, -32
	subw s11, s3, s7
	lw s7, 0(a7)
	addw s10, s9, s11
	addw s8, s10, s7
	slli s10, s6, 1
	slliw s7, s6, 30
	srli s9, s10, 34
	add s11, s6, s9
	sraiw s10, s11, 30
	slli s11, s10, 30
	subw s10, s6, s11
	addw s9, s7, s10
	bge s5, a0, label375
	addi a7, a7, 4
	mv s6, s3
	mv s7, s4
	mv s3, s8
	mv s4, s2
	mv s2, s9
	blt s5, a1, label352
	addw s9, s6, s9
	slti s10, s5, 60
	mv s11, zero
	subw s8, s9, s4
	beq s10, zero, label720
.p2align 2
label693:
	slti s9, s5, 40
	bne s9, zero, label695
	mv s8, s11
.p2align 2
label695:
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label697
	lui s10, 828972
	addiw s11, s10, 262
.p2align 2
label697:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label42
.p2align 2
label725:
	mv s10, s11
	j label42
.p2align 2
label720:
	mv s11, s8
	slti s9, s5, 40
	bne s9, zero, label695
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label697
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label725
.p2align 2
label375:
	addiw a6, a6, 64
	addw t2, t2, s8
	addw t3, t3, s3
	addw t4, t4, s9
	addw t5, t5, s2
	addw t6, t6, s4
	ble t1, a6, label48
	addi t0, t0, 256
	mv a7, s0
	mv s2, zero
	j label24
label51:
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
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 448
	ret
