.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.bss
.align 8
cmmc_parallel_body_payload_0:
	.zero	8
.align 8
Vectortm:
	.zero	400000
.align 8
vectorB:
	.zero	400000
.align 8
vectorA:
	.zero	400000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	li a0, 62
	sd ra, 0(sp)
	sd s2, 8(sp)
	sd s1, 16(sp)
	sd s6, 24(sp)
	sd s4, 32(sp)
	sd s3, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s7, 64(sp)
	jal _sysy_starttime
	lui a3, 24
pcrel1032:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1033:
	auipc a1, %pcrel_hi(vectorA)
	addi s2, a1, %pcrel_lo(pcrel1033)
pcrel1034:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd s2, %pcrel_lo(pcrel1032)(a0)
	addi a2, a1, %pcrel_lo(pcrel1034)
	mv a0, zero
	addiw a1, a3, 1696
	jal cmmcParallelFor
	lui a4, 24
	lui s4, 258048
	mv a3, zero
pcrel1035:
	auipc a2, %pcrel_hi(Vectortm)
pcrel1036:
	auipc a0, %pcrel_hi(vectorB)
	addi a1, a2, %pcrel_lo(pcrel1035)
	addi s1, a0, %pcrel_lo(pcrel1036)
pcrel1037:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	addiw a0, a4, 1693
	addi s3, a2, %pcrel_lo(pcrel1037)
	addi s0, a0, 3
	li a2, 1000
	j label110
.p2align 2
label958:
	addiw a3, a3, 1
	bge a3, a2, label184
.p2align 2
label110:
	fmv.w.x f10, zero
	mv a5, a1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label117
	fsw f10, 0(a1)
	blt a4, s0, label237
	mv a5, s1
	j label143
.p2align 2
label277:
	mv t5, s0
	fsw f10, 0(a5)
	bge a4, s0, label953
.p2align 2
label237:
	addi a5, a5, 4
	mv t0, a4
	addiw a4, a4, 1
	bge t5, s0, label970
.p2align 2
label117:
	addiw t1, t5, 3
	bge t1, s0, label256
	sh2add t1, t5, s2
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	j label129
.p2align 2
label133:
	addi t1, t1, 16
.p2align 2
label129:
	addw a7, t0, t5
	addw a6, a4, t5
	flw f14, 0(t1)
	mulw t6, a7, a6
	srliw s6, t6, 31
	add s5, t6, s6
	sraiw a7, s5, 1
	addw t6, a4, a7
	fcvt.s.w f12, t6
	addw t6, t2, t5
	fdiv.s f13, f14, f12
	mulw a7, a6, t6
	srliw s6, a7, 31
	add s7, a7, s6
	sraiw s5, s7, 1
	addw a6, a4, s5
	fadd.s f11, f10, f13
	flw f13, 4(t1)
	fcvt.s.w f10, a6
	addw a6, t3, t5
	fdiv.s f14, f13, f10
	mulw a7, t6, a6
	flw f13, 8(t1)
	srliw s6, a7, 31
	add s5, a7, s6
	addw a7, t4, t5
	sraiw s7, s5, 1
	addiw t5, t5, 4
	addw t6, a4, s7
	fadd.s f12, f11, f14
	fcvt.s.w f11, t6
	mulw t6, a6, a7
	fdiv.s f14, f13, f11
	srliw s5, t6, 31
	add a7, t6, s5
	sraiw s6, a7, 1
	addw a6, a4, s6
	fcvt.s.w f11, a6
	fadd.s f10, f12, f14
	flw f12, 12(t1)
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t5, a0, label133
	fmv.s f11, f10
	bge t5, s0, label954
.p2align 2
label122:
	sh2add t1, t5, s2
	mv t2, t5
	fmv.s f10, f11
.p2align 2
label123:
	addw t4, t0, t2
	addw a6, a4, t2
	flw f12, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, a6
	srliw t5, t3, 31
	add t6, t3, t5
	sraiw t4, t6, 1
	addw a6, a4, t4
	fcvt.s.w f11, a6
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t2, s0, label277
	addi t1, t1, 4
	j label123
