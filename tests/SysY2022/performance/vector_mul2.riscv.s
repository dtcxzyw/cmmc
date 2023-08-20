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
	addi sp, sp, -24
	li a0, 62
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	jal _sysy_starttime
	lui a3, 24
pcrel1007:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1008:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel1008)
pcrel1009:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd s1, %pcrel_lo(pcrel1007)(a0)
	addi a2, a1, %pcrel_lo(pcrel1009)
	mv a0, zero
	addiw a1, a3, 1696
	jal cmmcParallelFor
pcrel1010:
	auipc a1, %pcrel_hi(Vectortm)
	mv a4, zero
pcrel1011:
	auipc a0, %pcrel_hi(vectorB)
	addi a2, a1, %pcrel_lo(pcrel1010)
	addi s0, a0, %pcrel_lo(pcrel1011)
.p2align 2
label111:
	fmv.w.x f10, zero
	mv a3, a2
	mv a5, zero
	mv a0, zero
.p2align 2
label113:
	addiw t0, a5, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label118
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	blt a1, t1, label233
	fmv.w.x f11, zero
.p2align 2
label223:
	lui t1, 24
	addiw a1, t1, 1696
	blt a0, a1, label227
	lui a5, 24
	fmv.s f10, f11
	addiw a0, a5, 1696
.p2align 2
label118:
	fsw f10, 0(a3)
	lui a5, 24
	addiw a1, a5, 1696
	bge t0, a1, label121
	addi a3, a3, 4
	mv a5, t0
	j label113
.p2align 2
label121:
	fmv.w.x f10, zero
	mv a1, s0
	mv a5, zero
	mv a0, zero
	j label122
.p2align 2
label137:
	addi a3, a3, 4
	fmv.s f11, f10
.p2align 2
label133:
	addw t2, a5, a0
	addw t3, t0, a0
	mulw t4, t2, t3
	mv t1, t4
	bge t4, zero, label923
	addiw t1, t4, 1
label923:
	sraiw t2, t1, 1
	addiw a0, a0, 1
	flw f14, 0(a3)
	addw t3, t2, a0
	lui t2, 24
	fcvt.s.w f12, t3
	addiw t1, t2, 1696
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	blt a0, t1, label137
	lui a3, 24
	addiw a0, a3, 1696
.p2align 2
label144:
	fsw f10, 0(a1)
	lui a5, 24
	addiw a3, a5, 1696
	bge t0, a3, label343
	addi a1, a1, 4
	mv a5, t0
.p2align 2
label122:
	addiw t0, a5, 1
	lui t1, 24
	addiw a3, t1, 1696
	bge a0, a3, label144
	addiw a3, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a3, t1, label267
	sh2add a3, a0, a2
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
.p2align 2
label139:
	addw t5, a5, a0
	addw t6, t0, a0
	mulw a6, t5, t6
	mv t4, a6
	bge a6, zero, label927
	addiw t4, a6, 1
label927:
	sraiw t5, t4, 1
	addiw a6, a0, 1
	flw f12, 0(a3)
	addw t4, t1, a0
	addw a7, t5, a6
	mulw a6, t6, t4
	fcvt.s.w f11, a7
	mv t5, a6
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge a6, zero, label929
	addiw t5, a6, 1
label929:
	sraiw t6, t5, 1
	addiw a7, a0, 2
	flw f13, 4(a3)
	addw t5, t2, a0
	addw a6, t6, a7
	mulw t6, t4, t5
	fcvt.s.w f11, a6
	mv t4, t6
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t6, zero, label931
	addiw t4, t6, 1
label931:
	sraiw t6, t4, 1
	addiw a7, a0, 3
	flw f13, 8(a3)
	addw a6, t6, a7
	addw t6, t3, a0
	fcvt.s.w f12, a6
	mulw a6, t5, t6
	fdiv.s f14, f13, f12
	mv t4, a6
	fadd.s f11, f10, f14
	bge a6, zero, label933
	addiw t4, a6, 1
