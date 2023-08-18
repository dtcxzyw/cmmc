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
	addi sp, sp, -48
	li a0, 62
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
	jal _sysy_starttime
	lui a3, 24
pcrel1119:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1120:
	auipc a1, %pcrel_hi(vectorA)
	addi s1, a1, %pcrel_lo(pcrel1120)
pcrel1121:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd s1, %pcrel_lo(pcrel1119)(a0)
	addi a2, a1, %pcrel_lo(pcrel1121)
	mv a0, zero
	addiw a1, a3, 1696
	jal cmmcParallelFor
pcrel1122:
	auipc a4, %pcrel_hi(__cmmc_fp_constant_pool)
	mv a2, zero
	lui s3, 258048
pcrel1123:
	auipc a3, %pcrel_hi(Vectortm)
pcrel1124:
	auipc a0, %pcrel_hi(vectorB)
	addi s2, a4, %pcrel_lo(pcrel1122)
	addi a1, a3, %pcrel_lo(pcrel1123)
	addi s0, a0, %pcrel_lo(pcrel1124)
	lui a3, 24
	addiw a0, a3, 1693
	j label111
.p2align 2
label1070:
	addiw a2, a2, 1
	li a3, 1000
	bge a2, a3, label203
.p2align 2
label111:
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label118
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label138
	mv a4, s0
	mv a5, zero
	addiw t0, t1, 1696
	blt zero, t0, label145
	j label337
.p2align 2
label392:
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label1003
.p2align 2
label156:
	sh2add t0, t4, a1
	mv t1, t4
	fmv.s f10, f11
	addw t3, a5, t4
	addw t5, a3, t4
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label948
	addiw t2, t4, 1
label948:
	sraiw t3, t2, 1
	addiw t1, t1, 1
	flw f12, 0(t0)
	addw t4, t3, t1
	lui t3, 24
	fcvt.s.w f11, t4
	addiw t2, t3, 1696
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t1, t2, label413
.p2align 2
label161:
	addi t0, t0, 4
	addw t3, a5, t1
	addw t5, a3, t1
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label948
	addiw t2, t4, 1
	addiw t1, t1, 1
	flw f12, 0(t0)
	sraiw t3, t2, 1
	addw t4, t3, t1
	lui t3, 24
	fcvt.s.w f11, t4
	addiw t2, t3, 1696
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	blt t1, t2, label161
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label1065
.p2align 2
label165:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label1008
.p2align 2
label145:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label342
	sh2add t0, t4, a1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label938
.p2align 2
label937:
	addiw t6, t6, 1
.p2align 2
label938:
	sraiw a6, t6, 1
	addiw a7, t4, 1
	flw f13, 0(t0)
	addw t6, a6, a7
	fcvt.s.w f12, t6
	addw t6, t1, t4
	fdiv.s f14, f13, f12
	mulw a7, t5, t6
	mv a6, a7
	fadd.s f11, f10, f14
	bge a7, zero, label940
	addiw a6, a7, 1
label940:
	sraiw t5, a6, 1
	addiw s4, t4, 2
	flw f13, 4(t0)
	addw a7, t5, s4
	addw t5, t2, t4
	fcvt.s.w f10, a7
	mulw a7, t6, t5
	fdiv.s f14, f13, f10
	mv a6, a7
	fadd.s f12, f11, f14
	bge a7, zero, label942
	addiw a6, a7, 1
label942:
	sraiw t6, a6, 1
	addiw s4, t4, 3
	flw f13, 8(t0)
	addw a7, t6, s4
	fcvt.s.w f11, a7
	addw a7, t3, t4
	fdiv.s f14, f13, f11
	mulw a6, t5, a7
	mv t6, a6
	fadd.s f10, f12, f14
	bge a6, zero, label944
	addiw t6, a6, 1
label944:
	sraiw t5, t6, 1
	addiw t4, t4, 4
	flw f13, 12(t0)
	addw a6, t5, t4
	fcvt.s.w f11, a6
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t4, a0, label392
	addi t0, t0, 16
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label938
	j label937
