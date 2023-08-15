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
	addi sp, sp, -32
	li a0, 62
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s2, 24(sp)
	jal _sysy_starttime
	lui a3, 24
pcrel997:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel998:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel998)
pcrel999:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd s1, %pcrel_lo(pcrel997)(a0)
	addi a2, a1, %pcrel_lo(pcrel999)
	mv a0, zero
	addiw a1, a3, 1696
	jal cmmcParallelFor
pcrel1000:
	auipc a1, %pcrel_hi(Vectortm)
	mv a4, zero
pcrel1001:
	auipc a0, %pcrel_hi(vectorB)
	addi a3, a1, %pcrel_lo(pcrel1000)
	addi s0, a0, %pcrel_lo(pcrel1001)
	j label111
.p2align 2
label202:
	addiw a4, a4, 1
	li a0, 1000
	bge a4, a0, label203
.p2align 2
label111:
	fmv.w.x f10, zero
	mv a2, a3
	mv a5, zero
	mv a0, zero
	j label113
.p2align 2
label278:
	lui a1, 24
	addiw a0, a1, 1696
.p2align 2
label135:
	fsw f10, 0(a2)
	lui a5, 24
	addiw a1, a5, 1696
	bge t0, a1, label330
	addi a2, a2, 4
	mv a5, t0
.p2align 2
label113:
	addiw t0, a5, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label135
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a1, t1, label257
	sh2add a1, a0, s1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
.p2align 2
label130:
	addw t6, a5, a0
	addw t4, t0, a0
	flw f14, 0(a1)
	mulw t5, t6, t4
	srliw a6, t5, 31
	add a7, t5, a6
	addw t5, t1, a0
	sraiw s2, a7, 1
	addw t6, t0, s2
	fcvt.s.w f12, t6
	mulw t6, t4, t5
	fdiv.s f13, f14, f12
	srliw a6, t6, 31
	add a7, t6, a6
	sraiw s2, a7, 1
	addw t4, t0, s2
	fcvt.s.w f12, t4
	addw t4, t2, a0
	mulw t6, t5, t4
	srliw s2, t6, 31
	add a7, t6, s2
	sraiw a6, a7, 1
	addw t5, t0, a6
	addw a6, t3, a0
	addiw a0, a0, 4
	fadd.s f11, f10, f13
	flw f13, 4(a1)
	fdiv.s f14, f13, f12
	flw f13, 8(a1)
	fcvt.s.w f12, t5
	mulw t5, t4, a6
	srliw t6, t5, 31
	add a7, t5, t6
	lui t5, 24
	sraiw t4, a7, 1
	addw a6, t0, t4
	addiw t4, t5, 1693
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	flw f13, 12(a1)
	fcvt.s.w f12, a6
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	bge a0, t4, label325
	addi a1, a1, 16
	j label130
.p2align 2
label257:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
.p2align 2
label119:
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label262
	sh2add a1, a0, s1
.p2align 2
label124:
	addw t2, a5, a0
	addw t3, t0, a0
	flw f14, 0(a1)
	addiw a0, a0, 1
	mulw t1, t2, t3
	srliw t4, t1, 31
	add t5, t1, t4
	sraiw t2, t5, 1
	addw t3, t0, t2
	lui t2, 24
	addiw t1, t2, 1696
	fcvt.s.w f12, t3
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge a0, t1, label278
	addi a1, a1, 4
	fmv.s f11, f10
	j label124
