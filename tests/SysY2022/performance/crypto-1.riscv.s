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
	sd s4, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	sd zero, 424(sp)
	li t0, 125
pcrel667:
	auipc a0, %pcrel_hi(buffer)
	lui a3, 31
	lui a2, 66
	addi a4, a0, %pcrel_lo(pcrel667)
	addiw a1, a3, 1028
	addiw a0, a2, 33
	sd zero, 432(sp)
	li a3, 20
	add a5, a4, a1
	li a2, 80
	sw zero, 440(sp)
	slli a1, t0, 8
	ble s1, zero, label2
	mv t1, s0
	mv t0, s1
	mv t2, a4
	mv t3, zero
	j label6
.p2align 2
label49:
	lw s0, 424(sp)
	addiw t0, t0, -1
	addw t2, t4, s0
	subw t3, zero, t2
	sw t3, 424(sp)
	lw s0, 428(sp)
	addw t2, t5, s0
	subw t4, zero, t2
	sw t4, 428(sp)
	lw t3, 432(sp)
	addw t2, a6, t3
	subw t4, zero, t2
	sw t4, 432(sp)
	lw t3, 436(sp)
	addw t2, t6, t3
	subw t4, zero, t2
	sw t4, 436(sp)
	lw t5, 440(sp)
	addw t2, a7, t5
	subw t3, zero, t2
	sw t3, 440(sp)
	ble t0, zero, label2
	mv t2, a4
	mv t3, zero
.p2align 2
label6:
	slliw t4, t1, 13
	addiw t3, t3, 4
	addw t5, t4, t1
	slli a6, t5, 1
	srli a7, a6, 47
	add t6, t5, a7
	sraiw a6, t6, 17
	addw t4, t5, a6
	mulw t1, t4, a0
	slli t6, t1, 1
	srli a7, t6, 47
	add s0, t1, a7
	sraiw a6, s0, 17
	addw t5, t1, a6
	mulw t6, t5, a0
	slli a6, t6, 1
	srli t1, a6, 47
	add a7, t6, t1
	sraiw s0, a7, 17
	addw a6, t6, s0
	mulw t1, a6, a0
	slli s1, t1, 1
	srli t6, s1, 47
	add a7, t1, t6
	sraiw s0, a7, 17
	addw t6, t1, s0
	slli s2, t6, 5
	addw a7, s2, t6
	slli s1, a7, 1
	mv t1, a7
	srli t6, s1, 56
	slli s1, a6, 5
	add s0, a7, t6
	andi s2, s0, -256
	subw t6, a7, s2
	addw a7, s1, a6
	slli s0, a7, 1
	srli a6, s0, 56
	slli s0, t5, 5
	add s2, a7, a6
	andi s1, s2, -256
	subw a6, a7, s1
	addw a7, s0, t5
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
	bge t3, a1, label95
	addi t2, t2, 16
	j label6
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
	beq t4, a6, label16
.p2align 2
label51:
	addi t4, t2, 4
	mv t3, t5
	mv t6, t2
	mv t2, t4
	andi t4, t5, 63
	addiw t5, t5, 1
	li a6, 60
	sw zero, 0(t6)
	bne t4, a6, label51
.p2align 2
label16:
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
	sw t4, 8(t2)
	addiw t4, t6, 769
	sw zero, 12(t2)
	xori t6, t5, -1
	xori a6, t4, -1
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
	j label25
.p2align 2
label352:
	addiw s0, s0, 64
	addw t4, t4, s8
	addw t5, t5, s3
	addw a6, a6, s9
	addw t6, t6, s2
	addw a7, a7, s4
	ble t3, s0, label49
	addi t2, t2, 256
	addi s1, sp, 104
	mv s2, zero
