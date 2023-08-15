.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.section .rodata
.align 4
__cmmc_fp_constant_pool:
	.4byte	1008981770
	.4byte	981668463
.bss
.align 8
a:
	.zero	4000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	8
.align 8
cmmc_parallel_body_payload_1:
	.zero	16
.align 8
var:
	.zero	4000
.align 8
mean:
	.zero	4000
.text
.p2align 2
.globl main
main:
	addi sp, sp, -112
pcrel1174:
	auipc a0, %pcrel_hi(a)
pcrel1175:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd ra, 0(sp)
	sd s3, 8(sp)
	addi s3, a0, %pcrel_lo(pcrel1174)
	sd s8, 16(sp)
pcrel1176:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
pcrel1177:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_1)
	sd s9, 24(sp)
	addi s9, s8, %pcrel_lo(pcrel1177)
	sd s5, 32(sp)
	addi s5, a1, %pcrel_lo(pcrel1175)
	sd s0, 40(sp)
pcrel1178:
	auipc a1, %pcrel_hi(mean)
	li s0, 1000
	sd s6, 48(sp)
	addi s6, a0, %pcrel_lo(pcrel1176)
	sd s1, 56(sp)
pcrel1179:
	auipc a0, %pcrel_hi(var)
	sd s7, 64(sp)
	addi s7, a1, %pcrel_lo(pcrel1178)
	sd s4, 72(sp)
	addi s4, a0, %pcrel_lo(pcrel1179)
	sd s10, 80(sp)
	li a0, 125
	mv s10, s3
	slli s1, a0, 5
	sd s11, 88(sp)
	mv s11, zero
	sd s2, 96(sp)
	li s2, 992
	fsw f8, 104(sp)
label599:
	bge s11, s0, label604
	mv a0, s10
	jal getfarray
	bne a0, s0, label633
	addiw s11, s11, 1
	add s10, s10, s1
	j label599
label604:
	li a0, 42
	jal _sysy_starttime
	mv s10, zero
	fmv.w.x f8, zero
	j label605
label618:
	addiw s10, s10, 1
	li a0, 100
	bge s10, a0, label800
	fmv.s f8, f12
label605:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
	mv a0, zero
	sd s7, %pcrel_lo(label605)(a2)
	mv a1, s0
	mv a2, s5
	jal cmmcParallelFor
	mv a0, zero
pcrel1180:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_1)
	sd s4, %pcrel_lo(pcrel1180)(s8)
	sd s7, 8(s9)
	mv a1, s0
	mv a2, s6
	jal cmmcParallelFor
	fmv.s f12, f8
	mv a2, zero
	mv a1, s7
	flw f10, 0(s7)
	mv a4, zero
	mv a3, zero
	flw f11, 0(s4)
	mv a0, s3
	j label612
