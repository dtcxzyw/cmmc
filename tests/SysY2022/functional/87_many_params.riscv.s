.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -344
	sd s0, 64(sp)
	sd s5, 120(sp)
	addi s0, sp, 192
	sd s3, 152(sp)
	sd s1, 256(sp)
	sd s6, 128(sp)
	sd s7, 96(sp)
	sd s8, 88(sp)
	sd s9, 0(sp)
	sd s10, 8(sp)
	sd s4, 16(sp)
	sd s2, 24(sp)
	sd s11, 32(sp)
	sd ra, 40(sp)
	jal getint
	mv t2, a0
	sd a0, 296(sp)
	jal getint
	mv t3, a0
	sd a0, 280(sp)
	jal getint
	mv t4, a0
	sd a0, 272(sp)
	jal getint
	mv t5, a0
	sd a0, 80(sp)
	jal getint
	mv t6, a0
	sd a0, 264(sp)
	jal getint
	sd a0, 72(sp)
	mv a6, a0
	jal getint
	sd a0, 176(sp)
	mv a7, a0
	jal getint
	sd a0, 168(sp)
	mv s3, a0
	jal getint
	sd a0, 144(sp)
	mv s1, a0
	jal getint
	sd a0, 56(sp)
	mv s3, a0
	jal getint
	sd a0, 112(sp)
	mv s5, a0
	jal getint
	sd a0, 160(sp)
	mv s6, a0
	jal getint
	sd a0, 184(sp)
	mv s7, a0
	jal getint
	sd a0, 136(sp)
	mv s8, a0
	jal getint
	sd a0, 104(sp)
	mv s9, a0
	jal getint
	sd a0, 288(sp)
	mv s10, a0
	ld t2, 296(sp)
	sw t2, 192(sp)
	ld t3, 280(sp)
	sw t3, 196(sp)
	ld t4, 272(sp)
	sw t4, 200(sp)
	ld t5, 80(sp)
	sw t5, 204(sp)
	ld t6, 264(sp)
	sw t6, 208(sp)
	ld a6, 72(sp)
	sw a6, 212(sp)
	ld a7, 176(sp)
	sw a7, 216(sp)
	ld s3, 168(sp)
	sw s3, 220(sp)
	ld s1, 144(sp)
	sw s1, 224(sp)
	ld s3, 56(sp)
	sw s3, 228(sp)
	ld s5, 112(sp)
	sw s5, 232(sp)
	ld s6, 160(sp)
	sw s6, 236(sp)
	ld s7, 184(sp)
	sw s7, 240(sp)
	ld s8, 136(sp)
	sw s8, 244(sp)
	ld s9, 104(sp)
	sw s9, 248(sp)
	sw a0, 252(sp)
	mv a0, zero
	li a1, 15
	bge zero, a1, label10
.p2align 2
label4:
	addiw a1, a0, 1
	mv a2, a1
	li a3, 16
	blt a1, a3, label7
	mv a0, a1
	li a1, 15
	blt a0, a1, label4
	j label10
.p2align 2
label7:
	sh2add a4, a2, s0
	sh2add a5, a0, s0
	lw a3, 0(a5)
	lw a4, 0(a4)
	blt a3, a4, label8
	addiw a2, a2, 1
	li a3, 16
	blt a2, a3, label7
	mv a0, a1
	li a1, 15
	blt a0, a1, label4
label10:
	lw s4, 192(sp)
	lw s2, 196(sp)
	lw t6, 200(sp)
	lw s11, 204(sp)
	lw t5, 208(sp)
	lw t4, 212(sp)
	lw t3, 216(sp)
	lw t2, 220(sp)
	lw a1, 224(sp)
	lw a0, 228(sp)
	lw a2, 232(sp)
	lw a3, 236(sp)
	lw a4, 240(sp)
	lw a5, 244(sp)
	lw t0, 248(sp)
	lw t1, 252(sp)
	beq s4, zero, label11
	sd s4, 304(sp)
	sd s11, 312(sp)
	mv s4, t6
	sd t5, 320(sp)
	mv s11, t5
	sd t4, 328(sp)
	mv s11, t4
	sd t3, 336(sp)
	mv s11, t3
	sd t2, 48(sp)
	mv s11, t2
	ld t2, 296(sp)
	ld t3, 280(sp)
	ld t4, 272(sp)
	ld t5, 80(sp)
	ld t6, 264(sp)
	ld a6, 72(sp)
	ld a7, 176(sp)
	ld s3, 168(sp)
	ld s1, 144(sp)
	mv s0, s3
	ld s3, 56(sp)
	ld s5, 112(sp)
	ld s6, 160(sp)
	ld s7, 184(sp)
	ld s8, 136(sp)
	ld s9, 104(sp)
	ld s10, 288(sp)
label13:
	addw s2, s2, s4
	li s11, 288737297
	mul s4, s2, s11
	srai s11, s4, 58
	srli s4, s4, 63
	add s4, s4, s11
	li s11, 998244353
	mulw s4, s4, s11
	subw s2, s2, s4
	ld s4, 304(sp)
	addiw s4, s4, -1
	beq s4, zero, label11
	sd s4, 304(sp)
	ld s11, 312(sp)
	mv s4, s11
	ld s11, 320(sp)
	sd s11, 312(sp)
	ld s11, 328(sp)
	sd s11, 320(sp)
	ld s11, 336(sp)
	sd s11, 328(sp)
	ld s11, 48(sp)
	sd s11, 336(sp)
	sd a1, 48(sp)
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
	mv s1, s3
	mv s3, s5
	mv s5, s6
	mv s6, s7
	mv s7, s8
	mv s8, s9
	mv s9, s10
	mv s10, zero
	j label13
.p2align 2
label8:
	sh2add a5, a0, s0
	sw a4, 0(a5)
	sh2add a4, a2, s0
	sw a3, 0(a4)
	addiw a2, a2, 1
	li a3, 16
	blt a2, a3, label7
	mv a0, a1
	li a1, 15
	blt a0, a1, label4
	j label10
label11:
	slliw a1, s2, 5
	li a2, 281648
	addw a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	mv a0, zero
	ld ra, 40(sp)
	ld s11, 32(sp)
	ld s2, 24(sp)
	ld s4, 16(sp)
	ld s10, 8(sp)
	ld s9, 0(sp)
	ld s8, 88(sp)
	ld s7, 96(sp)
	ld s6, 128(sp)
	ld s1, 256(sp)
	ld s3, 152(sp)
	ld s5, 120(sp)
	ld s0, 64(sp)
	addi sp, sp, 344
	ret
