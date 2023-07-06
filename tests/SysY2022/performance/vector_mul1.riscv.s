.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	897988541
	.4byte	3045472189
.bss
.align 4
Vectortm:
	.zero	400000
.align 4
vectorB:
	.zero	400000
.align 4
vectorA:
	.zero	400000
.text
.globl main
main:
	addi sp, sp, -24
	li a0, 62
	sd s0, 16(sp)
	sd s1, 8(sp)
	sd ra, 0(sp)
	jal _sysy_starttime
	mv a2, zero
pcrel1672:
	auipc a0, %pcrel_hi(vectorA)
	addi s0, a0, %pcrel_lo(pcrel1672)
pcrel1673:
	auipc a0, %pcrel_hi(vectorB)
	addi s1, a0, %pcrel_lo(pcrel1673)
pcrel1674:
	auipc a0, %pcrel_hi(Vectortm)
	addi a0, a0, %pcrel_lo(pcrel1674)
label2:
	sh2add a1, a2, s0
	lui a3, 260096
	addiw a2, a2, 16
	fmv.w.x f10, a3
	fsw f10, 0(a1)
	fsw f10, 4(a1)
	fsw f10, 8(a1)
	fsw f10, 12(a1)
	fsw f10, 16(a1)
	fsw f10, 20(a1)
	fsw f10, 24(a1)
	fsw f10, 28(a1)
	fsw f10, 32(a1)
	fsw f10, 36(a1)
	fsw f10, 40(a1)
	fsw f10, 44(a1)
	fsw f10, 48(a1)
	fsw f10, 52(a1)
	fsw f10, 56(a1)
	fsw f10, 60(a1)
	li a1, 100000
	bge a2, a1, label206
	j label2
label206:
	mv a1, zero
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label211
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label147
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label130
	j label146
label211:
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label216
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label15
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label20
	j label19
label216:
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label439
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label41
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label45
	j label61
label439:
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label66
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label105
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label109
	j label125
label41:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label439
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label41
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label45
	j label61
label66:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label67
	fmv.w.x f10, zero
	mv a3, zero
	mv t1, zero
	li a2, 100000
	bge zero, a2, label211
	addiw a4, zero, 3
	addiw a5, zero, 2
	addiw a2, zero, 1
	li t0, 100000
	bge zero, t0, label147
	addiw t0, zero, 4
	li t2, 100000
	bge t0, t2, label130
	j label146
label67:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label71
label103:
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	flw f11, 0(a2)
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a1)
	mv a1, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label71
	j label103
label105:
	sh2add a3, a3, s0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label66
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label105
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label109
	j label125
label109:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label113
	j label112
label113:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label971
	j label124
label971:
	mv t0, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label976
	j label119
label976:
	mv a4, t0
	j label120
label119:
	addw t2, a3, t0
	addw t3, a2, t0
	addw t4, a2, t0
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	addiw t3, t0, 1
	sraiw t2, t2, 1
	addw t2, t2, t3
	addw t3, a2, t3
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t4, t3, 31
	sh2add t2, t0, a0
	add t3, t3, t4
	flw f12, 0(t2)
	sraiw t4, t3, 1
	addiw t3, t0, 2
	fdiv.s f11, f12, f11
	addw t4, t4, t3
	flw f12, 4(t2)
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t0
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t0, 3
	addw t0, a4, t0
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t0, t3, t0
	srliw t3, t0, 31
	add t0, t0, t3
	sraiw t0, t0, 1
	addw t0, t1, t0
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	mv t0, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label976
	j label119
label120:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw t0, a5, 1
	addiw a5, a4, 1
	sh2add a4, a4, a0
	addw t0, t0, a5
	flw f12, 0(a4)
	li a4, 100000
	fcvt.s.w f11, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a5, a4, label123
	mv a4, a5
	j label120
label130:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label133
	j label145
label133:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label136
	j label144
label136:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label1149
	j label143
label1149:
	mv a4, t1
label139:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw a5, a5, 1
	addw a5, a2, a5
	fcvt.s.w f11, a5
	sh2add a5, a4, s0
	addiw a4, a4, 1
	flw f12, 0(a5)
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label142
	j label139
label15:
	sh2add a3, a3, s1
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label216
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label15
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label20
	j label19
label20:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label24
	j label23
label24:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label325
	j label35
label325:
	mv t0, t1
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label330
	j label30
label330:
	mv a4, t0
label31:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw t0, a5, 1
	addiw a5, a4, 1
	sh2add a4, a4, a0
	addw t0, t0, a5
	flw f12, 0(a4)
	li a4, 100000
	fcvt.s.w f11, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a5, a4, label34
	mv a4, a5
	j label31
label34:
	sh2add a3, a3, s1
	mv t1, a5
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label216
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label15
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label20
	j label19
label45:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label48
label60:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t4, a2, t4
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s1
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label48
	j label60