.p2align 2
label617:
	flw f13, 64(a0)
	addiw a2, a2, 1
	fsub.s f15, f13, f10
	fdiv.s f14, f15, f11
	fadd.s f13, f12, f14
	fsw f14, 64(a0)
	flw f0, 68(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 68(a0)
	fadd.s f12, f13, f14
	flw f0, 72(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 72(a0)
	fadd.s f13, f12, f14
	flw f15, 76(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 76(a0)
	fadd.s f12, f13, f14
	flw f0, 80(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 80(a0)
	fadd.s f13, f12, f14
	flw f0, 84(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 84(a0)
	fadd.s f12, f13, f14
	flw f15, 88(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 88(a0)
	fadd.s f13, f12, f14
	flw f0, 92(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 92(a0)
	fadd.s f12, f13, f14
	bge a2, s0, label618
	addi a1, a1, 4
	sh2add a0, a2, s4
	mul a4, a2, s1
	mv a3, zero
	flw f10, 0(a1)
	flw f11, 0(a0)
	add a0, s3, a4
.p2align 2
label612:
	flw f13, 0(a0)
	addiw a3, a3, 16
	fsub.s f15, f13, f10
	fdiv.s f14, f15, f11
	fadd.s f13, f12, f14
	fsw f14, 0(a0)
	flw f15, 4(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 4(a0)
	fadd.s f12, f13, f14
	flw f0, 8(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 8(a0)
	fadd.s f13, f12, f14
	flw f15, 12(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 12(a0)
	fadd.s f12, f13, f14
	flw f15, 16(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 16(a0)
	fadd.s f13, f12, f14
	flw f0, 20(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 20(a0)
	fadd.s f12, f13, f14
	flw f15, 24(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 24(a0)
	fadd.s f13, f12, f14
	flw f0, 28(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 28(a0)
	fadd.s f12, f13, f14
	flw f15, 32(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 32(a0)
	fadd.s f13, f12, f14
	flw f15, 36(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 36(a0)
	fadd.s f12, f13, f14
	flw f0, 40(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 40(a0)
	fadd.s f13, f12, f14
	flw f0, 44(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 44(a0)
	fadd.s f12, f13, f14
	flw f0, 48(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 48(a0)
	fadd.s f13, f12, f14
	flw f0, 52(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 52(a0)
	fadd.s f12, f13, f14
	flw f0, 56(a0)
	fsub.s f15, f0, f10
	fdiv.s f14, f15, f11
	fsw f14, 56(a0)
	fadd.s f13, f12, f14
	flw f15, 60(a0)
	fsub.s f0, f15, f10
	fdiv.s f14, f0, f11
	fsw f14, 60(a0)
	fadd.s f12, f13, f14
	bge a3, s2, label617
	addi a0, a0, 64
	j label612
label629:
	li a0, 95
	jal _sysy_stoptime
	fmv.s f10, f8
	jal putfloat
	mv a0, zero
label633:
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s8, 16(sp)
	ld s9, 24(sp)
	ld s5, 32(sp)
	ld s0, 40(sp)
	ld s6, 48(sp)
	ld s1, 56(sp)
	ld s7, 64(sp)
	ld s4, 72(sp)
	ld s10, 80(sp)
	ld s11, 88(sp)
	ld s2, 96(sp)
	flw f8, 104(sp)
	addi sp, sp, 112
	ret
label800:
	mv a1, zero
	fmv.s f10, f12
	mv a0, s3
	mv a2, zero
	j label624
.p2align 2
label631:
	addi a0, a0, 256
.p2align 2
label624:
	flw f11, 0(a0)
	addiw a2, a2, 64
	li a3, 960
	flw f14, 4(a0)
	fadd.s f12, f10, f11
	flw f10, 8(a0)
	fadd.s f13, f12, f14
	flw f14, 12(a0)
	fadd.s f11, f13, f10
	flw f13, 16(a0)
	fadd.s f12, f11, f14
	flw f14, 20(a0)
	fadd.s f10, f12, f13
	flw f13, 24(a0)
	fadd.s f11, f10, f14
	flw f14, 28(a0)
	fadd.s f12, f11, f13
	flw f13, 32(a0)
	fadd.s f10, f12, f14
	flw f14, 36(a0)
	flw f15, 40(a0)
	fadd.s f11, f10, f13
	fadd.s f12, f11, f14
	flw f14, 44(a0)
	fadd.s f13, f12, f15
	flw f12, 48(a0)
	fadd.s f10, f13, f14
	flw f14, 52(a0)
	flw f15, 56(a0)
	fadd.s f11, f10, f12
	fadd.s f13, f11, f14
	flw f14, 60(a0)
	fadd.s f12, f13, f15
	flw f15, 64(a0)
	fadd.s f10, f12, f14
	flw f12, 68(a0)
	fadd.s f11, f10, f15
	flw f10, 72(a0)
	fadd.s f13, f11, f12
	flw f11, 76(a0)
	flw f15, 80(a0)
	fadd.s f14, f13, f10
	flw f13, 84(a0)
	fadd.s f12, f14, f11
	flw f14, 88(a0)
	fadd.s f10, f12, f15
	flw f15, 92(a0)
	fadd.s f11, f10, f13
	fadd.s f12, f11, f14
	flw f14, 96(a0)
	fadd.s f10, f12, f15
	flw f12, 100(a0)
	fadd.s f13, f10, f14
	flw f14, 104(a0)
	flw f15, 108(a0)
	fadd.s f11, f13, f12
	flw f13, 112(a0)
	fadd.s f10, f11, f14
	flw f14, 116(a0)
	fadd.s f12, f10, f15
	fadd.s f11, f12, f13
	flw f13, 120(a0)
	fadd.s f10, f11, f14
	flw f14, 124(a0)
	fadd.s f12, f10, f13
	flw f13, 128(a0)
	fadd.s f11, f12, f14
	flw f14, 132(a0)
	fadd.s f10, f11, f13
	flw f13, 136(a0)
	fadd.s f12, f10, f14
	flw f14, 140(a0)
	fadd.s f11, f12, f13
	flw f13, 144(a0)
	flw f15, 148(a0)
	fadd.s f10, f11, f14
	flw f14, 152(a0)
	fadd.s f12, f10, f13
	fadd.s f11, f12, f15
	flw f15, 156(a0)
	flw f0, 160(a0)
	fadd.s f13, f11, f14
	flw f14, 164(a0)
	fadd.s f10, f13, f15
	fadd.s f12, f10, f0
	flw f10, 168(a0)
	fadd.s f11, f12, f14
	flw f12, 172(a0)
	fadd.s f13, f11, f10
	flw f11, 176(a0)
	flw f15, 180(a0)
	fadd.s f14, f13, f12
	flw f13, 184(a0)
	fadd.s f10, f14, f11
	flw f14, 188(a0)
	fadd.s f12, f10, f15
	fadd.s f11, f12, f13
	flw f12, 192(a0)
	fadd.s f10, f11, f14
	flw f14, 196(a0)
	flw f15, 200(a0)
	fadd.s f13, f10, f12
	fadd.s f11, f13, f14
	flw f14, 204(a0)
	flw f13, 208(a0)
	fadd.s f12, f11, f15
	fadd.s f10, f12, f14
	flw f14, 212(a0)
	flw f15, 216(a0)
	fadd.s f11, f10, f13
	fadd.s f12, f11, f14
	flw f14, 220(a0)
	fadd.s f13, f12, f15
	flw f15, 224(a0)
	fadd.s f10, f13, f14
	flw f13, 228(a0)
	fadd.s f11, f10, f15
	flw f15, 232(a0)
	fadd.s f12, f11, f13
	flw f11, 236(a0)
	fadd.s f14, f12, f15
	flw f12, 240(a0)
	fadd.s f10, f14, f11
	flw f14, 244(a0)
	flw f15, 248(a0)
	fadd.s f13, f10, f12
	fadd.s f11, f13, f14
	flw f13, 252(a0)
	fadd.s f12, f11, f15
	fadd.s f10, f12, f13
	blt a2, a3, label631
	flw f13, 256(a0)
	addiw a1, a1, 1
	flw f14, 260(a0)
	fadd.s f12, f10, f13
	flw f13, 264(a0)
	fadd.s f11, f12, f14
	flw f12, 268(a0)
	fadd.s f10, f11, f13
	flw f11, 272(a0)
	fadd.s f14, f10, f12
	flw f10, 276(a0)
	flw f15, 280(a0)
	fadd.s f13, f14, f11
	flw f14, 284(a0)
	fadd.s f12, f13, f10
	fadd.s f11, f12, f15
	flw f15, 288(a0)
	fadd.s f10, f11, f14
	flw f14, 292(a0)
	fadd.s f13, f10, f15
	flw f15, 296(a0)
	fadd.s f12, f13, f14
	flw f14, 300(a0)
	flw f13, 304(a0)
	fadd.s f11, f12, f15
	flw f15, 308(a0)
	fadd.s f10, f11, f14
	flw f14, 312(a0)
	fadd.s f12, f10, f13
	flw f13, 316(a0)
	fadd.s f11, f12, f15
	fadd.s f10, f11, f14
	flw f14, 320(a0)
	fadd.s f12, f10, f13
	flw f13, 324(a0)
	fadd.s f11, f12, f14
	flw f14, 328(a0)
	fadd.s f10, f11, f13
	flw f13, 332(a0)
	fadd.s f12, f10, f14
	flw f14, 336(a0)
	fadd.s f11, f12, f13
	flw f13, 340(a0)
	fadd.s f10, f11, f14
	flw f14, 344(a0)
	fadd.s f12, f10, f13
	flw f13, 348(a0)
	fadd.s f11, f12, f14
	flw f12, 352(a0)
	fadd.s f10, f11, f13
	flw f11, 356(a0)
	fadd.s f14, f10, f12
	flw f10, 360(a0)
	fadd.s f13, f14, f11
	flw f14, 364(a0)
	fadd.s f12, f13, f10
	flw f13, 368(a0)
	fadd.s f11, f12, f14
	flw f14, 372(a0)
	fadd.s f10, f11, f13
	flw f13, 376(a0)
	flw f15, 380(a0)
	fadd.s f12, f10, f14
	flw f14, 384(a0)
	flw f0, 388(a0)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f15
	flw f15, 392(a0)
	fadd.s f13, f10, f14
	flw f14, 396(a0)
	fadd.s f12, f13, f0
	flw f13, 400(a0)
	fadd.s f11, f12, f15
	fadd.s f10, f11, f14
	flw f14, 404(a0)
	fadd.s f12, f10, f13
	flw f13, 408(a0)
	fadd.s f11, f12, f14
	flw f12, 412(a0)
	fadd.s f10, f11, f13
	fadd.s f8, f10, f12
	bge a1, s0, label629
	add s3, s3, s1
	fmv.s f10, f8
	mv a2, zero
	mv a0, s3
	j label624
.p2align 2
cmmc_parallel_body_0:
	mv a2, a1
pcrel364:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	mv t1, a0
pcrel365:
	auipc a1, %pcrel_hi(a)
	ld a5, %pcrel_lo(pcrel364)(a4)
	addi a4, a1, %pcrel_lo(pcrel365)
	sh2add a3, a0, a5
	li a1, 960
	li a0, 125
	lui a5, 280480
	slli t0, a0, 5
	mul t2, t1, t0
	fmv.w.x f10, zero
	add a0, a4, t2
	mv t2, zero
	j label5
.p2align 2
label10:
	flw f11, 256(a0)
	addiw t1, t1, 1
	flw f15, 260(a0)
	fadd.s f13, f10, f11
	flw f14, 264(a0)
	fadd.s f12, f13, f15
	flw f15, 268(a0)
	flw f13, 272(a0)
	fadd.s f11, f12, f14
	flw f14, 276(a0)
	fadd.s f10, f11, f15
	fadd.s f12, f10, f13
	flw f13, 280(a0)
	fadd.s f11, f12, f14
	flw f14, 284(a0)
	fadd.s f10, f11, f13
	flw f13, 288(a0)
	fadd.s f12, f10, f14
	flw f14, 292(a0)
	fadd.s f11, f12, f13
	flw f13, 296(a0)
	fadd.s f10, f11, f14
	flw f14, 300(a0)
	fadd.s f12, f10, f13
	flw f13, 304(a0)
	fadd.s f11, f12, f14
	flw f14, 308(a0)
	flw f15, 312(a0)
	fadd.s f10, f11, f13
	fadd.s f12, f10, f14
	flw f14, 316(a0)
	fadd.s f13, f12, f15
	flw f15, 320(a0)
	fadd.s f11, f13, f14
	flw f13, 324(a0)
	flw f14, 328(a0)
	fadd.s f10, f11, f15
	fadd.s f12, f10, f13
	flw f13, 332(a0)
	flw f15, 336(a0)
	fadd.s f11, f12, f14
	flw f14, 340(a0)
	fadd.s f10, f11, f13
	flw f13, 344(a0)
	fadd.s f12, f10, f15
	fadd.s f11, f12, f14
	flw f14, 348(a0)
	flw f15, 352(a0)
	fadd.s f10, f11, f13
	flw f13, 356(a0)
	fadd.s f12, f10, f14
	fadd.s f11, f12, f15
	flw f12, 360(a0)
	fadd.s f10, f11, f13
	flw f11, 364(a0)
	fadd.s f14, f10, f12
	flw f10, 368(a0)
	fadd.s f13, f14, f11
	flw f14, 372(a0)
	flw f15, 376(a0)
	fadd.s f12, f13, f10
	flw f13, 380(a0)
	fadd.s f11, f12, f14
	flw f14, 384(a0)
	fadd.s f10, f11, f15
	flw f15, 388(a0)
	fadd.s f12, f10, f13
	fadd.s f11, f12, f14
	flw f14, 392(a0)
	fadd.s f10, f11, f15
	flw f15, 396(a0)
	fadd.s f13, f10, f14
	flw f14, 400(a0)
	fadd.s f12, f13, f15
	flw f13, 404(a0)
	fadd.s f11, f12, f14
	flw f14, 408(a0)
	fadd.s f10, f11, f13
	flw f13, 412(a0)
	fadd.s f12, f10, f14
	fmv.w.x f14, a5
	fadd.s f11, f12, f13
	fdiv.s f10, f11, f14
	fsw f10, 0(a3)
	ble a2, t1, label12
	addi a3, a3, 4
	mul t2, t1, t0
	fmv.w.x f10, zero
	add a0, a4, t2
	mv t2, zero
.p2align 2
label5:
	flw f13, 0(a0)
	addiw t2, t2, 64
	flw f15, 4(a0)
	fadd.s f12, f10, f13
	flw f14, 8(a0)
	fadd.s f11, f12, f15
	flw f15, 12(a0)
	fadd.s f13, f11, f14
	flw f14, 16(a0)
	fadd.s f10, f13, f15
	flw f15, 20(a0)
	flw f13, 24(a0)
	fadd.s f12, f10, f14
	flw f14, 28(a0)
	fadd.s f11, f12, f15
	fadd.s f10, f11, f13
	flw f11, 32(a0)
	fadd.s f12, f10, f14
	flw f14, 36(a0)
	flw f0, 40(a0)
	flw f15, 44(a0)
	fadd.s f13, f12, f11
	fadd.s f10, f13, f14
	flw f14, 48(a0)
	fadd.s f11, f10, f0
	fadd.s f12, f11, f15
	flw f15, 52(a0)
	flw f11, 56(a0)
	fadd.s f13, f12, f14
	flw f14, 60(a0)
	fadd.s f10, f13, f15
	fadd.s f12, f10, f11
	flw f10, 64(a0)
	flw f15, 68(a0)
	fadd.s f13, f12, f14
	flw f14, 72(a0)
	fadd.s f11, f13, f10
	flw f13, 76(a0)
	fadd.s f12, f11, f15
	fadd.s f10, f12, f14
	flw f14, 80(a0)
	fadd.s f11, f10, f13
	flw f10, 84(a0)
	fadd.s f12, f11, f14
	flw f14, 88(a0)
	fadd.s f13, f12, f10
	flw f12, 92(a0)
	flw f15, 96(a0)
	fadd.s f11, f13, f14
	flw f14, 100(a0)
	fadd.s f10, f11, f12
	fadd.s f13, f10, f15
	flw f10, 104(a0)
	fadd.s f11, f13, f14
	flw f13, 108(a0)
	fadd.s f12, f11, f10
	flw f11, 112(a0)
	fadd.s f14, f12, f13
	flw f12, 116(a0)
	fadd.s f10, f14, f11
	flw f14, 120(a0)
	flw f15, 124(a0)
	fadd.s f13, f10, f12
	fadd.s f11, f13, f14
	flw f13, 128(a0)
	flw f14, 132(a0)
	fadd.s f12, f11, f15
	fadd.s f10, f12, f13
	flw f12, 136(a0)
	fadd.s f11, f10, f14
	flw f14, 140(a0)
	fadd.s f13, f11, f12
	flw f11, 144(a0)
	fadd.s f10, f13, f14
	flw f14, 148(a0)
	flw f15, 152(a0)
	fadd.s f12, f10, f11
	fadd.s f13, f12, f14
	flw f14, 156(a0)
	fadd.s f11, f13, f15
	flw f13, 160(a0)
	flw f15, 164(a0)
	fadd.s f10, f11, f14
	flw f14, 168(a0)
	fadd.s f12, f10, f13
	fadd.s f11, f12, f15
	flw f12, 172(a0)
	flw f15, 176(a0)
	fadd.s f13, f11, f14
	flw f14, 180(a0)
	fadd.s f10, f13, f12
	fadd.s f11, f10, f15
	flw f10, 184(a0)
	fadd.s f12, f11, f14
	flw f14, 188(a0)
	flw f15, 192(a0)
	fadd.s f13, f12, f10
	fadd.s f11, f13, f14
	flw f13, 196(a0)
	flw f14, 200(a0)
	fadd.s f10, f11, f15
	flw f15, 204(a0)
	fadd.s f12, f10, f13
	flw f13, 208(a0)
	fadd.s f11, f12, f14
	flw f14, 212(a0)
	fadd.s f10, f11, f15
	fadd.s f12, f10, f13
	flw f13, 216(a0)
	fadd.s f11, f12, f14
	flw f14, 220(a0)
	fadd.s f10, f11, f13
	flw f13, 224(a0)
	flw f15, 228(a0)
	fadd.s f12, f10, f14
	flw f14, 232(a0)
	fadd.s f11, f12, f13
	fadd.s f10, f11, f15
	flw f11, 236(a0)
	fadd.s f13, f10, f14
	flw f14, 240(a0)
	flw f15, 244(a0)
	fadd.s f12, f13, f11
	flw f13, 248(a0)
	fadd.s f10, f12, f14
	flw f14, 252(a0)
	fadd.s f11, f10, f15
	fadd.s f12, f11, f13
	fadd.s f10, f12, f14
	bge t2, a1, label10
	addi a0, a0, 256
	j label5
label12:
	ret
.p2align 2
cmmc_parallel_body_1:
	mv a3, a1
pcrel595:
	auipc t0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel596:
	auipc t1, %pcrel_hi(a)
	mv t3, a0
	li t4, 125
	addi a2, t0, %pcrel_lo(pcrel595)
	ld a5, %pcrel_lo(pcrel595)(t0)
	slli t2, t4, 5
	addi t0, t1, %pcrel_lo(pcrel596)
	ld a1, 8(a2)
	lui t1, 280480
pcrel597:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	sh2add a4, a0, a1
	lui a1, 258048
	addi a0, a2, %pcrel_lo(pcrel597)
	li a2, 992
	mul t5, t3, t2
	flw f10, 0(a4)
	fmv.w.x f11, zero
	add t4, t0, t5
	mv t5, zero
	j label370
.p2align 2
label385:
	addi t4, t4, 64
.p2align 2
label370:
	flw f14, 0(t4)
	addiw t5, t5, 16
	fsub.s f13, f14, f10
	flw f14, 4(t4)
	fmul.s f15, f13, f13
	fsub.s f13, f14, f10
	flw f14, 8(t4)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f10
	flw f14, 12(t4)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f10
	flw f14, 16(t4)
	fadd.s f12, f11, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f10
	flw f14, 20(t4)
	fadd.s f11, f12, f15
	fmul.s f15, f13, f13
	fsub.s f13, f14, f10
	fadd.s f12, f11, f15
	fmul.s f0, f13, f13
	flw f15, 24(t4)
	fsub.s f14, f15, f10
	flw f15, 28(t4)
	fadd.s f11, f12, f0
	fmul.s f12, f14, f14
	fsub.s f14, f15, f10
	flw f15, 32(t4)
	fadd.s f13, f11, f12
	fmul.s f11, f14, f14
	fsub.s f14, f15, f10
	flw f15, 36(t4)
	fadd.s f12, f13, f11
	fmul.s f0, f14, f14
	fsub.s f13, f15, f10
	flw f15, 40(t4)
	fsub.s f14, f15, f10
	fadd.s f11, f12, f0
	flw f15, 44(t4)
	fmul.s f0, f13, f13
	fadd.s f12, f11, f0
	fmul.s f11, f14, f14
	fsub.s f14, f15, f10
	flw f15, 48(t4)
	fadd.s f13, f12, f11
	fmul.s f12, f14, f14
	fsub.s f14, f15, f10
	flw f15, 52(t4)
	fadd.s f11, f13, f12
	fmul.s f0, f14, f14
	fsub.s f13, f15, f10
	flw f15, 56(t4)
	fadd.s f12, f11, f0
	fmul.s f14, f13, f13
	fsub.s f13, f15, f10
	flw f15, 60(t4)
	fadd.s f11, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f10
	fadd.s f12, f11, f14
	fmul.s f14, f13, f13
	fadd.s f11, f12, f14
	blt t5, a2, label385
	flw f14, 64(t4)
	flw f15, 68(t4)
	fsub.s f13, f14, f10
	fsub.s f14, f15, f10
	flw f15, 72(t4)
	fmul.s f0, f13, f13
	fadd.s f12, f11, f0
	fmul.s f11, f14, f14
	fsub.s f14, f15, f10
	flw f15, 76(t4)
	fadd.s f13, f12, f11
	fmul.s f12, f14, f14
	fsub.s f14, f15, f10
	flw f15, 80(t4)
	fadd.s f11, f13, f12
	fmul.s f0, f14, f14
	fsub.s f13, f15, f10
	flw f15, 84(t4)
	fadd.s f12, f11, f0
	fmul.s f14, f13, f13
	fsub.s f13, f15, f10
	flw f15, 88(t4)
	fadd.s f11, f12, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f10
	flw f15, 92(t4)
	fadd.s f12, f11, f14
	fmul.s f14, f13, f13
	fsub.s f13, f15, f10
	flw f15, 0(a0)
	fadd.s f11, f12, f14
	fmul.s f0, f13, f13
	fmv.w.x f14, t1
	fadd.s f12, f11, f0
	fdiv.s f13, f12, f14
	fmv.w.x f14, a1
	fadd.s f10, f13, f15
	fmv.w.x f13, zero
	fmv.s f12, f10
	fmul.s f11, f10, f14
	fmul.s f14, f11, f11
	flw f1, 4(a0)
	fsub.s f0, f14, f10
	fabs.s f15, f0
	flt.s t4, f1, f15
	bne t4, zero, label379
	sh2add t4, t3, a5
	addiw t3, t3, 1
	fsw f11, 0(t4)
	bgt a3, t3, label383
	j label384
.p2align 2
label380:
	fadd.s f15, f11, f13
	fmv.s f12, f11
	flw f1, 4(a0)
	fmv.w.x f0, a1
	fmul.s f14, f15, f0
	fmv.s f11, f14
	fmul.s f14, f14, f14
	fsub.s f0, f14, f10
	fabs.s f15, f0
	flt.s t4, f1, f15
	beq t4, zero, label588
.p2align 2
label379:
	flt.s t4, f10, f14
	bne t4, zero, label380
	fadd.s f15, f11, f12
	fmv.s f13, f11
	flw f1, 4(a0)
	fmv.w.x f0, a1
	fmul.s f14, f15, f0
	fmv.s f11, f14
	fmul.s f14, f14, f14
	fsub.s f0, f14, f10
	fabs.s f15, f0
	flt.s t4, f1, f15
	bne t4, zero, label379
	sh2add t4, t3, a5
	addiw t3, t3, 1
	fsw f11, 0(t4)
	bgt a3, t3, label383
	j label384
.p2align 2
label588:
	sh2add t4, t3, a5
	addiw t3, t3, 1
	fsw f11, 0(t4)
	ble a3, t3, label384
.p2align 2
label383:
	addi a4, a4, 4
	mul t5, t3, t2
	fmv.w.x f11, zero
	flw f10, 0(a4)
	add t4, t0, t5
	mv t5, zero
	j label370
label384:
	ret
