.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.bss
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	8
.p2align 3
Vectortm:
	.zero	400000
.p2align 3
vectorB:
	.zero	400000
.p2align 3
vectorA:
	.zero	400000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
	li a0, 62
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	jal _sysy_starttime
	lui a3, 24
pcrel1055:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1056:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel1056)
pcrel1057:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd s1, %pcrel_lo(pcrel1055)(a0)
	addi a2, a1, %pcrel_lo(pcrel1057)
	mv a0, zero
	addiw a1, a3, 1696
	jal cmmcParallelFor
	lui s3, 258048
	mv a2, zero
	lui a4, 24
pcrel1058:
	auipc a3, %pcrel_hi(Vectortm)
pcrel1059:
	auipc a0, %pcrel_hi(vectorB)
	addi a1, a3, %pcrel_lo(pcrel1058)
	addi s0, a0, %pcrel_lo(pcrel1059)
pcrel1060:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a0, a4, 1693
	addi s2, a3, %pcrel_lo(pcrel1060)
	j label110
.p2align 2
label981:
	addiw a2, a2, 1
	li a3, 1000
	bge a2, a3, label184
.p2align 2
label110:
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label117
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label237
	mv a4, s0
	mv a5, zero
	addiw t0, t1, 1696
	blt zero, t0, label220
	j label143
.p2align 2
label277:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label976
.p2align 2
label237:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label993
.p2align 2
label117:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label256
	sh2add t0, t4, s1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	j label129
.p2align 2
label133:
	addi t0, t0, 16
.p2align 2
label129:
	addw a6, a5, t4
	addw t5, a3, t4
	flw f14, 0(t0)
	mulw t6, a6, t5
	srliw a7, t6, 31
	add s4, t6, a7
	sraiw a6, s4, 1
	addw t6, a3, a6
	fcvt.s.w f12, t6
	addw t6, t1, t4
	fdiv.s f13, f14, f12
	mulw a6, t5, t6
	srliw s4, a6, 31
	add a7, a6, s4
	sraiw s5, a7, 1
	addw t5, a3, s5
	fcvt.s.w f12, t5
	addw t5, t2, t4
	mulw a6, t6, t5
	srliw s4, a6, 31
	add a7, a6, s4
	sraiw t6, a7, 1
	addw a6, a3, t6
	fadd.s f11, f10, f13
	flw f13, 4(t0)
	fdiv.s f14, f13, f12
	flw f13, 8(t0)
	fcvt.s.w f12, a6
	addw a6, t3, t4
	addiw t4, t4, 4
	mulw t6, t5, a6
	srliw a7, t6, 31
	add s4, t6, a7
	sraiw t5, s4, 1
	addw a6, a3, t5
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	flw f13, 12(t0)
	fcvt.s.w f12, a6
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	blt t4, a0, label133
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label977
.p2align 2
label122:
	sh2add t0, t4, s1
	mv t1, t4
	fmv.s f10, f11
.p2align 2
label123:
	addw t3, a5, t1
	addw t4, a3, t1
	flw f12, 0(t0)
	addiw t1, t1, 1
	mulw t2, t3, t4
	srliw t5, t2, 31
	add t6, t2, t5
	sraiw t4, t6, 1
	addw t3, a3, t4
	fcvt.s.w f11, t3
	lui t3, 24
	fdiv.s f13, f12, f11
	addiw t2, t3, 1696
	fadd.s f10, f10, f13
	bge t1, t2, label277
	addi t0, t0, 4
	j label123
.p2align 2
label768:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label991
.p2align 2
label146:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label978
.p2align 2
label220:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label747
	sh2add t0, t4, a1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	j label232
.p2align 2
label236:
	addi t0, t0, 16
.p2align 2
label232:
	addw a6, a5, t4
	addw t5, a3, t4
	flw f14, 0(t0)
	mulw t6, a6, t5
	srliw a7, t6, 31
	add s4, t6, a7
	addiw t6, t4, 1
	sraiw a6, s4, 1
	addw a7, a6, t6
	addw t6, t1, t4
	mulw a6, t5, t6
	fcvt.s.w f12, a7
	srliw a7, a6, 31
	fdiv.s f13, f14, f12
	add s4, a6, a7
	flw f14, 4(t0)
	addiw a7, t4, 2
	sraiw t5, s4, 1
	addw a6, t5, a7
	addw t5, t2, t4
	fcvt.s.w f12, a6
	mulw a6, t6, t5
	srliw a7, a6, 31
	add s4, a6, a7
	addiw a7, t4, 3
	sraiw t6, s4, 1
	addw a6, t6, a7
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	flw f14, 8(t0)
	fcvt.s.w f12, a6
	addw a6, t3, t4
	addiw t4, t4, 4
	mulw t6, t5, a6
	srliw a7, t6, 31
	add a6, t6, a7
	sraiw t5, a6, 1
	addw t6, t5, t4
	fadd.s f10, f11, f13
	fdiv.s f13, f14, f12
	flw f14, 12(t0)
	fcvt.s.w f12, t6
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	blt t4, a0, label236
	fmv.s f12, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label992
