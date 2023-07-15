.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.text
.globl main
main:
	addi sp, sp, -184
	fmv.w.x f10, zero
	lui t0, 260096
	addi a3, sp, 48
	addi a0, sp, 96
	addi a2, sp, 120
	addi a1, sp, 108
	addi a4, sp, 144
	addi a5, sp, 168
	sd s0, 16(sp)
	addi s0, sp, 24
	sd s1, 40(sp)
	addi s1, sp, 60
	sd s2, 0(sp)
	addi s2, sp, 72
	sd s3, 136(sp)
	mv s3, zero
	sd s4, 8(sp)
	sd ra, 160(sp)
	fsw f10, 168(sp)
	fsw f10, 144(sp)
	fsw f10, 48(sp)
	fsw f10, 120(sp)
	fsw f10, 108(sp)
	fsw f10, 96(sp)
	fmv.w.x f10, t0
	lui t0, 262144
	fsw f10, 172(sp)
	fsw f10, 148(sp)
	fsw f10, 52(sp)
	fsw f10, 124(sp)
	fsw f10, 112(sp)
	fsw f10, 100(sp)
	fmv.w.x f10, t0
	fsw f10, 176(sp)
	fsw f10, 152(sp)
	fsw f10, 56(sp)
	fsw f10, 128(sp)
	fsw f10, 116(sp)
	fsw f10, 104(sp)
	li t0, 4
	li t1, 3
	bge t0, t1, label5
label4:
	sh2add t1, s3, a5
	sh2add t2, s3, a2
	flw f10, 0(t1)
	sh2add t3, s3, s2
	flw f11, 0(t2)
	sh2add t4, s3, a4
	sh2add t5, s3, a1
	sh2add t6, s3, s1
	sh2add a6, s3, a3
	sh2add a7, s3, a0
	fadd.s f10, f10, f11
	sh2add s3, s3, s0
	fsw f10, 0(t3)
	flw f10, 0(t4)
	flw f11, 0(t5)
	fadd.s f10, f10, f11
	fsw f10, 0(t6)
	flw f10, 0(a6)
	flw f11, 0(a7)
	fadd.s f10, f10, f11
	fsw f10, 0(s3)
	flw f10, 4(t1)
	flw f11, 4(t2)
	fadd.s f12, f10, f11
	fsw f12, 4(t3)
	flw f10, 4(t4)
	flw f11, 4(t5)
	fadd.s f12, f10, f11
	fsw f12, 4(t6)
	flw f10, 4(a6)
	flw f11, 4(a7)
	fadd.s f12, f10, f11
	fsw f12, 4(s3)
	flw f10, 8(t1)
	flw f12, 8(t2)
	fadd.s f11, f10, f12
	fsw f11, 8(t3)
	flw f10, 8(t4)
	flw f11, 8(t5)
	fadd.s f12, f10, f11
	fsw f12, 8(t6)
	flw f10, 8(a6)
	flw f12, 8(a7)
	fadd.s f11, f10, f12
	fsw f11, 8(s3)
	flw f10, 12(t1)
	flw f12, 12(t2)
	fadd.s f11, f10, f12
	fsw f11, 12(t3)
	flw f10, 12(t4)
	flw f12, 12(t5)
	fadd.s f11, f10, f12
	fsw f11, 12(t6)
	flw f10, 12(a6)
	flw f12, 12(a7)
	fadd.s f11, f10, f12
	fsw f11, 12(s3)
	mv s3, t0
	addiw t0, t0, 4
	li t1, 3
	bge t0, t1, label5
	j label4
label5:
	sh2add t1, s3, a5
	sh2add t0, s3, a2
	flw f10, 0(t1)
	sh2add t1, s3, a4
	flw f11, 0(t0)
	sh2add t0, s3, s2
	fadd.s f10, f10, f11
	fsw f10, 0(t0)
	sh2add t0, s3, a1
	flw f10, 0(t1)
	sh2add t1, s3, s1
	flw f11, 0(t0)
	sh2add t0, s3, a3
	fadd.s f10, f10, f11
	fsw f10, 0(t1)
	sh2add t1, s3, a0
	flw f10, 0(t0)
	sh2add t0, s3, s0
	flw f11, 0(t1)
	addiw s3, s3, 1
	fadd.s f10, f10, f11
	fsw f10, 0(t0)
	li t0, 3
	bge s3, t0, label167
	j label5
label167:
	mv s4, zero
label7:
	sh2add a1, s4, s2
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s4, s4, 1
	bge s4, a0, label9
	j label7
label9:
	li a0, 10
	jal putch
	mv s2, zero
label10:
	sh2add a1, s2, s1
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s2, s2, 1
	bge s2, a0, label12
	j label10
label12:
	li a0, 10
	jal putch
	mv s1, zero
label13:
	sh2add a1, s1, s0
	flw f10, 0(a1)
	fcvt.w.s a0, f10, rtz
	jal putint
	li a0, 3
	addiw s1, s1, 1
	bge s1, a0, label15
	j label13
label15:
	li a0, 10
	jal putch
	ld ra, 160(sp)
	mv a0, zero
	ld s4, 8(sp)
	ld s3, 136(sp)
	ld s2, 0(sp)
	ld s1, 40(sp)
	ld s0, 16(sp)
	addi sp, sp, 184
	ret