label933:
	sraiw t5, t4, 1
	addiw a0, a0, 4
	flw f14, 12(a3)
	addw t6, t5, a0
	lui t5, 24
	fcvt.s.w f12, t6
	addiw t4, t5, 1693
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge a0, t4, label338
	addi a3, a3, 16
	j label139
.p2align 2
label338:
	fmv.s f11, f10
.p2align 2
label128:
	lui t1, 24
	addiw a3, t1, 1696
	bge a0, a3, label272
	sh2add a3, a0, a2
	j label133
.p2align 2
label343:
	fmv.w.x f10, zero
	mv a3, a2
	mv t0, zero
	mv a0, zero
.p2align 2
label149:
	addiw a5, t0, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label171
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a1, t1, label355
	sh2add a1, a0, s0
	addiw t1, t0, 2
	addiw t2, t0, 3
	addiw t3, t0, 4
	j label156
.p2align 2
label160:
	addi a1, a1, 16
.p2align 2
label156:
	addw t6, t0, a0
	addw t4, a5, a0
	mulw a6, t6, t4
	mv t5, a6
	bge a6, zero, label939
	addiw t5, a6, 1
label939:
	sraiw a6, t5, 1
	flw f13, 0(a1)
	addw t5, t1, a0
	addw t6, a5, a6
	fcvt.s.w f12, t6
	mulw t6, t4, t5
	fdiv.s f14, f13, f12
	mv t4, t6
	fadd.s f11, f10, f14
	bge t6, zero, label941
	addiw t4, t6, 1
label941:
	sraiw a6, t4, 1
	flw f12, 4(a1)
	addw t4, t2, a0
	addw t6, a5, a6
	fcvt.s.w f10, t6
	mulw t6, t5, t4
	fdiv.s f13, f12, f10
	mv t5, t6
	fadd.s f11, f11, f13
	bge t6, zero, label943
	addiw t5, t6, 1
label943:
	sraiw a6, t5, 1
	flw f14, 8(a1)
	addw t6, a5, a6
	addw a6, t3, a0
	fcvt.s.w f12, t6
	mulw t6, t4, a6
	fdiv.s f13, f14, f12
	mv t5, t6
	fadd.s f10, f11, f13
	bge t6, zero, label945
	addiw t5, t6, 1
label945:
	sraiw t4, t5, 1
	addiw a0, a0, 4
	flw f12, 12(a1)
	lui t5, 24
	addw t6, a5, t4
	addiw t4, t5, 1693
	fcvt.s.w f11, t6
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt a0, t4, label160
	fmv.s f11, f10
	j label161
.p2align 2
label171:
	fsw f10, 0(a3)
	lui t0, 24
	addiw a1, t0, 1696
	bge a5, a1, label174
	addi a3, a3, 4
	mv t0, a5
	j label149
.p2align 2
label174:
	fmv.w.x f10, zero
	mv a3, s1
	mv a5, zero
	mv a0, zero
.p2align 2
label175:
	addiw t0, a5, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label197
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a1, t1, label439
	sh2add a1, a0, a2
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	fmv.s f11, f10
.p2align 2
label182:
	addw t6, a5, a0
	addw t4, t0, a0
	mulw a6, t6, t4
	mv t5, a6
	bge a6, zero, label957
	addiw t5, a6, 1
label957:
	sraiw t6, t5, 1
	addiw a6, a0, 1
	flw f14, 0(a1)
	addw t5, t1, a0
	addw a7, t6, a6
	mulw a6, t4, t5
	fcvt.s.w f12, a7
	mv t6, a6
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge a6, zero, label959
	addiw t6, a6, 1
label959:
	sraiw t4, t6, 1
	addiw a6, a0, 2
	flw f13, 4(a1)
	addw a7, t4, a6
	addw t4, t2, a0
	fcvt.s.w f12, a7
	mulw t6, t5, t4
	fdiv.s f14, f13, f12
	mv t5, t6
	fadd.s f11, f10, f14
	bge t6, zero, label961
	addiw t5, t6, 1
