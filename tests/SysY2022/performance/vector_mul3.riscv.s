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
cmmc_parallel_body_payload_1:
	.zero	32
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	32
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	32
.p2align 3
cmmc_parallel_body_payload_4:
	.zero	24
.p2align 3
cmmc_parallel_body_payload_5:
	.zero	16
.p2align 3
cmmc_parallel_body_payload_6:
	.zero	32
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
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[112]
	addi sp, sp, -136
	li a0, 62
	sd ra, 0(sp)
	fsw f8, 8(sp)
	sd s10, 16(sp)
	sd s9, 24(sp)
	sd s3, 32(sp)
	sd s8, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s1, 64(sp)
	sd s6, 72(sp)
	sd s0, 80(sp)
	sd s5, 88(sp)
	sd s4, 96(sp)
	sd s11, 104(sp)
	fsw f9, 112(sp)
	jal _sysy_starttime
	lui a3, 24
pcrel445:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel446:
	auipc a1, %pcrel_hi(vectorA)
	addi a2, a1, %pcrel_lo(pcrel446)
pcrel447:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
	sd a2, 128(sp)
	sd a2, %pcrel_lo(pcrel445)(a0)
	mv a0, zero
	addi a2, a1, %pcrel_lo(pcrel447)
	addiw a1, a3, 1696
	jal cmmcParallelFor
pcrel448:
	auipc a1, %pcrel_hi(vectorB)
	mv s9, zero
pcrel449:
	auipc a0, %pcrel_hi(Vectortm)
pcrel450:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel451:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel452:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel453:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_6)
	addi s11, a1, %pcrel_lo(pcrel448)
	addi s4, a0, %pcrel_lo(pcrel449)
	addi s0, s5, %pcrel_lo(pcrel450)
	addi s1, s6, %pcrel_lo(pcrel451)
	addi s2, s7, %pcrel_lo(pcrel452)
	addi s3, s8, %pcrel_lo(pcrel453)
	sd s11, 120(sp)
	j label110
.p2align 2
label417:
	addiw s9, s9, 1
	li a0, 1000
	bge s9, a0, label145
.p2align 2
label110:
	fmv.w.x f10, zero
	mv a1, zero
	mv a0, zero
	li s10, 1
	lui a3, 24
	addiw a2, a3, 1696
	blt zero, a2, label116
	lui a1, 24
	addiw a2, a1, 1696
	blt s10, a2, label188
	mv a1, zero
	addiw a2, a3, 1696
	blt zero, a2, label124
	j label410
.p2align 2
label411:
	lui a1, 24
	addiw a2, a1, 1696
	bge s10, a2, label421
.p2align 2
label188:
	mv a1, s10
	lui a3, 24
	addiw s10, s10, 1
	addiw a2, a3, 1696
	bge a0, a2, label411
.p2align 2
label116:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_1)
	fsw f10, %pcrel_lo(label116)(s5)
	slli a4, s10, 32
pcrel454:
	auipc a5, %pcrel_hi(cmmc_parallel_body_1)
	add.uw a3, a1, a4
	sw a0, 4(s0)
	fsw f10, 8(s0)
	ld a2, 128(sp)
	sd a2, 16(s0)
	addi a2, a5, %pcrel_lo(pcrel454)
	sd a3, 24(s0)
	lui a3, 24
	addiw a1, a3, 1696
	jal cmmcParallelFor
	lui a1, 24
	flw f10, %pcrel_lo(label116)(s5)
	addiw a0, a1, 1696
	addiw a2, a1, 1696
	blt s10, a2, label188
	fmv.w.x f10, zero
	mv a1, zero
	mv a0, zero
	li s10, 1
	lui a3, 24
	addiw a2, a3, 1696
	bge zero, a2, label410
.p2align 2
label124:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_2)
	fsw f10, %pcrel_lo(label124)(s6)
	slli a2, s10, 32
pcrel455:
	auipc a4, %pcrel_hi(cmmc_parallel_body_2)
	add.uw a3, a1, a2
	sw a0, 4(s1)
	addi a2, a4, %pcrel_lo(pcrel455)
	fsw f10, 8(s1)
	sd s4, 16(s1)
	sd a3, 24(s1)
	lui a3, 24
	addiw a1, a3, 1696
	jal cmmcParallelFor
	lui a1, 24
	flw f10, %pcrel_lo(label124)(s6)
	addiw a0, a1, 1696
	addiw a2, a1, 1696
	bge s10, a2, label205
