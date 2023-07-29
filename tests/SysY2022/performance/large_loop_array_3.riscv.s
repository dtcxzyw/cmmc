.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1518488747
	.4byte	897988541
	.4byte	3045472189
	.4byte	1045220557
	.4byte	1036831949
.bss
.align 4
y:
	.zero	32768
.align 4
x:
	.zero	32768
.text
.globl main
main:
.p2align 2
	addi sp, sp, -32
	sd s0, 24(sp)
	sd s1, 16(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	jal getint
	addiw s1, a0, -4
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	mv a4, zero
	fmv.w.x f8, zero
pcrel241:
	auipc a2, %pcrel_hi(y)
pcrel242:
	auipc a1, %pcrel_hi(x)
	fmv.s f11, f8
	addi a0, a1, %pcrel_lo(pcrel242)
	addi a1, a2, %pcrel_lo(pcrel241)
	lui a2, 260096
	fmv.w.x f10, a2
	mv a2, zero
	li a3, 100000
	blt zero, a3, label13
label8:
	li a0, 39
	jal _sysy_stoptime
pcrel243:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel243)
	flw f12, 0(a0)
	flw f11, 4(a0)
	fsub.s f10, f8, f12
	flw f12, 8(a0)
	fle.s a1, f10, f11
	fle.s a2, f12, f10
	or a0, a1, a2
	bne a0, zero, label12
	j label11
label9:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	addi sp, sp, 32
	ret
label11:
	li a0, 1
	jal putint
	li a0, 1
	j label9
.p2align 2
label138:
	mv a3, a4
	fcvt.s.w f12, a4
	addiw t0, a4, 1
	sh2add a4, a4, a0
	sh2add a5, a3, a1
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a4)
	fsw f12, 0(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 2
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 4(a4)
	fsw f12, 4(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 3
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 8(a4)
	fsw f12, 8(a5)
	fcvt.s.w f12, t0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 12(a4)
	addiw a4, a3, 4
	fsw f12, 12(a5)
	bgt s1, a4, label138
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label26
	mv a3, s0
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 100000
	bge a2, a3, label8
.p2align 2
label13:
	li t0, 1717986919
	mul a3, a2, t0
	srli t0, a3, 63
	srai a5, a3, 34
	add a3, t0, a5
	sh2add t1, a3, a3
	slliw a5, t1, 1
pcrel244:
	auipc t1, %pcrel_hi(__cmmc_fp_constant_pool)
	subw t0, a2, a5
	addi a5, t1, %pcrel_lo(pcrel244)
	sltu a3, zero, t0
	flw f13, 12(a5)
	lui t0, 260096
	fadd.s f12, f10, f13
	fmv.w.x f13, t0
	fmv.s f10, f13
	bne a3, zero, label205
	fmv.s f10, f12
.p2align 2
label205:
	flw f13, 16(a5)
	fmv.w.x f14, zero
	fadd.s f12, f11, f13
	fmv.s f11, f14
	bne a3, zero, label207
	fmv.s f11, f12
.p2align 2
label207:
	bgt s0, a4, label25
	mv a3, a4
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	li a3, 100000
	blt a2, a3, label13
	j label8
.p2align 2
label18:
	li a4, 4
	bgt s0, a4, label87
	fmv.w.x f13, zero
	mv a4, zero
	mv t0, a0
	mv a5, a1
	flw f12, 0(a0)
	li a4, 1
	flw f14, 0(a1)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label19
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label13
	j label8
.p2align 2
label25:
	addiw a3, a4, 4
	bgt s0, a3, label138
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label26
	mv a3, s0
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 100000
	blt a2, a3, label13
	j label8
.p2align 2
label26:
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label26
	mv a3, s0
	bgt s0, zero, label18
	fmv.w.x f13, zero
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, s0
	li a3, 100000
	blt a2, a3, label13
	j label8
.p2align 2
label87:
	fmv.w.x f12, zero
	mv a4, zero
	j label22
.p2align 2
label19:
	sh2add t0, a4, a0
	sh2add a5, a4, a1
	flw f12, 0(t0)
	addiw a4, a4, 1
	flw f14, 0(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label19
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label13
	j label8
.p2align 2
label22:
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f13, 0(a5)
	addiw a4, a4, 4
	flw f15, 0(t0)
	fmul.s f14, f13, f15
	flw f13, 4(a5)
	fadd.s f12, f12, f14
	flw f14, 4(t0)
	fmul.s f15, f13, f14
	flw f13, 8(a5)
	fadd.s f12, f12, f15
	flw f15, 8(t0)
	fmul.s f14, f13, f15
	flw f13, 12(a5)
	fadd.s f12, f12, f14
	flw f14, 12(t0)
	fmul.s f15, f13, f14
	fadd.s f13, f12, f15
	bgt s1, a4, label133
	sh2add t0, a4, a0
	sh2add a5, a4, a1
	flw f12, 0(t0)
	addiw a4, a4, 1
	flw f14, 0(a5)
	fmul.s f12, f12, f14
	fadd.s f13, f13, f12
	bgt s0, a4, label19
	fadd.s f8, f8, f13
	addiw a2, a2, 1
	mv a4, a3
	li a3, 100000
	blt a2, a3, label13
	j label8
.p2align 2
label133:
	fmv.s f12, f13
	j label22
label12:
	mv a0, zero
	jal putint
	mv a0, zero
	j label9
