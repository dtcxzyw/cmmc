.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1045220557
	.4byte	1036831949
	.4byte	1487051712
	.4byte	897988541
	.4byte	3045472189
.bss
.align 4
y:
	.zero	8192
.align 4
x:
	.zero	8192
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
pcrel356:
	auipc a0, %pcrel_hi(x)
	addi a0, a0, %pcrel_lo(pcrel356)
pcrel357:
	auipc a1, %pcrel_hi(y)
	addi a1, a1, %pcrel_lo(pcrel357)
	fmv.w.x f8, zero
	lui a2, 260096
	fmv.w.x f10, a2
	fmv.w.x f11, zero
	mv a4, zero
	mv a2, zero
	li a3, 500000
	bge zero, a3, label36
label8:
	li a3, 1717986919
	mul a3, a2, a3
	srai a5, a3, 34
	srli a3, a3, 63
	add a3, a3, a5
	li a5, 10
	mulw a3, a3, a5
	subw a3, a2, a3
	sltu a3, zero, a3
pcrel358:
	auipc a5, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a5, a5, %pcrel_lo(pcrel358)
	flw f12, 0(a5)
	fadd.s f12, f10, f12
	lui t1, 260096
	fmv.w.x f10, t1
	bne a3, zero, label300
	fmv.s f10, f12
label300:
	flw f12, 4(a5)
	fadd.s f12, f11, f12
	fmv.w.x f11, zero
	bne a3, zero, label298
	fmv.s f11, f12
label298:
	ble s0, a4, label72
	addiw a3, a4, 4
	ble s0, a3, label190
	j label30
label72:
	mv a3, a4
label9:
	ble s0, zero, label75
	fmv.w.x f12, zero
	mv t1, zero
	addiw a4, zero, 4
	ble s0, a4, label16
	j label27
label36:
	li a0, 39
	jal _sysy_stoptime
pcrel359:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel359)
	flw f10, 8(a0)
	fsub.s f10, f8, f10
	flw f11, 12(a0)
	fle.s a1, f10, f11
	flw f11, 16(a0)
	fle.s a0, f11, f10
	or a0, a1, a0
	beq a0, zero, label273
	mv a0, zero
	jal putint
	mv a0, zero
	j label37
label273:
	li a0, 1
	jal putint
	li a0, 1
label37:
	ld ra, 0(sp)
	flw f8, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label190:
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label34
	j label33
label34:
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
label351:
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a4, a3, a0
	fsw f13, 0(a4)
	fadd.s f12, f10, f12
	sh2add a4, a3, a1
	fsw f12, 0(a4)
	addiw a3, a3, 1
	ble s0, a3, label9
	j label351
label16:
	addiw a4, t1, 4
	ble s0, a4, label19
	j label26
label19:
	addiw a4, t1, 4
	ble s0, a4, label94
	j label22
label94:
	mv a4, t1
	sh2add a5, t1, a0
	flw f13, 0(a5)
	sh2add a5, t1, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, t1, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
label349:
	sh2add a5, a4, a0
	flw f13, 0(a5)
	sh2add a5, a4, a1
	flw f14, 0(a5)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	addiw a4, a4, 1
	ble s0, a4, label11
	j label349
label75:
	fmv.w.x f12, zero
label11:
	fadd.s f8, f8, f12
	addiw a2, a2, 1
	mv a4, a3
	li a3, 500000
	bge a2, a3, label36
	j label8
label33:
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	sh2add a5, a3, a0
	fsw f13, 0(a5)
	fadd.s f12, f10, f12
	sh2add t1, a3, a1
	fsw f12, 0(t1)
	addiw t2, a3, 1
	fcvt.s.w f12, t2
	fadd.s f13, f11, f12
	fsw f13, 4(a5)
	fadd.s f12, f10, f12
	fsw f12, 4(t1)
	addiw t2, a3, 2
	fcvt.s.w f12, t2
	fadd.s f13, f11, f12
	fsw f13, 8(a5)
	fadd.s f12, f10, f12
	fsw f12, 8(t1)
	addiw a3, a3, 3
	fcvt.s.w f12, a3
	fadd.s f13, f11, f12
	fsw f13, 12(a5)
	fadd.s f12, f10, f12
	fsw f12, 12(t1)
	mv a3, a4
	addiw a4, a4, 4
	ble s0, a4, label34
	j label33
label30:
	fcvt.s.w f12, a4
	fadd.s f13, f11, f12
	sh2add a5, a4, a0
	fsw f13, 0(a5)
	fadd.s f12, f10, f12
	sh2add t1, a4, a1
	fsw f12, 0(t1)
	addiw t2, a4, 1
	fcvt.s.w f12, t2
	fadd.s f13, f11, f12
	fsw f13, 4(a5)
	fadd.s f12, f10, f12
	fsw f12, 4(t1)
	addiw t2, a4, 2
	fcvt.s.w f12, t2
	fadd.s f13, f11, f12
	fsw f13, 8(a5)
	fadd.s f12, f10, f12
	fsw f12, 8(t1)
	addiw a4, a4, 3
	fcvt.s.w f12, a4
	fadd.s f13, f11, f12
	fsw f13, 12(a5)
	fadd.s f12, f10, f12
	fsw f12, 12(t1)
	mv a4, a3
	addiw a3, a3, 4
	ble s0, a3, label190
	j label30
label27:
	sh2add a5, t1, a0
	flw f13, 0(a5)
	sh2add t1, t1, a1
	flw f14, 0(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 4(a5)
	flw f14, 4(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 8(a5)
	flw f14, 8(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a5)
	flw f14, 12(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv t1, a4
	addiw a4, a4, 4
	ble s0, a4, label16
	j label27
label22:
	sh2add a5, t1, a0
	flw f13, 0(a5)
	sh2add t1, t1, a1
	flw f14, 0(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 4(a5)
	flw f14, 4(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 8(a5)
	flw f14, 8(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a5)
	flw f14, 12(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv t1, a4
	addiw a4, a4, 4
	ble s0, a4, label94
	j label22
label26:
	sh2add a5, t1, a0
	flw f13, 0(a5)
	sh2add t1, t1, a1
	flw f14, 0(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 4(a5)
	flw f14, 4(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 8(a5)
	flw f14, 8(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	flw f13, 12(a5)
	flw f14, 12(t1)
	fmul.s f13, f13, f14
	fadd.s f12, f12, f13
	mv t1, a4
	addiw a4, a4, 4
	ble s0, a4, label19
	j label26
