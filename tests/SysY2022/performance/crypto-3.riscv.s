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
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	lui a3, 31
	lui a2, 32
pcrel680:
	auipc a0, %pcrel_hi(buffer)
	li t0, 125
	sd zero, 424(sp)
	addiw a1, a3, 1028
	addi a4, a0, %pcrel_lo(pcrel680)
	lui a3, 66
	sd zero, 432(sp)
	addiw a0, a2, -1
	add a5, a4, a1
	slli a2, t0, 8
	sw zero, 440(sp)
	addiw a1, a3, 33
	li a3, 20
	ble s1, zero, label51
	mv t1, s0
	mv t0, s1
	j label2
.p2align 2
label47:
	lw t2, 424(sp)
	addiw t0, t0, -1
	addw s0, t4, t2
	subw t3, zero, s0
	sw t3, 424(sp)
	lw t2, 428(sp)
	addw t3, t5, t2
	subw t4, zero, t3
	sw t4, 428(sp)
	lw t2, 432(sp)
	addw t3, t6, t2
	subw t4, zero, t3
	sw t4, 432(sp)
	lw t2, 436(sp)
	addw t3, a6, t2
	subw t4, zero, t3
	sw t4, 436(sp)
	lw t5, 440(sp)
	addw t3, a7, t5
	subw t2, zero, t3
	sw t2, 440(sp)
	ble t0, zero, label51
.p2align 2
label2:
	mv t2, a4
	mv t3, zero
	slliw t4, t1, 13
	addw t5, t4, t1
	mv t6, t5
	bge t5, zero, label589
	addw t6, t5, a0
label589:
	sraiw a7, t6, 17
	addw t4, t5, a7
	mulw t1, t4, a1
	mv a6, t1
	bge t1, zero, label591
	addw a6, t1, a0
label591:
	sraiw a7, a6, 17
	addw t5, t1, a7
	mulw t6, t5, a1
	mv a7, t6
	bge t6, zero, label593
	addw a7, t6, a0
label593:
	sraiw s0, a7, 17
	addw a6, t6, s0
	mulw t1, a6, a1
	mv a7, t1
	bge t1, zero, label595
	addw a7, t1, a0
label595:
	sraiw s0, a7, 17
	addw t6, t1, s0
	slli s1, t6, 5
	addw a7, s1, t6
	mv s0, a7
	mv t1, a7
	bge a7, zero, label597
.p2align 2
label596:
	addiw s0, s0, 255
.p2align 2
label597:
	andi s1, s0, -256
	slli s2, a6, 5
	subw t6, a7, s1
	addw a7, s2, a6
	mv s0, a7
	bge a7, zero, label599
	addiw s0, a7, 255
label599:
	andi s2, s0, -256
	slli s1, t5, 5
	subw a6, a7, s2
	addw a7, s1, t5
	mv s0, a7
	bge a7, zero, label601
	addiw s0, a7, 255
label601:
	andi s2, s0, -256
	slli s1, t4, 5
	subw t5, a7, s2
	addw a7, s1, t4
	mv s0, a7
	bge a7, zero, label603
	addiw s0, a7, 255
label603:
	andi s1, s0, -256
	slli s2, t5, 32
	addiw t3, t3, 4
	subw t4, a7, s1
	slli t5, t6, 32
	add.uw a7, t4, s2
	add.uw t4, a6, t5
	sd a7, 0(t2)
	sd t4, 8(t2)
	bge t3, a2, label95
	addi t2, t2, 16
	slliw t4, t1, 13
	addw t5, t4, t1
	mv t6, t5
	bge t5, zero, label589
	addw t6, t5, a0
	sraiw a7, t6, 17
	addw t4, t5, a7
	mulw t1, t4, a1
	mv a6, t1
	bge t1, zero, label591
	addw a6, t1, a0
	sraiw a7, a6, 17
	addw t5, t1, a7
	mulw t6, t5, a1
	mv a7, t6
	bge t6, zero, label593
	addw a7, t6, a0
	sraiw s0, a7, 17
	addw a6, t6, s0
	mulw t1, a6, a1
	mv a7, t1
	bge t1, zero, label595
	addw a7, t1, a0
	sraiw s0, a7, 17
	addw t6, t1, s0
	slli s1, t6, 5
	addw a7, s1, t6
	mv s0, a7
	mv t1, a7
	bge a7, zero, label597
	j label596