.p2align 2
label206:
	mv a1, s10
	lui a3, 24
	addiw s10, s10, 1
	addiw a2, a3, 1696
	blt a0, a2, label124
	lui a1, 24
	addiw a2, a1, 1696
	blt s10, a2, label206
	fmv.w.x f10, zero
	mv a1, zero
	mv a0, zero
	li s10, 1
	addiw a2, a3, 1696
	blt zero, a2, label153
	j label413
.p2align 2
label415:
	lui a1, 24
	addiw a2, a1, 1696
	bge s10, a2, label426
.p2align 2
label216:
	mv a1, s10
	lui a3, 24
	addiw s10, s10, 1
	addiw a2, a3, 1696
	bge a0, a2, label415
.p2align 2
label153:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_3)
	fsw f10, %pcrel_lo(label153)(s7)
	slli a2, s10, 32
pcrel456:
	auipc a4, %pcrel_hi(cmmc_parallel_body_3)
	add.uw a3, a1, a2
	sw a0, 4(s2)
	addi a2, a4, %pcrel_lo(pcrel456)
	fsw f10, 8(s2)
	ld s11, 120(sp)
	sd s11, 16(s2)
	sd a3, 24(s2)
	lui a3, 24
	addiw a1, a3, 1696
	jal cmmcParallelFor
	lui a1, 24
	flw f10, %pcrel_lo(label153)(s7)
	addiw a2, a1, 1696
	addiw a0, a1, 1696
	blt s10, a2, label216
	fmv.w.x f10, zero
	ld a2, 128(sp)
	mv a1, zero
	mv a0, zero
	li s11, 1
	lui a3, 24
	mv s10, a2
	addiw a2, a3, 1696
	bge zero, a2, label429
.p2align 2
label152:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_6)
	fsw f10, %pcrel_lo(label152)(s8)
	slli a2, s11, 32
pcrel457:
	auipc a4, %pcrel_hi(cmmc_parallel_body_6)
	add.uw a3, a1, a2
	sw a0, 4(s3)
	addi a2, a4, %pcrel_lo(pcrel457)
	fsw f10, 8(s3)
	sd s4, 16(s3)
	sd a3, 24(s3)
	lui a3, 24
	addiw a1, a3, 1696
	jal cmmcParallelFor
	lui a2, 24
	lui a1, 24
	flw f10, %pcrel_lo(label152)(s8)
	addiw a0, a1, 1696
	addiw a1, a2, 1696
	fsw f10, 0(s10)
	bge s11, a1, label417
.p2align 2
label151:
	addi s10, s10, 4
	mv a1, s11
	lui a3, 24
	addiw s11, s11, 1
	addiw a2, a3, 1696
	blt a0, a2, label152
	fsw f10, 0(s10)
	lui a2, 24
	addiw a1, a2, 1696
	blt s11, a1, label151
	addiw s9, s9, 1
	li a0, 1000
	blt s9, a0, label110
	j label145
.p2align 2
label205:
	fmv.w.x f10, zero
	mv a1, zero
	mv a0, zero
	li s10, 1
	lui a3, 24
	addiw a2, a3, 1696
	blt zero, a2, label153
.p2align 2
label413:
	lui a1, 24
	addiw a2, a1, 1696
	blt s10, a2, label216
	fmv.w.x f10, zero
	ld a2, 128(sp)
	mv a1, zero
	mv a0, zero
	li s11, 1
	lui a3, 24
	mv s10, a2
	addiw a2, a3, 1696
	blt zero, a2, label152
	j label141
label145:
	auipc s0, %pcrel_hi(cmmc_parallel_body_payload_4)
	li a0, 76
	addi s1, s0, %pcrel_lo(label145)
	jal _sysy_stoptime
	fmv.w.x f8, zero
	mv a0, zero
pcrel458:
	auipc a1, %pcrel_hi(cmmc_parallel_body_4)
	lui a3, 24
	fsw f8, %pcrel_lo(label145)(s0)
	ld a2, 128(sp)
	sd a2, 8(s1)
	addi a2, a1, %pcrel_lo(pcrel458)
	ld s11, 120(sp)
	addiw a1, a3, 1696
	sd s11, 16(s1)
	jal cmmcParallelFor