.p2align 2
label768:
	mv t5, s0
	fsw f10, 0(a5)
	bge a4, s0, label968
.p2align 2
label146:
	addi a5, a5, 4
	mv t0, a4
	addiw a4, a4, 1
	bge t5, s0, label955
.p2align 2
label220:
	addiw t1, t5, 3
	bge t1, s0, label747
	sh2add t1, t5, a1
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
	j label232
.p2align 2
label236:
	addi t1, t1, 16
.p2align 2
label232:
	addw a7, t0, t5
	addw a6, a4, t5
	flw f14, 0(t1)
	addiw s7, t5, 3
	mulw t6, a7, a6
	srliw s6, t6, 31
	add s5, t6, s6
	addiw t6, t5, 1
	sraiw a7, s5, 1
	addw s6, a7, t6
	addw t6, t2, t5
	mulw a7, a6, t6
	fcvt.s.w f12, s6
	srliw s5, a7, 31
	add s6, a7, s5
	fdiv.s f13, f14, f12
	addiw a7, t5, 2
	sraiw a6, s6, 1
	flw f14, 4(t1)
	addw s5, a6, a7
	addw a6, t3, t5
	mulw a7, t6, a6
	fcvt.s.w f12, s5
	srliw s6, a7, 31
	add s5, a7, s6
	sraiw t6, s5, 1
	addw a7, t6, s7
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	flw f14, 8(t1)
	fcvt.s.w f12, a7
	addw a7, t4, t5
	addiw t5, t5, 4
	mulw t6, a6, a7
	srliw s5, t6, 31
	add a7, t6, s5
	sraiw a6, a7, 1
	addw t6, a6, t5
	fadd.s f10, f11, f13
	fdiv.s f13, f14, f12
	flw f14, 12(t1)
	fcvt.s.w f12, t6
	fadd.s f11, f10, f13
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	blt t5, a0, label236
	fmv.s f12, f10
	bge t5, s0, label969
.p2align 2
label225:
	sh2add t1, t5, a1
	mv t2, t5
	fmv.s f10, f12
.p2align 2
label226:
	addw t4, t0, t2
	addw t5, a4, t2
	flw f13, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t5
	srliw t6, t3, 31
	add a6, t3, t6
	sraiw t4, a6, 1
	addw t3, t4, t2
	fcvt.s.w f11, t3
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t2, s0, label768
	addi t1, t1, 4
	j label226
.p2align 2
label256:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	blt t5, s0, label122
	mv t5, s0
	fsw f12, 0(a5)
	blt a4, s0, label237
	fmv.w.x f10, zero
	mv a5, s1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label220
	j label143
.p2align 2
label747:
	fmv.w.x f11, zero
	fmv.s f12, f10
	fmv.s f10, f11
	blt t5, s0, label225
	mv t5, s0
	fsw f11, 0(a5)
	blt a4, s0, label146
	fmv.w.x f10, zero
	mv a5, a1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label203
	fsw f10, 0(a1)
	blt a4, s0, label202
	j label156
.p2align 2
label219:
	addi t1, t1, 4
.p2align 2
label215:
	addw t4, t0, t2
	addw t6, a4, t2
	flw f13, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t6
	srliw a6, t3, 31
	add t5, t3, a6
	sraiw t4, t5, 1
	addw t6, a4, t4
	fcvt.s.w f11, t6
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t2, s0, label219
	mv t5, s0
	fsw f10, 0(a5)
	bge a4, s0, label966
.p2align 2
label202:
	addi a5, a5, 4
	mv t0, a4
	addiw a4, a4, 1
	bge t5, s0, label962
