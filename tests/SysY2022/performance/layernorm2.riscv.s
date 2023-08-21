.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.p2align 2
__cmmc_fp_constant_pool:
	.4byte	1008981770
	.4byte	981668463
.bss
.p2align 3
a:
	.zero	4000000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	20
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	16
.p2align 3
var:
	.zero	4000
.p2align 3
mean:
	.zero	4000
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[112]
	addi sp, sp, -128
pcrel366:
	auipc a1, %pcrel_hi(a)
	sd ra, 0(sp)
	addi a0, a1, %pcrel_lo(pcrel366)
	sd s11, 8(sp)
pcrel367:
	auipc a1, %pcrel_hi(var)
	fsw f8, 16(sp)
	sd s2, 24(sp)
	li s2, 992
	sd s10, 32(sp)
	mv s10, zero
	sd s9, 40(sp)
	sd s8, 48(sp)
	addi s8, a1, %pcrel_lo(pcrel367)
	sd s7, 56(sp)
pcrel368:
	auipc a1, %pcrel_hi(__cmmc_fp_constant_pool)
	sd s3, 64(sp)
	sd s1, 72(sp)
	lui s1, 258048
	sd s6, 80(sp)
pcrel369:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_1)
	sd s0, 88(sp)
	addi s3, s6, %pcrel_lo(pcrel369)
	addi s0, a1, %pcrel_lo(pcrel368)
	sd s5, 96(sp)
	sd s4, 104(sp)
pcrel370:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_0)
	fsw f9, 112(sp)
	addi s5, s4, %pcrel_lo(pcrel370)
	sd a0, 120(sp)
pcrel371:
	auipc a0, %pcrel_hi(mean)
	addi s7, a0, %pcrel_lo(pcrel371)
	ld a0, 120(sp)
	mv s9, a0
label2:
	li a0, 1000
	bge s10, a0, label7
	mv a0, s9
	jal getfarray
	li a1, 1000
	bne a0, a1, label48
	addiw s10, s10, 1
	li a1, 125
	slli a0, a1, 5
	add s9, s9, a0
	j label2
label43:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
label48:
	ld ra, 0(sp)
	ld s11, 8(sp)
	flw f8, 16(sp)
	ld s2, 24(sp)
	ld s10, 32(sp)
	ld s9, 40(sp)
	ld s8, 48(sp)
	ld s7, 56(sp)
	ld s3, 64(sp)
	ld s1, 72(sp)
	ld s6, 80(sp)
	ld s0, 88(sp)
	ld s5, 96(sp)
	ld s4, 104(sp)
	flw f9, 112(sp)
	addi sp, sp, 128
	ret
label7:
	li a0, 42
	jal _sysy_starttime
	mv s9, zero
	fmv.w.x f8, zero
	mv s10, s7
	mv s11, zero
	j label11
.p2align 2
label47:
	addi s10, s10, 4
.p2align 2
label11:
	li a3, 125
	fmv.w.x f10, zero
	ld a0, 120(sp)
	slli a2, a3, 5
	fsw f10, 0(s10)
pcrel372:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	mul a1, s11, a2
pcrel373:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_0)
	fsw f10, %pcrel_lo(pcrel373)(s4)
	addi a2, a3, %pcrel_lo(pcrel372)
	add a0, a0, a1
	fsw f10, 4(s5)
	li a1, 1000
	sd a0, 8(s5)
	mv a0, zero
	jal cmmcParallelFor
	addiw s11, s11, 1
	lui a0, 280480
	flw f10, %pcrel_lo(pcrel373)(s4)
	fmv.w.x f11, a0
	li a0, 1000
	fdiv.s f12, f10, f11
	fsw f12, 0(s10)
	blt s11, a0, label47
	mv s10, s8
	mv s11, zero
	j label15
.p2align 2
label353:
	fsw f11, 0(s10)
	addiw s11, s11, 1
	li a0, 1000
	bge s11, a0, label352
.p2align 2
label26:
	addi s10, s10, 4
.p2align 2
label15:
	sh2add a0, s11, s7
	li a1, 125
	fmv.w.x f9, zero
	slli a3, a1, 5
	mul a2, s11, a3
	fsw f9, 0(s10)
