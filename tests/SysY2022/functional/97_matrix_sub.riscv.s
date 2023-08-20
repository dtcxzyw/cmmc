.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[48] RegSpill[0] CalleeSaved[40]
	addi sp, sp, -96
	fmv.w.x f10, zero
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, sp, 80
	sd s2, 16(sp)
	addi s2, sp, 64
	sd s1, 24(sp)
	addi s1, sp, 40
	sd s3, 32(sp)
	mv s3, zero
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
	flw f10, 0(s1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s3, s3, 1
	bge s3, a0, label6
	addi s1, s1, 4
	j label2
label6:
	li a0, 10
	jal putch
	mv s1, s2
	mv s2, zero
label7:
	flw f10, 0(s1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s2, s2, 1
	bge s2, a0, label10
	addi s1, s1, 4
	j label7
label10:
	li a0, 10
	jal putch
	mv s1, zero
label11:
	flw f10, 0(s0)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s1, s1, 1
	bge s1, a0, label15
	addi s0, s0, 4
	j label11
label15:
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 96
	ret