.p2align 2
label203:
	addiw t1, t5, 3
	bge t1, s0, label673
	sh2add t1, t5, s1
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
.p2align 2
label205:
	addw a7, t0, t5
	addw t6, a4, t5
	flw f13, 0(t1)
	mulw a6, a7, t6
	srliw s5, a6, 31
	add a7, a6, s5
	sraiw s6, a7, 1
	addw a6, a4, s6
	fcvt.s.w f11, a6
	addw a6, t2, t5
	fdiv.s f14, f13, f11
	mulw a7, t6, a6
	flw f13, 4(t1)
	srliw s5, a7, 31
	add s6, a7, s5
	sraiw t6, s6, 1
	addw a7, a4, t6
	addw t6, t3, t5
	fadd.s f12, f10, f14
	fcvt.s.w f10, a7
	mulw a7, a6, t6
	fdiv.s f14, f13, f10
	srliw s5, a7, 31
	add s6, a7, s5
	sraiw a6, s6, 1
	addw a7, a4, a6
	fadd.s f11, f12, f14
	flw f14, 8(t1)
	fcvt.s.w f12, a7
	addw a7, t4, t5
	fdiv.s f13, f14, f12
	addiw t5, t5, 4
	mulw a6, t6, a7
	srliw s6, a6, 31
	add a7, a6, s6
	sraiw s5, a7, 1
	addw t6, a4, s5
	fadd.s f10, f11, f13
	flw f13, 12(t1)
	fcvt.s.w f11, t6
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t5, a0, label720
	addi t1, t1, 16
	j label205
.p2align 2
label720:
	fmv.s f11, f10
	bge t5, s0, label964
.p2align 2
label214:
	sh2add t1, t5, s1
	mv t2, t5
	fmv.s f10, f11
	j label215
.p2align 2
label673:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	blt t5, s0, label214
	mv t5, s0
	fsw f12, 0(a5)
	blt a4, s0, label202
	fmv.w.x f10, zero
	mv a5, s2
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label162
	j label356
.p2align 2
label172:
	addi t1, t1, 4
.p2align 2
label168:
	addw t4, t0, t2
	addw t6, a4, t2
	flw f12, 0(t1)
	addiw t2, t2, 1
	mulw t3, t4, t6
	srliw a6, t3, 31
	add t5, t3, a6
	sraiw t4, t5, 1
	addw t3, t4, t2
	fcvt.s.w f11, t3
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t2, s0, label172
	mv t5, s0
	fsw f10, 0(a5)
	bge a4, s0, label958
.p2align 2
label182:
	addi a5, a5, 4
	mv t0, a4
	addiw a4, a4, 1
	bge t5, s0, label961
.p2align 2
label162:
	addiw t1, t5, 3
	bge t1, s0, label361
	sh2add t1, t5, a1
	addiw t2, t0, 2
	addiw t3, t0, 3
	addiw t4, t0, 4
.p2align 2
label174:
	addw a7, t0, t5
	addw a6, a4, t5
	addiw s6, t5, 1
	mulw t6, a7, a6
	flw f13, 0(t1)
	srliw s5, t6, 31
	add s7, t6, s5
	sraiw a7, s7, 1
	addiw s7, t5, 3
	addw t6, a7, s6
	fcvt.s.w f12, t6
	addw t6, t2, t5
	fdiv.s f14, f13, f12
	mulw a7, a6, t6
	flw f13, 4(t1)
	srliw s6, a7, 31
	add s5, a7, s6
	addiw a7, t5, 2
	sraiw a6, s5, 1
	addw s6, a6, a7
	addw a6, t3, t5
	mulw a7, t6, a6
	fcvt.s.w f12, s6
	srliw s6, a7, 31
	add s5, a7, s6
	sraiw t6, s5, 1
	addw a7, t6, s7
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, a7
	addw a7, t4, t5
	addiw t5, t5, 4
	mulw t6, a6, a7
	srliw s5, t6, 31
	add a7, t6, s5
	sraiw a6, a7, 1
	addw t6, a6, t5
	fadd.s f10, f11, f14
	flw f14, 8(t1)
	fdiv.s f13, f14, f12
	fcvt.s.w f12, t6
	fadd.s f11, f10, f13
	flw f13, 12(t1)
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	bge t5, a0, label432
	addi t1, t1, 16
	j label174