.p2align 2
label225:
	sh2add t0, t4, a1
	mv t1, t4
	fmv.s f10, f12
.p2align 2
label226:
	addw t3, a5, t1
	addw t4, a3, t1
	flw f13, 0(t0)
	addiw t1, t1, 1
	mulw t2, t3, t4
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t3, t5, 1
	addw t2, t3, t1
	lui t3, 24
	fcvt.s.w f11, t2
	addiw t2, t3, 1696
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t1, t2, label768
	addi t0, t0, 4
	j label226
.p2align 2
label256:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label122
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label237
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	addiw t0, t1, 1696
	blt zero, t0, label220
	j label143
.p2align 2
label747:
	fmv.w.x f11, zero
	fmv.s f12, f10
	fmv.s f10, f11
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label225
	lui a5, 24
	lui t0, 24
	fsw f11, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label146
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	addiw t0, t1, 1696
	blt zero, t0, label203
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label202
	j label156
.p2align 2
label219:
	addi t0, t0, 4
.p2align 2
label215:
	addw t3, a5, t1
	addw t4, a3, t1
	flw f13, 0(t0)
	addiw t1, t1, 1
	mulw t2, t3, t4
	srliw t6, t2, 31
	add t5, t2, t6
	sraiw t3, t5, 1
	addw t4, a3, t3
	lui t3, 24
	addiw t2, t3, 1696
	fcvt.s.w f11, t4
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t1, t2, label219
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label989
.p2align 2
label202:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label985
.p2align 2
label203:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label673
	sh2add t0, t4, s0
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
.p2align 2
label205:
	addw a6, a5, t4
	addw t5, a3, t4
	flw f13, 0(t0)
	mulw t6, a6, t5
	srliw a7, t6, 31
	add s4, t6, a7
	sraiw a6, s4, 1
	addw t6, a3, a6
	fcvt.s.w f12, t6
	addw t6, t1, t4
	fdiv.s f14, f13, f12
	mulw a6, t5, t6
	flw f13, 4(t0)
	srliw a7, a6, 31
	add t5, a6, a7
	sraiw s4, t5, 1
	addw t5, t2, t4
	addw a6, a3, s4
	fcvt.s.w f12, a6
	mulw a6, t6, t5
	srliw s4, a6, 31
	add a7, a6, s4
	sraiw t6, a7, 1
	addw a6, a3, t6
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	flw f13, 8(t0)
	fcvt.s.w f12, a6
	addw a6, t3, t4
	addiw t4, t4, 4
	mulw t6, t5, a6
	srliw a7, t6, 31
	add t5, t6, a7
	sraiw s4, t5, 1
	addw a6, a3, s4
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a6
	fadd.s f11, f10, f14
	flw f14, 12(t0)
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t4, a0, label720
	addi t0, t0, 16
	j label205
.p2align 2
label720:
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label987
.p2align 2
label214:
	sh2add t0, t4, s0
	mv t1, t4
	fmv.s f10, f11
	j label215
.p2align 2
label673:
	fmv.w.x f12, zero
	fmv.s f11, f10
	lui t1, 24
	fmv.s f10, f12
	addiw t0, t1, 1696
	blt t4, t0, label214
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label202
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	addiw t0, t1, 1696
	blt zero, t0, label162
	j label356
.p2align 2
label172:
	addi t0, t0, 4
.p2align 2
label168:
	addw t3, a5, t1
	addw t6, a3, t1
	flw f12, 0(t0)
	addiw t1, t1, 1
	mulw t2, t3, t6
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t3, t5, 1
	addw t2, t3, t1
	lui t3, 24
	fcvt.s.w f11, t2
	addiw t2, t3, 1696
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t1, t2, label172
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label981
.p2align 2
label182:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label984
.p2align 2
label162:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label361
	sh2add t0, t4, a1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