.p2align 2
label998:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label1024
.p2align 2
label138:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label1000
.p2align 2
label118:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label257
	sh2add t0, t4, s1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label927
	addiw t6, a7, 1
label927:
	sraiw a6, t6, 1
	flw f13, 0(t0)
	addw t6, t1, t4
	addw a7, a3, a6
	fcvt.s.w f12, a7
	mulw a7, t5, t6
	fdiv.s f14, f13, f12
	mv a6, a7
	fadd.s f11, f10, f14
	bge a7, zero, label929
	addiw a6, a7, 1
label929:
	sraiw a7, a6, 1
	flw f13, 4(t0)
	addw t5, a3, a7
	fcvt.s.w f10, t5
	addw t5, t2, t4
	fdiv.s f14, f13, f10
	mulw a7, t6, t5
	mv a6, a7
	fadd.s f12, f11, f14
	bge a7, zero, label931
	addiw a6, a7, 1
label931:
	sraiw t6, a6, 1
	flw f14, 8(t0)
	addw a6, t3, t4
	addw a7, a3, t6
	fcvt.s.w f11, a7
	mulw a7, t5, a6
	fdiv.s f13, f14, f11
	mv t6, a7
	fadd.s f10, f12, f13
	bge a7, zero, label933
	addiw t6, a7, 1
label933:
	sraiw a6, t6, 1
	addiw t4, t4, 4
	flw f13, 12(t0)
	addw t5, a3, a6
	fcvt.s.w f11, t5
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t4, a0, label325
.p2align 2
label134:
	addi t0, t0, 16
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label927
	addiw t6, a7, 1
	flw f13, 0(t0)
	sraiw a6, t6, 1
	addw t6, t1, t4
	addw a7, a3, a6
	fcvt.s.w f12, a7
	mulw a7, t5, t6
	fdiv.s f14, f13, f12
	mv a6, a7
	fadd.s f11, f10, f14
	bge a7, zero, label929
	addiw a6, a7, 1
	flw f13, 4(t0)
	sraiw a7, a6, 1
	addw t5, a3, a7
	fcvt.s.w f10, t5
	addw t5, t2, t4
	fdiv.s f14, f13, f10
	mulw a7, t6, t5
	mv a6, a7
	fadd.s f12, f11, f14
	bge a7, zero, label931
	addiw a6, a7, 1
	flw f14, 8(t0)
	sraiw t6, a6, 1
	addw a6, t3, t4
	addw a7, a3, t6
	fcvt.s.w f11, a7
	mulw a7, t5, a6
	fdiv.s f13, f14, f11
	mv t6, a7
	fadd.s f10, f12, f13
	bge a7, zero, label933
	addiw t6, a7, 1
	addiw t4, t4, 4
	flw f13, 12(t0)
	sraiw a6, t6, 1
	addw t5, a3, a6
	fcvt.s.w f11, t5
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t4, a0, label134
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label998
.p2align 2
label123:
	sh2add t0, t4, s1
	mv t1, t4
	fmv.s f10, f11
	addw t3, a5, t4
	addw t5, a3, t4
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label923
	addiw t2, t4, 1
label923:
	sraiw t4, t2, 1
	addiw t1, t1, 1
	flw f12, 0(t0)
	addw t3, a3, t4
	fcvt.s.w f11, t3
	lui t3, 24
	fdiv.s f13, f12, f11
	addiw t2, t3, 1696
	fadd.s f10, f10, f13
	bge t1, t2, label278
.p2align 2
label128:
	addi t0, t0, 4
	addw t3, a5, t1
	addw t5, a3, t1
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label923
	addiw t2, t4, 1
	addiw t1, t1, 1
	flw f12, 0(t0)
	sraiw t4, t2, 1
	addw t3, a3, t4
	fcvt.s.w f11, t3
	lui t3, 24
	fdiv.s f13, f12, f11
	addiw t2, t3, 1696
	fadd.s f10, f10, f13
	blt t1, t2, label128
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label138
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label145
	fsw f10, 0(s0)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label165
	j label1001