pcrel459:
	auipc a1, %pcrel_hi(cmmc_parallel_body_5)
	lui a3, 24
pcrel460:
	auipc s1, %pcrel_hi(cmmc_parallel_body_payload_5)
	addi a2, a1, %pcrel_lo(pcrel459)
	flw f9, %pcrel_lo(label145)(s0)
	addi a0, s1, %pcrel_lo(pcrel460)
	addiw a1, a3, 1696
	fsw f8, %pcrel_lo(pcrel460)(s1)
	sd s11, 8(a0)
	mv a0, zero
	jal cmmcParallelFor
pcrel461:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	lui a0, 260096
	flw f11, %pcrel_lo(pcrel460)(s1)
	fmv.w.x f12, a0
	addi a0, a2, %pcrel_lo(pcrel461)
	fdiv.s f10, f9, f11
	flw f13, 0(a0)
	fsub.s f11, f12, f10
	flw f12, 4(a0)
	flt.s a1, f13, f11
	flt.s a2, f11, f12
	or a3, a1, a2
	beq a3, zero, label260
	lui a0, 260096
	fmv.s f12, f10
	fmv.w.x f11, a0
.p2align 2
label148:
	fadd.s f14, f11, f12
	lui a0, 258048
pcrel462:
	auipc a2, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f15, a0
	addi a0, a2, %pcrel_lo(pcrel462)
	fmul.s f11, f14, f15
	flw f15, 0(a0)
	flw f14, 4(a0)
	fdiv.s f12, f10, f11
	fsub.s f13, f11, f12
	flt.s a2, f13, f14
	flt.s a1, f15, f13
	or a3, a1, a2
	bne a3, zero, label148
label146:
	lui a0, 260096
pcrel463:
	auipc a3, %pcrel_hi(__cmmc_fp_constant_pool)
	fmv.w.x f12, a0
	addi a1, a3, %pcrel_lo(pcrel463)
	fsub.s f10, f11, f12
	flw f11, 0(a1)
	flw f12, 4(a1)
	fle.s a2, f10, f11
	fle.s a3, f12, f10
	and a0, a2, a3
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	flw f8, 8(sp)
	ld s10, 16(sp)
	ld s9, 24(sp)
	ld s3, 32(sp)
	ld s8, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s1, 64(sp)
	ld s6, 72(sp)
	ld s0, 80(sp)
	ld s5, 88(sp)
	ld s4, 96(sp)
	ld s11, 104(sp)
	flw f9, 112(sp)
	addi sp, sp, 136
	ret
.p2align 2
label421:
	fmv.w.x f10, zero
	mv a1, zero
	mv a0, zero
	li s10, 1
	lui a3, 24
	addiw a2, a3, 1696
	blt zero, a2, label124
.p2align 2
label410:
	lui a1, 24
	addiw a2, a1, 1696
	blt s10, a2, label206
	fmv.w.x f10, zero
	mv a1, zero
	mv a0, zero
	li s10, 1
	lui a3, 24
	addiw a2, a3, 1696
	blt zero, a2, label153
	j label413
.p2align 2
label426:
	fmv.w.x f10, zero
	ld a2, 128(sp)
	mv a1, zero
	mv a0, zero
	li s11, 1
	lui a3, 24
	mv s10, a2
	addiw a2, a3, 1696
	blt zero, a2, label152
label141:
	fsw f10, 0(s10)
	lui a2, 24
	addiw a1, a2, 1696
	blt s11, a1, label151
	j label144
.p2align 2
label429:
	fsw f10, 0(s10)
	lui a2, 24
	addiw a1, a2, 1696
	blt s11, a1, label151
label144:
	addiw s9, s9, 1
	li a0, 1000
	blt s9, a0, label110
	j label145
label260:
	lui a0, 260096
	fmv.w.x f11, a0
	j label146
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
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -32
	mv t1, a0
	addiw a4, a0, 3
pcrel1332:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel1332)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	ld a5, 16(a0)
	ld t0, 24(a0)
	srai a2, t0, 32
	mv a3, t0
	ble a1, a4, label1218
	sh2add a4, t1, a5
	addiw t0, t0, 1
	addi t2, a2, 1
	addiw t3, a3, 2
	addi t4, a2, 2
	addiw t5, a3, 3
	addi t6, a2, 3
	addiw a6, a1, -3
	fmv.w.x f10, zero
	addw s0, a3, t1
	addw s2, a2, t1
	mulw s1, s0, s2
	mv a7, s1
	bge s1, zero, label1310
