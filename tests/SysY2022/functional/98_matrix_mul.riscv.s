.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -88
	fmv.w.x f10, zero
	lui a0, 263168
	sd s0, 80(sp)
	fmv.w.x f11, a0
	addi s0, sp, 0
	lui a0, 265216
	sd s1, 72(sp)
	fmv.w.x f12, a0
	addi s1, sp, 12
	sd s3, 64(sp)
	addi s3, sp, 24
	sd s2, 56(sp)
	mv s2, zero
	sd ra, 48(sp)
	fsw f10, 24(sp)
	fsw f11, 28(sp)
	fsw f12, 32(sp)
	fsw f10, 12(sp)
	fsw f11, 16(sp)
	fsw f12, 20(sp)
	fsw f10, 0(sp)
	fsw f11, 4(sp)
	fsw f12, 8(sp)
label2:
	sh2add a1, s2, s3
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s2, s2, 1
	blt s2, a0, label2
	li a0, 10
	jal putch
	mv s2, zero
label5:
	sh2add a1, s2, s1
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s2, s2, 1
	blt s2, a0, label5
	li a0, 10
	jal putch
	mv s1, zero
label8:
	sh2add a1, s1, s0
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s1, s1, 1
	blt s1, a0, label8
	li a0, 10
	jal putch
	ld ra, 48(sp)
	mv a0, zero
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s1, 72(sp)
	ld s0, 80(sp)
	addi sp, sp, 88
	ret