.p2align 2
label257:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label123
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label138
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	addiw t0, t1, 1696
	blt zero, t0, label145
	j label337
.p2align 2
label342:
	fmv.w.x f12, zero
	fmv.s f11, f10
	lui t1, 24
	fmv.s f10, f12
	addiw t0, t1, 1696
	blt t4, t0, label156
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label165
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	addiw t0, t1, 1696
	blt zero, t0, label172
	j label425
.p2align 2
label1011:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label1032
.p2align 2
label238:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label1023
.p2align 2
label172:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label430
	sh2add t0, t4, s0
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label955
	addiw t6, a7, 1
label955:
	sraiw a6, t6, 1
	flw f13, 0(t0)
	addw t6, t1, t4
	addw a7, a3, a6
	fcvt.s.w f12, a7
	mulw a7, t5, t6
	fdiv.s f14, f13, f12
	mv a6, a7
	fadd.s f11, f10, f14
	bge a7, zero, label957
	addiw a6, a7, 1
label957:
	sraiw a7, a6, 1
	flw f14, 4(t0)
	addw t5, a3, a7
	fcvt.s.w f12, t5
	addw t5, t2, t4
	fdiv.s f13, f14, f12
	mulw a7, t6, t5
	mv a6, a7
	fadd.s f10, f11, f13
	bge a7, zero, label959
	addiw a6, a7, 1
label959:
	sraiw a7, a6, 1
	flw f14, 8(t0)
	addw a6, t3, t4
	addw t6, a3, a7
	mulw a7, t5, a6
	fcvt.s.w f12, t6
	mv t6, a7
	fdiv.s f13, f14, f12
	fadd.s f11, f10, f13
	bge a7, zero, label961
	addiw t6, a7, 1
label961:
	sraiw t5, t6, 1
	addiw t4, t4, 4
	flw f14, 12(t0)
	addw a6, a3, t5
	fcvt.s.w f12, a6
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	bge t4, a0, label477
.p2align 2
label178:
	addi t0, t0, 16
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label955
	addiw t6, a7, 1
	flw f13, 0(t0)
	sraiw a6, t6, 1
	addw t6, t1, t4
	addw a7, a3, a6
	fcvt.s.w f12, a7
	mulw a7, t5, t6
	fdiv.s f14, f13, f12
	mv a6, a7
	fadd.s f11, f10, f14
	bge a7, zero, label957
	addiw a6, a7, 1
	flw f14, 4(t0)
	sraiw a7, a6, 1
	addw t5, a3, a7
	fcvt.s.w f12, t5
	addw t5, t2, t4
	fdiv.s f13, f14, f12
	mulw a7, t6, t5
	mv a6, a7
	fadd.s f10, f11, f13
	bge a7, zero, label959
	addiw a6, a7, 1
	flw f14, 8(t0)
	sraiw a7, a6, 1
	addw a6, t3, t4
	addw t6, a3, a7
	mulw a7, t5, a6
	fcvt.s.w f12, t6
	mv t6, a7
	fdiv.s f13, f14, f12
	fadd.s f11, f10, f13
	bge a7, zero, label961
	addiw t6, a7, 1
	addiw t4, t4, 4
	flw f14, 12(t0)
	sraiw t5, t6, 1
	addw a6, a3, t5
	fcvt.s.w f12, a6
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	blt t4, a0, label178
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label1011
.p2align 2
label183:
	sh2add t0, t4, s0
	mv t1, t4
	fmv.s f10, f11
	addw t3, a5, t4
	addw t5, a3, t4
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label965
	addiw t2, t4, 1
label965:
	sraiw t4, t2, 1
	addiw t1, t1, 1
	flw f12, 0(t0)
	addw t3, a3, t4
	fcvt.s.w f11, t3
	lui t3, 24
	fdiv.s f13, f12, f11
	addiw t2, t3, 1696
	fadd.s f10, f10, f13
	bge t1, t2, label498