label961:
	sraiw t6, t5, 1
	addiw a6, a0, 3
	flw f14, 8(a1)
	addw t5, t3, a0
	addw a7, t6, a6
	mulw a6, t4, t5
	fcvt.s.w f12, a7
	mv t6, a6
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge a6, zero, label963
	addiw t6, a6, 1
label963:
	sraiw t4, t6, 1
	addiw a0, a0, 4
	flw f14, 12(a1)
	addw t5, t4, a0
	fcvt.s.w f12, t5
	lui t5, 24
	fdiv.s f13, f14, f12
	addiw t4, t5, 1693
	fadd.s f11, f10, f13
	blt a0, t4, label186
	fmv.s f10, f11
	j label187
.p2align 2
label197:
	fsw f10, 0(a3)
	lui a5, 24
	addiw a1, a5, 1696
	blt t0, a1, label200
	addiw a4, a4, 1
	li a0, 1000
	blt a4, a0, label111
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label203:
	sh2add a1, a0, s0
	flw f13, 0(s1)
	lui a2, 24
	addiw a0, a0, 16
	flw f15, 0(a1)
	flw f12, 4(s1)
	fmadd.s f11, f13, f15, f10
	flw f14, 4(a1)
	flw f13, 8(s1)
	flw f15, 8(a1)
	fmadd.s f10, f12, f14, f11
	flw f14, 12(s1)
	flw f0, 12(a1)
	flw f12, 16(s1)
	fmadd.s f11, f13, f15, f10
	flw f15, 16(a1)
	flw f13, 20(s1)
	fmadd.s f10, f14, f0, f11
	flw f14, 20(a1)
	fmadd.s f11, f12, f15, f10
	flw f12, 24(s1)
	flw f0, 24(a1)
	fmadd.s f10, f13, f14, f11
	flw f13, 28(s1)
	flw f15, 28(a1)
	flw f14, 32(s1)
	fmadd.s f11, f12, f0, f10
	flw f0, 32(a1)
	fmadd.s f12, f13, f15, f11
	flw f13, 36(s1)
	flw f15, 36(a1)
	fmadd.s f10, f14, f0, f12
	flw f14, 40(s1)
	flw f1, 40(a1)
	flw f12, 44(s1)
	flw f0, 44(a1)
	fmadd.s f11, f13, f15, f10
	flw f13, 48(s1)
	flw f15, 48(a1)
	fmadd.s f10, f14, f1, f11
	flw f14, 52(s1)
	fmadd.s f11, f12, f0, f10
	flw f0, 52(a1)
	fmadd.s f12, f13, f15, f11
	flw f11, 56(s1)
	flw f15, 56(a1)
	flw f13, 60(s1)
	fmadd.s f10, f14, f0, f12
	flw f14, 60(a1)
	addiw a1, a2, 1696
	fmadd.s f12, f11, f15, f10
	fmadd.s f11, f13, f14, f12
	blt a0, a1, label207
	fmv.w.x f10, zero
	mv a0, zero
	j label209
.p2align 2
label439:
	fmv.w.x f11, zero
.p2align 2
label187:
	lui t1, 24
	addiw a1, t1, 1696
	blt a0, a1, label191
	lui a5, 24
	fmv.s f10, f11
	addiw a0, a5, 1696
	j label197
.p2align 2
label355:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
.p2align 2
label161:
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label407
	sh2add a1, a0, s0
	j label166
.p2align 2
label170:
	addi a1, a1, 4
	fmv.s f11, f10
.p2align 2
label166:
	addw t2, t0, a0
	addw t3, a5, a0
	mulw t4, t2, t3
	mv t1, t4
	bge t4, zero, label950
	addiw t1, t4, 1