label203:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
.p2align 2
label204:
	sh2add a1, a0, s0
	flw f13, 0(s1)
	lui a2, 24
	addiw a0, a0, 16
	flw f14, 0(a1)
	flw f12, 4(s1)
	fmul.s f15, f13, f14
	flw f14, 4(a1)
	flw f13, 8(s1)
	fadd.s f11, f10, f15
	fmul.s f15, f12, f14
	flw f12, 8(a1)
	flw f14, 12(s1)
	flw f0, 12(a1)
	fadd.s f10, f11, f15
	fmul.s f15, f13, f12
	flw f13, 16(s1)
	fadd.s f11, f10, f15
	fmul.s f10, f14, f0
	flw f14, 16(a1)
	flw f15, 20(s1)
	fadd.s f12, f11, f10
	fmul.s f11, f13, f14
	flw f13, 20(a1)
	flw f14, 24(s1)
	fadd.s f10, f12, f11
	fmul.s f12, f15, f13
	flw f15, 24(a1)
	flw f13, 28(s1)
	fadd.s f11, f10, f12
	fmul.s f10, f14, f15
	flw f15, 28(a1)
	flw f14, 32(s1)
	fadd.s f12, f11, f10
	fmul.s f11, f13, f15
	flw f15, 32(a1)
	flw f13, 36(s1)
	fadd.s f10, f12, f11
	fmul.s f12, f14, f15
	flw f15, 36(a1)
	fmul.s f14, f13, f15
	fadd.s f11, f10, f12
	flw f12, 40(s1)
	flw f15, 40(a1)
	flw f13, 44(s1)
	fadd.s f10, f11, f14
	fmul.s f14, f12, f15
	flw f15, 44(a1)
	fmul.s f12, f13, f15
	fadd.s f11, f10, f14
	flw f14, 48(s1)
	flw f15, 48(a1)
	flw f13, 52(s1)
	fadd.s f10, f11, f12
	fmul.s f11, f14, f15
	flw f15, 52(a1)
	flw f14, 56(s1)
	fadd.s f12, f10, f11
	fmul.s f10, f13, f15
	flw f13, 56(a1)
	fmul.s f15, f14, f13
	fadd.s f11, f12, f10
	flw f12, 60(s1)
	flw f13, 60(a1)
	addiw a1, a2, 1696
	fmul.s f14, f12, f13
	fadd.s f10, f11, f15
	fadd.s f11, f10, f14
	bge a0, a1, label621
	addi s1, s1, 64
	fmv.s f10, f11
	j label204
.p2align 2
label330:
	fmv.w.x f10, zero
	mv a2, s0
	mv t0, zero
	mv a0, zero
.p2align 2
label140:
	addiw a5, t0, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label162
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a1, t1, label342
	sh2add a1, a0, a3
	addiw t1, t0, 2
	addiw t2, t0, 3
	addiw t3, t0, 4
	j label157
label621:
	fmv.w.x f10, zero
	mv a0, zero
.p2align 2
label210:
	flw f13, 0(s0)
	addiw a0, a0, 16
	lui a2, 24
	flw f15, 4(s0)
	fmul.s f14, f13, f13
	addiw a1, a2, 1696
	fmul.s f1, f15, f15
	fadd.s f12, f10, f14
	flw f14, 8(s0)
	flw f15, 12(s0)
	fmul.s f0, f14, f14
	flw f14, 16(s0)
	fadd.s f13, f12, f1
	fmul.s f1, f15, f15
	flw f15, 20(s0)
	fadd.s f10, f13, f0
	fmul.s f0, f14, f14
	flw f14, 24(s0)
	fadd.s f12, f10, f1
	fmul.s f1, f15, f15
	flw f15, 28(s0)
	fadd.s f13, f12, f0
	fmul.s f0, f14, f14
	fmul.s f14, f15, f15
	fadd.s f10, f13, f1
	fadd.s f12, f10, f0
	flw f0, 32(s0)
	fmul.s f15, f0, f0
	fadd.s f13, f12, f14
	flw f14, 36(s0)
	flw f0, 40(s0)
	fmul.s f1, f14, f14
	fmul.s f14, f0, f0
	fadd.s f10, f13, f15
	flw f15, 44(s0)
	fmul.s f0, f15, f15
	fadd.s f12, f10, f1
	fadd.s f13, f12, f14
	flw f14, 48(s0)
	fmul.s f1, f14, f14
	fadd.s f10, f13, f0
	flw f13, 52(s0)
	flw f14, 56(s0)
	fmul.s f15, f13, f13
	fmul.s f0, f14, f14
	flw f13, 60(s0)
	fadd.s f12, f10, f1
	fmul.s f14, f13, f13
	fadd.s f10, f12, f15
	fadd.s f12, f10, f0
	fadd.s f10, f12, f14
	bge a0, a1, label214
	addi s0, s0, 64
	j label210
