.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
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
	addiw a3, a4, -544
	add a1, a0, a2
	li a4, 567
	mul a2, s2, a3
	slli a3, a4, 4
	add a0, a1, a2
	slli a4, s6, 6
	mul a2, s3, a3
	sub a3, a4, s6
	add a1, a0, a2
	slli a0, s5, 3
	sh3add a2, a3, a1
	sub a4, a0, s5
	sh2add s7, a4, a2
	li a2, -1
	sh2add a1, a5, s7
	lw a0, 0(a1)
	bne a0, a2, label19
	addw a3, s1, s2
	addw a2, s3, a3
	addw a0, s6, a2
	addw a1, s5, a0
	bne a1, zero, label3
	li a0, 1
label19:
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
label3:
	bne s1, zero, label18
	mv s0, zero
	j label4
label18:
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
label4:
	beq s2, zero, label6
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
label6:
	beq s3, zero, label8
	addiw a1, s2, 1
	addiw a2, s3, -1
	mv a0, s1
	li a5, 3
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s4, 4
	lui t0, 244141
	sltiu a4, a1, 1
	addiw a5, t0, -1529
	subw a2, s3, a4
	lui a4, 281475
	mulw a3, a0, a2
	addiw a0, a4, -103
	addw a1, s0, a3
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	add a0, a4, a3
	mulw a2, a0, a5
	subw s0, a1, a2
label8:
	bne s6, zero, label10
label11:
	beq s5, zero, label14
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
label14:
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
	j label19
label10:
	addiw a2, s3, 1
	addiw a3, s6, -1
	mv a0, s1
	li a5, 4
	mv a1, s2
	mv a4, s5
	jal dfs
	xori a1, s4, 5
	lui t0, 244141
	sltiu a4, a1, 1
	addiw a5, t0, -1529
	subw a3, s6, a4
	lui a4, 281475
	mulw a2, a0, a3
	addiw a0, a4, -103
	addw a1, s0, a2
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	add a0, a4, a3
	mulw a2, a0, a5
	subw s0, a1, a2
	j label11
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
	li a3, -1
pcrel742:
	auipc a1, %pcrel_hi(dp)
	lui a4, 40
	mv t3, zero
	li a2, 18
	mv s0, a0
	addi t1, a1, %pcrel_lo(pcrel742)
	addiw t0, a4, -544
	li a0, 567
	lui a1, 718
	slli a5, a0, 4
	addiw t2, a1, -1600
	li a0, -1
	slli a4, a0, 32
	blt zero, a2, label218
	j label214
.p2align 2
label736:
	addiw t3, t3, 1
	add t1, t1, t2
	bge t3, a2, label214
.p2align 2
label218:
	mv t4, t1
	mv t5, zero
	blt zero, a2, label223
label222:
	addiw t3, t3, 1
	add t1, t1, t2
	blt t3, a2, label218
	j label214
.p2align 2
label733:
	addiw t5, t5, 1
	add t4, t4, t0
	bge t5, a2, label736
.p2align 2
label223:
	mv t6, t4
	mv a6, zero
	blt zero, a2, label227
	addiw t5, t5, 1
	add t4, t4, t0
	blt t5, a2, label223
	j label222
.p2align 2
label232:
	addi a0, a0, 504
.p2align 2
label228:
	add.uw a1, a3, a4
	addiw a7, a7, 1
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
	blt a7, a2, label232
	addiw a6, a6, 1
	add t6, t6, a5
	bge a6, a2, label733
.p2align 2
label227:
	mv a0, t6
	mv a7, zero
	j label228
label214:
	ble s0, zero, label217
	mv s2, zero
.p2align 2
label215:
	jal getint
	addiw s2, s2, 1
	sh2add a1, a0, s1
	lw a2, 0(a1)
	addi a3, a2, 1
	sw a3, 0(a1)
	bgt s0, s2, label215
label217:
	lw a0, 36(sp)
	mv a5, zero
	lw a1, 40(sp)
	lw a2, 44(sp)
	lw a3, 48(sp)
	lw a4, 52(sp)
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
