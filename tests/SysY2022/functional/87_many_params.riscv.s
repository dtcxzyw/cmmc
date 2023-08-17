.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[64] RegSpill[176] CalleeSaved[104]
	addi sp, sp, -344
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	addi s0, sp, 200
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s10, 72(sp)
	sd s9, 80(sp)
	sd s8, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv t2, a0
	sd a0, 288(sp)
	jal getint
	mv t3, a0
	sd a0, 272(sp)
	jal getint
	mv t4, a0
	sd a0, 264(sp)
	jal getint
	mv t5, a0
	sd a0, 104(sp)
	jal getint
	mv t6, a0
	sd a0, 112(sp)
	jal getint
	sd a0, 120(sp)
	mv a6, a0
	jal getint
	sd a0, 128(sp)
	mv a7, a0
	jal getint
	sd a0, 136(sp)
	mv s2, a0
	jal getint
	sd a0, 184(sp)
	mv s1, a0
	jal getint
	sd a0, 144(sp)
	mv s2, a0
	jal getint
	sd a0, 152(sp)
	mv s3, a0
	jal getint
	sd a0, 160(sp)
	mv s4, a0
	jal getint
	sd a0, 168(sp)
	mv s5, a0
	jal getint
	sd a0, 192(sp)
	mv s6, a0
	jal getint
	sd a0, 176(sp)
	mv s7, a0
	jal getint
	sd a0, 280(sp)
	mv s10, a0
	ld t3, 272(sp)
	ld t2, 288(sp)
	slli a0, t3, 32
	add.uw a1, t2, a0
	sd a1, 200(sp)
	ld t5, 104(sp)
	ld t4, 264(sp)
	slli a0, t5, 32
	add.uw a1, t4, a0
	sd a1, 208(sp)
	ld a6, 120(sp)
	ld t6, 112(sp)
	slli a0, a6, 32
	add.uw a1, t6, a0
	sd a1, 216(sp)
	ld s2, 136(sp)
	ld a7, 128(sp)
	slli a0, s2, 32
	add.uw a1, a7, a0
	sd a1, 224(sp)
	ld s2, 144(sp)
	ld s1, 184(sp)
	slli a0, s2, 32
	add.uw a1, s1, a0
	sd a1, 232(sp)
	ld s4, 160(sp)
	ld s3, 152(sp)
	slli a0, s4, 32
	add.uw a1, s3, a0
	sd a1, 240(sp)
	slli a1, s10, 32
	ld s6, 192(sp)
	ld s5, 168(sp)
	slli a0, s6, 32
	add.uw a2, s5, a0
	mv a0, s0
	sd a2, 248(sp)
	ld s7, 176(sp)
	add.uw a3, s7, a1
	li a1, 16
	sd a3, 256(sp)
	li a3, 15
	li a2, 1
	blt a2, a1, label5
	j label12
.p2align 2
label99:
	bge a2, a3, label14
.p2align 2
label13:
	addi a0, a0, 4
	addiw a2, a2, 1
	bge a2, a1, label12
.p2align 2
label5:
	sh2add a4, a2, s0
	mv a5, a2
	lw t0, 0(a0)
	lw t1, 0(a4)
	bge t0, t1, label94
.p2align 2
label9:
	sw t1, 0(a0)
	sw t0, 0(a4)
	addiw a5, a5, 1
	bge a5, a1, label99
.p2align 2
label11:
	addi a4, a4, 4
	lw t0, 0(a0)
	lw t1, 0(a4)
	blt t0, t1, label9
	addiw a5, a5, 1
	blt a5, a1, label11
	blt a2, a3, label13
label14:
	ld a1, 200(sp)
	srai s8, a1, 32
	sext.w s9, a1
	ld a2, 208(sp)
	ld a4, 216(sp)
	srai s11, a2, 32
	sext.w a0, a2
	sext.w a1, a4
	ld t0, 224(sp)
	srai a2, a4, 32
	ld t2, 232(sp)
	sext.w a3, t0
	srai a4, t0, 32
	sext.w a5, t2
	ld t3, 240(sp)
	srai t0, t2, 32
	srai t6, t3, 32
	sext.w t1, t3
	ld t2, 248(sp)
	ld a6, 256(sp)
	srai t4, t2, 32
	sext.w t5, t2
	sext.w t3, a6
	srai t2, a6, 32
	beq s9, zero, label15
	sd s9, 296(sp)
	sd s11, 304(sp)
	mv s9, a0
	mv s11, a4
	mv a0, t0
	sd a1, 312(sp)
	mv t0, t3
	mv a1, a5
	sd a2, 320(sp)
	mv a5, t4
	mv a2, t1
	sd a3, 328(sp)
	mv t1, t2
	mv a3, t6
	sd a4, 336(sp)
	ld t2, 288(sp)
	mv a4, t5
	ld t3, 272(sp)
	ld t4, 264(sp)
	ld t5, 104(sp)
	ld t6, 112(sp)
	ld a6, 120(sp)
	ld a7, 128(sp)
	ld s2, 136(sp)
	ld s1, 184(sp)
	mv s0, s2
	ld s2, 144(sp)
	ld s3, 152(sp)
	ld s4, 160(sp)
	ld s5, 168(sp)
	ld s6, 192(sp)
	ld s7, 176(sp)
	ld s10, 280(sp)
	j label17
label151:
	sd s9, 296(sp)
	ld s11, 304(sp)
	mv s9, s11
	ld s11, 312(sp)
	sd s11, 304(sp)
	ld s11, 320(sp)
	sd s11, 312(sp)
	ld s11, 328(sp)
	sd s11, 320(sp)
	ld s11, 336(sp)
	sd s11, 328(sp)
	sd a1, 336(sp)
	mv s11, a1
	mv a1, a0
	mv a0, a2
	mv a2, a3
	mv a3, a4
	mv a4, a5
	mv a5, t0
	mv t0, t1
	mv t1, t2
	mv t2, t3
	mv t3, t4
	mv t4, t5
	mv t5, t6
	mv t6, a6
	mv a6, a7
	mv a7, s0
	mv s0, s1
	mv s1, s2
	mv s2, s3
	mv s3, s4
	mv s4, s5
	mv s5, s6
	mv s6, s7
	mv s7, s10
	mv s10, zero
label17:
	addw s11, s8, s9
	lui s8, 70493
	addiw s9, s8, -2031
	mul s8, s11, s9
	srai s9, s8, 58
	srli s8, s8, 63
	add s9, s8, s9
	lui s8, 243712
	addiw s8, s8, 1
	mulw s8, s9, s8
	ld s9, 296(sp)
	subw s8, s11, s8
	addiw s9, s9, -1
	bne s9, zero, label151
label15:
	slliw a1, s8, 5
	lui a3, 69
	addiw a2, a3, -976
	addw a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s10, 72(sp)
	ld s9, 80(sp)
	ld s8, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 344
	ret
label12:
	blt a2, a3, label13
	j label14
.p2align 2
label94:
	addiw a5, a5, 1
	blt a5, a1, label11
	blt a2, a3, label13
	j label14
