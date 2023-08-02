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
	addi s0, sp, 144
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
	sd a0, 136(sp)
	jal getint
	sd a0, 112(sp)
	mv a6, a0
	jal getint
	sd a0, 120(sp)
	mv a7, a0
	jal getint
	sd a0, 128(sp)
	mv s2, a0
	jal getint
	sd a0, 208(sp)
	mv s1, a0
	jal getint
	sd a0, 216(sp)
	mv s2, a0
	jal getint
	sd a0, 224(sp)
	mv s3, a0
	jal getint
	sd a0, 232(sp)
	mv s4, a0
	jal getint
	sd a0, 256(sp)
	mv s5, a0
	jal getint
	sd a0, 240(sp)
	mv s6, a0
	jal getint
	sd a0, 248(sp)
	mv s7, a0
	jal getint
	sd a0, 280(sp)
	mv s10, a0
	li a3, 15
	ld t3, 272(sp)
	ld t2, 288(sp)
	slli a0, t3, 32
	add.uw a1, t2, a0
	sd a1, 144(sp)
	ld t5, 104(sp)
	ld t4, 264(sp)
	slli a0, t5, 32
	add.uw a1, t4, a0
	sd a1, 152(sp)
	ld a6, 112(sp)
	ld t6, 136(sp)
	slli a0, a6, 32
	add.uw a1, t6, a0
	sd a1, 160(sp)
	ld s2, 128(sp)
	ld a7, 120(sp)
	slli a0, s2, 32
	add.uw a1, a7, a0
	sd a1, 168(sp)
	ld s2, 216(sp)
	ld s1, 208(sp)
	slli a0, s2, 32
	add.uw a1, s1, a0
	sd a1, 176(sp)
	ld s4, 232(sp)
	ld s3, 224(sp)
	slli a0, s4, 32
	add.uw a1, s3, a0
	sd a1, 184(sp)
	slli a1, s10, 32
	ld s6, 240(sp)
	ld s5, 256(sp)
	slli a0, s6, 32
	add.uw a2, s5, a0
	mv a0, zero
	sd a2, 192(sp)
	ld s7, 248(sp)
	add.uw a2, s7, a1
	li a1, 16
	sd a2, 200(sp)
	bge zero, a3, label10
.p2align 2
label4:
	addiw a4, a0, 1
	mv a2, a4
	bge a4, a1, label85
.p2align 2
label7:
	sh2add t0, a2, s0
	sh2add t2, a0, s0
	lw a5, 0(t2)
	lw t1, 0(t0)
	blt a5, t1, label8
	addiw a2, a2, 1
	blt a2, a1, label7
	j label250
.p2align 2
label8:
	sh2add t0, a0, s0
	sh2add t2, a2, s0
	sw t1, 0(t0)
	sw a5, 0(t2)
	addiw a2, a2, 1
	blt a2, a1, label7
	mv a0, a4
	blt a4, a3, label4
label10:
	lw s9, 144(sp)
	lw s8, 148(sp)
	lw a0, 152(sp)
	lw s11, 156(sp)
	lw a1, 160(sp)
	lw a3, 164(sp)
	lw a4, 168(sp)
	lw a5, 172(sp)
	lw a2, 176(sp)
	lw t0, 180(sp)
	lw t1, 184(sp)
	lw t6, 188(sp)
	lw t5, 192(sp)
	lw t4, 196(sp)
	lw t3, 200(sp)
	lw t2, 204(sp)
	beq s9, zero, label11
	sd s9, 296(sp)
	sd s11, 304(sp)
	mv s9, a0
	sd a1, 312(sp)
	mv s11, a1
	mv a0, a2
	mv a1, t0
	mv s11, a3
	mv a2, t1
	mv t0, t3
	mv s11, a4
	mv t1, t2
	mv s11, a5
	sd a3, 320(sp)
	mv a3, t6
	sd a4, 328(sp)
	mv a4, t5
	sd a5, 336(sp)
	ld t2, 288(sp)
	mv a5, t4
	ld t3, 272(sp)
	ld t4, 264(sp)
	ld t5, 104(sp)
	ld t6, 136(sp)
	ld a6, 112(sp)
	ld a7, 120(sp)
	ld s2, 128(sp)
	ld s1, 208(sp)
	mv s0, s2
	ld s2, 216(sp)
	ld s3, 224(sp)
	ld s4, 232(sp)
	ld s5, 256(sp)
	ld s6, 240(sp)
	ld s7, 248(sp)
	ld s10, 280(sp)
label13:
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
	beq s9, zero, label11
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
	j label13
label11:
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
.p2align 2
label250:
	mv a0, a4
	blt a4, a3, label4
	j label10
label85:
	mv a0, a4
	blt a4, a3, label4
	j label10
