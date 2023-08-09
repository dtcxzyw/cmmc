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
pcrel157:
	auipc a2, %pcrel_hi(lut_fibFP)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel157)
	fsw f8, 8(sp)
	mv a2, zero
	fmv.s f8, f10
	sd s0, 16(sp)
	fsw f9, 24(sp)
	jal cmmcCacheLookup
	lw a1, 12(a0)
	mv s0, a0
	beq a1, zero, label107
	flw f10, 8(a0)
label105:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s0, 16(sp)
	flw f9, 24(sp)
	addi sp, sp, 32
	ret
label107:
	lui a1, 262144
	fmv.w.x f10, a1
	flt.s a0, f8, f10
	beq a0, zero, label109
	li a0, 1
	lui a1, 260096
	sw a0, 12(s0)
	fmv.w.x f10, a1
	fsw f10, 8(s0)
	j label105
label109:
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
	j label105
.p2align 2
takFP:
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
label2:
	flt.s a0, f9, f18
	beq a0, zero, label23
	lui a1, 260096
	fmv.w.x f10, a1
	fsub.s f20, f18, f10
	flt.s a0, f9, f20
	beq a0, zero, label35
	fmv.s f19, f9
	fmv.s f21, f8
label19:
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
	bne a0, zero, label87
	fmv.s f19, f10
	j label7
label23:
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
label35:
	fmv.s f19, f8
label7:
	lui a1, 260096
	fmv.w.x f10, a1
	fsub.s f20, f9, f10
	flt.s a0, f8, f20
	bne a0, zero, label43
	fmv.s f21, f18
label9:
	lui a1, 260096
	fmv.w.x f10, a1
	fsub.s f8, f8, f10
	flt.s a0, f18, f8
	beq a0, zero, label50
label11:
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
	bne a0, zero, label63
	fmv.s f8, f10
	fmv.s f9, f21
	fmv.s f18, f19
	j label2
label43:
	fmv.s f21, f8
	fmv.s f22, f18
label15:
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
	bne a0, zero, label75
	fmv.s f21, f10
	j label9
label50:
	fmv.s f8, f9
	fmv.s f18, f19
	fmv.s f9, f21
	j label2
label63:
	fmv.s f8, f20
	fmv.s f18, f22
	fmv.s f9, f10
	j label11
label87:
	fmv.s f20, f22
	fmv.s f19, f23
	fmv.s f21, f10
	j label19
label75:
	fmv.s f20, f23
	fmv.s f21, f24
	fmv.s f22, f10
	j label15
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
pcrel195:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a2, %pcrel_lo(pcrel195)
	flw f11, 0(a0)
	feq.s a1, f10, f11
	beq a1, zero, label164
	li a0, 112
	jal putch
label159:
	lui a1, 260096
	fmv.w.x f10, a1
	feq.s a0, f8, f10
	beq a0, zero, label162
	li a0, 112
	jal putch
label161:
	li a0, 41
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	flw f9, 16(sp)
	flw f8, 20(sp)
	addi sp, sp, 24
	ret
label164:
	li a0, 1
	jal putint
	j label159
label162:
	li a0, 1
	jal putint
	j label161
