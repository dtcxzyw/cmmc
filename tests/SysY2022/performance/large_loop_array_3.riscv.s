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
cmmc_parallel_body_payload_0:
	.zero	40
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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[116]
	addi sp, sp, -144
	sd ra, 0(sp)
	sd s3, 8(sp)
	fsw f8, 16(sp)
	sd s10, 24(sp)
	fsw f9, 32(sp)
	sd s4, 40(sp)
	fsw f18, 48(sp)
	sd s6, 56(sp)
	sd s7, 64(sp)
	sd s1, 72(sp)
	sd s8, 80(sp)
	sd s5, 88(sp)
	sd s0, 96(sp)
	sd s2, 104(sp)
	sd s11, 112(sp)
	sd s9, 120(sp)
	jal getint
	sd a0, 128(sp)
	mv s11, a0
	li a0, 22
	jal _sysy_starttime
	lui a2, 419430
	li s9, 3
	mv s10, zero
	fmv.w.x f18, zero
pcrel310:
	auipc a1, %pcrel_hi(x)
pcrel311:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel312:
	auipc a0, %pcrel_hi(y)
	lui s4, 260096
	addiw s6, a2, 1639
	fmv.s f8, f18
	addi s2, a1, %pcrel_lo(pcrel310)
	addi s1, s8, %pcrel_lo(pcrel311)
	ld s11, 128(sp)
	addi s0, a0, %pcrel_lo(pcrel312)
	fmv.w.x f9, s4
pcrel313:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a3, s11, -3
pcrel314:
	auipc a0, %pcrel_hi(cmmc_parallel_body_0)
	addi s3, a1, %pcrel_lo(pcrel313)
	addi s7, a0, %pcrel_lo(pcrel314)
	mv a0, zero
	sd a3, 136(sp)
	lui a3, 24
	addiw s5, a3, 1696
	j label92
.p2align 2
label111:
	addi a1, a1, 4
.p2align 2
label107:
	sh2add a3, a2, s0
	flw f11, 0(a1)
	addiw a2, a2, 1
	flw f12, 0(a3)
	ld s11, 128(sp)
	fmul.s f13, f11, f12
	fadd.s f10, f10, f13
	bgt s11, a2, label111
	fadd.s f8, f8, f10
	addiw s10, s10, 1
	bge s10, s5, label120
.p2align 2
label92:
	mul a1, s10, s6
	flw f11, 0(s3)
	fmv.w.x f12, s4
	srli t0, a1, 63
	srai a2, a1, 34
	fadd.s f10, f9, f11
	add a3, t0, a2
	fmv.s f9, f12
	sh2add a5, a3, a3
	slliw a4, a5, 1
	subw a2, s10, a4
	sltu a1, zero, a2
	bne a1, zero, label274
	fmv.s f9, f10
.p2align 2
label274:
	flw f12, 4(s3)
	fmv.w.x f11, zero
	fadd.s f10, f18, f12
	fmv.s f18, f11
	bne a1, zero, label276
	fmv.s f18, f10
.p2align 2
label276:
	ld s11, 128(sp)
	ble s11, a0, label153
pcrel315:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw a0, %pcrel_lo(pcrel315)(s8)
	sd s2, 8(s1)
	fsw f18, 16(s1)
	sd s0, 24(s1)
	fsw f9, 32(s1)
	sw s11, 36(s1)
	mv a1, s11
	mv a2, s7
	jal cmmcParallelFor
	mv a0, s11
	ld s11, 128(sp)
	ble s11, zero, label163
.p2align 2
label101:
	ld s11, 128(sp)
	ble s11, s9, label168
	fmv.w.x f10, zero
	mv a1, s2
	mv a2, zero
.p2align 2
label113:
	sh2add a3, a2, s0
	flw f12, 0(a1)
	addiw a2, a2, 4
	flw f13, 0(a3)
	flw f14, 4(a1)
	fmul.s f15, f12, f13
	flw f12, 4(a3)
	flw f13, 8(a1)
	fadd.s f11, f10, f15
	fmul.s f15, f14, f12
	flw f14, 8(a3)
	flw f12, 12(a1)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f14
	flw f13, 12(a3)
	ld a3, 136(sp)
	fmul.s f14, f12, f13
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	ble a3, a2, label218
	addi a1, a1, 16
	j label113
