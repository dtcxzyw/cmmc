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
	sd s2, 8(sp)
	mv s2, a0
	sd s3, 16(sp)
	mv s3, a1
	sd s4, 24(sp)
pcrel208:
	auipc a1, %pcrel_hi(dp)
	mv s4, a2
	addi a0, a1, %pcrel_lo(pcrel208)
	sd s6, 32(sp)
	mv s6, a3
	sd s1, 40(sp)
	mv s1, a5
	sd s5, 48(sp)
	li a5, 567
	mv s5, a4
	sd s0, 56(sp)
	lui a4, 718
	sd s7, 64(sp)
	addiw a2, a4, -1600
	lui a4, 40
	mul a3, s2, a2
	addiw a2, a4, -544
	add a1, a0, a3
	mul a3, s3, a2
	slli a2, a5, 4
	add a0, a1, a3
	mul a4, s4, a2
	slli a3, s6, 6
	add a1, a0, a4
	sub a5, a3, s6
	slli a0, s5, 3
	sh3add a2, a5, a1
	sub a3, a0, s5
	sh2add s7, a3, a2
	li a2, -1
	sh2add a1, s1, s7
	lw a0, 0(a1)
	bne a0, a2, label19
	addw a3, s2, s3
	addw a2, s4, a3
	addw a0, s6, a2
	addw a1, s5, a0
	beq a1, zero, label52
	bne s2, zero, label18
	mv s0, zero
	j label4
label15:
	addiw a3, s6, 1
	addiw a4, s5, -1
	mv a0, s2
	li a5, 5
	mv a1, s3
	mv a2, s4
	jal dfs
	lui a5, 244141
	lui a4, 281475
	mulw a2, s5, a0
	addiw a0, a4, -103
	addw a1, s0, a2
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	addiw a2, a5, -1529
	add a0, a4, a3
	mulw a3, a0, a2
	subw s0, a1, a3
label16:
	lui a3, 281475
	lui a5, 244141
	addiw a1, a3, -103
	addiw a3, a5, -1529
	mul a0, s0, a1
	srli a4, a0, 63
	srai a2, a0, 60
	add a1, a4, a2
	sh2add a4, s1, s7
	mulw a2, a1, a3
	subw a0, s0, a2
	sw a0, 0(a4)
label19:
	ld ra, 0(sp)
	ld s2, 8(sp)
	ld s3, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
	ret
label4:
	bne s3, zero, label6
	j label7
label18:
	addiw a0, s2, -1
	mv a1, s3
	li a5, 1
	mv a2, s4
	mv a3, s6
	mv a4, s5
	jal dfs
	lui t0, 281475
	xori a3, s1, 2
	addiw a5, t0, -103
	sltiu a4, a3, 1
	lui t0, 244141
	subw a2, s2, a4
	mulw a1, a0, a2
	mul a2, a1, a5
	addiw a5, t0, -1529
	srli a4, a2, 63
	srai a3, a2, 60
	add a0, a4, a3
	mulw a2, a0, a5
	subw s0, a1, a2
	j label4
label6:
	addiw a0, s2, 1
	addiw a1, s3, -1
	mv a2, s4
	li a5, 2
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s1, 3
	lui a5, 281475
	sltiu a3, a1, 1
	subw a4, s3, a3
	mulw a2, a0, a4
	addiw a0, a5, -103
	addw a1, s0, a2
	lui a5, 244141
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	addiw a2, a5, -1529
	add a0, a4, a3
	mulw a3, a0, a2
	subw s0, a1, a3
label7:
	beq s4, zero, label10
	addiw a1, s3, 1
	addiw a2, s4, -1
	mv a0, s2
	li a5, 3
	mv a3, s6
	mv a4, s5
	jal dfs
	xori a1, s1, 4
	lui a5, 281475
	lui t0, 244141
	sltiu a2, a1, 1
	subw a4, s4, a2
	mulw a3, a0, a4
	addiw a4, t0, -1529
	addiw a0, a5, -103
	addw a1, s0, a3
	mul a2, a1, a0
	srli a5, a2, 63
	srai a3, a2, 60
	add a0, a5, a3
	mulw a2, a0, a4
	subw s0, a1, a2
label10:
	beq s6, zero, label13
	addiw a2, s4, 1
	addiw a3, s6, -1
	mv a0, s2
	li a5, 4
	mv a1, s3
	mv a4, s5
	jal dfs
	xori a1, s1, 5
	lui a5, 281475
	lui t0, 244141
	sltiu a2, a1, 1
	subw a4, s6, a2
	mulw a3, a0, a4
	addiw a0, a5, -103
	addw a1, s0, a3
	addiw a5, t0, -1529
	mul a2, a1, a0
	srli a4, a2, 63
	srai a3, a2, 60
	add a0, a4, a3
	mulw a2, a0, a5
	subw s0, a1, a2
label13:
	bne s5, zero, label15
	j label16
label52:
	li a0, 1
	j label19
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 40
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd zero, 40(sp)
	sd zero, 48(sp)
	sd zero, 56(sp)
	sd zero, 64(sp)
	sd zero, 72(sp)
	sd zero, 80(sp)
	sd zero, 88(sp)
	sd zero, 96(sp)
	sd zero, 104(sp)
	sd zero, 112(sp)
	jal getint
	mv s0, a0
pcrel745:
	auipc a1, %pcrel_hi(dp)
	li a3, -1
	mv t4, zero
	li a2, 18
	lui a0, 40
	addi t2, a1, %pcrel_lo(pcrel745)
	addiw t1, a0, -544
	li a1, 567
	li a0, -1
	slli t0, a1, 4
	slli a4, a0, 32
	lui a1, 718
	addiw t3, a1, -1600
	bge zero, a2, label228
.p2align 2
label213:
	mv t5, t2
	mv t6, zero
	bge zero, a2, label261
.p2align 2
label217:
	mv a5, t5
	mv a6, zero
	blt zero, a2, label222
	j label221
.p2align 2
label738:
	addiw t6, t6, 1
	add t5, t5, t1
	blt t6, a2, label217
	addiw t4, t4, 1
	add t2, t2, t3
	blt t4, a2, label213
label228:
	ble s0, zero, label231
	mv s2, zero
.p2align 2
label229:
	jal getint
	addiw s2, s2, 1
	sh2add a1, a0, s1
	lw a3, 0(a1)
	addi a2, a3, 1
	sw a2, 0(a1)
	bgt s0, s2, label229
label231:
	lw a0, 44(sp)
	mv a5, zero
	lw a1, 48(sp)
	lw a2, 52(sp)
	lw a3, 56(sp)
	lw a4, 60(sp)
	jal dfs
	mv s0, a0
	jal putint
	mv a0, s0
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 120
	ret
.p2align 2
label222:
	mv a0, a5
	mv a7, zero
.p2align 2
label223:
	addiw a7, a7, 1
	slli a1, a7, 6
	sub s3, a1, a7
	add.uw a1, a3, a4
	sh3add s2, s3, a5
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
	blt a7, a2, label400
	addiw a6, a6, 1
	add a5, a5, t0
	blt a6, a2, label222
	j label738
.p2align 2
label400:
	mv a0, s2
	j label223
.p2align 2
label221:
	addiw t6, t6, 1
	add t5, t5, t1
	blt t6, a2, label217
	addiw t4, t4, 1
	add t2, t2, t3
	blt t4, a2, label213
	j label228
label261:
	addiw t4, t4, 1
	add t2, t2, t3
	blt t4, a2, label213
	j label228