.p2align 2
label1309:
	addiw a7, a7, 1
.p2align 2
label1310:
	sraiw s1, a7, 1
	addw s2, t2, t1
	flw f13, 0(a4)
	addw s0, a2, s1
	fcvt.s.w f12, s0
	addw s0, t0, t1
	fdiv.s f14, f13, f12
	mulw s1, s0, s2
	mv a7, s1
	fadd.s f11, f10, f14
	bge s1, zero, label1312
	addiw a7, s1, 1
label1312:
	sraiw s1, a7, 1
	flw f13, 4(a4)
	addw s0, a2, s1
	addw s1, t4, t1
	fcvt.s.w f10, s0
	addw s0, t3, t1
	fdiv.s f14, f13, f10
	mulw s2, s0, s1
	mv a7, s2
	fadd.s f12, f11, f14
	bge s2, zero, label1314
	addiw a7, s2, 1
label1314:
	sraiw s1, a7, 1
	addw s2, t6, t1
	flw f14, 8(a4)
	addw s0, a2, s1
	fcvt.s.w f11, s0
	addw s0, t5, t1
	fdiv.s f13, f14, f11
	mulw s1, s0, s2
	mv a7, s1
	fadd.s f10, f12, f13
	bge s1, zero, label1316
	addiw a7, s1, 1
label1316:
	sraiw s1, a7, 1
	addiw t1, t1, 4
	flw f12, 12(a4)
	addw s0, a2, s1
	fcvt.s.w f11, s0
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	ble a6, t1, label1274
	addi a4, a4, 16
	addw s0, a3, t1
	addw s2, a2, t1
	mulw s1, s0, s2
	mv a7, s1
	bge s1, zero, label1310
	j label1309
label1274:
	fmv.s f11, f10
label1194:
	ble a1, t1, label1198
	sh2add a4, t1, a5
	fmv.s f10, f11
	mv a5, t1
	addw t1, a3, t1
	addw t3, a2, a5
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label1318
	addiw t0, t2, 1
label1318:
	sraiw t2, t0, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	addw t1, a2, t2
	fcvt.s.w f11, t1
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	ble a1, a5, label1198
label1205:
	addi a4, a4, 4
	addw t1, a3, a5
	addw t3, a2, a5
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label1318
	addiw t0, t2, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	sraiw t2, t0, 1
	addw t1, a2, t2
	fcvt.s.w f11, t1
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bgt a1, a5, label1205
label1198:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label1218:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label1194
.p2align 2
cmmc_parallel_body_2:
	addi sp, sp, -32
	mv a6, a0
	addiw a4, a0, 3
pcrel1186:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel1186)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	ld a5, 16(a0)
	ld t0, 24(a0)
	srai a3, t0, 32
	mv a2, t0
	ble a1, a4, label1069
	sh2add a4, a6, a5
	addiw t0, t0, 1
	addi t1, a3, 1
	addiw t2, a2, 2
	addi t3, a3, 2
	addiw t4, a2, 3
	addi t5, a3, 3
	addiw t6, a1, -3
	fmv.w.x f10, zero
	addw s0, a2, a6
	addw s1, a3, a6
	mulw s2, s0, s1
	mv a7, s2
	bge s2, zero, label1164
.p2align 2
label1163:
	addiw a7, a7, 1
.p2align 2
label1164:
	sraiw s0, a7, 1
	addiw s1, a6, 1
	flw f13, 0(a4)
	addw a7, s0, s1
	addw s1, t1, a6
	addw s0, t0, a6
	fcvt.s.w f12, a7
	mulw s2, s0, s1
	fdiv.s f14, f13, f12
	mv a7, s2
	fadd.s f11, f10, f14
	bge s2, zero, label1166
	addiw a7, s2, 1
label1166:
	sraiw s0, a7, 1
	addiw s1, a6, 2
	flw f14, 4(a4)
	addw s2, t3, a6
	addw a7, s0, s1
	addw s0, t2, a6
	fcvt.s.w f12, a7
	mulw s1, s0, s2
	fdiv.s f13, f14, f12
	mv a7, s1
	fadd.s f10, f11, f13
	bge s1, zero, label1168
	addiw a7, s1, 1
