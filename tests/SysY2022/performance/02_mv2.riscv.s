.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
A:
	.zero	16160400
.p2align 3
B:
	.zero	8040
.p2align 3
C:
	.zero	8040
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_1:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	4
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[8] CalleeSaved[104]
	addi sp, sp, -112
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s8, 64(sp)
	sd s4, 72(sp)
	sd s7, 80(sp)
	sd s9, 88(sp)
	sd s10, 96(sp)
	jal getint
pcrel522:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel523:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_0)
	mv s11, a0
pcrel524:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
pcrel525:
	auipc a2, %pcrel_hi(cmmc_parallel_body_3)
	li s4, 50
	sd a0, 104(sp)
	addi s0, a1, %pcrel_lo(pcrel524)
	addi s3, a2, %pcrel_lo(pcrel525)
pcrel526:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
pcrel527:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	addi s1, a0, %pcrel_lo(pcrel526)
	addi s2, a1, %pcrel_lo(pcrel527)
	li a0, 1005
	slli s8, a0, 3
	ble s11, zero, label391
pcrel528:
	auipc a0, %pcrel_hi(A)
	mv s9, zero
	addi s7, a0, %pcrel_lo(pcrel528)
	mv s10, s7
	mv s11, zero
	j label407
.p2align 2
label461:
	addiw s9, s9, 1
	ld s11, 104(sp)
	ble s11, s9, label391
	add s7, s7, s8
	mv s11, zero
	mv s10, s7
.p2align 2
label407:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld s11, 104(sp)
	ble s11, a1, label461
	addi s10, s10, 4
	mv s11, a1
	j label407
label391:
	ld s11, 104(sp)
	ble s11, zero, label392
pcrel529:
	auipc a1, %pcrel_hi(B)
	mv s8, zero
	addi s7, a1, %pcrel_lo(pcrel529)
.p2align 2
label399:
	jal getint
	addiw a1, s8, 1
	sw a0, 0(s7)
	ld s11, 104(sp)
	ble s11, a1, label392
	addi s7, s7, 4
	mv s8, a1
	j label399
label392:
	li a0, 59
	jal _sysy_starttime
	mv s8, zero
pcrel530:
	auipc a1, %pcrel_hi(C)
	addi s7, a1, %pcrel_lo(pcrel530)
.p2align 2
label393:
	ld s11, 104(sp)
	ble s11, zero, label396
	mv a0, zero
pcrel531:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s11, %pcrel_lo(pcrel531)(s5)
	mv a1, s11
	mv a2, s0
	jal cmmcParallelFor
	mv a0, zero
pcrel532:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s11, %pcrel_lo(pcrel532)(s6)
	mv a1, s11
	mv a2, s1
	jal cmmcParallelFor
	mv a0, zero
pcrel533:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw s11, %pcrel_lo(pcrel533)(a3)
	mv a1, s11
	mv a2, s2
	jal cmmcParallelFor
	mv a0, zero
pcrel534:
	auipc a3, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s11, %pcrel_lo(pcrel534)(a3)
	mv a1, s11
	mv a2, s3
	jal cmmcParallelFor
.p2align 2
label396:
	addiw s8, s8, 1
	blt s8, s4, label393
	li a0, 67
	jal _sysy_stoptime
	ld s11, 104(sp)
	mv a0, s11
	mv a1, s7
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s11, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s8, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 112
	ret
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel118:
	auipc a0, %pcrel_hi(C)
	addi a3, a0, %pcrel_lo(pcrel118)
	ble a1, a4, label16
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label37
	sh2add a0, a2, a3
	j label12
.p2align 2
label15:
	addi a0, a0, 64
.p2align 2
label12:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label15
	mv a0, a2
label3:
	ble a4, a0, label16
	sh2add a5, a0, a3
	mv a2, a0
	j label7
label10:
	addi a5, a5, 16
label7:
	addiw a2, a2, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	bgt a4, a2, label10
label16:
	ble a1, a2, label23
	sh2add a0, a2, a3
	j label19
label22:
	addi a0, a0, 4
