.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1045220557
	.4byte	1036831949
	.4byte	1518488747
	.4byte	897988541
	.4byte	3045472189
.bss
.align 8
y:
	.zero	32768
.align 8
x:
	.zero	32768
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
	lui t1, 24
	addiw a1, s0, -3
pcrel267:
	auipc a3, %pcrel_hi(x)
	lui a4, 260096
pcrel268:
	auipc a5, %pcrel_hi(y)
	fmv.w.x f12, zero
	mv t4, zero
	lui t3, 419430
	mv t2, zero
pcrel269:
	auipc t0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a2, a3, %pcrel_lo(pcrel267)
	fmv.w.x f10, a4
	addi a0, a5, %pcrel_lo(pcrel268)
	fmv.s f11, f12
	addi a3, t0, %pcrel_lo(pcrel269)
	addiw a5, t1, 1696
	li t0, 3
	addiw t1, t3, 1639
label2:
	blt t2, a5, label8
	j label43
.p2align 2
label158:
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	bge t2, a5, label43
.p2align 2
label8:
	mul t3, t2, t1
	flw f14, 0(a3)
	fmv.w.x f15, a4
	srli a6, t3, 63
	srai t5, t3, 34
	fadd.s f13, f10, f14
	add t6, a6, t5
	fmv.s f10, f15
	sh2add a7, t6, t6
	slliw t5, a7, 1
	subw a6, t2, t5
	sltu t3, zero, a6
	bne t3, zero, label242
	fmv.s f10, f13
.p2align 2
label242:
	flw f15, 4(a3)
	fmv.w.x f14, zero
	fadd.s f13, f11, f15
	fmv.s f11, f14
	bne t3, zero, label244
	fmv.s f11, f13
.p2align 2
label244:
	ble s0, t4, label77
	addiw t3, t4, 3
	ble s0, t3, label82
	sh2add t3, t4, a2
	j label11
.p2align 2
label14:
	addi t3, t3, 16
.p2align 2
label11:
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
	bgt a1, t4, label14
	ble s0, t4, label248
.p2align 2
label17:
	sh2add t3, t4, a2
.p2align 2
label18:
	fcvt.s.w f13, t4
	sh2add t5, t4, a0
	fadd.s f14, f10, f13
	addiw t4, t4, 1
	fadd.s f15, f11, f13
	fsw f15, 0(t3)
	fsw f14, 0(t5)
	ble s0, t4, label129
	addi t3, t3, 4
	j label18
.p2align 2
label129:
	mv t3, s0
	ble s0, zero, label253
.p2align 2
label24:
	ble s0, t0, label139
	fmv.w.x f13, zero
	mv t4, a2
	mv t5, zero
	j label36
.p2align 2
label40:
	addi t4, t4, 16
.p2align 2
label36:
	flw f15, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 4
	flw f2, 0(t6)
	flw f0, 4(t4)
	fmul.s f1, f15, f2
	flw f2, 4(t6)
	fmul.s f15, f0, f2
	fadd.s f14, f13, f1
	flw f1, 8(t4)
	flw f0, 8(t6)
	fmul.s f2, f1, f0
	fadd.s f13, f14, f15
	flw f15, 12(t4)
	flw f0, 12(t6)
	fmul.s f1, f15, f0
	fadd.s f14, f13, f2
	fadd.s f13, f14, f1
	bgt a1, t5, label40
	fmv.s f14, f13
	ble s0, t5, label251
.p2align 2
label29:
	sh2add t4, t5, a2
	fmv.s f13, f14
.p2align 2
label30:
	flw f14, 0(t4)
	sh2add t6, t5, a0
	addiw t5, t5, 1
	flw f15, 0(t6)
	fmul.s f0, f14, f15
	fadd.s f13, f13, f0
	ble s0, t5, label158
	addi t4, t4, 4
	j label30
label139:
	fmv.w.x f13, zero
	mv t5, zero
	fmv.s f14, f13
	bgt s0, zero, label29
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label8
	j label43
label77:
	mv t3, t4
	bgt s0, zero, label24
	j label253
label82:
	bgt s0, t4, label17
	mv t3, s0
	bgt s0, zero, label24
label253:
	fmv.w.x f13, zero
	addiw t2, t2, 1
	mv t4, t3
	fadd.s f12, f12, f13
	j label2
label43:
	flw f13, 8(a3)
	li a0, 39
	flw f11, 12(a3)
	fsub.s f10, f12, f13
	flw f12, 16(a3)
	fle.s a1, f10, f11
	fle.s a2, f12, f10
	or s0, a1, a2
	jal _sysy_stoptime
	bne s0, zero, label47
	li a0, 1
	jal putint
	li a0, 1
	j label44
label47:
	mv a0, zero
	jal putint
	mv a0, zero
label44:
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
.p2align 2
label251:
	fadd.s f12, f12, f13
	addiw t2, t2, 1
	mv t4, t3
	blt t2, a5, label8
	j label43
.p2align 2
label248:
	mv t3, s0
	bgt s0, zero, label24
	j label253
