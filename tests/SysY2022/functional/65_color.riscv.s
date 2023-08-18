.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
dp:
	.zero	52907904
.text
.p2align 2
dfs:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s1, 8(sp)
	mv s1, a0
	sd s6, 16(sp)
	mv s6, a3
	sd s2, 24(sp)
	mv s2, a1
	sd s3, 32(sp)
pcrel209:
	auipc a1, %pcrel_hi(dp)
	mv s3, a2
	addi a0, a1, %pcrel_lo(pcrel209)
	sd s5, 40(sp)
	mv s5, a4
	sd s0, 48(sp)
	lui a4, 718
	sd s4, 56(sp)
	addiw a3, a4, -1600
	mv s4, a5
	lui a4, 40
	mul a2, s1, a3
	sd s7, 64(sp)
	li a5, 567
	addiw a3, a4, -544
	add a1, a0, a2
	slli a4, a5, 4
	mul a2, s2, a3
	slli a3, s6, 6
	add a0, a1, a2
	mul a2, s3, a4
	sub a4, a3, s6
	add a1, a0, a2
	slli a0, s5, 3
	sh3add a2, a4, a1
	sub a3, a0, s5
	sh2add s7, a3, a2
	li a2, -1
	sh2add a1, s4, s7
	lw a0, 0(a1)
	bne a0, a2, label2
	addw a3, s1, s2
	addw a2, s3, a3
	addw a0, s6, a2
	addw a1, s5, a0
	bne a1, zero, label5
	li a0, 1
label2:
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s5, 40(sp)
	ld s0, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label5:
	bne s1, zero, label20
	mv s0, zero
	j label6
label20:
	addiw a0, s1, -1
	mv a1, s2
	li a5, 1
	mv a2, s3
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a3, s4, 2
	lui t0, 281475
	sltiu a2, a3, 1
	addiw a5, t0, -103
	subw a4, s1, a2
	lui t0, 244141
	mulw a1, a0, a4
	mul a2, a1, a5
	addiw a5, t0, -1529
	srli a4, a2, 63
	srai a3, a2, 60
	add a0, a4, a3
	mulw a2, a0, a5
	subw s0, a1, a2
label6:
	beq s2, zero, label8
	addiw a0, s1, 1
	addiw a1, s2, -1
	mv a2, s3
	li a5, 2
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s4, 3
	lui a5, 281475
	sltiu a2, a1, 1
	subw a4, s2, a2
	mulw a3, a0, a4
	addiw a0, a5, -103
	addw a1, s0, a3
	lui a5, 244141
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	addiw a2, a5, -1529
	add a0, a4, a3
	mulw a3, a0, a2
	subw s0, a1, a3
label8:
	beq s3, zero, label10
	addiw a1, s2, 1
	addiw a2, s3, -1
	mv a0, s1
	li a5, 3
	mv a3, s6
	mv a4, s5
	jal dfs
	lui t0, 244141
	lui a5, 281475
	xori a1, s4, 4
	sltiu a3, a1, 1
	subw a2, s3, a3
	mulw a4, a0, a2
	addiw a0, a5, -103
	addw a1, s0, a4
	addiw a5, t0, -1529
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	add a0, a4, a3
	mulw a2, a0, a5
	subw s0, a1, a2
label10:
	bne s6, zero, label12
label13:
	beq s5, zero, label16
	addiw a3, s6, 1
	addiw a4, s5, -1
	mv a0, s1
	li a5, 5
	mv a1, s2
	mv a2, s3
	jal dfs
	lui t0, 244141
	lui a4, 281475
	mulw a2, s5, a0
	addiw a0, a4, -103
	addw a1, s0, a2
	addiw a4, t0, -1529
	mul a2, a1, a0
	srli a5, a2, 63
	srai a3, a2, 60
	add a0, a5, a3
	mulw a2, a0, a4
	subw s0, a1, a2
label16:
	sh2add a1, s4, s7
	lui a4, 281475
	lui t0, 244141
	addiw a2, a4, -103
	addiw a5, t0, -1529
	mul a0, s0, a2
	srli a4, a0, 63
	srai a3, a0, 60
	add a2, a4, a3
	mulw a3, a2, a5
	subw a0, s0, a3
	sw a0, 0(a1)
	j label2
