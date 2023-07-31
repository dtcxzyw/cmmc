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
	bge s3, zero, label5
	fmv.w.x f10, zero
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
label5:
	bge s2, zero, label17
	fmv.w.x f11, zero
	j label6
label71:
	fmv.w.x f11, zero
	fsub.s f10, f9, f11
label24:
	fadd.s f8, f8, f10
	bge s3, zero, label26
	fmv.w.x f10, zero
	fsub.s f10, f8, f10
	j label2
label26:
	bge s2, zero, label38
	fmv.w.x f11, zero
	j label27
label38:
	blt s1, zero, label145
	fmv.s f10, f8
	mv a0, s0
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s0
	jal func
	fsub.s f11, f9, f10
	j label40
label17:
	blt s1, zero, label94
	fmv.s f10, f8
	mv a0, s0
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s0
	jal func
	fsub.s f10, f9, f10
	j label18
label6:
	fadd.s f9, f8, f11
	blt s2, zero, label71
	j label10
label94:
	fmv.w.x f10, zero
label18:
	fadd.s f9, f8, f10
	blt s1, zero, label99
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
label10:
	blt s1, zero, label76
	j label16
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
label27:
	fadd.s f9, f8, f11
	blt s2, zero, label122
	j label31
label145:
	fmv.w.x f11, zero
label40:
	fadd.s f9, f8, f11
	bge s1, zero, label44
	fmv.w.x f10, zero
	fsub.s f11, f9, f10
	j label27
label31:
	blt s1, zero, label127
	fmv.s f10, f9
	mv a0, s0
	jal func
	fadd.s f18, f9, f10
	fmv.s f10, f18
	mv a0, s0
	jal func
	fsub.s f11, f18, f10
label33:
	fadd.s f18, f9, f11
	bge s1, zero, label37
	fmv.w.x f10, zero
	fsub.s f11, f18, f10
	fsub.s f10, f9, f11
	fsub.s f10, f8, f10
	j label2
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
label44:
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
label122:
	fmv.w.x f11, zero
	fsub.s f10, f9, f11
	fsub.s f10, f8, f10
	j label2
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
label76:
	fmv.w.x f10, zero
	j label11
label99:
	fmv.w.x f11, zero
	fsub.s f11, f9, f11
	j label6
label127:
	fmv.w.x f11, zero
	j label33
.globl main
main:
.p2align 2
	addi sp, sp, -8
	li a0, 21
	sd ra, 0(sp)
	jal _sysy_starttime
	jal getint
pcrel197:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a2, %pcrel_lo(pcrel197)
	flw f10, 0(a1)
	jal func
	fmv.w.x f11, zero
	feq.s a0, f10, f11
	beq a0, zero, label183
	li a0, 112
	jal putch
label183:
	li a0, 32
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
