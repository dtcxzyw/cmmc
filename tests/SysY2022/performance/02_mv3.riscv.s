.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
A:
	.zero	16160400
.align 8
B:
	.zero	8040
.align 8
C:
	.zero	8040
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.align 8
cmmc_parallel_body_payload_2:
	.zero	4
.align 8
cmmc_parallel_body_payload_3:
	.zero	4
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[24] CalleeSaved[104]
	addi sp, sp, -128
	sd ra, 0(sp)
	sd s11, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s8, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s7, 80(sp)
	sd s9, 88(sp)
	sd s10, 96(sp)
	jal getint
pcrel524:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s2, 50
	mv s11, a0
pcrel525:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel526:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel527:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel528:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
pcrel529:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	sd a0, 104(sp)
	addi a2, a3, %pcrel_lo(pcrel528)
pcrel530:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	sd a2, 112(sp)
	addi s0, a0, %pcrel_lo(pcrel530)
	addi a2, a1, %pcrel_lo(pcrel529)
	li a0, 1005
pcrel531:
	auipc a1, %pcrel_hi(cmmc_parallel_body_3)
	slli s8, a0, 3
	sd a2, 120(sp)
	addi s1, a1, %pcrel_lo(pcrel531)
	ble s11, zero, label389
pcrel532:
	auipc a0, %pcrel_hi(A)
	mv s9, zero
	addi s7, a0, %pcrel_lo(pcrel532)
	mv s10, s7
	mv s11, zero
	j label405
.p2align 2
label459:
	addiw s9, s9, 1
	ld s11, 104(sp)
	ble s11, s9, label389
	add s7, s7, s8
	mv s11, zero
	mv s10, s7
.p2align 2
label405:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld s11, 104(sp)
	ble s11, a1, label459
	addi s10, s10, 4
	mv s11, a1
	j label405
label389:
	ld s11, 104(sp)
	ble s11, zero, label390
pcrel533:
	auipc a1, %pcrel_hi(B)
	mv s8, zero
	addi s7, a1, %pcrel_lo(pcrel533)
.p2align 2
label397:
	jal getint
	addiw a1, s8, 1
	sw a0, 0(s7)
	ld s11, 104(sp)
	ble s11, a1, label390
	addi s7, s7, 4
	mv s8, a1
	j label397
label390:
	li a0, 59
	jal _sysy_starttime
	mv s8, zero
pcrel534:
	auipc a1, %pcrel_hi(C)
	addi s7, a1, %pcrel_lo(pcrel534)
.p2align 2
label391:
	ld s11, 104(sp)
	ble s11, zero, label394
	mv a0, zero
pcrel535:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s11, %pcrel_lo(pcrel535)(s3)
	ld a2, 112(sp)
	mv a1, s11
	jal cmmcParallelFor
	mv a0, zero
pcrel536:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s11, %pcrel_lo(pcrel536)(s4)
	ld a2, 120(sp)
	mv a1, s11
	jal cmmcParallelFor
	mv a0, zero
pcrel537:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw s11, %pcrel_lo(pcrel537)(s5)
	mv a1, s11
	mv a2, s0
	jal cmmcParallelFor
	mv a0, zero
pcrel538:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s11, %pcrel_lo(pcrel538)(s6)
	mv a1, s11
	mv a2, s1
	jal cmmcParallelFor
.p2align 2
label394:
	addiw s8, s8, 1
	blt s8, s2, label391
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
	ld s8, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s7, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 128
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
pcrel190:
	auipc a4, %pcrel_hi(A)
pcrel191:
	auipc t1, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel192:
	auipc t2, %pcrel_hi(B)
	li a0, 1005
	addi a2, a4, %pcrel_lo(pcrel190)
	slli t0, a0, 3
	lw a0, %pcrel_lo(pcrel191)(t1)
	mulw a1, a3, t0
pcrel193:
	auipc t1, %pcrel_hi(C)
	add a4, a2, a1
	addi a2, t1, %pcrel_lo(pcrel193)
	addi a1, t2, %pcrel_lo(pcrel192)
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
	addiw a3, a3, 1
	bgt a5, a3, label129
	j label130
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
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel312:
	auipc a0, %pcrel_hi(B)
	addi a3, a0, %pcrel_lo(pcrel312)
	ble a1, a4, label209
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label230
	sh2add a0, a2, a3
	j label197
.p2align 2
label200:
	addi a0, a0, 64
.p2align 2
label197:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label200
	mv a0, a2
label201:
	ble a4, a0, label209
	sh2add a5, a0, a3
	mv a2, a0
label205:
	addiw a2, a2, 4
	sd zero, 0(a5)
	sd zero, 8(a5)
	ble a4, a2, label209
	addi a5, a5, 16
	j label205
label209:
	ble a1, a2, label216
	sh2add a0, a2, a3
	j label212
label215:
	addi a0, a0, 4
label212:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label215
label216:
	ret
label230:
	mv a0, a2
	mv a2, zero
	j label201
.p2align 2
cmmc_parallel_body_3:
	mv a3, a0
	mv a5, a1
pcrel384:
	auipc a4, %pcrel_hi(A)
pcrel385:
	auipc t1, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel386:
	auipc t2, %pcrel_hi(C)
	li a0, 1005
	addi a2, a4, %pcrel_lo(pcrel384)
	slli t0, a0, 3
	lw a0, %pcrel_lo(pcrel385)(t1)
	mulw a1, a3, t0
pcrel387:
	auipc t1, %pcrel_hi(B)
	add a4, a2, a1
	addi a2, t1, %pcrel_lo(pcrel387)
	addi a1, t2, %pcrel_lo(pcrel386)
	mv t1, a4
	mv t2, zero
	lw t3, 0(a4)
	beq t3, zero, label320
	sh2add t6, a3, a2
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
.p2align 2
label320:
	addiw t2, t2, 1
	ble a0, t2, label347
.p2align 2
label321:
	addi t1, t1, 4
	lw t3, 0(t1)
	beq t3, zero, label320
	sh2add a6, t2, a1
	sh2add t6, a3, a2
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label321
	addiw a3, a3, 1
	bgt a5, a3, label323
	j label324
.p2align 2
label347:
	addiw a3, a3, 1
	ble a5, a3, label324
.p2align 2
label323:
	add a4, a4, t0
	mv t2, zero
	lw t3, 0(a4)
	mv t1, a4
	beq t3, zero, label320
	sh2add t6, a3, a2
	li t2, 1
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label321
	j label347
label324:
	ret