label1168:
	sraiw s0, a7, 1
	addiw s1, a6, 3
	flw f13, 8(a4)
	addw a7, s0, s1
	addw s1, t5, a6
	addw s0, t4, a6
	fcvt.s.w f12, a7
	mulw s2, s0, s1
	fdiv.s f14, f13, f12
	mv a7, s2
	fadd.s f11, f10, f14
	bge s2, zero, label1170
	addiw a7, s2, 1
label1170:
	sraiw s0, a7, 1
	addiw a6, a6, 4
	flw f14, 12(a4)
	addw a7, s0, a6
	fcvt.s.w f12, a7
	fdiv.s f13, f14, f12
	fadd.s f10, f11, f13
	ble t6, a6, label1128
	addi a4, a4, 16
	addw s0, a2, a6
	addw s1, a3, a6
	mulw s2, s0, s1
	mv a7, s2
	bge s2, zero, label1164
	j label1163
label1128:
	fmv.s f12, f10
label1045:
	ble a1, a6, label1055
	sh2add a4, a6, a5
	fmv.s f10, f12
	mv a5, a6
	addw t1, a2, a6
	addw t3, a3, a6
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label1172
	addiw t0, t2, 1
label1172:
	sraiw t1, t0, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	addw t2, t1, a5
	fcvt.s.w f11, t2
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	ble a1, a5, label1055
label1054:
	addi a4, a4, 4
	addw t1, a2, a5
	addw t3, a3, a5
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label1172
	addiw t0, t2, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	sraiw t1, t0, 1
	addw t2, t1, a5
	fcvt.s.w f11, t2
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bgt a1, a5, label1054
label1055:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label1069:
	fmv.w.x f10, zero
	fmv.s f12, f10
	j label1045
.p2align 2
cmmc_parallel_body_3:
	addi sp, sp, -32
	mv t1, a0
	addiw a4, a0, 3
pcrel1037:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_3)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel1037)
	sd s0, 8(sp)
	sd s2, 16(sp)
	sd s1, 24(sp)
	ld a5, 16(a0)
	ld t0, 24(a0)
	srai a2, t0, 32
	sext.w a3, t0
	ble a1, a4, label923
	sh2add a4, t1, a5
	addi t0, a3, 1
	addi t2, a2, 1
	addi t3, a3, 2
	addi t4, a2, 2
	addi t5, a3, 3
	addi t6, a2, 3
	addiw a6, a1, -3
	fmv.w.x f10, zero
	addw s0, a3, t1
	addw s2, a2, t1
	mulw s1, s0, s2
	mv a7, s1
	bge s1, zero, label1015
.p2align 2
label1014:
	addiw a7, a7, 1
.p2align 2
label1015:
	sraiw s1, a7, 1
	flw f14, 0(a4)
	addw s0, a2, s1
	addw s1, t2, t1
	fcvt.s.w f12, s0
	addw s0, t0, t1
	fdiv.s f13, f14, f12
	mulw s2, s0, s1
	mv a7, s2
	fadd.s f11, f10, f13
	bge s2, zero, label1017
	addiw a7, s2, 1
label1017:
	sraiw s0, a7, 1
	flw f13, 4(a4)
	addw s1, a2, s0
	addw s0, t3, t1
	fcvt.s.w f12, s1
	addw s1, t4, t1
	fdiv.s f14, f13, f12
	mulw s2, s0, s1
	mv a7, s2
	fadd.s f10, f11, f14
	bge s2, zero, label1019
	addiw a7, s2, 1
label1019:
	sraiw s1, a7, 1
	addw s2, t6, t1
	flw f13, 8(a4)
	addw s0, a2, s1
	fcvt.s.w f12, s0
	addw s0, t5, t1
	fdiv.s f14, f13, f12
	mulw s1, s0, s2
	mv a7, s1
	fadd.s f11, f10, f14
	bge s1, zero, label1021
	addiw a7, s1, 1
label1021:
	sraiw s1, a7, 1
	addiw t1, t1, 4
	flw f13, 12(a4)
	addw s0, a2, s1
	fcvt.s.w f12, s0
	fdiv.s f14, f13, f12
	fadd.s f10, f11, f14
	ble a6, t1, label979
	addi a4, a4, 16
	addw s0, a3, t1
	addw s2, a2, t1
	mulw s1, s0, s2
	mv a7, s1
	bge s1, zero, label1015
	j label1014