label950:
	sraiw t2, t1, 1
	addiw a0, a0, 1
	flw f14, 0(a1)
	addw t3, a5, t2
	lui t2, 24
	fcvt.s.w f12, t3
	addiw t1, t2, 1696
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	blt a0, t1, label170
	lui a1, 24
	addiw a0, a1, 1696
	j label171
.p2align 2
label227:
	sh2add a1, a0, s1
.p2align 2
label228:
	addw t2, a5, a0
	addw t4, t0, a0
	mulw t3, t2, t4
	mv t1, t3
	bge t3, zero, label978
	addiw t1, t3, 1
label978:
	sraiw t2, t1, 1
	addiw a0, a0, 1
	flw f13, 0(a1)
	addw t3, t0, t2
	lui t2, 24
	fcvt.s.w f11, t3
	addiw t1, t2, 1696
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge a0, t1, label773
	addi a1, a1, 4
	j label228
.p2align 2
label219:
	addi s0, s0, 64
.p2align 2
label209:
	flw f15, 0(s0)
	addiw a0, a0, 16
	lui a2, 24
	flw f14, 4(s0)
	fmadd.s f12, f15, f15, f10
	addiw a1, a2, 1696
	flw f15, 8(s0)
	fmadd.s f13, f14, f14, f12
	flw f12, 12(s0)
	fmadd.s f10, f15, f15, f13
	flw f15, 16(s0)
	flw f0, 20(s0)
	fmadd.s f14, f12, f12, f10
	fmadd.s f13, f15, f15, f14
	flw f15, 24(s0)
	fmadd.s f12, f0, f0, f13
	flw f0, 28(s0)
	fmadd.s f10, f15, f15, f12
	flw f15, 32(s0)
	fmadd.s f14, f0, f0, f10
	flw f0, 36(s0)
	fmadd.s f13, f15, f15, f14
	flw f15, 40(s0)
	fmadd.s f12, f0, f0, f13
	flw f0, 44(s0)
	fmadd.s f10, f15, f15, f12
	flw f15, 48(s0)
	fmadd.s f14, f0, f0, f10
	flw f10, 52(s0)
	fmadd.s f13, f15, f15, f14
	flw f15, 56(s0)
	fmadd.s f12, f10, f10, f13
	flw f13, 60(s0)
	fmadd.s f14, f15, f15, f12
	fmadd.s f10, f13, f13, f14
	blt a0, a1, label219
	fdiv.s f12, f11, f10
	lui a0, 260096
pcrel1012:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a2, %pcrel_lo(pcrel1012)
	fsub.s f10, f13, f12
	flw f13, 0(a0)
	flw f11, 4(a0)
	flt.s a1, f13, f10
	flt.s a2, f10, f11
	or a3, a1, a2
	bne a3, zero, label710
	lui a0, 260096
	fmv.w.x f10, a0
	j label217
label710:
	lui a0, 260096
	fmv.s f10, f12
	fmv.w.x f11, a0
.p2align 2
label214:
	fadd.s f14, f11, f10
	lui a0, 258048
pcrel1013:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f15, a0
	addi a0, a2, %pcrel_lo(pcrel1013)
	fmul.s f11, f14, f15
	flw f15, 0(a0)
	flw f14, 4(a0)
	fdiv.s f10, f12, f11
	fsub.s f13, f11, f10
	flt.s a2, f13, f14
	flt.s a1, f15, f13
	or a3, a1, a2
	bne a3, zero, label214
	fmv.s f10, f11
label217:
	lui a0, 260096
pcrel1014:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a1, a3, %pcrel_lo(pcrel1014)
	fsub.s f11, f10, f12
	flw f10, 0(a1)
	flw f12, 4(a1)
	fle.s a2, f11, f10
	fle.s a3, f12, f11
	and a0, a2, a3
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
label191:
	sh2add a1, a0, a2
