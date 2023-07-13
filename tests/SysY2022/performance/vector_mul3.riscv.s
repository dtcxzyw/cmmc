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
pcrel748:
	auipc a1, %pcrel_hi(vectorA)
	addi s0, a1, %pcrel_lo(pcrel748)
	mv a1, zero
label2:
	sh2add a0, a1, s0
	lui a2, 260096
	addiw a1, a1, 16
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
	li a0, 100000
	bge a1, a0, label4
	j label2
label4:
	auipc a0, %pcrel_hi(vectorB)
pcrel749:
	auipc a1, %pcrel_hi(Vectortm)
	addi s1, a0, %pcrel_lo(label4)
	addi a0, a1, %pcrel_lo(pcrel749)
	mv a1, zero
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	bge zero, a2, label124
	li a4, 3
	li a5, 2
	li a2, 1
	li t0, 100000
	bge zero, t0, label19
	li t0, 4
	li t2, 100000
	bge t0, t2, label16
	j label15
label124:
	fmv.w.x f10, zero
	mv t1, zero
	mv a2, zero
	li a4, 100000
	bge zero, a4, label202
	li a3, 1
	li t0, 4
	li a4, 2
	li a5, 3
	li t2, 100000
	bge t0, t2, label217
	j label34
label217:
	mv t0, t1
	j label31
label15:
	addw t4, a3, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t2, t5, 1
	addiw t5, t1, 1
	addw t4, a2, t2
	sh2add t2, t1, s0
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	addw t4, a2, t5
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t6, t3, 31
	add t4, t3, t6
	sraiw t5, t4, 1
	addw t3, a2, t5
	addw t5, a5, t1
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f13, f12, f11
	addw t4, a2, t3
	flw f12, 8(t2)
	mulw t3, t4, t5
	srliw t4, t3, 31
	add t5, t3, t4
	addw t4, a4, t1
	sraiw t6, t5, 1
	addiw t5, t1, 3
	addw t3, a2, t6
	fcvt.s.w f11, t3
	addw t3, a2, t5
	mulw t1, t3, t4
	srliw t5, t1, 31
	add t4, t1, t5
	sraiw t3, t4, 1
	addw t1, a2, t3
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fcvt.s.w f11, t1
	mv t1, t0
	fadd.s f10, f10, f13
	flw f13, 12(t2)
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label16
	j label15
label19:
	sh2add a3, a3, a0
	fsw f10, 0(a3)
	mv a3, a2
	li a2, 100000
	bge a3, a2, label124
	addiw a4, a3, 3
	addiw a5, a3, 2
	addiw a2, a3, 1
	li t0, 100000
	bge t1, t0, label19
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label16
	j label15
label202:
	fmv.w.x f10, zero
	mv t1, zero
	mv a4, zero
	li a2, 100000
	bge zero, a2, label284
	li a3, 3
	li a5, 2
	li a2, 1
	li t0, 100000
	bge zero, t0, label81
	li t0, 4
	li t2, 100000
	bge t0, t2, label88
	j label87
label284:
	fmv.w.x f10, zero
	mv t1, zero
	mv a2, zero
	li a3, 100000
	bge zero, a3, label58
	li a3, 1
	li a4, 100000
	bge zero, a4, label55
	li t0, 4
	li a4, 2
	li a5, 3
	li t2, 100000
	bge t0, t2, label301
	j label51
label55:
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label58
	addiw a3, a2, 1
	li a4, 100000
	bge t1, a4, label55
	addiw t0, t1, 4
	addiw a4, a2, 2
	addiw a5, a2, 3
	li t2, 100000
	bge t0, t2, label301
	j label51
label58:
	addiw a1, a1, 1
	li a2, 1000
	bge a1, a2, label59
	fmv.w.x f10, zero
	mv t1, zero
	mv a3, zero
	li a2, 100000
	bge zero, a2, label124
	li a4, 3
	li a5, 2
	li a2, 1
	li t0, 100000
	bge zero, t0, label19
	li t0, 4
	li t2, 100000
	bge t0, t2, label16
	j label15
label34:
	addw t4, a2, t1
	addw t3, a3, t1
	mulw t2, t4, t3
	srliw t5, t2, 31
	add t4, t2, t5
	addiw t5, t1, 1
	sraiw t2, t4, 1
	addw t4, t2, t5
	sh2add t2, t1, a0
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	addw t4, a4, t1
	fdiv.s f11, f12, f11
	mulw t3, t3, t4
	flw f12, 4(t2)
	srliw t6, t3, 31
	add t5, t3, t6
	addiw t6, t1, 2
	sraiw t3, t5, 1
	addw t5, t3, t6
	addw t3, a5, t1
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f13, f12, f11
	add t6, t4, t5
	flw f12, 8(t2)
	addiw t5, t1, 3
	sraiw t4, t6, 1
	addw t1, t4, t5
	addw t4, a2, t0
	fcvt.s.w f11, t1
	mulw t1, t3, t4
	srliw t5, t1, 31
	add t3, t1, t5
	sraiw t4, t3, 1
	addw t1, t0, t4
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	flw f12, 12(t2)
	fcvt.s.w f11, t1
	addiw t2, t0, 4
	li t1, 100000
	fadd.s f10, f10, f13
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bge t2, t1, label31
	mv t1, t0
	mv t0, t2
	j label34
