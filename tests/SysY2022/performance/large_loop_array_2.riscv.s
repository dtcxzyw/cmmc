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
.align 4
y:
	.zero	16384
.align 4
x:
	.zero	16384
.text
.globl main
main:
	addi sp, sp, -24
	sd s0, 16(sp)
	fsw f8, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	fmv.w.x f11, zero
	mv a4, zero
pcrel232:
	auipc a2, %pcrel_hi(y)
pcrel233:
	auipc a1, %pcrel_hi(x)
	fmv.s f8, f11
	addi a0, a1, %pcrel_lo(pcrel233)
	addi a1, a2, %pcrel_lo(pcrel232)
	lui a2, 260096
	fmv.w.x f10, a2
	mv a2, zero
	li a3, 500000
	bge zero, a3, label8
	j label13
label8:
	li a0, 39
	jal _sysy_stoptime
pcrel234:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a1, %pcrel_lo(pcrel234)
	flw f11, 0(a0)
	flw f12, 4(a0)
	fsub.s f10, f8, f11
	flw f11, 8(a0)
	fle.s a1, f10, f12
	fle.s a2, f11, f10
	or a0, a1, a2
	beq a0, zero, label9
	j label10
label9:
	li a0, 1
	jal putint
	li a0, 1
	j label11
label10:
	mv a0, zero
	jal putint
	mv a0, zero
label11:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label13:
	li t0, 1717986919
	mul a3, a2, t0
	srli t0, a3, 63
	srai a5, a3, 34
	add a3, t0, a5
	li a5, 10
	mulw t0, a3, a5
	subw t1, a2, t0
pcrel235:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	sltu a3, zero, t1
	addi a5, t0, %pcrel_lo(pcrel235)
	lui t0, 260096
	flw f13, 12(a5)
	fadd.s f12, f10, f13
	fmv.w.x f13, t0
	fmv.s f10, f13
	bne a3, zero, label199
	fmv.s f10, f12
label199:
	flw f13, 16(a5)
	fmv.w.x f14, zero
	fadd.s f12, f11, f13
	fmv.s f11, f14
	bne a3, zero, label201
	fmv.s f11, f12
label201:
	ble s0, a4, label77
	addiw a3, a4, 4
	ble s0, a3, label133
	j label28
label77:
	mv a3, a4
label14:
	ble s0, zero, label80
	fmv.w.x f12, zero
	mv t0, zero
	li a4, 4
	ble s0, a4, label22
	j label21
label28:
	fcvt.s.w f12, a4
	addiw t1, a4, 1
	sh2add a5, a4, a0
	sh2add t0, a4, a1
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a5)
	fsw f12, 0(t0)
	fcvt.s.w f12, t1
	addiw t1, a4, 2
	fadd.s f13, f11, f12
	addiw a4, a4, 3
	fadd.s f12, f10, f12
	fsw f13, 4(a5)
	fsw f12, 4(t0)
	fcvt.s.w f12, t1
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 8(a5)
	fsw f12, 8(t0)
	fcvt.s.w f12, a4
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 12(a5)
	addiw a5, a3, 4
	fsw f12, 12(t0)
	ble s0, a5, label26
	mv a4, a3
	mv a3, a5
	j label28
label21:
	sh2add a5, t0, a0
	sh2add t0, t0, a1
	flw f13, 0(a5)
	flw f15, 0(t0)
	fmul.s f14, f13, f15
	flw f13, 4(a5)
	flw f15, 4(t0)
	fadd.s f12, f12, f14
	fmul.s f14, f13, f15
	flw f13, 8(a5)
	fadd.s f12, f12, f14
	flw f14, 8(t0)
	fmul.s f15, f13, f14
	flw f13, 12(a5)
	flw f14, 12(t0)
	mv t0, a4
	fadd.s f12, f12, f15
	fmul.s f15, f13, f14
	fadd.s f12, f12, f15
	addiw a4, a4, 4
	ble s0, a4, label22
	j label21
label80:
	fmv.w.x f12, zero
label16:
	fadd.s f8, f8, f12
	addiw a2, a2, 1
	mv a4, a3
	li a3, 500000
	bge a2, a3, label8
	j label13
label26:
	fcvt.s.w f12, a3
	sh2add a4, a3, a0
	fadd.s f13, f11, f12
	fadd.s f12, f10, f12
	fsw f13, 0(a4)
	sh2add a4, a3, a1
	addiw a3, a3, 1
	fsw f12, 0(a4)
	ble s0, a3, label14
	j label26
label22:
	sh2add a4, t0, a0
	sh2add a5, t0, a1
	flw f13, 0(a4)
	addiw t0, t0, 1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	ble s0, t0, label16
	j label22
label133:
	mv a3, a4
	j label26
