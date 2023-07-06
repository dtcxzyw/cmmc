.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1282491304
.text
fibFP:
	addi sp, sp, -24
	lui a0, 262144
	fsw f9, 16(sp)
	fmv.s f9, f10
	fsw f18, 12(sp)
	fmv.w.x f10, a0
	fsw f8, 8(sp)
	flt.s a0, f9, f10
	sd ra, 0(sp)
	beq a0, zero, label4
	lui a0, 260096
	fmv.w.x f10, a0
	j label2
label80:
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f10, f8, f10
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f18, 12(sp)
	flw f9, 16(sp)
	addi sp, sp, 24
	ret
label4:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f18, f9, f10
	flt.s a0, f18, f10
	beq a0, zero, label10
	lui a0, 260096
	fmv.w.x f8, a0
	fmv.w.x f10, a0
	lui a0, 262144
	fsub.s f18, f9, f10
	fmv.w.x f10, a0
	flt.s a0, f18, f10
	beq a0, zero, label9
	j label80
label9:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f10, f18, f10
	jal fibFP
	lui a0, 260096
	fmv.s f9, f10
	fmv.w.x f10, a0
	fsub.s f10, f18, f10
	jal fibFP
	fadd.s f10, f9, f10
	fadd.s f10, f8, f10
	j label2
label10:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f10, f18, f10
	jal fibFP
	lui a0, 260096
	fmv.s f8, f10
	fmv.w.x f10, a0
	fsub.s f10, f18, f10
	jal fibFP
	fadd.s f8, f8, f10
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 262144
	fsub.s f18, f9, f10
	fmv.w.x f10, a0
	flt.s a0, f18, f10
	beq a0, zero, label9
	j label80
takFP:
	addi sp, sp, -56
	fsw f8, 48(sp)
	fmv.s f8, f12
	fsw f21, 44(sp)
	fsw f9, 40(sp)
	fmv.s f9, f11
	fsw f22, 36(sp)
	fsw f18, 32(sp)
	fmv.s f18, f10
	fsw f19, 28(sp)
	fsw f20, 24(sp)
	sd s0, 16(sp)
	fsw f23, 12(sp)
	fsw f24, 8(sp)
	sd ra, 0(sp)
	flt.s a0, f11, f10
	beq a0, zero, label103
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f19, f18, f10
	flt.s a0, f11, f19
	beq a0, zero, label116
	j label206
label116:
	fmv.s f19, f8
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	flt.s a0, f8, f20
	beq a0, zero, label123
	j label122
label103:
	fmv.s f10, f8
	ld ra, 0(sp)
	flw f24, 8(sp)
	flw f23, 12(sp)
	ld s0, 16(sp)
	flw f20, 24(sp)
	flw f19, 28(sp)
	flw f18, 32(sp)
	flw f22, 36(sp)
	flw f9, 40(sp)
	flw f21, 44(sp)
	flw f8, 48(sp)
	addi sp, sp, 56
	ret
label122:
	fmv.s f21, f8
	fmv.s f22, f18
	j label89
label123:
	fmv.s f20, f18
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f8, f8, f10
	flt.s a0, f18, f8
	beq a0, zero, label146
	j label95
label99:
	lui s0, 260096
	fmv.s f11, f20
	fmv.w.x f10, s0
	fmv.s f12, f21
	fsub.s f10, f19, f10
	jal takFP
	fmv.s f11, f21
	fmv.s f22, f10
	fmv.s f12, f19
	fmv.w.x f10, s0
	fsub.s f10, f20, f10
	jal takFP
	fmv.s f11, f19
	fmv.s f23, f10
	fmv.s f12, f20
	fmv.w.x f10, s0
	fsub.s f10, f21, f10
	jal takFP
	flt.s a0, f23, f22
	beq a0, zero, label179
	fmv.s f19, f22
	fmv.s f20, f23
	fmv.s f21, f10
	j label99
label179:
	fmv.s f19, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	flt.s a0, f8, f20
	beq a0, zero, label123
	j label122
label206:
	fmv.s f20, f9
	fmv.s f21, f8
	j label99
label95:
	lui s0, 260096
	fmv.s f11, f18
	fmv.w.x f10, s0
	fmv.s f12, f9
	fsub.s f10, f8, f10
	jal takFP
	fmv.s f11, f9
	fmv.s f21, f10
	fmv.s f12, f8
	fmv.w.x f10, s0
	fsub.s f10, f18, f10
	jal takFP
	fmv.s f11, f8
	fmv.s f22, f10
	fmv.s f12, f18
	fmv.w.x f10, s0
	fsub.s f10, f9, f10
	jal takFP
	flt.s a0, f22, f21
	beq a0, zero, label163
	fmv.s f8, f21
	fmv.s f18, f22
	fmv.s f9, f10
	j label95
label163:
	fmv.s f8, f10
	fmv.s f9, f20
	fmv.s f18, f19
	flt.s a0, f20, f19
	beq a0, zero, label103
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f19, f19, f10
	flt.s a0, f20, f19
	beq a0, zero, label116
	j label206
label89:
	lui s0, 260096
	fmv.s f11, f21
	fmv.w.x f10, s0
	fmv.s f12, f22
	fsub.s f10, f20, f10
	jal takFP
	fmv.s f11, f22
	fmv.s f23, f10
	fmv.s f12, f20
	fmv.w.x f10, s0
	fsub.s f10, f21, f10
	jal takFP
	fmv.s f11, f20
	fmv.s f24, f10
	fmv.s f12, f21
	fmv.w.x f10, s0
	fsub.s f10, f22, f10
	jal takFP
	flt.s a0, f24, f23
	beq a0, zero, label139
	fmv.s f20, f23
	fmv.s f21, f24
	fmv.s f22, f10
	j label89
label139:
	fmv.s f20, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f8, f8, f10
	flt.s a0, f18, f8
	beq a0, zero, label146
	j label95
label146:
	fmv.s f8, f9
	fmv.s f18, f19
	fmv.s f9, f20
	flt.s a0, f20, f19
	beq a0, zero, label103
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f19, f19, f10
	flt.s a0, f20, f19
	beq a0, zero, label116
	j label206
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
pcrel262:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel262)
	flw f11, 0(a0)
	flw f11, 0(a0)
	feq.s a0, f10, f11
	beq a0, zero, label221
	li a0, 112
	jal putch
	lui a0, 262144
	fmv.w.x f10, a0
	feq.s a0, f8, f10
	beq a0, zero, label248
label260:
	li a0, 112
	jal putch
	j label219
label221:
	li a0, 1
	jal putint
	lui a0, 262144
	fmv.w.x f10, a0
	feq.s a0, f8, f10
	beq a0, zero, label248
	j label260
label248:
	li a0, 1
	jal putint
label219:
	li a0, 40
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	flw f8, 8(sp)
	flw f9, 12(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