label81:
	sh2add a3, a4, a0
	mv a4, a2
	fsw f10, 0(a3)
	li a2, 100000
	bge a4, a2, label284
	addiw a3, a4, 3
	addiw a5, a4, 2
	addiw a2, a4, 1
	li t0, 100000
	bge t1, t0, label81
	addiw t0, t1, 4
	li t2, 100000
	bge t0, t2, label88
label87:
	addw t4, a4, t1
	addw t3, a2, t1
	mulw t2, t4, t3
	srliw t4, t2, 31
	add t5, t2, t4
	sraiw t2, t5, 1
	addw t4, a2, t2
	sh2add t2, t1, s1
	flw f12, 0(t2)
	fcvt.s.w f11, t4
	flw f13, 4(t2)
	addiw t4, t1, 1
	fdiv.s f11, f12, f11
	addw t5, a2, t4
	mulw t3, t3, t5
	srliw t6, t3, 31
	add t5, t3, t6
	sraiw t4, t5, 1
	addw t5, a5, t1
	addw t3, a2, t4
	fadd.s f10, f10, f11
	fcvt.s.w f11, t3
	addiw t3, t1, 2
	fdiv.s f12, f13, f11
	addw t4, a2, t3
	flw f13, 8(t2)
	mulw t3, t4, t5
	srliw t4, t3, 31
	add t6, t3, t4
	addw t4, a3, t1
	sraiw t5, t6, 1
	addw t3, a2, t5
	addiw t5, t1, 3
	fcvt.s.w f11, t3
	addw t3, a2, t5
	mulw t1, t3, t4
	srliw t3, t1, 31
	add t5, t1, t3
	sraiw t4, t5, 1
	addw t1, a2, t4
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	flw f13, 12(t2)
	fcvt.s.w f11, t1
	mv t1, t0
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	addiw t0, t0, 4
	li t2, 100000
	bge t0, t2, label88
	j label87
label51:
	addw t4, a2, t1
	addw t3, a3, t1
	mulw t2, t4, t3
	srliw t4, t2, 31
	add t5, t2, t4
	addiw t4, t1, 1
	sraiw t2, t5, 1
	addw t5, t2, t4
	addw t4, a4, t1
	sh2add t2, t1, a0
	mulw t3, t3, t4
	flw f12, 0(t2)
	fcvt.s.w f11, t5
	srliw t6, t3, 31
	flw f13, 4(t2)
	add t5, t3, t6
	fdiv.s f11, f12, f11
	addiw t6, t1, 2
	sraiw t3, t5, 1
	addw t5, t3, t6
	addw t3, a5, t1
	addiw t1, t1, 3
	mulw t4, t4, t3
	fadd.s f10, f10, f11
	fcvt.s.w f11, t5
	srliw t5, t4, 31
	fdiv.s f12, f13, f11
	add t6, t4, t5
	flw f13, 8(t2)
	sraiw t4, t6, 1
	addw t5, t4, t1
	addw t4, a2, t0
	fcvt.s.w f11, t5
	mulw t1, t3, t4
	srliw t3, t1, 31
	add t4, t1, t3
	sraiw t1, t4, 1
	addw t3, t0, t1
	li t1, 100000
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	flw f13, 12(t2)
	fcvt.s.w f11, t3
	addiw t2, t0, 4
	fadd.s f10, f10, f12
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	bge t2, t1, label48
	mv t1, t0
	mv t0, t2
	j label51
label16:
	addw a5, a3, t1
	addw t0, a2, t1
	mulw a4, a5, t0
	srliw a5, a4, 31
	add t0, a4, a5
	sraiw a4, t0, 1
	addw a5, a2, a4
	sh2add a4, t1, s0
	addiw t1, t1, 1
	flw f12, 0(a4)
	fcvt.s.w f11, a5
	li a4, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t1, a4, label19
	j label16
label31:
	addw a5, a2, t0
	addw t1, a3, t0
	mulw a4, a5, t1
	srliw t2, a4, 31
	add t1, a4, t2
	addiw a4, t0, 1
	sraiw a5, t1, 1
	addw t1, a5, a4
	sh2add a5, t0, a0
	flw f12, 0(a5)
	fcvt.s.w f11, t1
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label233
	mv t0, a4
	j label31
