.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1276451850
.text
fibFP:
.p2align 2
	addi sp, sp, -32
	lui a1, 262144
	sd ra, 0(sp)
	fsw f18, 8(sp)
	fmv.s f18, f10
	fsw f19, 12(sp)
	fmv.w.x f10, a1
	fsw f8, 16(sp)
	flt.s a0, f18, f10
	fsw f9, 20(sp)
	fsw f20, 24(sp)
	bne a0, zero, label52
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f19, f18, f10
	flt.s a0, f19, f10
	beq a0, zero, label5
	lui a0, 260096
	fmv.w.x f8, a0
label24:
	lui a0, 260096
	lui a1, 262144
	fmv.w.x f10, a0
	fsub.s f19, f18, f10
	fmv.w.x f10, a1
	flt.s a0, f19, f10
	beq a0, zero, label26
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f10, f8, f10
	j label2
label52:
	lui a0, 260096
	fmv.w.x f10, a0
label2:
	ld ra, 0(sp)
	flw f18, 8(sp)
	flw f19, 12(sp)
	flw f8, 16(sp)
	flw f9, 20(sp)
	flw f20, 24(sp)
	addi sp, sp, 32
	ret
label26:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f18, f19, f10
	flt.s a0, f18, f10
	bne a0, zero, label180
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f20, f18, f10
	flt.s a0, f20, f10
	beq a0, zero, label28
	lui a0, 260096
	fmv.w.x f9, a0
label29:
	lui a0, 260096
	lui a1, 262144
	fmv.w.x f10, a0
	fsub.s f20, f18, f10
	fmv.w.x f10, a1
	flt.s a0, f20, f10
	beq a0, zero, label31
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f9, f9, f10
	j label34
label5:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f9, f19, f10
	flt.s a0, f9, f10
	beq a0, zero, label6
	lui a0, 260096
	fmv.w.x f8, a0
label13:
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 262144
	fsub.s f19, f19, f10
	fmv.w.x f10, a0
	flt.s a1, f19, f10
	bne a1, zero, label120
	fsub.s f20, f19, f10
	flt.s a0, f20, f10
	bne a0, zero, label130
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f9, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f9, f9, f10
	j label18
label180:
	lui a0, 260096
	fmv.w.x f9, a0
label34:
	lui a0, 260096
	fmv.w.x f10, a0
	lui a0, 262144
	fsub.s f19, f19, f10
	fmv.w.x f10, a0
	flt.s a1, f19, f10
	beq a1, zero, label36
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f10, f9, f10
	fadd.s f10, f8, f10
	j label2
label36:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f20, f19, f10
	flt.s a0, f20, f10
	beq a0, zero, label37
	lui a0, 260096
	fmv.w.x f18, a0
	j label38
label120:
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f8, f8, f10
	j label24
label6:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	flt.s a0, f20, f10
	beq a0, zero, label12
	lui a0, 260096
	fmv.w.x f8, a0
label7:
	lui a0, 260096
	lui a1, 262144
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	fmv.w.x f10, a1
	flt.s a0, f20, f10
	beq a0, zero, label11
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f8, f8, f10
	j label13
label31:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f18, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f10, f18, f10
	fadd.s f9, f9, f10
	j label34
label37:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f18, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f18, f18, f10
label38:
	lui a0, 260096
	lui a1, 262144
	fmv.w.x f10, a0
	fsub.s f20, f19, f10
	fmv.w.x f10, a1
	flt.s a0, f20, f10
	bne a0, zero, label259
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f19, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f10, f19, f10
	fadd.s f10, f18, f10
	fadd.s f10, f9, f10
	fadd.s f10, f8, f10
	j label2
label12:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f8, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f8, f8, f10
	j label7
label11:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f9, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f10, f9, f10
	fadd.s f8, f8, f10
	j label13
label28:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f9, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f9, f9, f10
	j label29
label130:
	lui a0, 260096
	fmv.w.x f9, a0
label18:
	lui a0, 260096
	lui a1, 262144
	fmv.w.x f10, a0
	fsub.s f20, f19, f10
	fmv.w.x f10, a1
	flt.s a0, f20, f10
	beq a0, zero, label22
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f10, f9, f10
	fadd.s f8, f8, f10
	j label24
label22:
	lui a0, 262144
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	lui a0, 260096
	fmv.s f19, f10
	fmv.w.x f11, a0
	fsub.s f10, f20, f11
	jal fibFP
	fadd.s f10, f19, f10
	fadd.s f10, f9, f10
	fadd.s f8, f8, f10
	j label24
