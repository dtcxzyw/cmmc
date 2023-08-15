.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1276451850
.bss
.align 8
lut_fibFP:
	.zero	16336
.text
.p2align 2
fibFP:
	addi sp, sp, -32
	fmv.x.w a1, f10
pcrel159:
	auipc a2, %pcrel_hi(lut_fibFP)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel159)
	fsw f8, 8(sp)
	mv a2, zero
	fmv.s f8, f10
	sd s0, 16(sp)
	fsw f9, 24(sp)
	jal cmmcCacheLookup
	lw a1, 12(a0)
	mv s0, a0
	beq a1, zero, label109
	flw f10, 8(a0)
label107:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s0, 16(sp)
	flw f9, 24(sp)
	addi sp, sp, 32
	ret
label109:
	lui a1, 262144
	fmv.w.x f10, a1
	flt.s a0, f8, f10
	beq a0, zero, label111
	li a0, 1
	lui a1, 260096
	sw a0, 12(s0)
	fmv.w.x f10, a1
	fsw f10, 8(s0)
	j label107
label111:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f8, f11
	jal fibFP
	lui a0, 260096
	fmv.s f9, f10
	fmv.w.x f11, a0
	fsub.s f10, f8, f11
	jal fibFP
	li a0, 1
	sw a0, 12(s0)
	fadd.s f10, f9, f10
	fsw f10, 8(s0)
	j label107
.p2align 2
takFP:
	addi sp, sp, -48
	flt.s a0, f11, f10
	sd ra, 0(sp)
	fsw f8, 8(sp)
	fsw f21, 12(sp)
	fsw f9, 16(sp)
	fsw f22, 20(sp)
	fsw f18, 24(sp)
	fsw f19, 28(sp)
	fsw f20, 32(sp)
	fsw f24, 36(sp)
	fsw f23, 40(sp)
	fsw f25, 44(sp)
	beq a0, zero, label30
	fmv.s f8, f10
	fmv.s f9, f11
	fmv.s f18, f12
	j label4
label92:
	fmv.s f8, f19
	fmv.s f9, f20
label4:
	lui a1, 260096
	fmv.w.x f10, a1
	fsub.s f19, f8, f10
	flt.s a0, f9, f19
	bne a0, zero, label38
	fmv.s f19, f18
	j label12
label50:
	fmv.s f19, f22
	fmv.s f20, f23
	fmv.s f21, f10
label8:
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
	bne a0, zero, label50
	fmv.s f19, f10
label12:
	lui a1, 260096
	fmv.w.x f10, a1
	fsub.s f20, f9, f10
	flt.s a0, f18, f20
	bne a0, zero, label57
	fmv.s f20, f8
	j label18
label57:
	fmv.s f21, f18
	fmv.s f22, f8
label14:
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
	bne a0, zero, label69
	fmv.s f20, f10
label18:
	lui a1, 260096
	fmv.w.x f10, a1
	fsub.s f18, f18, f10
	flt.s a0, f8, f18
	bne a0, zero, label20
	fmv.s f18, f9
	j label24
label88:
	fmv.s f18, f21
	fmv.s f8, f22
	fmv.s f9, f10
label20:
	lui a0, 260096
	fmv.s f11, f8
	fmv.w.x f23, a0
	fmv.s f12, f9
	fsub.s f10, f18, f23
	jal takFP
	fmv.s f11, f9
	fmv.s f21, f10
	fmv.s f12, f18
	fsub.s f10, f8, f23
	jal takFP
	fmv.s f11, f18
	fmv.s f22, f10
	fmv.s f12, f8
	fsub.s f10, f9, f23
	jal takFP
	flt.s a0, f22, f21
	bne a0, zero, label88
	fmv.s f18, f10
label24:
	flt.s a0, f20, f19
	bne a0, zero, label92
	fmv.s f10, f18
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f21, 12(sp)
	flw f9, 16(sp)
	flw f22, 20(sp)
	flw f18, 24(sp)
	flw f19, 28(sp)
	flw f20, 32(sp)
	flw f24, 36(sp)
	flw f23, 40(sp)
	flw f25, 44(sp)
	addi sp, sp, 48
	ret
label69:
	fmv.s f20, f23
	fmv.s f21, f24
	fmv.s f22, f10
	j label14
label30:
	fmv.s f10, f12
	j label2
label38:
	fmv.s f20, f9
	fmv.s f21, f18
	j label8
.p2align 2
.globl main
main:
	addi sp, sp, -24
	li a0, 20
	sd ra, 0(sp)
	sd s0, 8(sp)
	fsw f9, 16(sp)
	fsw f8, 20(sp)
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
	fcvt.s.w f11, s0
	fmv.s f8, f10
	fmv.w.x f12, a0
	fadd.s f10, f11, f12
	jal fibFP
pcrel197:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a2, %pcrel_lo(pcrel197)
	flw f11, 0(a0)
	feq.s a1, f10, f11
	beq a1, zero, label166
	li a0, 112
	jal putch
label161:
	lui a1, 260096
	fmv.w.x f10, a1
	feq.s a0, f8, f10
	beq a0, zero, label164
	li a0, 112
	jal putch
label163:
	li a0, 41
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	flw f9, 16(sp)
	flw f8, 20(sp)
	addi sp, sp, 24
	ret
label166:
	li a0, 1
	jal putint
	j label161
label164:
	li a0, 1
	jal putint
	j label163
