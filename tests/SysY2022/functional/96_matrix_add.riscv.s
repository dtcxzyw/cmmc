.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -96
	fmv.w.x f10, zero
	lui a0, 262144
	sd s0, 40(sp)
	addi s0, sp, 0
	sd s1, 88(sp)
	addi s1, sp, 24
	sd s3, 16(sp)
	addi s3, sp, 48
	sd s2, 80(sp)
	mv s2, zero
	sd ra, 72(sp)
	fsw f10, 48(sp)
	fsw f10, 24(sp)
	fsw f10, 0(sp)
	fmv.w.x f10, a0
	lui a0, 264192
	fsw f10, 52(sp)
	fsw f10, 28(sp)
	fsw f10, 4(sp)
	fmv.w.x f10, a0
	fsw f10, 56(sp)
	fsw f10, 32(sp)
	fsw f10, 8(sp)
label2:
	sh2add a1, s2, s3
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s2, s2, 1
	bge s2, a0, label4
	j label2
label4:
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
	bge s2, a0, label7
	j label5
label7:
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
	bge s1, a0, label10
	j label8
label10:
	li a0, 10
	jal putch
	ld ra, 72(sp)
	mv a0, zero
	ld s2, 80(sp)
	ld s3, 16(sp)
	ld s1, 88(sp)
	ld s0, 40(sp)
	addi sp, sp, 96
	ret