pcrel374:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	flw f10, 0(a0)
	ld a0, 120(sp)
pcrel375:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_1)
	fsw f9, %pcrel_lo(pcrel375)(s6)
	add a1, a0, a2
	fsw f9, 4(s3)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel374)
	sd a1, 8(s3)
	li a1, 1000
	fsw f10, 16(s3)
	jal cmmcParallelFor
	lui a0, 280480
	flw f11, %pcrel_lo(pcrel375)(s6)
	fmv.w.x f14, a0
	flw f13, 0(s0)
	fdiv.s f12, f11, f14
	fmv.w.x f14, s1
	fadd.s f10, f12, f13
	fmv.s f13, f9
	fmv.s f12, f10
	fmul.s f11, f10, f14
	fmul.s f14, f11, f11
	flw f0, 4(s0)
	fsub.s f1, f14, f10
	fabs.s f15, f1
	flt.s a0, f0, f15
	bne a0, zero, label22
	fsw f11, 0(s10)
	addiw s11, s11, 1
	li a0, 1000
	blt s11, a0, label26
	j label352
.p2align 2
label23:
	fadd.s f15, f11, f13
	fmv.s f12, f11
	fmv.w.x f0, s1
	fmul.s f14, f15, f0
	flw f0, 4(s0)
	fmv.s f11, f14
	fmul.s f14, f14, f14
	fsub.s f1, f14, f10
	fabs.s f15, f1
	flt.s a0, f0, f15
	beq a0, zero, label353
.p2align 2
label22:
	flt.s a0, f10, f14
	bne a0, zero, label23
	fadd.s f15, f11, f12
	fmv.s f13, f11
	fmv.w.x f0, s1
	fmul.s f14, f15, f0
	flw f0, 4(s0)
	fmv.s f11, f14
	fmul.s f14, f14, f14
	fsub.s f1, f14, f10
	fabs.s f15, f1
	flt.s a0, f0, f15
	bne a0, zero, label22
	fsw f11, 0(s10)
	addiw s11, s11, 1
	li a0, 1000
	blt s11, a0, label26
label352:
	mv a1, s7
	mv a2, zero
	fmv.s f12, f8
	li a5, 125
	mv a4, zero
	mv a3, zero
	flw f11, 0(s7)
	flw f10, 0(s8)
	ld a0, 120(sp)
	j label32