.p2align 2
label188:
	addi t0, t0, 4
	addw t3, a5, t1
	addw t5, a3, t1
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label965
	addiw t2, t4, 1
	addiw t1, t1, 1
	flw f12, 0(t0)
	sraiw t4, t2, 1
	addw t3, a3, t4
	fcvt.s.w f11, t3
	lui t3, 24
	fdiv.s f13, f12, f11
	addiw t2, t3, 1696
	fadd.s f10, f10, f13
	blt t1, t2, label188
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label238
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label221
	fsw f10, 0(s1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label201
label513:
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label111
	j label203
.p2align 2
label819:
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	bge t4, t0, label1021
.p2align 2
label226:
	sh2add t0, t4, a1
	mv t1, t4
	fmv.s f10, f11
	addw t3, a5, t4
	addw t5, a3, t4
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label977
	addiw t2, t4, 1
label977:
	sraiw t3, t2, 1
	addiw t1, t1, 1
	flw f13, 0(t0)
	addw t4, t3, t1
	lui t3, 24
	fcvt.s.w f11, t4
	addiw t2, t3, 1696
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t1, t2, label769
.p2align 2
label231:
	addi t0, t0, 4
	addw t3, a5, t1
	addw t5, a3, t1
	mulw t4, t3, t5
	mv t2, t4
	bge t4, zero, label977
	addiw t2, t4, 1
	addiw t1, t1, 1
	flw f13, 0(t0)
	sraiw t3, t2, 1
	addw t4, t3, t1
	lui t3, 24
	fcvt.s.w f11, t4
	addiw t2, t3, 1696
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	blt t1, t2, label231
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	bge a3, a5, label1070
.p2align 2
label201:
	addi a4, a4, 4
	mv a5, a3
	lui t1, 24
	addiw a3, a3, 1
	addiw t0, t1, 1696
	bge t4, t0, label1017
.p2align 2
label221:
	addiw t0, t4, 3
	lui t2, 24
	addiw t1, t2, 1696
	bge t0, t1, label748
	sh2add t0, t4, a1
	addiw t1, a5, 2
	addiw t2, a5, 3
	addiw t3, a5, 4
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label981
.p2align 2
label980:
	addiw t6, t6, 1
.p2align 2
label981:
	sraiw a6, t6, 1
	addiw s4, t4, 1
	flw f14, 0(t0)
	addw t6, t1, t4
	addw a7, a6, s4
	fcvt.s.w f12, a7
	mulw a7, t5, t6
	fdiv.s f13, f14, f12
	mv a6, a7
	fadd.s f11, f10, f13
	bge a7, zero, label983
	addiw a6, a7, 1
label983:
	sraiw t5, a6, 1
	addiw a7, t4, 2
	flw f13, 4(t0)
	addw a6, t5, a7
	addw t5, t2, t4
	fcvt.s.w f10, a6
	mulw a7, t6, t5
	fdiv.s f14, f13, f10
	mv a6, a7
	fadd.s f12, f11, f14
	bge a7, zero, label985
	addiw a6, a7, 1
label985:
	sraiw t6, a6, 1
	addiw a7, t4, 3
	flw f14, 8(t0)
	addw a6, t6, a7
	addw a7, t3, t4
	fcvt.s.w f11, a6
	mulw a6, t5, a7
	fdiv.s f13, f14, f11
	mv t6, a6
	fadd.s f10, f12, f13
	bge a6, zero, label987
	addiw t6, a6, 1
label987:
	sraiw t5, t6, 1
	addiw t4, t4, 4
	flw f12, 12(t0)
	addw a6, t5, t4
	fcvt.s.w f11, a6
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t4, a0, label819
	addi t0, t0, 16
	addw a6, a5, t4
	addw t5, a3, t4
	mulw a7, a6, t5
	mv t6, a7
	bge a7, zero, label981
	j label980
.p2align 2
label748:
	fmv.w.x f12, zero
	fmv.s f11, f10
	fmv.s f10, f12
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label226
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label201
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label111
	j label203
.p2align 2
label430:
	fmv.w.x f12, zero
	fmv.s f11, f10
	lui t1, 24
	fmv.s f10, f12
	addiw t0, t1, 1696
	blt t4, t0, label183
	lui a5, 24
	lui t0, 24
	fsw f12, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label238
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	addiw t0, t1, 1696
	blt zero, t0, label221
	j label198
.p2align 2
label1021:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label201
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label111
	j label203
.p2align 2
label1003:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label165
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label172
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label238
label1009:
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label221
	j label198
.p2align 2
label769:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label201
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label111
	j label203
.p2align 2
label413:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label165
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label172
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label238
	j label1009
.p2align 2
label278:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label138
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label145
	fsw f10, 0(s0)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label165
label1001:
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label172
	j label425
.p2align 2
label498:
	lui a5, 24
	lui t0, 24
	fsw f10, 0(a4)
	addiw t4, a5, 1696
	addiw a5, t0, 1696
	blt a3, a5, label238
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label221
	fsw f10, 0(s1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label201
	j label513
.p2align 2
label1017:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label201
	addiw a2, a2, 1
	li a3, 1000
	blt a2, a3, label111
	j label203
.p2align 2
label1008:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label165
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label172
label425:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label238
	j label1009
.p2align 2
label1000:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label138
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label145
label337:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label165
	j label1001
.p2align 2
label1023:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label238
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label221
label198:
	fsw f10, 0(a4)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label201
	j label513
.p2align 2
label1065:
	fmv.w.x f10, zero
	mv a4, a1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label172
	fsw f10, 0(a1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label238
	j label1009
.p2align 2
label1024:
	fmv.w.x f10, zero
	mv a4, s0
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label145
	fsw f10, 0(s0)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label165
	j label1001
.p2align 2
label1032:
	fmv.w.x f10, zero
	mv a4, s1
	mv a5, zero
	mv t4, zero
	li a3, 1
	lui t1, 24
	addiw t0, t1, 1696
	blt zero, t0, label221
	fsw f10, 0(s1)
	lui t0, 24
	addiw a5, t0, 1696
	blt a3, a5, label201
	j label513
label203:
	li a0, 76
	jal _sysy_stoptime
	mv a0, zero
	fmv.w.x f10, zero
	j label204
.p2align 2
label208:
	addi s1, s1, 64
.p2align 2
label204:
	sh2add a1, a0, s0
	flw f12, 0(s1)
	lui a2, 24
	addiw a0, a0, 16
	flw f15, 0(a1)
	flw f14, 4(s1)
	fmul.s f13, f12, f15
	flw f15, 4(a1)
	fmul.s f12, f14, f15
	fadd.s f11, f10, f13
	flw f13, 8(s1)
	flw f15, 8(a1)
	flw f14, 12(s1)
	fadd.s f10, f11, f12
	fmul.s f11, f13, f15
	flw f15, 12(a1)
	flw f13, 16(s1)
	fadd.s f12, f10, f11
	fmul.s f10, f14, f15
	flw f14, 16(a1)
	fmul.s f15, f13, f14
	fadd.s f11, f12, f10
	flw f12, 20(s1)
	flw f14, 20(a1)
	flw f13, 24(s1)
	flw f0, 24(a1)
	fadd.s f10, f11, f15
	fmul.s f15, f12, f14
	flw f12, 28(s1)
	fmul.s f14, f13, f0
	flw f13, 28(a1)
	fmul.s f0, f12, f13
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	flw f14, 32(s1)
	flw f15, 32(a1)
	flw f13, 36(s1)
	fmul.s f12, f14, f15
	fadd.s f11, f10, f0
	flw f15, 36(a1)
	fmul.s f14, f13, f15
	fadd.s f10, f11, f12
	flw f12, 40(s1)
	flw f0, 40(a1)
	flw f13, 44(s1)
	fmul.s f15, f12, f0
	fadd.s f11, f10, f14
	flw f14, 44(a1)
	fadd.s f10, f11, f15
	flw f15, 48(s1)
	fmul.s f11, f13, f14
	flw f13, 48(a1)
	flw f14, 52(s1)
	fadd.s f12, f10, f11
	fmul.s f10, f15, f13
	flw f15, 52(a1)
	flw f13, 56(s1)
	fadd.s f11, f12, f10
	fmul.s f12, f14, f15
	flw f14, 56(a1)
	fmul.s f15, f13, f14
	fadd.s f10, f11, f12
	flw f12, 60(s1)
	flw f13, 60(a1)
	addiw a1, a2, 1696
	fmul.s f14, f12, f13
	fadd.s f11, f10, f15
	fadd.s f10, f11, f14
	blt a0, a1, label208
	fmv.w.x f11, zero
	mv a0, zero
	j label210
.p2align 2
label220:
	addi s0, s0, 64
.p2align 2
label210:
	flw f13, 0(s0)
	addiw a0, a0, 16
	lui a2, 24
	flw f14, 4(s0)
	fmul.s f15, f13, f13
	addiw a1, a2, 1696
	fmul.s f0, f14, f14
	flw f13, 8(s0)
	flw f14, 12(s0)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 16(s0)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	fmul.s f14, f13, f13
	fadd.s f12, f11, f15
	flw f15, 20(s0)
	fmul.s f13, f15, f15
	fadd.s f11, f12, f0
	fadd.s f12, f11, f14
	flw f14, 24(s0)
	fmul.s f15, f14, f14
	fadd.s f11, f12, f13
	flw f13, 28(s0)
	flw f14, 32(s0)
	fmul.s f0, f13, f13
	flw f13, 36(s0)
	fadd.s f12, f11, f15
	fmul.s f15, f14, f14
	flw f14, 40(s0)
	fadd.s f11, f12, f0
	fmul.s f0, f13, f13
	flw f13, 44(s0)
	fmul.s f1, f13, f13
	fadd.s f12, f11, f15
	fmul.s f15, f14, f14
	flw f14, 48(s0)
	flw f13, 52(s0)
	fadd.s f11, f12, f0
	fmul.s f0, f14, f14
	flw f14, 56(s0)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	flw f13, 60(s0)
	fadd.s f11, f12, f1
	fadd.s f12, f11, f0
	fmul.s f0, f14, f14
	fmul.s f14, f13, f13
	fadd.s f11, f12, f15
	fadd.s f12, f11, f0
	fadd.s f11, f12, f14
	blt a0, a1, label220
	fdiv.s f10, f10, f11
	lui a0, 260096
	flw f13, 0(s2)
	fmv.w.x f12, a0
	fsub.s f11, f12, f10
	flw f12, 4(s2)
	flt.s a0, f13, f11
	flt.s a2, f11, f12
	or a1, a0, a2
	beq a1, zero, label707
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
.p2align 2
label215:
	fadd.s f14, f11, f12
	fmv.w.x f15, s3
	fmul.s f11, f14, f15
	flw f15, 0(s2)
	flw f14, 4(s2)
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a1, f13, f14
	flt.s a0, f15, f13
	or a2, a0, a1
	bne a2, zero, label215
label218:
	lui a0, 260096
	flw f12, 0(s2)
	fmv.w.x f13, a0
	fsub.s f10, f11, f13
	flw f11, 4(s2)
	fle.s a1, f10, f12
	fle.s a2, f11, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label325:
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label123
	j label998
.p2align 2
label477:
	fmv.s f11, f10
	lui t1, 24
	addiw t0, t1, 1696
	blt t4, t0, label183
	j label1011
label707:
	lui a3, 260096
	fmv.w.x f11, a3
	j label218
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
