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
cmmc_parallel_body_payload_1:
	.zero	28
.p2align 3
y:
	.zero	32768
.p2align 3
x:
	.zero	32768
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[116]
	addi sp, sp, -136
	sd ra, 0(sp)
	sd s7, 8(sp)
	sd s2, 16(sp)
	fsw f18, 24(sp)
	sd s6, 32(sp)
	sd s9, 40(sp)
	fsw f9, 48(sp)
	fsw f8, 52(sp)
	sd s1, 56(sp)
	sd s4, 64(sp)
	sd s5, 72(sp)
	sd s0, 80(sp)
	sd s8, 88(sp)
	sd s3, 96(sp)
	sd s10, 104(sp)
	sd s11, 112(sp)
	jal getint
	sd a0, 120(sp)
	mv s10, a0
	li a0, 22
	jal _sysy_starttime
pcrel216:
	auipc a2, %pcrel_hi(x)
	fmv.w.x f8, zero
pcrel217:
	auipc a0, %pcrel_hi(y)
pcrel218:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel219:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	lui s5, 260096
	mv s9, zero
	addi a1, a2, %pcrel_lo(pcrel216)
	fmv.s f18, f8
	addi s3, a0, %pcrel_lo(pcrel217)
	addi s0, s8, %pcrel_lo(pcrel218)
	addi s1, s4, %pcrel_lo(pcrel219)
	fmv.w.x f9, s5
pcrel220:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sd a1, 128(sp)
	mv a0, zero
	addi s2, a2, %pcrel_lo(pcrel220)
pcrel221:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	lui a2, 24
	addi s7, a1, %pcrel_lo(pcrel221)
	addiw s6, a2, 1696
	j label92
.p2align 2
label133:
	mv s11, a0
	ld s10, 120(sp)
	ble s10, zero, label210
.p2align 2
label101:
	fmv.w.x f10, zero
pcrel222:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel222)
pcrel223:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	fsw f10, %pcrel_lo(pcrel223)(s4)
	ld a1, 128(sp)
	sd a1, 8(s1)
	sd s3, 16(s1)
	ld s10, 120(sp)
	sw s10, 24(s1)
	mv a1, s10
	jal cmmcParallelFor
	flw f10, %pcrel_lo(pcrel223)(s4)
	fadd.s f8, f8, f10
	addiw s9, s9, 1
	bge s9, s6, label104
.p2align 2
label159:
	mv a0, s11
.p2align 2
label92:
	lui a4, 419430
	fmv.w.x f12, s5
	flw f11, 0(s2)
	addiw a3, a4, 1639
	mul a1, s9, a3
	fadd.s f10, f9, f11
	srli a4, a1, 63
	srai a2, a1, 34
	fmv.s f9, f12
	add a3, a4, a2
	sh2add t0, a3, a3
	slliw a5, t0, 1
	subw a2, s9, a5
	sltu a1, zero, a2
	bne a1, zero, label189
	fmv.s f9, f10
label189:
	flw f11, 4(s2)
	fmv.w.x f12, zero
	fadd.s f10, f18, f11
	fmv.s f18, f12
	bne a1, zero, label191
	fmv.s f18, f10
label191:
	ld s10, 120(sp)
	ble s10, a0, label133
pcrel224:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw a0, %pcrel_lo(pcrel224)(s8)
	ld a1, 128(sp)
	sd a1, 8(s0)
	fsw f18, 16(s0)
	sd s3, 24(s0)
	fsw f9, 32(s0)
	sw s10, 36(s0)
	mv a1, s10
	mv a2, s7
	jal cmmcParallelFor
	mv s11, s10
	ld s10, 120(sp)
	bgt s10, zero, label101
	fmv.w.x f10, zero
	addiw s9, s9, 1
	fadd.s f8, f8, f10
	blt s9, s6, label159
label104:
	li a0, 39
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s2, 16(sp)
	flw f18, 24(sp)
	ld s6, 32(sp)
	ld s9, 40(sp)
	flw f9, 48(sp)
	flw f8, 52(sp)
	ld s1, 56(sp)
	ld s4, 64(sp)
	ld s5, 72(sp)
	ld s0, 80(sp)
	ld s8, 88(sp)
	ld s3, 96(sp)
	ld s10, 104(sp)
	ld s11, 112(sp)
	addi sp, sp, 136
	ret
.p2align 2
label210:
	fmv.w.x f10, zero
	addiw s9, s9, 1
	fadd.s f8, f8, f10
	blt s9, s6, label159
	j label104
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
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -8
	mv t0, a0
	addiw a2, a0, 3
pcrel322:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_1)
	sd ra, 0(sp)
	addi a0, a5, %pcrel_lo(pcrel322)
	addiw a5, a1, -3
	ld a4, 8(a0)
	ld a3, 16(a0)
	ble a1, a2, label255
	sh2add a2, t0, a4
	fmv.w.x f10, zero
.p2align 2
label227:
	sh2add t1, t0, a3
	flw f12, 0(a2)
	addiw t0, t0, 4
	flw f14, 0(t1)
	flw f13, 4(a2)
	fmadd.s f11, f12, f14, f10
	flw f0, 4(t1)
	flw f12, 8(a2)
	flw f15, 8(t1)
	fmadd.s f10, f13, f0, f11
	flw f13, 12(a2)
	flw f14, 12(t1)
	fmadd.s f11, f12, f15, f10
	fmadd.s f10, f13, f14, f11
	ble a5, t0, label289
	addi a2, a2, 16
	j label227
label289:
	fmv.s f11, f10
label232:
	ble a1, t0, label242
	sh2add a2, t0, a4
	fmv.s f10, f11
label237:
	sh2add a4, t0, a3
	flw f11, 0(a2)
	addiw t0, t0, 1
	flw f12, 0(a4)
	fmadd.s f10, f11, f12, f10
	ble a1, t0, label242
	addi a2, a2, 4
	j label237
label242:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label255:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label232