label979:
	fmv.s f11, f10
label899:
	ble a1, t1, label909
	sh2add a4, t1, a5
	fmv.s f10, f11
	mv a5, t1
	addw t1, a3, t1
	addw t3, a2, a5
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label1023
	addiw t0, t2, 1
label1023:
	sraiw t2, t0, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	addw t1, a2, t2
	fcvt.s.w f11, t1
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	ble a1, a5, label909
label908:
	addi a4, a4, 4
	addw t1, a3, a5
	addw t3, a2, a5
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label1023
	addiw t0, t2, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	sraiw t2, t0, 1
	addw t1, a2, t2
	fcvt.s.w f11, t1
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bgt a1, a5, label908
label909:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	addi sp, sp, 32
	ret
label923:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label899
.p2align 2
cmmc_parallel_body_4:
	addi sp, sp, -8
	mv t0, a0
	addiw a2, a0, 3
pcrel891:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_4)
	sd ra, 0(sp)
	addi a0, a5, %pcrel_lo(pcrel891)
	addiw a5, a1, -3
	ld a4, 8(a0)
	ld a3, 16(a0)
	ble a1, a2, label824
	sh2add a2, t0, a4
	fmv.w.x f10, zero
.p2align 2
label796:
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
	ble a5, t0, label858
	addi a2, a2, 16
	j label796
label858:
	fmv.s f11, f10
label801:
	ble a1, t0, label811
	sh2add a2, t0, a4
	fmv.s f10, f11
label806:
	sh2add a4, t0, a3
	flw f11, 0(a2)
	addiw t0, t0, 1
	flw f12, 0(a4)
	fmadd.s f10, f11, f12, f10
	ble a1, t0, label811
	addi a2, a2, 4
	j label806
label811:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label824:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label801
.p2align 2
cmmc_parallel_body_5:
	addi sp, sp, -8
	mv t0, a0
	addiw a2, a0, 3
pcrel793:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_5)
	sd ra, 0(sp)
	addi a0, a4, %pcrel_lo(pcrel793)
	ld a3, 8(a0)
	ble a1, a2, label655
	addiw a2, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a2, a4, label664
	sh2add a2, t0, a3
	fmv.w.x f10, zero
	j label630
.p2align 2
label634:
	addi a2, a2, 64
.p2align 2
label630:
	flw f13, 0(a2)
	addiw t0, t0, 16
	flw f14, 4(a2)
	fmadd.s f11, f13, f13, f10
	flw f15, 8(a2)
	flw f13, 12(a2)
	fmadd.s f12, f14, f14, f11
	flw f14, 16(a2)
	fmadd.s f10, f15, f15, f12
	fmadd.s f11, f13, f13, f10
	flw f10, 20(a2)
	fmadd.s f12, f14, f14, f11
	flw f14, 24(a2)
	fmadd.s f13, f10, f10, f12
	flw f12, 28(a2)
	fmadd.s f11, f14, f14, f13
	flw f13, 32(a2)
	fmadd.s f10, f12, f12, f11
	flw f11, 36(a2)
	fmadd.s f14, f13, f13, f10
	flw f10, 40(a2)
	flw f15, 44(a2)
	fmadd.s f12, f11, f11, f14
	flw f14, 48(a2)
	fmadd.s f13, f10, f10, f12
	fmadd.s f11, f15, f15, f13
	flw f13, 52(a2)
	fmadd.s f10, f14, f14, f11
	flw f14, 56(a2)
	fmadd.s f12, f13, f13, f10
	flw f13, 60(a2)
	fmadd.s f11, f14, f14, f12
	fmadd.s f10, f13, f13, f11
	bgt a5, t0, label634
	mv a5, t0
	fmv.s f11, f10
label615:
	ble a4, a5, label620
	sh2add a2, a5, a3
	fmv.s f10, f11
	j label624
label628:
	addi a2, a2, 16
label624:
	flw f11, 0(a2)
	addiw a5, a5, 4
	flw f15, 4(a2)
	fmadd.s f12, f11, f11, f10
	flw f14, 8(a2)
	fmadd.s f13, f15, f15, f12
	flw f12, 12(a2)
	fmadd.s f11, f14, f14, f13
	fmadd.s f10, f12, f12, f11
	bgt a4, a5, label628
	mv t0, a5
	fmv.s f11, f10