label48:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label51
label59:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t4, a2, t4
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s1
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label51
	j label59
label51:
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label469
	j label58
label469:
	mv a4, t1
label54:
	addw a5, a3, a4
	addw t0, a2, a4
	mulw a5, a5, t0
	srliw t0, a5, 31
	add a5, a5, t0
	sraiw a5, a5, 1
	addw a5, a2, a5
	fcvt.s.w f11, a5
	sh2add a5, a4, s1
	addiw a4, a4, 1
	flw f12, 0(a5)
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label57
	j label54
label58:
	addw t2, a3, t1
	addw t3, a2, t1
	addw t4, a2, t1
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	addiw t3, t1, 1
	sraiw t2, t2, 1
	addw t3, a2, t3
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s1
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label469
	j label58
label142:
	sh2add a3, a3, a0
	mv t1, a4
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label211
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label147
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label130
label146:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t4, a2, t4
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s0
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label130
	j label146
label143:
	addw t2, a3, t1
	addw t3, a2, t1
	addw t4, a2, t1
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	addiw t3, t1, 1
	sraiw t2, t2, 1
	addw t3, a2, t3
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s0
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label1149
	j label143
label145:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t4, a2, t4
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s0
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label133
	j label145
label147:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label211
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label147
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label130
	j label146
label144:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t4, a2, t4
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s0
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label136
	j label144
label19:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	addw t4, a5, t1
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t5, t3, 31
	sh2add t2, t1, a0
	add t3, t3, t5
	flw f12, 0(t2)
	addiw t5, t1, 2
	sraiw t3, t3, 1
	fdiv.s f11, f12, f11
	addw t3, t3, t5
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addw t3, a4, t1
	fdiv.s f11, f12, f11
	addiw t1, t1, 3
	mulw t4, t4, t3
	flw f12, 8(t2)
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t1, t4, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	addw t1, a3, t0
	fdiv.s f11, f12, f11
	mulw t1, t3, t1
	flw f12, 12(t2)
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label20
	j label19
label30:
	addw t2, a3, t0
	addw t3, a2, t0
	addw t4, a2, t0
	mulw t2, t2, t3
	srliw t3, t2, 31
	add t2, t2, t3
	addiw t3, t0, 1
	sraiw t2, t2, 1
	addw t2, t2, t3
	addw t3, a2, t3
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t4, t3, 31
	sh2add t2, t0, a0
	add t3, t3, t4
	flw f12, 0(t2)
	sraiw t4, t3, 1
	addiw t3, t0, 2
	fdiv.s f11, f12, f11
	addw t4, t4, t3
	flw f12, 4(t2)
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t0
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t0, 3
	addw t0, a4, t0
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t0, t3, t0
	srliw t3, t0, 31
	add t0, t0, t3
	sraiw t0, t0, 1
	addw t0, t1, t0
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t0
	mv t0, t1
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t1, t1, 4
	li t2, 100000
	bge t1, t2, label330
	j label30
label35:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	addw t4, a2, t4
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t4, t3, 31
	sh2add t2, t1, a0
	add t3, t3, t4
	flw f12, 0(t2)
	sraiw t4, t3, 1
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t4, t4, t3
	flw f12, 4(t2)
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label325
	j label35
label23:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	addw t4, a2, t4
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t4, t3, 31
	sh2add t2, t1, a0
	add t3, t3, t4
	flw f12, 0(t2)
	sraiw t4, t3, 1
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t4, t4, t3
	flw f12, 4(t2)
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label24
	j label23
label123:
	sh2add a3, a3, s0
	mv t1, a5
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label66
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label105
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label109
	j label125
label124:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	addw t4, a2, t4
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t4, t3, 31
	sh2add t2, t1, a0
	add t3, t3, t4
	flw f12, 0(t2)
	sraiw t4, t3, 1
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t4, t4, t3
	flw f12, 4(t2)
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label971
	j label124
label125:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	addw t4, a5, t1
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t5, t3, 31
	sh2add t2, t1, a0
	add t3, t3, t5
	flw f12, 0(t2)
	addiw t5, t1, 2
	sraiw t3, t3, 1
	fdiv.s f11, f12, f11
	addw t3, t3, t5
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addw t3, a4, t1
	fdiv.s f11, f12, f11
	addiw t1, t1, 3
	mulw t4, t4, t3
	flw f12, 8(t2)
	srliw t5, t4, 31
	add t4, t4, t5
	sraiw t4, t4, 1
	addw t1, t4, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	addw t1, a3, t0
	fdiv.s f11, f12, f11
	mulw t1, t3, t1
	flw f12, 12(t2)
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label109
	j label125