label12:
	addiw a2, s3, 1
	addiw a3, s6, -1
	mv a0, s1
	li a5, 4
	mv a1, s2
	mv a4, s5
	jal dfs
	xori a1, s4, 5
	lui a5, 281475
	sltiu a2, a1, 1
	subw a4, s6, a2
	mulw a3, a0, a4
	addiw a0, a5, -103
	addw a1, s0, a3
	lui a5, 244141
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	addiw a2, a5, -1529
	add a0, a4, a3
	mulw a3, a0, a2
	subw s0, a1, a3
	j label13
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[80] RegSpill[0] CalleeSaved[32]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 32
	sd s0, 16(sp)
	sd s2, 24(sp)
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
	jal getint
pcrel737:
	auipc a1, %pcrel_hi(dp)
	mv t6, zero
	mv s0, a0
	mv t5, zero
	mv t2, zero
	mv t3, zero
	li t0, -1
	li a2, 18
	addi a3, a1, %pcrel_lo(pcrel737)
	li a0, 567
	lui a1, 40
	slli a5, a0, 4
	addiw a4, a1, -544
	li a0, -1
	lui a1, 718
	slli t1, a0, 32
	addiw t4, a1, -1600
	j label211
.p2align 2
label389:
	addiw t2, t2, 1
	bge t2, a2, label730
	mv t6, zero
	mv t3, zero
.p2align 2
label211:
	mul a1, t2, a4
	mul a7, t3, a5
	add a0, a3, a1
	slli a1, t6, 6
	add a6, a0, a7
	sub a7, a1, t6
	addiw t6, t6, 1
	add.uw a1, t0, t1
	sh3add a0, a7, a6
	sd a1, 0(a0)
	sd a1, 8(a0)
	sd a1, 16(a0)
	sd a1, 24(a0)
	sd a1, 32(a0)
	sd a1, 40(a0)
	sd a1, 48(a0)
	sd a1, 56(a0)
	sd a1, 64(a0)
	sd a1, 72(a0)
	sd a1, 80(a0)
	sd a1, 88(a0)
	sd a1, 96(a0)
	sd a1, 104(a0)
	sd a1, 112(a0)
	sd a1, 120(a0)
	sd a1, 128(a0)
	sd a1, 136(a0)
	sd a1, 144(a0)
	sd a1, 152(a0)
	sd a1, 160(a0)
	sd a1, 168(a0)
	sd a1, 176(a0)
	sd a1, 184(a0)
	sd a1, 192(a0)
	sd a1, 200(a0)
	sd a1, 208(a0)
	sd a1, 216(a0)
	sd a1, 224(a0)
	sd a1, 232(a0)
	sd a1, 240(a0)
	sd a1, 248(a0)
	sd a1, 256(a0)
	sd a1, 264(a0)
	sd a1, 272(a0)
	sd a1, 280(a0)
	sd a1, 288(a0)
	sd a1, 296(a0)
	sd a1, 304(a0)
	sd a1, 312(a0)
	sd a1, 320(a0)
	sd a1, 328(a0)
	sd a1, 336(a0)
	sd a1, 344(a0)
	sd a1, 352(a0)
	sd a1, 360(a0)
	sd a1, 368(a0)
	sd a1, 376(a0)
	sd a1, 384(a0)
	sd a1, 392(a0)
	sd a1, 400(a0)
	sd a1, 408(a0)
	sd a1, 416(a0)
	sd a1, 424(a0)
	sd a1, 432(a0)
	sd a1, 440(a0)
	sd a1, 448(a0)
	sd a1, 456(a0)
	sd a1, 464(a0)
	sd a1, 472(a0)
	sd a1, 480(a0)
	sd a1, 488(a0)
	sd a1, 496(a0)
	blt t6, a2, label211
	addiw t3, t3, 1
	bge t3, a2, label389
	mv t6, zero
	j label211
.p2align 2
label730:
	addiw t5, t5, 1
	bge t5, a2, label221
	add a3, a3, t4
	mv t6, zero
	mv t2, zero
	mv t3, zero
	j label211
label221:
	ble s0, zero, label224
	mv s2, zero
.p2align 2
label222:
	jal getint
	addiw s2, s2, 1
	sh2add a1, a0, s1
	lw a3, 0(a1)
	addi a2, a3, 1
	sw a2, 0(a1)
	bgt s0, s2, label222
label224:
	lw a0, 36(sp)
	ld a4, 40(sp)
	ld a5, 48(sp)
	srai a2, a4, 32
	sext.w a1, a4
	sext.w a3, a5
	srai a4, a5, 32
	mv a5, zero
	jal dfs
	mv s0, a0
	jal putint
	mv a0, s0
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 112
	ret