.p2align 2
label174:
	addw a6, a5, t4
	addw t5, a3, t4
	flw f13, 0(t0)
	addiw s5, t4, 3
	mulw t6, a6, t5
	srliw a7, t6, 31
	add s4, t6, a7
	addiw a7, t4, 1
	sraiw a6, s4, 1
	addw t6, a6, a7
	fcvt.s.w f12, t6
	addw t6, t1, t4
	fdiv.s f14, f13, f12
	mulw a6, t5, t6
	flw f13, 4(t0)
	srliw a7, a6, 31
	add s4, a6, a7
	addiw a7, t4, 2
	sraiw t5, s4, 1
	addw a6, t5, a7
	addw t5, t2, t4
	fadd.s f11, f10, f14
	fcvt.s.w f10, a6
	mulw a6, t6, t5
	fdiv.s f14, f13, f10
	srliw s4, a6, 31
	add a7, a6, s4
	sraiw t6, a7, 1
	addw a6, t6, s5
	fadd.s f12, f11, f14
	flw f14, 8(t0)
	fcvt.s.w f11, a6
	addw a6, t3, t4
	fdiv.s f13, f14, f11
	addiw t4, t4, 4
	mulw t6, t5, a6
	srliw s4, t6, 31
	add a7, t6, s4
	sraiw t5, a7, 1
	addw t6, t5, t4
	fcvt.s.w f11, t6
	fadd.s f10, f12, f13
	flw f12, 12(t0)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t4, a0, label432
	addi t0, t0, 16
	j label174
.p2align 2
label432:
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label982
.p2align 2
label167:
	sh2add t0, t4, a1
	mv t1, t4
	fmv.s f10, f11
	j label168
.p2align 2
label361:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label167
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label182
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label110
	j label184
.p2align 2
label982:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label182
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label110
	j label184
.p2align 2
label977:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label237
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label220
	fsw f10, 0(s0)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label146
	j label339