label635:
	ble a1, t0, label639
	sh2add a2, t0, a3
	fmv.s f10, f11
	j label642
label646:
	addi a2, a2, 4
label642:
	flw f12, 0(a2)
	addiw t0, t0, 1
	fmadd.s f10, f12, f12, f10
	bgt a1, t0, label646
label639:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	addi sp, sp, 8
	ret
label620:
	fmv.s f11, f10
	j label635
label664:
	fmv.w.x f10, zero
	mv a5, t0
	fmv.s f11, f10
	mv t0, zero
	j label615
label655:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label635
.p2align 2
cmmc_parallel_body_6:
	addi sp, sp, -32
	mv a6, a0
	addiw a4, a0, 3
pcrel612:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_6)
	sd ra, 0(sp)
	addi a0, a2, %pcrel_lo(pcrel612)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	ld a5, 16(a0)
	ld t0, 24(a0)
	srai a3, t0, 32
	sext.w a2, t0
	ble a1, a4, label495
	sh2add a4, a6, a5
	addi t0, a2, 1
	addi t1, a3, 1
	addi t2, a2, 2
	addi t3, a3, 2
	addi t4, a2, 3
	addi t5, a3, 3
	addiw t6, a1, -3
	fmv.w.x f10, zero
	addw s0, a2, a6
	addw s1, a3, a6
	mulw s2, s0, s1
	mv a7, s2
	bge s2, zero, label590
.p2align 2
label589:
	addiw a7, a7, 1
.p2align 2
label590:
	sraiw s0, a7, 1
	addiw s1, a6, 1
	flw f13, 0(a4)
	addw a7, s0, s1
	addw s1, t1, a6
	addw s0, t0, a6
	fcvt.s.w f12, a7
	mulw s2, s0, s1
	fdiv.s f14, f13, f12
	mv a7, s2
	fadd.s f11, f10, f14
	bge s2, zero, label592
	addiw a7, s2, 1
label592:
	sraiw s0, a7, 1
	addiw s1, a6, 2
	flw f14, 4(a4)
	addw s2, t3, a6
	addw a7, s0, s1
	addw s0, t2, a6
	fcvt.s.w f10, a7
	mulw s1, s0, s2
	fdiv.s f13, f14, f10
	mv a7, s1
	fadd.s f12, f11, f13
	bge s1, zero, label594
	addiw a7, s1, 1
label594:
	sraiw s0, a7, 1
	addiw s1, a6, 3
	flw f14, 8(a4)
	addw a7, s0, s1
	addw s1, t5, a6
	addw s0, t4, a6
	fcvt.s.w f11, a7
	mulw s2, s0, s1
	fdiv.s f13, f14, f11
	mv a7, s2
	fadd.s f10, f12, f13
	bge s2, zero, label596
	addiw a7, s2, 1
label596:
	sraiw s0, a7, 1
	addiw a6, a6, 4
	flw f13, 12(a4)
	addw a7, s0, a6
	fcvt.s.w f11, a7
	fdiv.s f12, f13, f11
	fadd.s f10, f10, f12
	ble t6, a6, label554
	addi a4, a4, 16
	addw s0, a2, a6
	addw s1, a3, a6
	mulw s2, s0, s1
	mv a7, s2
	bge s2, zero, label590
	j label589
label554:
	fmv.s f11, f10
label471:
	ble a1, a6, label475
	sh2add a4, a6, a5
	fmv.s f10, f11
	mv a5, a6
	addw t1, a2, a6
	addw t3, a3, a6
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label598
	addiw t0, t2, 1
label598:
	sraiw t1, t0, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	addw t2, t1, a5
	fcvt.s.w f11, t2
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	ble a1, a5, label475
label482:
	addi a4, a4, 4
	addw t1, a2, a5
	addw t3, a3, a5
	mulw t2, t1, t3
	mv t0, t2
	bge t2, zero, label598
	addiw t0, t2, 1
	addiw a5, a5, 1
	flw f12, 0(a4)
	sraiw t1, t0, 1
	addw t2, t1, a5
	fcvt.s.w f11, t2
	fdiv.s f13, f12, f11
	fadd.s f10, f10, f13
	bgt a1, a5, label482
label475:
	jal cmmcReduceAddF32
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
label495:
	fmv.w.x f10, zero
	fmv.s f11, f10
	j label471