.p2align 2
label95:
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
	addi s1, sp, 104
	mv s2, zero
	j label24
.p2align 2
label342:
	addiw s0, s0, 64
	addw t4, t4, s7
	addw t5, t5, s3
	addw t6, t6, s9
	addw a6, a6, s2
	addw a7, a7, s4
	ble t3, s0, label47
.p2align 2
label48:
	addi t2, t2, 256
	addi s1, sp, 104
	mv s2, zero
.p2align 2
label24:
	slliw s5, s2, 2
	addiw s2, s2, 4
	sh2add s3, s5, t2
	ld s4, 0(s3)
	srai s8, s4, 32
	sext.w s6, s4
	slli s7, s8, 16
	slli s9, s6, 24
	ld s4, 8(s3)
	addw s5, s7, s9
	srai s10, s4, 32
	sext.w s8, s4
	slli s9, s8, 8
	addw s6, s5, s9
	addw s7, s6, s10
	sw s7, 0(s1)
	ld s4, 16(s3)
	srai s8, s4, 32
	slliw s5, s4, 24
	slli s7, s8, 16
	ld s4, 24(s3)
	addw s6, s5, s7
	slliw s9, s4, 8
	srai s7, s4, 32
	addw s5, s6, s9
	addw s8, s5, s7
	sw s8, 4(s1)
	ld s4, 32(s3)
	srai s7, s4, 32
	sext.w s5, s4
	slli s9, s7, 16
	slli s6, s5, 24
	ld s4, 40(s3)
	addw s5, s6, s9
	srai s7, s4, 32
	sext.w s8, s4
	slli s9, s8, 8
	addw s6, s5, s9
	addw s8, s6, s7
	sw s8, 8(s1)
	ld s4, 48(s3)
	srai s7, s4, 32
	sext.w s5, s4
	slli s9, s7, 16
	slli s6, s5, 24
	ld s4, 56(s3)
	addw s5, s6, s9
	srai s7, s4, 32
	sext.w s8, s4
	slli s9, s8, 8
	addw s3, s5, s9
	addw s6, s3, s7
	li s3, 16
	sw s6, 12(s1)
	bge s2, s3, label254
	addi s1, s1, 16
	j label24
.p2align 2
label254:
	addi s1, sp, 104
	li s2, 16
	addi s1, s1, 64
	lw s4, -12(s1)
	lw s6, -32(s1)
	lw s3, -56(s1)
	addw s5, s4, s6
	lw s7, -64(s1)
	addw s8, s5, s7
	subw s4, s3, s8
	mv s6, s4
	bge s4, zero, label609
.p2align 2
label653:
	addiw s6, s6, 1
.p2align 2
label609:
	andi s7, s6, -2
	subw s8, s4, s7
	sh1add s5, s4, s8
	sw s5, 0(s1)
	lw s7, -8(s1)
	lw s8, -28(s1)
	addw s9, s7, s8
	lw s6, -52(s1)
	lw s10, -60(s1)
	addw s4, s5, s6
	addw s11, s9, s10
	subw s5, s6, s11
	mv s7, s5
	bge s5, zero, label611
	addiw s7, s5, 1
label611:
	andi s8, s7, -2
	subw s6, s5, s8
	sh1add s9, s5, s6
	sw s9, 4(s1)
	lw s7, -4(s1)
	lw s8, -24(s1)
	addw s5, s3, s7
	lw s7, -48(s1)
	addw s6, s5, s8
	subw s3, s7, s6
	mv s5, s3
	bge s3, zero, label613
	addiw s5, s3, 1
label613:
	andi s6, s5, -2
	subw s7, s3, s6
	sh1add s8, s3, s7
	sw s8, 8(s1)
	lw s9, -20(s1)
	lw s6, -44(s1)
	addw s5, s4, s9
	subw s3, s6, s5
	mv s4, s3
	bge s3, zero, label615
	addiw s4, s3, 1