label112:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t2, t2, t4
	addw t4, a2, t4
	mulw t3, t3, t4
	fcvt.s.w f11, t2
	srliw t4, t3, 31
	sh2add t2, t1, a0
	add t3, t3, t4
	flw f12, 0(t2)
	sraiw t4, t3, 1
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t4, t4, t3
	flw f12, 4(t2)
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	addw t4, a5, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 8(t2)
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t4, t3, 1
	addiw t3, t1, 3
	addw t1, a4, t1
	addw t4, t4, t3
	addw t3, a2, t3
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, t0, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t4
	fdiv.s f11, f12, f11
	flw f12, 12(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label113
	j label112
label61:
	addw t2, a3, t1
	addw t3, a2, t1
	mulw t2, t2, t3
	srliw t4, t2, 31
	add t2, t2, t4
	addiw t4, t1, 1
	sraiw t2, t2, 1
	addw t4, a2, t4
	addw t2, a2, t2
	mulw t3, t3, t4
	srliw t4, t3, 31
	fcvt.s.w f11, t2
	add t3, t3, t4
	sh2add t2, t1, s1
	addw t4, a5, t1
	sraiw t3, t3, 1
	flw f12, 0(t2)
	addw t3, a2, t3
	fdiv.s f11, f12, f11
	flw f12, 4(t2)
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f11, f12, f11
	addw t3, a2, t3
	flw f12, 8(t2)
	mulw t3, t3, t4
	srliw t4, t3, 31
	add t3, t3, t4
	sraiw t3, t3, 1
	addw t3, a2, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 3
	fdiv.s f11, f12, f11
	addw t1, a4, t1
	addw t3, a2, t3
	flw f12, 12(t2)
	mulw t1, t3, t1
	srliw t3, t1, 31
	add t1, t1, t3
	sraiw t1, t1, 1
	addw t1, a2, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label45
	j label61
label57:
	sh2add a3, a3, a0
	mv t1, a4
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label439
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label41
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label45
	j label61
label71:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label75
label74:
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	flw f11, 0(a2)
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a1)
	mv a1, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label75
	j label74
label75:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label711
	j label78
label711:
	mv a0, a1
	sh2add a1, a1, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	j label1666
label78:
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	flw f11, 0(a2)
	flw f12, 0(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 4(a2)
	flw f12, 4(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 8(a2)
	flw f12, 8(a1)
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	flw f11, 12(a2)
	flw f12, 12(a1)
	mv a1, a0
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label711
	j label78
label750:
	fmv.w.x f11, zero
	mv a1, zero
	addiw a0, zero, 4
	li a2, 100000
	bge a0, a2, label86
label85:
	sh2add a1, a1, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 4(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 8(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 12(a1)
	mv a1, a0
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label86
	j label85
label86:
	addiw a0, a1, 4
	li a2, 100000
	bge a0, a2, label778
	j label89
label1666:
	sh2add a1, a0, s0
	flw f11, 0(a1)
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a0, a1, label750
	j label1666
label778:
	mv a0, a1
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label93
	j label102
label89:
	sh2add a1, a1, s1
	flw f12, 0(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 4(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 8(a1)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 12(a1)
	mv a1, a0
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label778
	j label89
label93:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	j label1667
label96:
	fdiv.s f10, f10, f11
	lui a0, 260096
	fmv.w.x f11, a0
pcrel1675:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1675)
	flw f12, 0(a0)
	fsub.s f11, f11, f10
	flt.s a1, f12, f11
	flw f12, 4(a0)
	flt.s a0, f11, f12
	or a0, a1, a0
	beq a0, zero, label826
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label97
label826:
	lui a0, 260096
	fmv.w.x f11, a0
	j label100
label1667:
	sh2add a1, a0, s1
	addiw a0, a0, 1
	flw f12, 0(a1)
	li a1, 100000
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	bge a0, a1, label96
	j label1667
label97:
	fadd.s f11, f11, f12
	lui a0, 258048
	fmv.w.x f12, a0
pcrel1676:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	addi a0, a0, %pcrel_lo(pcrel1676)
	flw f14, 0(a0)
	fmul.s f11, f11, f12
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a1, f14, f13
	flw f14, 4(a0)
	flt.s a0, f13, f14
	or a0, a1, a0
	beq a0, zero, label100
	j label97
label102:
	sh2add a0, a0, s1
	flw f12, 0(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 4(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 8(a0)
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	flw f12, 12(a0)
	mv a0, a1
	fmul.s f12, f12, f12
	fadd.s f11, f11, f12
	addiw a1, a1, 4
	li a2, 100000
	bge a1, a2, label93
	j label102
label100:
	lui a0, 260096
	fmv.w.x f10, a0
pcrel1677:
	auipc a0, %pcrel_hi(__cmmc_fp_constant_pool)
	fsub.s f10, f11, f10
	addi a0, a0, %pcrel_lo(pcrel1677)
	flw f11, 0(a0)
	fle.s a1, f10, f11
	flw f11, 4(a0)
	fle.s a0, f11, f10
	and a0, a1, a0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