.p2align 2
label432:
	fmv.s f12, f10
	bge t5, s0, label959
.p2align 2
label167:
	sh2add t1, t5, a1
	mv t2, t5
	fmv.s f10, f12
	j label168
.p2align 2
label361:
	fmv.w.x f11, zero
	fmv.s f12, f10
	fmv.s f10, f11
	blt t5, s0, label167
	mv t5, s0
	fsw f11, 0(a5)
	blt a4, s0, label182
	addiw a3, a3, 1
	blt a3, a2, label110
	j label184
.p2align 2
label959:
	mv t5, s0
	fsw f10, 0(a5)
	blt a4, s0, label182
	addiw a3, a3, 1
	blt a3, a2, label110
	j label184
.p2align 2
label954:
	mv t5, s0
	fsw f10, 0(a5)
	blt a4, s0, label237
	fmv.w.x f10, zero
	mv a5, s1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label220
	fsw f10, 0(s1)
	blt a4, s0, label146
	j label339
.p2align 2
label964:
	mv t5, s0
	fsw f10, 0(a5)
	blt a4, s0, label202
	fmv.w.x f10, zero
	mv a5, s2
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label162
	fsw f10, 0(s2)
	blt a4, s0, label182
	j label956
.p2align 2
label969:
	mv t5, s0
	fsw f10, 0(a5)
	blt a4, s0, label146
	fmv.w.x f10, zero
	mv a5, a1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label203
	fsw f10, 0(a1)
	blt a4, s0, label202
	j label156
.p2align 2
label961:
	fsw f10, 0(a5)
	blt a4, s0, label182
	addiw a3, a3, 1
	blt a3, a2, label110
	j label184
.p2align 2
label970:
	fsw f10, 0(a5)
	blt a4, s0, label237
	fmv.w.x f10, zero
	mv a5, s1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label220
label143:
	fsw f10, 0(a5)
	blt a4, s0, label146
	j label339
.p2align 2
label962:
	fsw f10, 0(a5)
	blt a4, s0, label202
	fmv.w.x f10, zero
	mv a5, s2
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label162
label356:
	fsw f10, 0(a5)
	blt a4, s0, label182
	j label956
.p2align 2
label955:
	fsw f10, 0(a5)
	blt a4, s0, label146
	fmv.w.x f10, zero
	mv a5, a1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label203
label153:
	fsw f10, 0(a5)
	blt a4, s0, label202
	j label156
.p2align 2
label953:
	fmv.w.x f10, zero
	mv a5, s1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label220
	fsw f10, 0(s1)
	blt a4, s0, label146
label339:
	fmv.w.x f10, zero
	mv a5, a1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label203
	j label153
.p2align 2
label966:
	fmv.w.x f10, zero
	mv a5, s2
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label162
	fsw f10, 0(s2)
	blt a4, s0, label182
label956:
	addiw a3, a3, 1
	blt a3, a2, label110
	j label184
.p2align 2
label968:
	fmv.w.x f10, zero
	mv a5, a1
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label203
	fsw f10, 0(a1)
	blt a4, s0, label202
label156:
	fmv.w.x f10, zero
	mv a5, s2
	mv t0, zero
	mv t5, zero
	li a4, 1
	blt zero, s0, label162
	j label356
label184:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
	j label185
.p2align 2
label189:
	addi s2, s2, 64
