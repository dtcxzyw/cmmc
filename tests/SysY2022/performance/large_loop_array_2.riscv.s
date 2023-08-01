.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1512217432
	.4byte	897988541
	.4byte	3045472189
	.4byte	1045220557
	.4byte	1036831949
.bss
.align 8
y:
	.zero	16384
.align 8
x:
	.zero	16384
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	fsw f8, 24(sp)
	jal getint
	addiw s1, a0, -8
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	mv a3, zero
	fmv.w.x f8, zero
pcrel275:
	auipc a2, %pcrel_hi(y)
pcrel276:
	auipc a1, %pcrel_hi(x)
	fmv.s f11, f8
	addi a0, a1, %pcrel_lo(pcrel276)
	addi a1, a2, %pcrel_lo(pcrel275)
	lui a2, 260096
	fmv.w.x f10, a2
	mv a2, zero
	li a4, 500000
	bge zero, a4, label8
.p2align 2
label13:
	li t0, 1717986919
	mul a4, a2, t0
	srli t0, a4, 63
	srai a5, a4, 34
	add a4, t0, a5
	sh2add t1, a4, a4
	slliw t0, t1, 1
	subw a5, a2, t0
pcrel277:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sltu a4, zero, a5
	addi a5, t0, %pcrel_lo(pcrel277)
	lui t0, 260096
	flw f13, 12(a5)
	fadd.s f12, f10, f13
	fmv.w.x f13, t0
	fmv.s f10, f13
	bne a4, zero, label253
	fmv.s f10, f12
.p2align 2
label253:
	flw f13, 16(a5)
	fmv.w.x f14, zero
	fadd.s f12, f11, f13
	fmv.s f11, f14
	bne a4, zero, label255
	fmv.s f11, f12
.p2align 2
label255:
	ble s0, a3, label19
	addiw a5, a3, 8
	bgt s0, a5, label17
	j label82
.p2align 2
label15:
	fcvt.s.w f12, a4
	sh2add a3, a4, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label15
	mv a3, s0
	bgt s0, zero, label23
	j label260
.p2align 2
label17:
	fcvt.s.w f12, a3
	addiw t0, a3, 1
	sh2add a4, a3, a0
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
	addiw t0, a3, 4
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 12(a4)
	fsw f12, 12(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 5
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 16(a4)
	fsw f12, 16(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 6
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 20(a4)
	fsw f12, 20(a5)
	fcvt.s.w f12, t0
	addiw t0, a3, 7
	fadd.s f13, f11, f12
	addiw a3, a3, 8
	fadd.s f12, f10, f12
	fsw f13, 24(a4)
	fsw f12, 24(a5)
	fcvt.s.w f12, t0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 28(a4)
	fsw f12, 28(a5)
	bgt s1, a3, label17
	mv a4, a3
	fcvt.s.w f12, a3
	sh2add a3, a3, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a3)
	sh2add a3, a4, a1
	addiw a4, a4, 1
	fsw f12, 0(a3)
	bgt s0, a4, label15
	j label261
.p2align 2
label23:
	li a4, 8
	ble s0, a4, label157
	fmv.w.x f12, zero
	mv a4, zero
	j label27
.p2align 2
label24:
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f13, 0(a5)
	addiw a4, a4, 1
	flw f14, 0(t0)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	bgt s0, a4, label24
.p2align 2
label172:
	fadd.s f8, f8, f12
	addiw a2, a2, 1
	li a4, 500000
	blt a2, a4, label13
	j label8
.p2align 2
label27:
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f13, 0(a5)
	addiw a4, a4, 8
	flw f14, 0(t0)
	fmul.s f15, f13, f14
	flw f13, 4(a5)
	flw f14, 4(t0)
	fadd.s f12, f12, f15
	fmul.s f15, f13, f14
	flw f13, 8(a5)
	fadd.s f12, f12, f15
	flw f15, 8(t0)
	fmul.s f14, f13, f15
	flw f13, 12(a5)
	flw f15, 12(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	flw f13, 16(a5)
	flw f15, 16(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	flw f13, 20(a5)
	fadd.s f12, f12, f14
	flw f14, 20(t0)
	fmul.s f15, f13, f14
	flw f13, 24(a5)
	fadd.s f12, f12, f15
	flw f15, 24(t0)
	fmul.s f14, f13, f15
	flw f13, 28(a5)
	flw f15, 28(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	fadd.s f12, f12, f14
	bgt s1, a4, label27
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	flw f13, 0(a5)
	addiw a4, a4, 1
	flw f14, 0(t0)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	bgt s0, a4, label24
	fadd.s f8, f8, f12
	addiw a2, a2, 1
	li a4, 500000
	blt a2, a4, label13
	j label8
label19:
	bgt s0, zero, label23
label260:
	fmv.w.x f12, zero
	j label21
label261:
	mv a3, s0
	bgt s0, zero, label23
	j label260
label21:
	fadd.s f8, f8, f12
	addiw a2, a2, 1
	li a4, 500000
	blt a2, a4, label13
	j label8
label157:
	fmv.w.x f12, zero
	mv a4, zero
	mv a5, a0
	mv t0, a1
	flw f13, 0(a0)
	li a4, 1
	flw f14, 0(a1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	bgt s0, a4, label24
	j label172
label8:
	li a0, 39
	jal _sysy_stoptime
pcrel278:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel278)
	flw f11, 0(a0)
	flw f12, 4(a0)
	fsub.s f10, f8, f11
	flw f11, 8(a0)
	fle.s a1, f10, f12
	fle.s a2, f11, f10
	or a0, a1, a2
	bne a0, zero, label12
	j label11
label9:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	flw f8, 24(sp)
	addi sp, sp, 32
	ret
label12:
	mv a0, zero
	jal putint
	mv a0, zero
	j label9
label11:
	li a0, 1
	jal putint
	li a0, 1
	j label9
label82:
	mv a4, a3
	j label15
