.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1045220557
	.4byte	1036831949
.bss
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	40
.p2align 3
y:
	.zero	8192
.p2align 3
x:
	.zero	8192
.text
.p2align 2
.globl main
main:
	addi sp, sp, -120
	sd ra, 0(sp)
	sd s8, 8(sp)
	sd s11, 16(sp)
	fsw f9, 24(sp)
	fsw f8, 28(sp)
	sd s3, 32(sp)
	fsw f18, 40(sp)
	sd s6, 48(sp)
	sd s9, 56(sp)
	sd s5, 64(sp)
	sd s0, 72(sp)
	sd s4, 80(sp)
	sd s1, 88(sp)
	sd s2, 96(sp)
	sd s7, 104(sp)
	sd s10, 112(sp)
	jal getint
	mv s2, a0
	li a0, 22
	jal _sysy_starttime
	li s10, 3
pcrel287:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw s1, s2, -3
	lui s6, 260096
pcrel288:
	auipc a0, %pcrel_hi(x)
pcrel289:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel290:
	auipc a1, %pcrel_hi(y)
	fmv.w.x f8, zero
	mv s11, zero
	addi s5, a2, %pcrel_lo(pcrel287)
	fmv.w.x f9, s6
	addi s4, a0, %pcrel_lo(pcrel288)
	addi s3, s9, %pcrel_lo(pcrel289)
	addi s0, a1, %pcrel_lo(pcrel290)
	fmv.s f18, f8
	lui a2, 122
	mv a0, zero
pcrel291:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	addiw s7, a2, 288
	addi s8, a1, %pcrel_lo(pcrel291)
	j label92
.p2align 2
label120:
	addi a1, a1, 4
.p2align 2
label116:
	sh2add a3, a2, s0
	flw f11, 0(a1)
	addiw a2, a2, 1
	flw f12, 0(a3)
	fmadd.s f10, f11, f12, f10
	bgt s2, a2, label120
	fadd.s f8, f8, f10
	addiw s11, s11, 1
	bge s11, s7, label103
.p2align 2
label92:
	lui a4, 419430
	fmv.w.x f11, s6
	flw f12, 0(s5)
	addiw a3, a4, 1639
	mul a1, s11, a3
	fadd.s f10, f9, f12
	srli a4, a1, 63
	srai a2, a1, 34
	fmv.s f9, f11
	add a3, a4, a2
	sh2add t0, a3, a3
	slliw a5, t0, 1
	subw a2, s11, a5
	sltu a1, zero, a2
	bne a1, zero, label254
	fmv.s f9, f10
label254:
	flw f12, 4(s5)
	fmv.w.x f11, zero
	fadd.s f10, f18, f12
	fmv.s f18, f11
	bne a1, zero, label256
	fmv.s f18, f10
label256:
	ble s2, a0, label148
pcrel292:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw a0, %pcrel_lo(pcrel292)(s9)
	sd s4, 8(s3)
	fsw f18, 16(s3)
	sd s0, 24(s3)
	fsw f9, 32(s3)
	sw s2, 36(s3)
	mv a1, s2
	mv a2, s8
	jal cmmcParallelFor
	mv a0, s2
	ble s2, zero, label159
.p2align 2
label104:
	ble s2, s10, label170
	fmv.w.x f10, zero
	mv a1, s4
	mv a2, zero
.p2align 2
label106:
	sh2add a3, a2, s0
	flw f12, 0(a1)
	addiw a2, a2, 4
	flw f14, 0(a3)
	flw f13, 4(a1)
	fmadd.s f11, f12, f14, f10
	flw f15, 4(a3)
	flw f14, 8(a1)
	flw f0, 8(a3)
	flw f12, 12(a1)
	fmadd.s f10, f13, f15, f11
	flw f13, 12(a3)
	fmadd.s f11, f14, f0, f10
	fmadd.s f10, f12, f13, f11
	ble s1, a2, label202
	addi a1, a1, 16
	j label106
.p2align 2
label202:
	fmv.s f11, f10
	ble s2, a2, label275
.p2align 2
label115:
	sh2add a1, a2, s4
	fmv.s f10, f11
	j label116
.p2align 2
label159:
	fmv.w.x f10, zero
	fadd.s f8, f8, f10
	addiw s11, s11, 1
	blt s11, s7, label92
	j label103
.p2align 2
label170:
	fmv.w.x f10, zero
	mv a2, zero
	fmv.s f11, f10
	bgt s2, zero, label115
	fadd.s f8, f8, f10
	addiw s11, s11, 1
	blt s11, s7, label92
	j label103
.p2align 2
label148:
	bgt s2, zero, label104
	fmv.w.x f10, zero
	addiw s11, s11, 1
	fadd.s f8, f8, f10
	blt s11, s7, label92
label103:
	li a0, 39
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	ld ra, 0(sp)
	ld s8, 8(sp)
	ld s11, 16(sp)
	flw f9, 24(sp)
	flw f8, 28(sp)
	ld s3, 32(sp)
	flw f18, 40(sp)
	ld s6, 48(sp)
	ld s9, 56(sp)
	ld s5, 64(sp)
	ld s0, 72(sp)
	ld s4, 80(sp)
	ld s1, 88(sp)
	ld s2, 96(sp)
	ld s7, 104(sp)
	ld s10, 112(sp)
	addi sp, sp, 120
	ret
.p2align 2
label275:
	fadd.s f8, f8, f10
	addiw s11, s11, 1
	blt s11, s7, label92
	j label103
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