.p2align 2
label987:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label202
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label162
	fsw f10, 0(s1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label182
	j label979
.p2align 2
label992:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label146
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label203
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label202
	j label156
.p2align 2
label984:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label182
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label110
	j label184
.p2align 2
label993:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label237
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label220
label143:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label146
	j label339
.p2align 2
label985:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label202
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label162
label356:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label182
	j label979
.p2align 2
label978:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label146
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label203
label153:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label202
	j label156
.p2align 2
label976:
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label220
	fsw f10, 0(s0)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label146
label339:
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label203
	j label153
.p2align 2
label989:
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label162
	fsw f10, 0(s1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label182
label979:
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label110
	j label184
.p2align 2
label991:
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label203
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label202
label156:
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label162
	j label356
label184:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
	j label185
.p2align 2
label189:
	addi s1, s1, 64
.p2align 2
label185:
	sh2add a1, a0, s0
	flw f12, 0(s1)
	lui a2, 24
	addiw a0, a0, 16
	flw f14, 0(a1)
	flw f13, 4(s1)
	fmul.s f15, f12, f14
	flw f14, 4(a1)
	flw f12, 8(s1)
	flw f0, 8(a1)
	fadd.s f11, f10, f15
	fmul.s f15, f13, f14
	flw f13, 12(s1)
	fmul.s f14, f12, f0
	fadd.s f10, f11, f15
	flw f15, 12(a1)
	flw f12, 16(s1)
	fadd.s f11, f10, f14
	fmul.s f14, f13, f15
	flw f13, 16(a1)
	fmul.s f15, f12, f13
	fadd.s f10, f11, f14
	flw f14, 20(s1)
	flw f12, 20(a1)
	flw f13, 24(s1)
	fadd.s f11, f10, f15
	fmul.s f15, f14, f12
	flw f14, 24(a1)
	flw f12, 28(s1)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f14
	flw f14, 28(a1)
	flw f13, 32(s1)
	fmul.s f0, f12, f14
	fadd.s f11, f10, f15
	flw f15, 32(a1)
	flw f14, 36(s1)
	fadd.s f10, f11, f0
	fmul.s f11, f13, f15
	flw f15, 36(a1)
	flw f13, 40(s1)
	fadd.s f12, f10, f11
	fmul.s f10, f14, f15
	flw f14, 40(a1)
	fmul.s f0, f13, f14
	fadd.s f11, f12, f10
	flw f12, 44(s1)
	flw f15, 44(a1)
	flw f13, 48(s1)
	fmul.s f14, f12, f15
	fadd.s f10, f11, f0
	flw f15, 48(a1)
	fmul.s f12, f13, f15
	fadd.s f11, f10, f14
	flw f14, 52(s1)
	flw f15, 52(a1)
	flw f13, 56(s1)
	fadd.s f10, f11, f12
	fmul.s f11, f14, f15
	flw f15, 56(a1)
	flw f14, 60(s1)
	fadd.s f12, f10, f11
	fmul.s f10, f13, f15
	flw f13, 60(a1)
	addiw a1, a2, 1696
	fadd.s f11, f12, f10
	fmul.s f12, f14, f13
	fadd.s f10, f11, f12
	blt a0, a1, label189
	fmv.w.x f11, zero
	mv a0, zero
	j label191
.p2align 2
label195:
	addi s0, s0, 64
.p2align 2
label191:
	flw f13, 0(s0)
	addiw a0, a0, 16
	lui a2, 24
	flw f14, 4(s0)
	fmul.s f15, f13, f13
	addiw a1, a2, 1696
	fmul.s f1, f14, f14
	fadd.s f12, f11, f15
	flw f15, 8(s0)
	flw f14, 12(s0)
	fmul.s f0, f15, f15
	fadd.s f13, f12, f1
	fmul.s f1, f14, f14
	fadd.s f11, f13, f0
	flw f13, 16(s0)
	flw f14, 20(s0)
	fmul.s f15, f13, f13
	fmul.s f0, f14, f14
	flw f13, 24(s0)
	fadd.s f12, f11, f1
	flw f14, 28(s0)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	fadd.s f11, f12, f15
	flw f15, 32(s0)
	flw f14, 36(s0)
	fmul.s f1, f15, f15
	fadd.s f13, f11, f0
	fmul.s f0, f14, f14
	fadd.s f12, f13, f1
	flw f13, 40(s0)
	flw f14, 44(s0)
	fmul.s f15, f13, f13
	flw f13, 48(s0)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 52(s0)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 56(s0)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 60(s0)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	fmul.s f13, f14, f14
	fadd.s f11, f12, f0
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	blt a0, a1, label195
	fdiv.s f10, f10, f11
	lui a0, 260096
	flw f13, 0(s2)
	fmv.w.x f12, a0
	fsub.s f11, f12, f10
	flw f12, 4(s2)
	flt.s a0, f13, f11
	flt.s a1, f11, f12
	or a2, a0, a1
	beq a2, zero, label632
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
.p2align 2
label197:
	fadd.s f14, f11, f12
	fmv.w.x f15, s3
	fmul.s f11, f14, f15
	flw f14, 0(s2)
	flw f15, 4(s2)
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f15
	flt.s a0, f14, f13
	or a1, a0, a2
	bne a1, zero, label197
label200:
	lui a0, 260096
	flw f13, 0(s2)
	fmv.w.x f12, a0
	fsub.s f10, f11, f12
	flw f11, 4(s2)
	fle.s a1, f10, f13
	fle.s a2, f11, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label632:
	lui a3, 260096
	fmv.w.x f11, a3
	j label200
.p2align 2
cmmc_parallel_body_0:
	mv a3, a0
	addiw a5, a0, 3
	lui a2, 260096
pcrel108:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
	ld a4, %pcrel_lo(pcrel108)(a0)
	ble a1, a5, label16
	addiw a0, a3, 15
	addiw a5, a1, -3
	addiw t0, a1, -18
	bge a0, a5, label39
	sh2add a0, a3, a4
	j label12
.p2align 2
label15:
	addi a0, a0, 64
.p2align 2
label12:
	addiw a3, a3, 16
	fmv.w.x f10, a2
	fsw f10, 0(a0)
	fsw f10, 4(a0)
	fsw f10, 8(a0)
	fsw f10, 12(a0)
	fsw f10, 16(a0)
	fsw f10, 20(a0)
	fsw f10, 24(a0)
	fsw f10, 28(a0)
	fsw f10, 32(a0)
	fsw f10, 36(a0)
	fsw f10, 40(a0)
	fsw f10, 44(a0)
	fsw f10, 48(a0)
	fsw f10, 52(a0)
	fsw f10, 56(a0)
	fsw f10, 60(a0)
	bgt t0, a3, label15
	mv t0, a3
label3:
	ble a5, t0, label16
	sh2add a0, t0, a4
	mv a3, t0
	j label7
label10:
	addi a0, a0, 16
label7:
	addiw a3, a3, 4
	fmv.w.x f10, a2
	fsw f10, 0(a0)
	fsw f10, 4(a0)
	fsw f10, 8(a0)
	fsw f10, 12(a0)
	bgt a5, a3, label10
label16:
	ble a1, a3, label23
	sh2add a0, a3, a4
	j label19
label22:
	addi a0, a0, 4
label19:
	addiw a3, a3, 1
	fmv.w.x f10, a2
	fsw f10, 0(a0)
	bgt a1, a3, label22
label23:
	ret
label39:
	mv t0, a3
	mv a3, zero
	j label3
