.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1487051712
	.4byte	897988541
	.4byte	3045472189
	.4byte	1045220557
	.4byte	1036831949
.bss
.align 8
y:
	.zero	8192
.align 8
x:
	.zero	8192
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
	sd ra, 0(sp)
	sd s0, 8(sp)
	jal getint
	mv s0, a0
	li a0, 22
	jal _sysy_starttime
	lui t1, 122
pcrel254:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
pcrel255:
	auipc a3, %pcrel_hi(x)
	addiw a1, s0, -4
	lui t3, 419430
	lui a4, 260096
pcrel256:
	auipc a5, %pcrel_hi(y)
	fmv.w.x f12, zero
	mv t4, zero
	mv t2, zero
	addi a2, a3, %pcrel_lo(pcrel255)
	fmv.w.x f10, a4
	addi a0, a5, %pcrel_lo(pcrel256)
	fmv.s f11, f12
	addi a3, t0, %pcrel_lo(pcrel254)
	addiw a5, t1, 288
	li t0, 4
	addiw t1, t3, 1639
label2:
	blt t2, a5, label13
	j label8
.p2align 2
label29:
	addi t4, t4, 16
.p2align 2
label24:
	flw f15, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 4
	flw f1, 0(t6)
	flw f0, 4(t4)
	fmul.s f2, f15, f1
	flw f1, 4(t6)
	flw f15, 8(t4)
	fadd.s f14, f13, f2
	fmul.s f2, f0, f1
	flw f1, 8(t6)
	flw f0, 12(t4)
	fadd.s f13, f14, f2
	fmul.s f2, f15, f1
	flw f1, 12(t6)
	fmul.s f15, f0, f1
	fadd.s f14, f13, f2
	fadd.s f13, f14, f15
	bgt a1, t5, label29
	sh2add t4, t5, a2
	sh2add t6, t5, a0
	flw f14, 0(t4)
	addiw t5, t5, 1
	flw f0, 0(t6)
	fmul.s f15, f14, f0
	fadd.s f13, f13, f15
	ble s0, t5, label237
.p2align 2
label22:
	addi t4, t4, 4
.p2align 2
label18:
	flw f14, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 1
	flw f0, 0(t6)
	fmul.s f15, f14, f0
	fadd.s f13, f13, f15
	bgt s0, t5, label22
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	bge t2, a5, label8
.p2align 2
label13:
	mul t3, t2, t1
	flw f14, 12(a3)
	fmv.w.x f15, a4
	srli a7, t3, 63
	srai t5, t3, 34
	fadd.s f13, f10, f14
	add t6, a7, t5
	fmv.s f10, f15
	sh2add a6, t6, t6
	slliw a7, a6, 1
	subw t5, t2, a7
	sltu t3, zero, t5
	bne t3, zero, label232
	fmv.s f10, f13
.p2align 2
label232:
	flw f15, 16(a3)
	fmv.w.x f14, zero
	fadd.s f13, f11, f15
	fmv.s f11, f14
	bne t3, zero, label234
	fmv.s f11, f13
.p2align 2
label234:
	ble s0, t4, label89
	addiw t3, t4, 4
	ble s0, t3, label151
	sh2add t3, t4, a2
	j label34
.p2align 2
label37:
	addi t3, t3, 16
.p2align 2
label34:
	fcvt.s.w f13, t4
	addiw t6, t4, 1
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	fadd.s f15, f11, f13
	fcvt.s.w f13, t6
	addiw t6, t4, 2
	fsw f15, 0(t3)
	fadd.s f15, f10, f13
	fsw f14, 0(t5)
	fadd.s f14, f11, f13
	fcvt.s.w f13, t6
	addiw t6, t4, 3
	addiw t4, t4, 4
	fsw f14, 4(t3)
	fadd.s f14, f10, f13
	fsw f15, 4(t5)
	fadd.s f15, f11, f13
	fcvt.s.w f13, t6
	fsw f15, 8(t3)
	fadd.s f15, f10, f13
	fsw f14, 8(t5)
	fadd.s f14, f11, f13
	fsw f14, 12(t3)
	fsw f15, 12(t5)
	bgt a1, t4, label37
	sh2add t3, t4, a2
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	ble s0, t4, label244
.p2align 2
label42:
	addi t3, t3, 4
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label42
.p2align 2
label194:
	mv t3, s0
	ble s0, zero, label93
.p2align 2
label16:
	ble s0, t0, label17
	fmv.w.x f13, zero
	mv t4, a2
	mv t5, zero
	j label24
label17:
	fmv.w.x f13, zero
	mv t4, a2
	mv t5, zero
	j label18
label89:
	mv t3, t4
	bgt s0, zero, label16
	j label93
label151:
	sh2add t3, t4, a2
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	bgt s0, t4, label42
	j label194
label93:
	fmv.w.x f13, zero
	addiw t2, t2, 1
	mv t4, t3
	fadd.s f12, f12, f13
	j label2
label8:
	flw f13, 0(a3)
	li a0, 39
	flw f11, 4(a3)
	fsub.s f10, f12, f13
	flw f12, 8(a3)
	fle.s a1, f10, f11
	fle.s a2, f12, f10
	or s0, a1, a2
	jal _sysy_stoptime
	bne s0, zero, label12
	li a0, 1
	jal putint
	li a0, 1
label9:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.p2align 2
label244:
	mv t3, s0
	bgt s0, zero, label16
	j label93
.p2align 2
label237:
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label13
	j label8
label12:
	mv a0, zero
	jal putint
	mv a0, zero
	j label9