.p2align 2
label218:
	fmv.s f11, f10
	ld s11, 128(sp)
	ble s11, a2, label299
.p2align 2
label106:
	sh2add a1, a2, s2
	fmv.s f10, f11
	j label107
.p2align 2
label168:
	fmv.w.x f10, zero
	mv a2, zero
	fmv.s f11, f10
	ld s11, 128(sp)
	bgt s11, zero, label106
	fadd.s f8, f8, f10
	addiw s10, s10, 1
	blt s10, s5, label92
	j label120
.p2align 2
label153:
	ld s11, 128(sp)
	bgt s11, zero, label101
	fmv.w.x f10, zero
	addiw s10, s10, 1
	fadd.s f8, f8, f10
	blt s10, s5, label92
label120:
	flw f12, 8(s3)
	li a0, 39
	flw f11, 12(s3)
	fsub.s f10, f8, f12
	flw f12, 16(s3)
	fle.s a1, f10, f11
	fle.s a2, f12, f10
	or s0, a1, a2
	jal _sysy_stoptime
	beq s0, zero, label123
	mv a0, zero
	jal putint
	mv a0, zero
label121:
	ld ra, 0(sp)
	ld s3, 8(sp)
	flw f8, 16(sp)
	ld s10, 24(sp)
	flw f9, 32(sp)
	ld s4, 40(sp)
	flw f18, 48(sp)
	ld s6, 56(sp)
	ld s7, 64(sp)
	ld s1, 72(sp)
	ld s8, 80(sp)
	ld s5, 88(sp)
	ld s0, 96(sp)
	ld s2, 104(sp)
	ld s11, 112(sp)
	ld s9, 120(sp)
	addi sp, sp, 144
	ret
label123:
	li a0, 1
	jal putint
	li a0, 1
	j label121
.p2align 2
label299:
	fadd.s f8, f8, f10
	addiw s10, s10, 1
	blt s10, s5, label92
	j label120
.p2align 2
label163:
	fmv.w.x f10, zero
	addiw s10, s10, 1
	fadd.s f8, f8, f10
	blt s10, s5, label92
	j label120
.p2align 2
cmmc_parallel_body_0:
	mv a3, a0
	addiw t0, a0, 3
pcrel90:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
	addiw a5, a1, -3
	addi a0, a2, %pcrel_lo(pcrel90)
	ld a4, 8(a0)
	flw f10, 16(a0)
	ld a2, 24(a0)
	flw f11, 32(a0)
	ble a1, t0, label7
	sh2add a0, a3, a4
.p2align 2
label3:
	fcvt.s.w f12, a3
	addiw t1, a3, 1
	sh2add t0, a3, a2
	fadd.s f13, f11, f12
	fadd.s f14, f10, f12
	fcvt.s.w f12, t1
	addiw t1, a3, 2
	fsw f14, 0(a0)
	fadd.s f14, f11, f12
	fsw f13, 0(t0)
	fadd.s f13, f10, f12
	fcvt.s.w f12, t1
	addiw t1, a3, 3
	addiw a3, a3, 4
	fsw f13, 4(a0)
	fadd.s f13, f11, f12
	fsw f14, 4(t0)
	fadd.s f14, f10, f12
	fcvt.s.w f12, t1
	fsw f14, 8(a0)
	fadd.s f14, f11, f12
	fsw f13, 8(t0)
	fadd.s f13, f10, f12
	fsw f13, 12(a0)
	fsw f14, 12(t0)
	ble a5, a3, label7
	addi a0, a0, 16
	j label3
label7:
	ble a1, a3, label14
	sh2add a0, a3, a4
label10:
	fcvt.s.w f12, a3
	sh2add a4, a3, a2
	fadd.s f13, f11, f12
	addiw a3, a3, 1
	fadd.s f14, f10, f12
	fsw f14, 0(a0)
	fsw f13, 0(a4)
	ble a1, a3, label14
	addi a0, a0, 4
	j label10
label14:
	ret