.p2align 2
label161:
	addi a1, a1, 16
.p2align 2
label157:
	addw t6, t0, a0
	addw t4, a5, a0
	flw f13, 0(a1)
	mulw t5, t6, t4
	srliw a7, t5, 31
	add a6, t5, a7
	addiw a7, a0, 1
	sraiw t6, a6, 1
	addiw a6, a0, 2
	addw t5, t6, a7
	fcvt.s.w f12, t5
	addw t5, t1, a0
	fdiv.s f14, f13, f12
	mulw t6, t4, t5
	flw f13, 4(a1)
	srliw a7, t6, 31
	add s2, t6, a7
	sraiw t4, s2, 1
	addw t6, t4, a6
	addw t4, t2, a0
	fcvt.s.w f12, t6
	mulw t6, t5, t4
	srliw a6, t6, 31
	add a7, t6, a6
	addiw t6, a0, 3
	sraiw t5, a7, 1
	addw a6, t5, t6
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	flw f13, 8(a1)
	fcvt.s.w f12, a6
	addw a6, t3, a0
	addiw a0, a0, 4
	mulw t5, t4, a6
	srliw a7, t5, 31
	add t6, t5, a7
	sraiw t4, t6, 1
	addw t5, t4, a0
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	flw f13, 12(a1)
	fcvt.s.w f12, t5
	lui t5, 24
	addiw t4, t5, 1693
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	blt a0, t4, label161
	fmv.s f11, f10
.p2align 2
label146:
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label347
	sh2add a1, a0, a3
	j label151
.p2align 2
label347:
	lui t0, 24
	addiw a0, t0, 1696
.p2align 2
label162:
	fsw f10, 0(a2)
	lui t0, 24
	addiw a1, t0, 1696
	bge a5, a1, label418
	addi a2, a2, 4
	mv t0, a5
	j label140
.p2align 2
label418:
	fmv.w.x f10, zero
	mv a2, a3
	mv a5, zero
	mv a0, zero
.p2align 2
label167:
	addiw t0, a5, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label189
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a1, t1, label430
	sh2add a1, a0, s0
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	j label174
.p2align 2
label155:
	addi a1, a1, 4
	fmv.s f11, f10
.p2align 2
label151:
	addw t2, t0, a0
	addw t4, a5, a0
	flw f13, 0(a1)
	addiw a0, a0, 1
	mulw t1, t2, t4
	srliw t3, t1, 31
	add t5, t1, t3
	sraiw t2, t5, 1
	addw t1, t2, a0
	lui t2, 24
	fcvt.s.w f12, t1
	addiw t1, t2, 1696
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	blt a0, t1, label155
	lui a1, 24
	addiw a0, a1, 1696
	j label162
.p2align 2
label189:
	fsw f10, 0(a2)
	lui a5, 24
	addiw a1, a5, 1696
	bge t0, a1, label503
	addi a2, a2, 4
	mv a5, t0
	j label167
.p2align 2
label503:
	fmv.w.x f10, zero
	mv a2, s1
	mv t0, zero
	mv a0, zero
.p2align 2
label194:
	addiw a5, t0, 1
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label199
	addiw a1, a0, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge a1, t1, label749
	sh2add a1, a0, a3
	addiw t6, t0, 2
	addiw t5, t0, 3
	addiw t4, t0, 4
