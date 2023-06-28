.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1276451850
.bss
.text
fibFP:
	addi sp, sp, -16
	fsw f8, 12(sp)
	fsw f9, 8(sp)
	sd ra, 0(sp)
	fmv.s f8, f10
	lui a0, 262144
	fmv.w.x f10, a0
	flt.s a0, f8, f10
	bne a0, zero, label12
	j label4
label12:
	lui a0, 260096
	fmv.w.x f10, a0
label2:
	ld ra, 0(sp)
	flw f9, 8(sp)
	flw f8, 12(sp)
	addi sp, sp, 16
	ret
label4:
	lui a0, 262144
	fmv.w.x f10, a0
	fsub.s f10, f8, f10
	jal fibFP
	fmv.s f9, f10
	lui a0, 260096
	fmv.w.x f10, a0
	fsub.s f10, f8, f10
	jal fibFP
	fadd.s f10, f9, f10
	j label2
takFP:
	addi sp, sp, -40
	fsw f8, 32(sp)
	fsw f9, 28(sp)
	fsw f18, 24(sp)
	sd s3, 16(sp)
	fsw f19, 12(sp)
	fsw f20, 8(sp)
	sd ra, 0(sp)
	flt.s a0, f11, f10
	bne a0, zero, label40
	fmv.s f10, f12
	j label33
label40:
	fmv.s f8, f10
	fmv.s f9, f11
	fmv.s f18, f12
label29:
	lui s3, 260096
	fmv.w.x f10, s3
	fsub.s f10, f8, f10
	fmv.s f11, f9
	fmv.s f12, f18
	jal takFP
	fmv.s f19, f10
	fmv.w.x f10, s3
	fsub.s f10, f9, f10
	fmv.s f11, f18
	fmv.s f12, f8
	jal takFP
	fmv.s f20, f10
	fmv.w.x f10, s3
	fsub.s f10, f18, f10
	fmv.s f11, f8
	fmv.s f12, f9
	jal takFP
	flt.s a0, f20, f19
	bne a0, zero, label56
	j label33
label56:
	fmv.s f8, f19
	fmv.s f9, f20
	fmv.s f18, f10
	j label29
label33:
	ld ra, 0(sp)
	flw f20, 8(sp)
	flw f19, 12(sp)
	ld s3, 16(sp)
	flw f18, 24(sp)
	flw f9, 28(sp)
	flw f8, 32(sp)
	addi sp, sp, 40
	ret
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	fsw f9, 12(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	li a0, 20
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
	fmv.s f8, f10
	fcvt.s.w f10, s0
	lui a0, 269824
	fmv.w.x f11, a0
	fadd.s f10, f11, f10
	jal fibFP
pcrel107:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel107)
	flw f11, 0(a0)
	flw f11, 0(a0)
	feq.s a0, f10, f11
	bne a0, zero, label66
	li a0, 1
	jal putint
	lui a0, 260096
	fmv.w.x f10, a0
	feq.s a0, f8, f10
	bne a0, zero, label68
label106:
	li a0, 1
	jal putint
	j label69
label66:
	li a0, 112
	jal putch
	lui a0, 260096
	fmv.w.x f10, a0
	feq.s a0, f8, f10
	bne a0, zero, label68
	j label106
label68:
	li a0, 112
	jal putch
label69:
	li a0, 41
	jal _sysy_stoptime
	mv a0, zero
	ld ra, 0(sp)
	flw f8, 8(sp)
	flw f9, 12(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