.p2align 2
label25:
	slliw s4, s2, 2
	sh2add s3, s4, t2
	lw s5, 0(s3)
	slli s8, s5, 24
	lw s7, 4(s3)
	lw s9, 8(s3)
	slli s6, s7, 16
	slli s7, s9, 8
	addw s4, s6, s8
	lw s8, 12(s3)
	addw s5, s4, s7
	addiw s7, s2, 1
	addw s6, s5, s8
	slliw s5, s7, 2
	sh2add s3, s5, t2
	sw s6, 0(s1)
	lw s4, 0(s3)
	slli s9, s4, 24
	lw s7, 4(s3)
	lw s8, 8(s3)
	slli s6, s7, 16
	slli s7, s8, 8
	addw s5, s6, s9
	lw s6, 12(s3)
	addw s4, s5, s7
	addiw s7, s2, 2
	addw s8, s4, s6
	slliw s5, s7, 2
	sh2add s3, s5, t2
	sw s8, 4(s1)
	lw s4, 0(s3)
	slli s8, s4, 24
	lw s7, 4(s3)
	lw s9, 8(s3)
	slli s6, s7, 16
	slli s7, s9, 8
	addw s5, s6, s8
	lw s6, 12(s3)
	addw s4, s5, s7
	addiw s5, s2, 3
	addw s8, s4, s6
	addiw s2, s2, 4
	slliw s6, s5, 2
	sh2add s3, s6, t2
	sw s8, 8(s1)
	lw s4, 0(s3)
	slli s8, s4, 24
	lw s7, 4(s3)
	slli s6, s7, 16
	lw s7, 8(s3)
	addw s5, s6, s8
	slli s9, s7, 8
	lw s8, 12(s3)
	addw s4, s5, s9
	li s3, 16
	addw s6, s4, s8
	sw s6, 12(s1)
	bge s2, s3, label263
	addi s1, s1, 16
	j label25
.p2align 2
label263:
	addi s1, sp, 104
	li s2, 16
	addi s1, s1, 64
.p2align 2
label30:
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
	srliw s7, s5, 31
	add s8, s5, s7
	andi s6, s8, -2
	subw s9, s5, s6
	sh1add s10, s5, s9
	sw s10, 4(s1)
	lw s7, -4(s1)
	lw s9, -24(s1)
	addw s5, s3, s7
	lw s8, -48(s1)
	addw s6, s5, s9
	subw s3, s8, s6
	srliw s7, s3, 31
	add s9, s3, s7
	andi s6, s9, -2
	subw s5, s3, s6
	sh1add s7, s3, s5
	sw s7, 8(s1)
	lw s6, -20(s1)
	lw s7, -44(s1)
	addw s5, s4, s6
	subw s3, s7, s5
	srliw s4, s3, 31
	add s6, s3, s4
	andi s5, s6, -2
	subw s7, s3, s5
	sh1add s4, s3, s7
	sw s4, 12(s1)
	bge s2, a2, label323
	addi s1, s1, 16
	j label30
.p2align 2
label323:
	addi s1, sp, 104
	mv s5, zero
	mv s3, t4
	mv s6, t5
	mv s2, a6
	mv s4, t6
	mv s7, a7
	blt zero, a3, label329
	addw s9, t5, a6
	li s10, 1
	mv s11, zero
	subw s8, s9, t6
	bne s10, zero, label619
	mv s11, s8
	li s9, 1
	bne s9, zero, label621
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label656
.p2align 2
label329:
	lui s9, 370728
	mv s8, zero
	addiw s10, s9, -1639
.p2align 2
label44:
	slliw s9, s3, 5
	addiw s5, s5, 1
	addw s11, s7, s9
	addw s7, s10, s11
	slli s11, s3, 1
	addw s9, s8, s7
	srli s10, s11, 59
	lw s11, 0(s1)
	add s8, s3, s10
	andi s7, s8, -32
	subw s8, s3, s7
	slliw s7, s6, 30
	addw s10, s9, s8
	addw s8, s10, s11
	slli s11, s6, 1
	srli s10, s11, 34
	add s9, s6, s10
	sraiw s11, s9, 30
	slli s9, s11, 30
	subw s10, s6, s9
	addw s9, s7, s10
	bge s5, a2, label352
	addi s1, s1, 4
	mv s6, s3
	mv s7, s4
	mv s3, s8
	mv s4, s2
	mv s2, s9
	blt s5, a3, label329
	addw s9, s6, s9
	slti s10, s5, 60
	mv s11, zero
	subw s8, s9, s4
	bne s10, zero, label619
	mv s11, s8
	slti s9, s5, 40
	bne s9, zero, label621
	lui s10, 828972
	addiw s11, s10, 262
	lui s10, 454047
	addiw s10, s10, -1151
	j label656
.p2align 2
label619:
	slti s9, s5, 40
	bne s9, zero, label621
	mv s8, s11
.p2align 2
label621:
	lui s11, 586172
	addiw s11, s11, -804
	beq s10, zero, label622
.p2align 2
label623:
	lui s10, 454047
	addiw s10, s10, -1151
	bne s9, zero, label44
.p2align 2
label656:
	mv s10, s11
	j label44
label2:
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
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 448
	ret
.p2align 2
label622:
	lui s10, 828972
	addiw s11, s10, 262
	j label623