label19:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label22
label23:
	ret
label37:
	mv a0, a2
	mv a2, zero
	j label3
.p2align 2
cmmc_parallel_body_1:
	mv a3, a0
	mv a5, a1
pcrel191:
	auipc a4, %pcrel_hi(A)
pcrel192:
	auipc t1, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel193:
	auipc t2, %pcrel_hi(B)
	li a0, 1005
	addi a2, a4, %pcrel_lo(pcrel191)
	slli t0, a0, 3
	lw a0, %pcrel_lo(pcrel192)(t1)
	mulw a1, a3, t0
pcrel194:
	auipc t1, %pcrel_hi(C)
	add a4, a2, a1
	addi a2, t1, %pcrel_lo(pcrel194)
	addi a1, t2, %pcrel_lo(pcrel193)
	mv t1, a4
	mv t2, zero
	lw t3, 0(a4)
	beq t3, zero, label126
	sh2add t6, a3, a2
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
.p2align 2
label126:
	addiw t2, t2, 1
	ble a0, t2, label153
.p2align 2
label127:
	addi t1, t1, 4
	lw t3, 0(t1)
	beq t3, zero, label126
	sh2add a6, t2, a1
	sh2add t6, a3, a2
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label127
	j label184
.p2align 2
label153:
	addiw a3, a3, 1
	ble a5, a3, label130
.p2align 2
label129:
	add a4, a4, t0
	mv t2, zero
	lw t3, 0(a4)
	mv t1, a4
	beq t3, zero, label126
	sh2add t6, a3, a2
	li t2, 1
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label127
	j label153
label130:
	ret
.p2align 2
label184:
	addiw a3, a3, 1
	bgt a5, a3, label129
	j label130
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel313:
	auipc a0, %pcrel_hi(B)
	addi a3, a0, %pcrel_lo(pcrel313)
	ble a1, a4, label210
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label231
	sh2add a0, a2, a3
	j label198
.p2align 2
label201:
	addi a0, a0, 64
.p2align 2
label198:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label201
	mv a0, a2
label202:
	ble a4, a0, label210
	sh2add a5, a0, a3
	mv a2, a0
label206:
	addiw a2, a2, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	ble a4, a2, label210
	addi a5, a5, 16
	j label206
label210:
	ble a1, a2, label217
	sh2add a0, a2, a3
	j label213
label216:
	addi a0, a0, 4
label213:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label216
label217:
	ret
label231:
	mv a0, a2
	mv a2, zero
	j label202
.p2align 2
cmmc_parallel_body_3:
	mv a3, a0
	mv a5, a1
pcrel386:
	auipc a4, %pcrel_hi(A)
pcrel387:
	auipc t1, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel388:
	auipc t2, %pcrel_hi(C)
	li a0, 1005
	addi a2, a4, %pcrel_lo(pcrel386)
	slli t0, a0, 3
	lw a0, %pcrel_lo(pcrel387)(t1)
	mulw a1, a3, t0
pcrel389:
	auipc t1, %pcrel_hi(B)
	add a4, a2, a1
	addi a2, t1, %pcrel_lo(pcrel389)
	addi a1, t2, %pcrel_lo(pcrel388)
	mv t1, a4
	mv t2, zero
	lw t3, 0(a4)
	beq t3, zero, label321
	sh2add t6, a3, a2
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
.p2align 2
label321:
	addiw t2, t2, 1
	ble a0, t2, label348
.p2align 2
label322:
	addi t1, t1, 4
	lw t3, 0(t1)
	beq t3, zero, label321
	sh2add a6, t2, a1
	sh2add t6, a3, a2
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label322
	j label379
.p2align 2
label348:
	addiw a3, a3, 1
	ble a5, a3, label325
.p2align 2
label324:
	add a4, a4, t0
	mv t2, zero
	lw t3, 0(a4)
	mv t1, a4
	beq t3, zero, label321
	sh2add t6, a3, a2
	li t2, 1
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label322
	j label348
label325:
	ret
.p2align 2
label379:
	addiw a3, a3, 1
	bgt a5, a3, label324
	j label325