.p2align 2
label224:
	addw t1, t0, a0
	addw s2, a5, a0
	flw f13, 0(a1)
	mulw t3, t1, s2
	srliw a6, t3, 31
	add t2, t3, a6
	addiw t3, a0, 1
	sraiw a7, t2, 1
	addw t2, t6, a0
	addw t1, a7, t3
	mulw a6, s2, t2
	fcvt.s.w f12, t1
	srliw t1, a6, 31
	fdiv.s f14, f13, f12
	add t3, a6, t1
	flw f13, 4(a1)
	addiw a6, a0, 2
	sraiw a7, t3, 1
	addw t1, a7, a6
	addw a7, t5, a0
	fcvt.s.w f12, t1
	mulw a6, t2, a7
	addiw t2, a0, 3
	srliw t1, a6, 31
	add s2, a6, t1
	sraiw t3, s2, 1
	addw t1, t3, t2
	addw t3, t4, a0
	addiw a0, a0, 4
	mulw t2, a7, t3
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	flw f13, 8(a1)
	fcvt.s.w f12, t1
	srliw t1, t2, 31
	add a6, t2, t1
	lui t2, 24
	sraiw t3, a6, 1
	addw t1, t3, a0
	fadd.s f10, f11, f14
	fdiv.s f14, f13, f12
	flw f13, 12(a1)
	fcvt.s.w f12, t1
	addiw t1, t2, 1693
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	bge a0, t1, label799
	addi a1, a1, 16
	j label224
.p2align 2
label799:
	fmv.s f11, f10
.p2align 2
label229:
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label804
	sh2add a1, a0, a3
	j label234
.p2align 2
label804:
	lui t0, 24
	addiw a0, t0, 1696
.p2align 2
label199:
	fsw f10, 0(a2)
	lui t0, 24
	addiw a1, t0, 1696
	bge a5, a1, label202
	addi a2, a2, 4
	mv t0, a5
	j label194
.p2align 2
label178:
	addi a1, a1, 16
.p2align 2
label174:
	addw t6, a5, a0
	addw t4, t0, a0
	flw f13, 0(a1)
	mulw t5, t6, t4
	srliw a6, t5, 31
	add a7, t5, a6
	sraiw t6, a7, 1
	addw t5, t0, t6
	fcvt.s.w f12, t5
	addw t5, t1, a0
	fdiv.s f14, f13, f12
	mulw t6, t4, t5
	flw f13, 4(a1)
	srliw a6, t6, 31
	add s2, t6, a6
	sraiw a7, s2, 1
	addw t4, t0, a7
	fcvt.s.w f12, t4
	addw t4, t2, a0
	mulw t6, t5, t4
	srliw s2, t6, 31
	add a6, t6, s2
	sraiw a7, a6, 1
	addw t5, t0, a7
	addw a7, t3, a0
	addiw a0, a0, 4
	fadd.s f11, f10, f14
	fdiv.s f14, f13, f12
	fcvt.s.w f12, t5
	mulw t5, t4, a7
	srliw a6, t5, 31
	add t6, t5, a6
	lui t5, 24
	sraiw t4, t6, 1
	addw a7, t0, t4
	addiw t4, t5, 1693
	fadd.s f10, f11, f14
	flw f14, 8(a1)
	fdiv.s f13, f14, f12
	fcvt.s.w f12, a7
	fadd.s f11, f10, f13
	flw f13, 12(a1)
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	blt a0, t4, label178
	fmv.s f11, f10
.p2align 2
label179:
	lui t1, 24
	addiw a1, t1, 1696
	bge a0, a1, label482
	sh2add a1, a0, s0
	j label184
.p2align 2
label238:
	addi a1, a1, 4
	fmv.s f11, f10
