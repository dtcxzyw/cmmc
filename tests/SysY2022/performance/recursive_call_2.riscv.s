.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065361605
.text
func:
.p2align 2
	addi sp, sp, -64
	sd ra, 0(sp)
	fsw f8, 8(sp)
	fmv.s f8, f10
	sd s3, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s0, 40(sp)
	fsw f9, 48(sp)
	fsw f18, 52(sp)
	fsw f19, 56(sp)
	blt a0, zero, label51
	addiw s3, a0, -1
	addiw s2, a0, -2
	addiw s1, a0, -3
	addiw s0, a0, -4
	blt s3, zero, label62
	bge s2, zero, label17
	fmv.w.x f11, zero
label6:
	fadd.s f9, f8, f11
	bge s2, zero, label10
	fmv.w.x f11, zero
	fsub.s f10, f9, f11
	j label24
label51:
	fmv.w.x f10, zero
label2:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	flw f9, 48(sp)
	flw f18, 52(sp)
	flw f19, 56(sp)
	addi sp, sp, 64
	ret
label62:
	fmv.w.x f10, zero
label24:
	fadd.s f8, f8, f10
	bge s3, zero, label26
	fmv.w.x f10, zero
	fsub.s f10, f8, f10
	j label2
label26:
	blt s2, zero, label117
	bge s1, zero, label39
	fmv.w.x f11, zero
label40:
	fadd.s f9, f8, f11
	blt s1, zero, label154
	fmv.s f10, f9
	mv a0, s0
	jal func
	fadd.s f18, f9, f10
	fmv.s f10, f18
	mv a0, s0
	jal func
	fsub.s f10, f18, f10
	fsub.s f11, f9, f10
	j label27
label117:
	fmv.w.x f11, zero
label27:
	fadd.s f9, f8, f11
	blt s2, zero, label122
	bge s1, zero, label32
	fmv.w.x f11, zero
label33:
	fadd.s f18, f9, f11
	bge s1, zero, label37
	fmv.w.x f10, zero
	fsub.s f11, f18, f10
	fsub.s f10, f9, f11
	fsub.s f10, f8, f10
	j label2
label122:
	fmv.w.x f11, zero
	fsub.s f10, f9, f11
	fsub.s f10, f8, f10
	j label2
label17:
	bge s1, zero, label23
	fmv.w.x f10, zero
	j label18
label10:
	bge s1, zero, label16
	fmv.w.x f10, zero
	j label11
label32:
	fmv.s f10, f9
	mv a0, s0
	jal func
	fadd.s f18, f9, f10
	fmv.s f10, f18
	mv a0, s0
	jal func
	fsub.s f11, f18, f10
	j label33
label154:
	fmv.w.x f10, zero
	fsub.s f11, f9, f10
	j label27
label37:
	fmv.s f10, f18
	mv a0, s0
	jal func
	fadd.s f19, f18, f10
	fmv.s f10, f19
	mv a0, s0
	jal func
	fsub.s f10, f19, f10
	fsub.s f11, f18, f10
	fsub.s f10, f9, f11
	fsub.s f10, f8, f10
	j label2
label39:
	fmv.s f10, f8
	mv a0, s0
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s0
	jal func
	fsub.s f11, f9, f10
	j label40
label11:
	fadd.s f18, f9, f10
	blt s1, zero, label81
	j label15
label16:
	fmv.s f10, f9
	mv a0, s0
	jal func
	fadd.s f18, f9, f10
	fmv.s f10, f18
	mv a0, s0
	jal func
	fsub.s f10, f18, f10
	j label11
label15:
	fmv.s f10, f18
	mv a0, s0
	jal func
	fadd.s f19, f18, f10
	fmv.s f10, f19
	mv a0, s0
	jal func
	fsub.s f11, f19, f10
	fsub.s f11, f18, f11
	fsub.s f10, f9, f11
	j label24
label81:
	fmv.w.x f11, zero
	fsub.s f11, f18, f11
	fsub.s f10, f9, f11
	j label24
label18:
	fadd.s f9, f8, f10
	blt s1, zero, label99
	j label20
label23:
	fmv.s f10, f8
	mv a0, s0
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s0
	jal func
	fsub.s f10, f9, f10
	j label18
label20:
	fmv.s f10, f9
	mv a0, s0
	jal func
	fadd.s f18, f9, f10
	fmv.s f10, f18
	mv a0, s0
	jal func
	fsub.s f11, f18, f10
	fsub.s f11, f9, f11
	j label6
label99:
	fmv.w.x f11, zero
	fsub.s f11, f9, f11
	j label6
.globl main
main:
.p2align 2
	addi sp, sp, -8
	li a0, 21
	sd ra, 0(sp)
	jal _sysy_starttime
	jal getint
pcrel198:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a2, %pcrel_lo(pcrel198)
	flw f10, 0(a1)
	jal func
	fmv.w.x f11, zero
	feq.s a0, f10, f11
	beq a0, zero, label184
	li a0, 112
	jal putch
label184:
	li a0, 32
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