label259:
	lui a0, 260096
	fmv.w.x f10, a0
	fadd.s f10, f18, f10
	fadd.s f10, f9, f10
	fadd.s f10, f8, f10
	j label2
takFP:
.p2align 2
	addi sp, sp, -48
	sd ra, 0(sp)
	fsw f8, 8(sp)
	fmv.s f8, f12
	fsw f21, 12(sp)
	fsw f9, 16(sp)
	fmv.s f9, f11
	fsw f22, 20(sp)
	fsw f18, 24(sp)
	fmv.s f18, f10
	fsw f20, 28(sp)
	fsw f19, 32(sp)
	fsw f23, 36(sp)
	fsw f25, 40(sp)
	fsw f24, 44(sp)
label292:
	flt.s a0, f9, f18
	beq a0, zero, label313
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f20, f18, f10
	flt.s a0, f9, f20
	beq a0, zero, label325
	fmv.s f19, f9
	fmv.s f21, f8
label309:
	lui a0, 260096
	fmv.s f11, f19
	fmv.w.x f24, a0
	fmv.s f12, f21
	fsub.s f10, f20, f24
	jal takFP
	fmv.s f11, f21
	fmv.s f22, f10
	fmv.s f12, f20
	fsub.s f10, f19, f24
	jal takFP
	fmv.s f11, f20
	fmv.s f23, f10
	fmv.s f12, f19
	fsub.s f10, f21, f24
	jal takFP
	flt.s a0, f23, f22
	bne a0, zero, label377
	fmv.s f19, f10
	j label297
label313:
	fmv.s f10, f8
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f21, 12(sp)
	flw f9, 16(sp)
	flw f22, 20(sp)
	flw f18, 24(sp)
	flw f20, 28(sp)
	flw f19, 32(sp)
	flw f23, 36(sp)
	flw f25, 40(sp)
	flw f24, 44(sp)
	addi sp, sp, 48
	ret
label325:
	fmv.s f19, f8
label297:
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f20, f9, f10
	flt.s a0, f8, f20
	bne a0, zero, label333
	fmv.s f21, f18
label299:
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f8, f8, f10
	flt.s a0, f18, f8
	bne a0, zero, label301
	fmv.s f8, f9
	fmv.s f18, f19
	fmv.s f9, f21
	j label292
label333:
	fmv.s f21, f8
	fmv.s f22, f18
label305:
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
	bne a0, zero, label365
	fmv.s f21, f10
	j label299
label301:
	lui a0, 260096
	fmv.s f11, f18
	fmv.w.x f23, a0
	fmv.s f12, f9
	fsub.s f10, f8, f23
	jal takFP
	fmv.s f11, f9
	fmv.s f20, f10
	fmv.s f12, f8
	fsub.s f10, f18, f23
	jal takFP
	fmv.s f11, f8
	fmv.s f22, f10
	fmv.s f12, f18
	fsub.s f10, f9, f23
	jal takFP
	flt.s a0, f22, f20
	bne a0, zero, label353
	fmv.s f8, f10
	fmv.s f9, f21
	fmv.s f18, f19
	j label292
label353:
	fmv.s f8, f20
	fmv.s f18, f22
	fmv.s f9, f10
	j label301
label377:
	fmv.s f20, f22
	fmv.s f19, f23
	fmv.s f21, f10
	j label309
label365:
	fmv.s f20, f23
	fmv.s f21, f24
	fmv.s f22, f10
	j label305
.globl main
main:
.p2align 2
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
	fmv.s f8, f10
	fmv.w.x f11, a0
	fcvt.s.w f10, s0
	fadd.s f10, f10, f11
	jal fibFP
pcrel429:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a0, %pcrel_lo(pcrel429)
	flw f11, 0(a1)
	feq.s a0, f10, f11
	bne a0, zero, label397
	j label398
label393:
	lui a0, 260096
	fmv.w.x f10, a0
	feq.s a1, f8, f10
	beq a1, zero, label396
	li a0, 112
	jal putch
label395:
	li a0, 41
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	flw f9, 16(sp)
	flw f8, 20(sp)
	addi sp, sp, 24
	ret
label397:
	li a0, 112
	jal putch
	j label393
label398:
	li a0, 1
	jal putint
	j label393
label396:
	li a0, 1
	jal putint
	j label395