label615:
	andi s5, s4, -2
	addiw s2, s2, 4
	subw s7, s3, s5
	sh1add s6, s3, s7
	li s3, 80
	sw s6, 12(s1)
	bge s2, s3, label32
	addi s1, s1, 16
	lw s4, -12(s1)
	lw s6, -32(s1)
	lw s3, -56(s1)
	addw s5, s4, s6
	lw s7, -64(s1)
	addw s8, s5, s7
	subw s4, s3, s8
	mv s6, s4
	bge s4, zero, label609
	j label653
.p2align 2
label32:
	addi s1, sp, 104
	mv s5, zero
	mv s3, t4
	mv s6, t5
	mv s2, t6
	mv s4, a6
	mv s8, a7
	blt zero, a3, label319
	addw s9, t5, t6
	li s10, 1
	mv s11, zero
	subw s7, s9, a6
	bne s10, zero, label618
	mv s11, s7
	li s9, 1
	bne s9, zero, label620
	lui s10, 828972
	addiw s11, s10, 262
	mv s10, s11
	slliw s9, t4, 5
	addw s11, a7, s9
	addw s8, s10, s11
	addw s9, s7, s8
	mv s8, t4
	bge t4, zero, label629
	j label668
.p2align 2
label650:
	addw s9, s6, s2
	slti s10, s5, 60
	mv s11, zero
	subw s7, s9, s4
	bne s10, zero, label618
	mv s11, s7
	slti s9, s5, 40
	bne s9, zero, label620
	lui s10, 828972
	addiw s11, s10, 262
	mv s10, s11
	slliw s9, s3, 5
	addw s11, s8, s9
	addw s8, s10, s11
	addw s9, s7, s8
	mv s8, s3
	bge s3, zero, label629
.p2align 2
label668:
	addiw s8, s8, 31
.p2align 2
label629:
	andi s7, s8, -32
	lw s11, 0(s1)
	subw s8, s3, s7
	addw s10, s9, s8
	mv s9, s6
	slliw s8, s6, 30
	addw s7, s10, s11
	lui s11, 262144
	addiw s10, s11, -1
	bge s6, zero, label632
	addw s9, s6, s10
label632:
	sraiw s11, s9, 30
	addiw s5, s5, 1
	slli s10, s11, 30
	subw s11, s6, s10
	li s6, 80
	addw s9, s8, s11
	bge s5, s6, label342
.p2align 2
label45:
	addi s1, s1, 4
	mv s6, s3
	mv s8, s4
	mv s3, s7
	mv s4, s2
	mv s2, s9
	bge s5, a3, label650
.p2align 2
label319:
	lui s9, 370728
	mv s7, zero
	addiw s10, s9, -1639
	slliw s9, s3, 5
	addw s11, s8, s9
	addw s8, s10, s11
	mv s9, s8
	mv s8, s3
	bge s3, zero, label629
	addiw s8, s3, 31
	lw s11, 0(s1)
	andi s7, s8, -32
	subw s8, s3, s7
	addw s10, s9, s8
	mv s9, s6
	slliw s8, s6, 30
	addw s7, s10, s11
	lui s11, 262144
	addiw s10, s11, -1
	bge s6, zero, label632
	addw s9, s6, s10
	addiw s5, s5, 1
	sraiw s11, s9, 30
	slli s10, s11, 30
	subw s11, s6, s10
	li s6, 80
	addw s9, s8, s11
	blt s5, s6, label45
	addiw s0, s0, 64
	addw t4, t4, s7
	addw t5, t5, s3
	addw t6, t6, s9
	addw a6, a6, s2
	addw a7, a7, s4
	bgt t3, s0, label48
	j label47
.p2align 2
label618:
	slti s9, s5, 40
	bne s9, zero, label620
	mv s7, s11
label620:
	lui s11, 586172
	addiw s11, s11, -804
	bne s10, zero, label622
	lui s10, 828972
	addiw s11, s10, 262
.p2align 2
label622:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label42
	mv s10, s11
label42:
	slliw s9, s3, 5
	addw s11, s8, s9
	addw s8, s10, s11
	addw s9, s7, s8
	mv s8, s3
	bge s3, zero, label629
	j label668
label51:
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
	ld s8, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 448
	ret