label233:
	mv t1, a4
	sh2add a2, a2, s1
	fsw f10, 0(a2)
	mv a2, a3
	li a4, 100000
	bge a3, a4, label202
	addiw a3, a3, 1
	bge t1, a4, label27
	addiw t0, t1, 4
	addiw a4, a2, 2
	addiw a5, a2, 3
	li t2, 100000
	bge t0, t2, label217
	j label34
label88:
	addw a5, a4, t1
	addw t0, a2, t1
	mulw a3, a5, t0
	srliw a5, a3, 31
	add t0, a3, a5
	sraiw a3, t0, 1
	addw a5, a2, a3
	sh2add a3, t1, s1
	addiw t1, t1, 1
	flw f12, 0(a3)
	fcvt.s.w f11, a5
	li a3, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge t1, a3, label81
	j label88
label48:
	addw a5, a2, t0
	addw t1, a3, t0
	mulw a4, a5, t1
	srliw t2, a4, 31
	add t1, a4, t2
	addiw a4, t0, 1
	sraiw a5, t1, 1
	addw t1, a5, a4
	sh2add a5, t0, a0
	flw f12, 0(a5)
	fcvt.s.w f11, t1
	li a5, 100000
	fdiv.s f11, f12, f11
	fadd.s f10, f10, f11
	bge a4, a5, label317
	mv t0, a4
	j label48
label317:
	mv t1, a4
	sh2add a2, a2, s0
	fsw f10, 0(a2)
	mv a2, a3
	li a3, 100000
	bge a2, a3, label58
	addiw a3, a2, 1
	li a4, 100000
	bge t1, a4, label55
	addiw t0, t1, 4
	addiw a4, a2, 2
	addiw a5, a2, 3
	li t2, 100000
	bge t0, t2, label301
	j label51
label27:
	sh2add a2, a2, s1
	fsw f10, 0(a2)
	mv a2, a3
	li a4, 100000
	bge a3, a4, label202
	addiw a3, a3, 1
	bge t1, a4, label27
	addiw t0, t1, 4
	addiw a4, a2, 2
	addiw a5, a2, 3
	li t2, 100000
	bge t0, t2, label217
	j label34
label301:
	mv t0, t1
	j label48
label59:
	li a0, 76
	jal _sysy_stoptime
	mv a1, zero
	fmv.w.x f10, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label64
label63:
	sh2add a2, a1, s0
	sh2add a1, a1, s1
	flw f11, 0(a2)
	flw f13, 0(a1)
	fmul.s f12, f11, f13
	flw f11, 4(a2)
	flw f13, 4(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 8(a2)
	flw f13, 8(a1)
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	flw f11, 12(a2)
	flw f13, 12(a1)
	mv a1, a0
	fadd.s f10, f10, f12
	fmul.s f12, f11, f13
	fadd.s f10, f10, f12
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label64
	j label63
label64:
	sh2add a2, a1, s0
	sh2add a0, a1, s1
	flw f11, 0(a2)
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f11, f11, f12
	fadd.s f10, f10, f11
	bge a1, a0, label416
	j label64
label416:
	fmv.w.x f11, zero
	mv a1, zero
	li a0, 4
	li a2, 100000
	bge a0, a2, label71
label70:
	sh2add a1, a1, s1
	flw f12, 0(a1)
	fmul.s f13, f12, f12
	flw f12, 4(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 8(a1)
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	flw f12, 12(a1)
	mv a1, a0
	fadd.s f11, f11, f13
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	addiw a0, a0, 4
	li a2, 100000
	bge a0, a2, label71
	j label70
label71:
	sh2add a0, a1, s1
	addiw a1, a1, 1
	flw f12, 0(a0)
	li a0, 100000
	fmul.s f13, f12, f12
	fadd.s f11, f11, f13
	bge a1, a0, label74
	j label71
label74:
	fdiv.s f10, f10, f11
	lui a0, 260096
pcrel750:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel750)
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a0, f11, f12
	or a1, a1, a0
	beq a1, zero, label465
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
	j label75
label465:
	lui a0, 260096
	fmv.w.x f11, a0
	j label78
label75:
	fadd.s f11, f11, f12
	lui a0, 258048
pcrel751:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f13, a0
	addi a0, a1, %pcrel_lo(pcrel751)
	flw f15, 0(a0)
	flw f14, 4(a0)
	fmul.s f11, f11, f13
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a0, f13, f14
	flt.s a1, f15, f13
	or a1, a1, a0
	beq a1, zero, label78
	j label75
label78:
	lui a0, 260096
pcrel752:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a0, a1, %pcrel_lo(pcrel752)
	fsub.s f10, f11, f12
	flw f11, 0(a0)
	flw f12, 4(a0)
	fle.s a1, f10, f11
	fle.s a2, f12, f10
	and a0, a1, a2
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