.p2align 2
label234:
	addw t1, t0, a0
	addw t2, a5, a0
	flw f13, 0(a1)
	addiw a0, a0, 1
	mulw t3, t1, t2
	srliw t5, t3, 31
	add t4, t3, t5
	sraiw t2, t4, 1
	addw t1, t2, a0
	lui t2, 24
	fcvt.s.w f12, t1
	addiw t1, t2, 1696
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	blt a0, t1, label238
	lui a1, 24
	addiw a0, a1, 1696
	j label199
label214:
	fdiv.s f12, f11, f10
	lui a0, 260096
pcrel1002:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a2, %pcrel_lo(pcrel1002)
	fsub.s f10, f13, f12
	flw f13, 0(a0)
	flw f11, 4(a0)
	flt.s a1, f13, f10
	flt.s a2, f10, f11
	or a3, a1, a2
	beq a3, zero, label707
	lui a0, 260096
	fmv.s f10, f12
	fmv.w.x f11, a0
.p2align 2
label215:
	fadd.s f14, f11, f10
	lui a0, 258048
pcrel1003:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f15, a0
	addi a2, a1, %pcrel_lo(pcrel1003)
	fmul.s f11, f14, f15
	flw f14, 0(a2)
	flw f15, 4(a2)
	fdiv.s f10, f12, f11
	fsub.s f13, f11, f10
	flt.s a3, f13, f15
	flt.s a0, f14, f13
	or a1, a0, a3
	bne a1, zero, label215
	fmv.s f10, f11
	j label218
label707:
	lui a0, 260096
	fmv.w.x f10, a0
label218:
	lui a0, 260096
pcrel1004:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a1, a2, %pcrel_lo(pcrel1004)
	fsub.s f11, f10, f12
	flw f10, 0(a1)
	flw f12, 4(a1)
	fle.s a3, f11, f10
	fle.s a2, f12, f11
	and a0, a3, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
label188:
	addi a1, a1, 4
	fmv.s f11, f10
.p2align 2
label184:
	addw t2, a5, a0
	addw t4, t0, a0
	flw f13, 0(a1)
	addiw a0, a0, 1
	mulw t1, t2, t4
	srliw t5, t1, 31
	add t3, t1, t5
	sraiw t4, t3, 1
	addw t2, t0, t4
	fcvt.s.w f12, t2
	lui t2, 24
	fdiv.s f14, f13, f12
	addiw t1, t2, 1696
	fadd.s f10, f11, f14
	blt a0, t1, label188
	lui a1, 24
	addiw a0, a1, 1696
	j label189
.p2align 2
label482:
	lui a5, 24
	addiw a0, a5, 1696
	j label189
.p2align 2
label749:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	j label229
.p2align 2
label342:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	j label146
.p2align 2
label325:
	fmv.s f11, f10
	j label119
.p2align 2
label430:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	j label179
.p2align 2
label262:
	lui a5, 24
	addiw a0, a5, 1696
	j label135
.p2align 2
cmmc_parallel_body_0:
	mv a3, a0
	addiw a5, a0, 3
	lui a2, 260096
pcrel109:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
	ld a4, %pcrel_lo(pcrel109)(a0)
	ble a1, a5, label2
	addiw t1, a3, 15
	addiw a5, a1, -3
	addiw t0, a1, -18
	bge t1, a5, label53
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
	mv a0, a3
label16:
	ble a5, a0, label2
	sh2add t0, a0, a4
	mv a3, a0
label20:
	addiw a3, a3, 4
	fmv.w.x f10, a2
	fsw f10, 0(t0)
	fsw f10, 4(t0)
	fsw f10, 8(t0)
	fsw f10, 12(t0)
	ble a5, a3, label2
	addi t0, t0, 16
	j label20
label2:
	ble a1, a3, label9
	sh2add a0, a3, a4
	j label5
label8:
	addi a0, a0, 4
label5:
	addiw a3, a3, 1
	fmv.w.x f10, a2
	fsw f10, 0(a0)
	bgt a1, a3, label8
label9:
	ret
label53:
	mv a0, a3
	mv a3, zero
	j label16
