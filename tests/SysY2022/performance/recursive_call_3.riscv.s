.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1065361605
.text
func:
	addi sp, sp, -48
	fsw f8, 40(sp)
	fmv.s f8, f10
	sd s0, 32(sp)
	mv s0, a0
	sd s2, 24(sp)
	fsw f9, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	bge a0, zero, label4
	fmv.w.x f10, zero
label2:
	ld ra, 0(sp)
	ld s1, 8(sp)
	flw f9, 16(sp)
	ld s2, 24(sp)
	ld s0, 32(sp)
	flw f8, 40(sp)
	addi sp, sp, 48
	ret
label4:
	addiw s2, s0, -1
	bge s2, zero, label10
	fmv.w.x f10, zero
label5:
	fadd.s f8, f8, f10
	bge s2, zero, label9
	fmv.w.x f10, zero
	fsub.s f10, f8, f10
	j label2
label9:
	addiw s0, s0, -2
	fmv.s f10, f8
	mv a0, s0
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s0
	jal func
	fsub.s f10, f9, f10
	fsub.s f10, f8, f10
	j label2
label10:
	addiw s1, s0, -2
	fmv.s f10, f8
	mv a0, s1
	jal func
	fadd.s f9, f8, f10
	fmv.s f10, f9
	mv a0, s1
	jal func
	fsub.s f10, f9, f10
	j label5
.globl main
main:
	addi sp, sp, -8
	li a0, 21
	sd ra, 0(sp)
	jal _sysy_starttime
	jal getint
pcrel62:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a1, a2, %pcrel_lo(pcrel62)
	flw f11, 0(a1)
	fmv.s f10, f11
	jal func
	fmv.w.x f12, zero
	fsub.s f11, f10, f11
	feq.s a0, f11, f12
	bne a0, zero, label47
label48:
	li a0, 32
	jal _sysy_stoptime
	ld ra, 0(sp)
	mv a0, zero
	addi sp, sp, 8
	ret
label47:
	li a0, 112
	jal putch
	j label48
