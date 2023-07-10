.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1282491304
.text
fibFP:
	addi sp, sp, -24
	lui a1, 262144
	fsw f9, 16(sp)
	fmv.s f9, f10
	fsw f18, 12(sp)
	fmv.w.x f10, a1
	fsw f8, 8(sp)
	flt.s a0, f9, f10
	sd ra, 0(sp)
	beq a0, zero, label2
	lui a1, 260096
	fmv.w.x f10, a1
label9:
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f18, 12(sp)
	flw f9, 16(sp)
	addi sp, sp, 24
	ret
label2:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f18, f9, f10
	flt.s a0, f18, f10
	beq a0, zero, label8
	lui a1, 260096
	fmv.w.x f8, a1
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 262144
	fsub.s f18, f9, f10
	fmv.w.x f10, a0
	flt.s a1, f18, f10
	beq a1, zero, label7
	j label69
label7:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f18, f11
	jal fibFP
	lui a0, 260096
	fmv.s f9, f10
	fmv.w.x f11, a0
	fsub.s f10, f18, f11
	jal fibFP
	fadd.s f10, f9, f10
	fadd.s f10, f8, f10
	j label9
label69:
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f10, f8, f10
	j label9
label8:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f18, f11
	jal fibFP
	lui a0, 260096
	fmv.s f8, f10
	fmv.w.x f11, a0
	fsub.s f10, f18, f11
	jal fibFP
	fadd.s f8, f8, f10
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 262144
	fsub.s f18, f9, f10
	fmv.w.x f10, a0
	flt.s a1, f18, f10
	beq a1, zero, label7
	j label69
takFP:
	addi sp, sp, -48
	fsw f8, 44(sp)
	fmv.s f8, f12
	fsw f21, 40(sp)
	fsw f9, 36(sp)
	fmv.s f9, f11
	fsw f22, 32(sp)
	fsw f18, 28(sp)
	fmv.s f18, f10
	fsw f19, 24(sp)
	fsw f20, 20(sp)
	fsw f25, 16(sp)
	fsw f23, 12(sp)
	fsw f24, 8(sp)
	sd ra, 0(sp)
	flt.s a0, f11, f10
	beq a0, zero, label94
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f19, f18, f10
	flt.s a0, f11, f19
	beq a0, zero, label107
	j label185
label107:
	fmv.s f19, f8
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	flt.s a0, f8, f20
	beq a0, zero, label114
	j label113
label94:
	fmv.s f10, f8
	ld ra, 0(sp)
	flw f24, 8(sp)
	flw f23, 12(sp)
	flw f25, 16(sp)
	flw f20, 20(sp)
	flw f19, 24(sp)
	flw f18, 28(sp)
	flw f22, 32(sp)
	flw f9, 36(sp)
	flw f21, 40(sp)
	flw f8, 44(sp)
	addi sp, sp, 48
	ret
label113:
	fmv.s f21, f8
	fmv.s f22, f18
	j label80
label114:
	fmv.s f20, f18
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f8, f8, f10
	flt.s a0, f18, f8
	beq a0, zero, label133
	j label86
label90:
	lui a0, 260096
	fmv.s f11, f20
	fmv.w.x f24, a0
	fmv.s f12, f21
	fsub.s f10, f19, f24
	jal takFP
	fmv.s f11, f21
	fmv.s f22, f10
	fmv.s f12, f19
	fsub.s f10, f20, f24
	jal takFP
	fmv.s f11, f19
	fmv.s f23, f10
	fmv.s f12, f20
	fsub.s f10, f21, f24
	jal takFP
	flt.s a0, f23, f22
	beq a0, zero, label158
	fmv.s f19, f22
	fmv.s f20, f23
	fmv.s f21, f10
	j label90
label158:
	fmv.s f19, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	flt.s a0, f8, f20
	beq a0, zero, label114
	j label113
label185:
	fmv.s f20, f9
	fmv.s f21, f8
	j label90
label86:
	lui a0, 260096
	fmv.s f11, f18
	fmv.w.x f23, a0
	fmv.s f12, f9
	fsub.s f10, f8, f23
	jal takFP
	fmv.s f11, f9
	fmv.s f21, f10
	fmv.s f12, f8
	fsub.s f10, f18, f23
	jal takFP
	fmv.s f11, f8
	fmv.s f22, f10
	fmv.s f12, f18
	fsub.s f10, f9, f23
	jal takFP
	flt.s a0, f22, f21
	beq a0, zero, label146
	fmv.s f8, f21
	fmv.s f18, f22
	fmv.s f9, f10
	j label86
label146:
	fmv.s f8, f10
	fmv.s f9, f20
	fmv.s f18, f19
	flt.s a0, f20, f19
	beq a0, zero, label94
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f19, f19, f10
	flt.s a0, f20, f19
	beq a0, zero, label107
	j label185
label80:
	lui a0, 260096
	fmv.s f11, f21
	fmv.w.x f25, a0
	fmv.s f12, f22
	fsub.s f10, f20, f25
	jal takFP
	fmv.s f11, f22
	fmv.s f23, f10
	fmv.s f12, f20
	fsub.s f10, f21, f25
	jal takFP
	fmv.s f11, f20
	fmv.s f24, f10
	fmv.s f12, f21
	fsub.s f10, f22, f25
	jal takFP
	flt.s a0, f24, f23
	beq a0, zero, label126
	fmv.s f20, f23
	fmv.s f21, f24
	fmv.s f22, f10
	j label80
label126:
	fmv.s f20, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f8, f8, f10
	flt.s a0, f18, f8
	beq a0, zero, label133
	j label86
label133:
	fmv.s f8, f9
	fmv.s f18, f19
	fmv.s f9, f20
	flt.s a0, f20, f19
	beq a0, zero, label94
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f19, f19, f10
	flt.s a0, f20, f19
	beq a0, zero, label107
	j label185
.globl main
main:
	addi sp, sp, -24
	li a0, 19
	sd s0, 16(sp)
	fsw f9, 12(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	jal _sysy_starttime
	jal getint
	mv s0, a0
	jal getfloat
	fmv.s f9, f10
	jal getfloat
	fmv.s f8, f10
	jal getfloat
	fmv.s f12, f10
	fmv.s f10, f9
	fmv.s f11, f8
	jal takFP
	lui a0, 269824
	fmv.s f8, f10
	fmv.w.x f11, a0
	fcvt.s.w f10, s0
	fadd.s f10, f10, f11
	jal fibFP
pcrel234:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel234)
	flw f11, 0(a1)
	feq.s a0, f10, f11
	beq a0, zero, label200
	li a0, 112
	jal putch
	lui a1, 262144
	fmv.w.x f10, a1
	feq.s a0, f8, f10
	beq a0, zero, label199
label197:
	li a0, 112
	jal putch
label198:
	li a0, 40
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	flw f8, 8(sp)
	flw f9, 12(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label199:
	li a0, 1
	jal putint
	j label198
label200:
	li a0, 1
	jal putint
	lui a1, 262144
	fmv.w.x f10, a1
	feq.s a0, f8, f10
	beq a0, zero, label199
	j label197