.p2align 2
label185:
	sh2add a1, a0, s1
	flw f12, 0(s2)
	addiw a0, a0, 16
	flw f14, 0(a1)
	flw f13, 4(s2)
	fmul.s f15, f12, f14
	flw f14, 4(a1)
	flw f12, 8(s2)
	flw f0, 8(a1)
	fadd.s f11, f10, f15
	fmul.s f15, f13, f14
	flw f13, 12(s2)
	fmul.s f14, f12, f0
	fadd.s f10, f11, f15
	flw f15, 12(a1)
	flw f12, 16(s2)
	fadd.s f11, f10, f14
	fmul.s f14, f13, f15
	flw f13, 16(a1)
	fmul.s f15, f12, f13
	fadd.s f10, f11, f14
	flw f14, 20(s2)
	flw f12, 20(a1)
	flw f13, 24(s2)
	fadd.s f11, f10, f15
	fmul.s f15, f14, f12
	flw f14, 24(a1)
	flw f12, 28(s2)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f14
	flw f14, 28(a1)
	flw f13, 32(s2)
	fmul.s f0, f12, f14
	fadd.s f11, f10, f15
	flw f15, 32(a1)
	flw f14, 36(s2)
	fadd.s f10, f11, f0
	fmul.s f11, f13, f15
	flw f15, 36(a1)
	flw f13, 40(s2)
	fadd.s f12, f10, f11
	fmul.s f10, f14, f15
	flw f14, 40(a1)
	fmul.s f0, f13, f14
	fadd.s f11, f12, f10
	flw f12, 44(s2)
	flw f15, 44(a1)
	flw f13, 48(s2)
	fmul.s f14, f12, f15
	fadd.s f10, f11, f0
	flw f15, 48(a1)
	fmul.s f12, f13, f15
	fadd.s f11, f10, f14
	flw f14, 52(s2)
	flw f15, 52(a1)
	flw f13, 56(s2)
	fadd.s f10, f11, f12
	fmul.s f11, f14, f15
	flw f15, 56(a1)
	flw f14, 60(s2)
	fadd.s f12, f10, f11
	fmul.s f10, f13, f15
	flw f13, 60(a1)
	fadd.s f11, f12, f10
	fmul.s f12, f14, f13
	fadd.s f10, f11, f12
	blt a0, s0, label189
	fmv.w.x f11, zero
	mv a0, zero
	j label191
.p2align 2
label195:
	addi s1, s1, 64
.p2align 2
label191:
	flw f13, 0(s1)
	addiw a0, a0, 16
	flw f14, 4(s1)
	fmul.s f15, f13, f13
	fmul.s f1, f14, f14
	fadd.s f12, f11, f15
	flw f15, 8(s1)
	flw f14, 12(s1)
	fmul.s f0, f15, f15
	fadd.s f13, f12, f1
	fmul.s f1, f14, f14
	fadd.s f11, f13, f0
	flw f13, 16(s1)
	flw f14, 20(s1)
	fmul.s f15, f13, f13
	fmul.s f0, f14, f14
	flw f13, 24(s1)
	fadd.s f12, f11, f1
	flw f14, 28(s1)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	fadd.s f11, f12, f15
	flw f15, 32(s1)
	flw f14, 36(s1)
	fmul.s f1, f15, f15
	fadd.s f13, f11, f0
	fmul.s f0, f14, f14
	fadd.s f12, f13, f1
	flw f13, 40(s1)
	flw f14, 44(s1)
	fmul.s f15, f13, f13
	flw f13, 48(s1)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 52(s1)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 56(s1)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 60(s1)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	fmul.s f13, f14, f14
	fadd.s f11, f12, f0
	fadd.s f12, f11, f15
	fadd.s f11, f12, f13
	blt a0, s0, label195
	fdiv.s f10, f10, f11
	lui a0, 260096
	flw f13, 0(s3)
	fmv.w.x f12, a0
	fsub.s f11, f12, f10
	flw f12, 4(s3)
	flt.s a0, f13, f11
	flt.s a2, f11, f12
	or a1, a0, a2
	beq a1, zero, label632
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
.p2align 2
label197:
	fadd.s f14, f11, f12
	fmv.w.x f15, s4
	fmul.s f11, f14, f15
	flw f14, 0(s3)
	flw f15, 4(s3)
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f15
	flt.s a0, f14, f13
	or a1, a0, a2
	bne a1, zero, label197
label200:
	lui a0, 260096
	flw f13, 0(s3)
	fmv.w.x f12, a0
	fsub.s f10, f11, f12
	flw f11, 4(s3)
	fle.s a1, f10, f13
	fle.s a2, f11, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s2, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s7, 64(sp)
	addi sp, sp, 72
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