.p2align 2
label36:
	flw f13, 64(a0)
	addiw a2, a2, 1
	li a3, 1000
	fsub.s f15, f13, f11
	fdiv.s f14, f15, f10
	fadd.s f13, f12, f14
	fsw f14, 64(a0)
	flw f15, 68(a0)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 68(a0)
	fadd.s f12, f13, f14
	flw f0, 72(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 72(a0)
	fadd.s f13, f12, f14
	flw f0, 76(a0)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 76(a0)
	fadd.s f14, f13, f12
	flw f0, 80(a0)
	fsub.s f15, f0, f11
	fdiv.s f13, f15, f10
	fsw f13, 80(a0)
	fadd.s f12, f14, f13
	flw f0, 84(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 84(a0)
	fadd.s f13, f12, f14
	flw f0, 88(a0)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 88(a0)
	fadd.s f14, f13, f12
	flw f0, 92(a0)
	fsub.s f15, f0, f11
	fdiv.s f13, f15, f10
	fsw f13, 92(a0)
	fadd.s f12, f14, f13
	bge a2, a3, label37
	addi a1, a1, 4
	sh2add a0, a2, s8
	li a5, 125
	flw f11, 0(a1)
	slli a3, a5, 5
	flw f10, 0(a0)
	mul a4, a2, a3
	ld a0, 120(sp)
	mv a3, zero
	add a0, a0, a4
.p2align 2
label32:
	flw f14, 0(a0)
	addiw a3, a3, 16
	fsub.s f15, f14, f11
	fdiv.s f13, f15, f10
	fadd.s f14, f12, f13
	fsw f13, 0(a0)
	flw f15, 4(a0)
	fsub.s f0, f15, f11
	fdiv.s f12, f0, f10
	fsw f12, 4(a0)
	fadd.s f13, f14, f12
	flw f0, 8(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 8(a0)
	fadd.s f12, f13, f14
	flw f0, 12(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 12(a0)
	fadd.s f13, f12, f14
	flw f0, 16(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 16(a0)
	fadd.s f12, f13, f14
	flw f0, 20(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 20(a0)
	fadd.s f13, f12, f14
	flw f0, 24(a0)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 24(a0)
	fadd.s f14, f13, f12
	flw f15, 28(a0)
	fsub.s f0, f15, f11
	fdiv.s f13, f0, f10
	fsw f13, 28(a0)
	fadd.s f12, f14, f13
	flw f15, 32(a0)
	fsub.s f0, f15, f11
	fdiv.s f14, f0, f10
	fsw f14, 32(a0)
	fadd.s f13, f12, f14
	flw f0, 36(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 36(a0)
	fadd.s f12, f13, f14
	flw f0, 40(a0)
	fsub.s f15, f0, f11
	fdiv.s f13, f15, f10
	fsw f13, 40(a0)
	fadd.s f14, f12, f13
	flw f15, 44(a0)
	fsub.s f0, f15, f11
	fdiv.s f12, f0, f10
	fsw f12, 44(a0)
	fadd.s f13, f14, f12
	flw f0, 48(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 48(a0)
	fadd.s f12, f13, f14
	flw f15, 52(a0)
	fsub.s f0, f15, f11
	fdiv.s f13, f0, f10
	fsw f13, 52(a0)
	fadd.s f14, f12, f13
	flw f0, 56(a0)
	fsub.s f15, f0, f11
	fdiv.s f12, f15, f10
	fsw f12, 56(a0)
	fadd.s f13, f14, f12
	flw f0, 60(a0)
	fsub.s f15, f0, f11
	fdiv.s f14, f15, f10
	fsw f14, 60(a0)
	fadd.s f12, f13, f14
	bge a3, s2, label36
	addi a0, a0, 64
	j label32
label37:
	addiw s9, s9, 1
	li a0, 100
	bge s9, a0, label277
	fmv.s f8, f12
	mv s10, s7
	mv s11, zero
	j label11
label277:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_2)
	mv s2, zero
	fmv.s f8, f12
	addi s1, a1, %pcrel_lo(label277)
	ld a0, 120(sp)
	mv s0, a0
.p2align 2
label39:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel376:
	auipc a3, %pcrel_hi(cmmc_parallel_body_2)
	mv a0, zero
	li a1, 1000
	fsw f8, %pcrel_lo(label39)(s3)
	addi a2, a3, %pcrel_lo(pcrel376)
	fsw f8, 4(s1)
	sd s0, 8(s1)
	jal cmmcParallelFor
	li a0, 1000
	addiw s2, s2, 1
	flw f8, %pcrel_lo(label39)(s3)
	bge s2, a0, label43
	li a1, 125
	slli a0, a1, 5
	add s0, s0, a0
	j label39
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -8
	mv t0, a0
	addiw a2, a0, 3
pcrel902:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	sd ra, 0(sp)
	addi a0, a4, %pcrel_lo(pcrel902)
	ld a3, 8(a0)
	ble a1, a2, label784
	addiw a2, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a2, a4, label793
	sh2add a2, t0, a3
	fmv.w.x f10, zero
	j label745
.p2align 2
label749:
	addi a2, a2, 64
.p2align 2
label745:
	flw f13, 0(a2)
	addiw t0, t0, 16
	flw f15, 4(a2)
	fadd.s f12, f10, f13
	flw f14, 8(a2)
	fadd.s f11, f12, f15
	flw f12, 12(a2)
	fadd.s f10, f11, f14
	flw f14, 16(a2)
	flw f15, 20(a2)
	fadd.s f13, f10, f12
	fadd.s f11, f13, f14
	flw f13, 24(a2)
	flw f14, 28(a2)
	fadd.s f12, f11, f15
	flw f15, 32(a2)
	fadd.s f10, f12, f13
	fadd.s f11, f10, f14
	flw f10, 36(a2)
	flw f14, 40(a2)
	fadd.s f13, f11, f15
	flw f15, 44(a2)
	fadd.s f12, f13, f10
	fadd.s f11, f12, f14
	flw f14, 48(a2)
	fadd.s f10, f11, f15
	flw f15, 52(a2)
	fadd.s f13, f10, f14
	flw f14, 56(a2)
	fadd.s f12, f13, f15
	flw f13, 60(a2)
	fadd.s f11, f12, f14
	fadd.s f10, f11, f13
	bgt a5, t0, label749
	mv a5, t0
	fmv.s f11, f10
label750:
	ble a4, a5, label855
	sh2add a2, a5, a3
	fmv.s f10, f11
label756:
	flw f13, 0(a2)
	addiw a5, a5, 4
	flw f15, 4(a2)
	fadd.s f12, f10, f13
	flw f14, 8(a2)
	fadd.s f11, f12, f15
	flw f12, 12(a2)
	fadd.s f13, f11, f14
	fadd.s f10, f13, f12
	ble a4, a5, label873
	addi a2, a2, 16
	j label756
label873:
	mv t0, a5
	fmv.s f11, f10
label764:
	ble a1, t0, label774
	sh2add a2, t0, a3
	fmv.s f10, f11
	j label769
label773:
	addi a2, a2, 4
label769:
	flw f12, 0(a2)
	addiw t0, t0, 1
	fadd.s f10, f10, f12
	bgt a1, t0, label773
label774:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label784:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label764
label793:
	fmv.w.x f10, zero
	mv a5, t0
	fmv.s f11, f10
	mv t0, zero
	j label750
label855:
	fmv.s f11, f10
	j label764
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -8
	mv t0, a0
	addiw a2, a0, 3
pcrel741:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sd ra, 0(sp)
	addi a0, a4, %pcrel_lo(pcrel741)
	ld a3, 8(a0)
	flw f10, 16(a0)
	ble a1, a2, label582
	addiw a2, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a2, a4, label591
	sh2add a2, t0, a3
	fmv.w.x f11, zero
	j label555
.p2align 2
label559:
	addi a2, a2, 64
.p2align 2
label555:
	flw f13, 0(a2)
	addiw t0, t0, 16
	flw f15, 4(a2)
	fsub.s f14, f13, f10
	flw f0, 8(a2)
	fsub.s f13, f15, f10
	flw f15, 12(a2)
	fmadd.s f12, f14, f14, f11
	fsub.s f14, f0, f10
	flw f0, 16(a2)
	fmadd.s f11, f13, f13, f12
	fsub.s f13, f15, f10
	flw f15, 20(a2)
	fmadd.s f12, f14, f14, f11
	fsub.s f14, f0, f10
	fmadd.s f11, f13, f13, f12
	fsub.s f13, f15, f10
	fmadd.s f12, f14, f14, f11
	flw f14, 24(a2)
	flw f1, 28(a2)
	fsub.s f15, f14, f10
	flw f0, 32(a2)
	fsub.s f14, f1, f10
	fmadd.s f11, f13, f13, f12
	fmadd.s f13, f15, f15, f11
	fsub.s f15, f0, f10
	fmadd.s f12, f14, f14, f13
	flw f14, 36(a2)
	fsub.s f13, f14, f10
	fmadd.s f11, f15, f15, f12
	flw f15, 40(a2)
	flw f0, 44(a2)
	fsub.s f14, f15, f10
	fmadd.s f12, f13, f13, f11
	fsub.s f13, f0, f10
	fmadd.s f11, f14, f14, f12
	flw f14, 48(a2)
	flw f0, 52(a2)
	fsub.s f15, f14, f10
	flw f1, 56(a2)
	fsub.s f14, f0, f10
	fmadd.s f12, f13, f13, f11
	flw f0, 60(a2)
	fmadd.s f11, f15, f15, f12
	fsub.s f15, f1, f10
	fmadd.s f13, f14, f14, f11
	fsub.s f14, f0, f10
	fmadd.s f12, f15, f15, f13
	fmadd.s f11, f14, f14, f12
	bgt a5, t0, label559
	mv a5, t0
	fmv.s f12, f11
label540:
	ble a4, a5, label545
	sh2add a2, a5, a3
	j label549
label553:
	addi a2, a2, 16
label549:
	flw f14, 0(a2)
	addiw a5, a5, 4
	flw f15, 4(a2)
	fsub.s f13, f14, f10
	flw f0, 8(a2)
	fsub.s f14, f15, f10
	flw f15, 12(a2)
	fmadd.s f11, f13, f13, f12
	fsub.s f13, f0, f10
	fmadd.s f12, f14, f14, f11
	fsub.s f14, f15, f10
	fmadd.s f11, f13, f13, f12
	fmadd.s f12, f14, f14, f11
	bgt a4, a5, label553
	fmv.s f11, f12
	mv t0, a5
label560:
	ble a1, t0, label716
	sh2add a2, t0, a3
	fmv.s f11, f12
	j label565
label569:
	addi a2, a2, 4
label565:
	flw f13, 0(a2)
	addiw t0, t0, 1
	fsub.s f12, f13, f10
	fmadd.s f11, f12, f12, f11
	bgt a1, t0, label569
label716:
	fmv.s f10, f11
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label545:
	fmv.s f12, f11
	j label560
label582:
	fmv.w.x f11, zero
	fmv.s f12, f11
	j label560
label591:
	fmv.w.x f11, zero
	mv a5, t0
	fmv.s f12, f11
	mv t0, zero
	j label540
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -8
	mv t0, a0
	addiw a2, a0, 3
pcrel537:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd ra, 0(sp)
	addi a0, a4, %pcrel_lo(pcrel537)
	ld a3, 8(a0)
	ble a1, a2, label419
	addiw a2, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a2, a4, label443
	sh2add a2, t0, a3
	fmv.w.x f10, zero
	j label406
.p2align 2
label410:
	addi a2, a2, 64
.p2align 2
label406:
	flw f13, 0(a2)
	addiw t0, t0, 16
	flw f15, 4(a2)
	fadd.s f11, f10, f13
	flw f14, 8(a2)
	flw f0, 12(a2)
	fadd.s f12, f11, f15
	flw f15, 16(a2)
	fadd.s f10, f12, f14
	flw f14, 20(a2)
	fadd.s f13, f10, f0
	fadd.s f11, f13, f15
	flw f13, 24(a2)
	fadd.s f12, f11, f14
	flw f14, 28(a2)
	fadd.s f10, f12, f13
	flw f12, 32(a2)
	flw f15, 36(a2)
	fadd.s f11, f10, f14
	flw f14, 40(a2)
	fadd.s f13, f11, f12
	fadd.s f10, f13, f15
	flw f15, 44(a2)
	flw f13, 48(a2)
	fadd.s f12, f10, f14
	flw f14, 52(a2)
	fadd.s f11, f12, f15
	fadd.s f10, f11, f13
	flw f13, 56(a2)
	fadd.s f12, f10, f14
	flw f14, 60(a2)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f14
	bgt a5, t0, label410
	mv a5, t0
	fmv.s f11, f10
label391:
	ble a4, a5, label396
	sh2add a2, a5, a3
	fmv.s f10, f11
label400:
	flw f13, 0(a2)
	addiw a5, a5, 4
	flw f14, 4(a2)
	fadd.s f12, f10, f13
	flw f15, 8(a2)
	fadd.s f11, f12, f14
	flw f12, 12(a2)
	fadd.s f13, f11, f15
	fadd.s f10, f13, f12
	ble a4, a5, label467
	addi a2, a2, 16
	j label400
label467:
	mv t0, a5
	fmv.s f11, f10
label378:
	ble a1, t0, label388
	sh2add a2, t0, a3
	fmv.s f10, f11
	j label383
label387:
	addi a2, a2, 4
label383:
	flw f12, 0(a2)
	addiw t0, t0, 1
	fadd.s f10, f10, f12
	bgt a1, t0, label387
label388:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label396:
	fmv.s f11, f10
	j label378
label443:
	fmv.w.x f10, zero
	mv a5, t0
	fmv.s f11, f10
	mv t0, zero
	j label391
label419:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label378
