.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
.p2align 2
	addi sp, sp, -96
	fmv.w.x f10, zero
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 80
	sd s1, 16(sp)
	addi s1, sp, 64
	sd s3, 24(sp)
	addi s3, sp, 40
	sd s2, 32(sp)
	mv s2, zero
	fsw f10, 40(sp)
	fsw f10, 64(sp)
	fsw f10, 80(sp)
	fsw f10, 44(sp)
	fsw f10, 68(sp)
	fsw f10, 84(sp)
	fsw f10, 48(sp)
	fsw f10, 72(sp)
	fsw f10, 88(sp)
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
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 96
	ret