.p2align 2
label192:
	addw t2, a5, a0
	addw t3, t0, a0
	mulw t4, t2, t3
	mv t1, t4
	bge t4, zero, label968
	addiw t1, t4, 1
label968:
	sraiw t2, t1, 1
	addiw a0, a0, 1
	flw f13, 0(a1)
	addw t3, t2, a0
	lui t2, 24
	fcvt.s.w f11, t3
	addiw t1, t2, 1696
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt a0, t1, label196
	lui a1, 24
	addiw a0, a1, 1696
	j label197
.p2align 2
label272:
	lui a5, 24
	addiw a0, a5, 1696
	j label144
.p2align 2
label407:
	lui t0, 24
	addiw a0, t0, 1696
	j label171
.p2align 2
label196:
	addi a1, a1, 4
	j label192
.p2align 2
label200:
	addi a3, a3, 4
	mv a5, t0
	j label175
.p2align 2
label186:
	addi a1, a1, 16
	j label182
.p2align 2
label233:
	sh2add a1, a0, s1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	j label234
.p2align 2
label238:
	addi a1, a1, 16
	fmv.s f10, f11
.p2align 2
label234:
	addw t6, a5, a0
	addw t4, t0, a0
	mulw a6, t6, t4
	mv t5, a6
	bge a6, zero, label982
	addiw t5, a6, 1
label982:
	sraiw t6, t5, 1
	flw f13, 0(a1)
	addw a6, t0, t6
	addw t6, t1, a0
	fcvt.s.w f12, a6
	mulw t5, t4, t6
	fdiv.s f14, f13, f12
	mv t4, t5
	fadd.s f11, f10, f14
	bge t5, zero, label984
	addiw t4, t5, 1
label984:
	sraiw a6, t4, 1
	flw f14, 4(a1)
	addw t4, t2, a0
	addw t5, t0, a6
	mulw a6, t6, t4
	fcvt.s.w f12, t5
	mv t5, a6
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge a6, zero, label986
	addiw t5, a6, 1
label986:
	sraiw t6, t5, 1
	flw f13, 8(a1)
	addw t5, t3, a0
	addw a6, t0, t6
	mulw t6, t4, t5
	fcvt.s.w f12, a6
	mv t4, t6
	fdiv.s f14, f13, f12
	fadd.s f11, f10, f14
	bge t6, zero, label988
	addiw t4, t6, 1
label988:
	sraiw t5, t4, 1
	addiw a0, a0, 4
	flw f12, 12(a1)
	addw t6, t0, t5
	lui t5, 24
	fcvt.s.w f10, t6
	addiw t4, t5, 1693
	fdiv.s f13, f12, f10
	fadd.s f11, f11, f13
	blt a0, t4, label238
	fmv.s f10, f11
	j label223
.p2align 2
label267:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	j label128
.p2align 2
label773:
	lui a1, 24
	addiw a0, a1, 1696
	j label118
.p2align 2
label207:
	addi s1, s1, 64
	fmv.s f10, f11
	j label203
.p2align 2
cmmc_parallel_body_0:
	mv a3, a0
	addiw a5, a0, 3
	lui a2, 260096
pcrel109:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
	ld a4, %pcrel_lo(pcrel109)(a0)
	ble a1, a5, label16
	addiw a0, a3, 15
	addiw a5, a1, -3
	addiw t0, a1, -18
	bge a0, a5, label39
	sh2add a0, a3, a4
	j label4
.p2align 2
label7:
	addi a0, a0, 64
.p2align 2
label4:
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
	bgt t0, a3, label7
	mv t0, a3
label8:
	ble a5, t0, label16
	sh2add a0, t0, a4
	mv a3, t0
label12:
	addiw a3, a3, 4
	fmv.w.x f10, a2
	fsw f10, 0(a0)
	fsw f10, 4(a0)
	fsw f10, 8(a0)
	fsw f10, 12(a0)
	ble a5, a3, label16
	addi a0, a0, 16
	j label12
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
	j label8
