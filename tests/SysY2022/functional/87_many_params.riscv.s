.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	addi sp, sp, -344
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	addi s0, sp, 240
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s10, 72(sp)
	sd s9, 80(sp)
	sd s8, 88(sp)
	sd s11, 96(sp)
	jal getint
	mv t2, a0
	sd a0, 224(sp)
	jal getint
	mv t3, a0
	sd a0, 216(sp)
	jal getint
	mv t4, a0
	sd a0, 208(sp)
	jal getint
	mv t5, a0
	sd a0, 104(sp)
	jal getint
	mv t6, a0
	sd a0, 112(sp)
	jal getint
	sd a0, 192(sp)
	mv a6, a0
	jal getint
	sd a0, 120(sp)
	mv a7, a0
	jal getint
	sd a0, 128(sp)
	mv s1, a0
	jal getint
	sd a0, 136(sp)
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
	sd a0, 176(sp)
	mv s6, a0
	jal getint
	sd a0, 184(sp)
	mv s7, a0
	jal getint
	mv a3, zero
	mv s10, a0
	sd a0, 200(sp)
	ld t3, 216(sp)
	ld t2, 224(sp)
	slli a0, t3, 32
	add.uw a1, t2, a0
	sd a1, 240(sp)
	ld t5, 104(sp)
	ld t4, 208(sp)
	slli a0, t5, 32
	add.uw a1, t4, a0
	sd a1, 248(sp)
	ld a6, 192(sp)
	ld t6, 112(sp)
	slli a0, a6, 32
	add.uw a1, t6, a0
	sd a1, 256(sp)
	ld s1, 128(sp)
	ld a7, 120(sp)
	slli a0, s1, 32
	add.uw a1, a7, a0
	sd a1, 264(sp)
	ld s2, 144(sp)
	ld s1, 136(sp)
	slli a0, s2, 32
	add.uw a1, s1, a0
	sd a1, 272(sp)
	ld s4, 160(sp)
	ld s3, 152(sp)
	slli a0, s4, 32
	add.uw a1, s3, a0
	sd a1, 280(sp)
	slli a1, s10, 32
	ld s6, 176(sp)
	ld s5, 168(sp)
	slli a0, s6, 32
	add.uw a2, s5, a0
	mv a0, s0
	sd a2, 288(sp)
	ld s7, 184(sp)
	add.uw a2, s7, a1
	li a1, 16
	sd a2, 296(sp)
	li a2, 15
	bge zero, a2, label13
.p2align 2
label5:
	addiw a3, a3, 1
	mv a5, a3
	sh2add a4, a3, s0
	lw t0, 0(a0)
	lw t1, 0(a4)
	bge t0, t1, label92
.p2align 2
label9:
	sw t1, 0(a0)
	sw t0, 0(a4)
	addiw a5, a5, 1
	blt a5, a1, label11
	addi a0, a0, 4
	blt a3, a2, label5
	j label13
.p2align 2
label11:
	addi a4, a4, 4
	lw t0, 0(a0)
	lw t1, 0(a4)
	blt t0, t1, label9
	addiw a5, a5, 1
	blt a5, a1, label11
	addi a0, a0, 4
	blt a3, a2, label5
label13:
	lw s9, 240(sp)
	lw s8, 244(sp)
	lw a0, 248(sp)
	lw s11, 252(sp)
	lw a5, 256(sp)
	lw a1, 260(sp)
	lw a2, 264(sp)
	lw a3, 268(sp)
	lw a4, 272(sp)
	lw t0, 276(sp)
	lw t1, 280(sp)
	lw t6, 284(sp)
	lw t5, 288(sp)
	lw t4, 292(sp)
	lw t3, 296(sp)
	lw t2, 300(sp)
	beq s9, zero, label14
	sd s9, 232(sp)
	sd s11, 304(sp)
	mv s9, a0
	mv s11, a3
	mv a0, a4
	sd a5, 312(sp)
	mv a4, t5
	mv a5, t4
	sd a1, 320(sp)
	mv a1, t0
	sd a2, 328(sp)
	mv t0, t3
	mv a2, t1
	sd a3, 336(sp)
	mv t1, t2
	mv a3, t6
	ld t2, 224(sp)
	ld t3, 216(sp)
	ld t4, 208(sp)
	ld t5, 104(sp)
	ld t6, 112(sp)
	ld a6, 192(sp)
	ld a7, 120(sp)
	ld s1, 128(sp)
	mv s0, s1
	ld s1, 136(sp)
	ld s2, 144(sp)
	ld s3, 152(sp)
	ld s4, 160(sp)
	ld s5, 168(sp)
	ld s6, 176(sp)
	ld s7, 184(sp)
	ld s10, 200(sp)
label16:
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
	ld s9, 232(sp)
	subw s8, s11, s8
	addiw s9, s9, -1
	beq s9, zero, label14
	sd s9, 232(sp)
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
	sd a0, 336(sp)
	mv s11, a0
	mv a0, a1
	mv a1, a2
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
	j label16
label14:
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
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s10, 72(sp)
	ld s9, 80(sp)
	ld s8, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 344
	ret
.p2align 2
label92:
	addiw a5, a5, 1
	blt a5, a1, label11
	addi a0, a0, 4
	blt a3, a2, label5
	j label13
