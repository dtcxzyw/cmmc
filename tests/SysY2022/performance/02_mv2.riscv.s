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
	sd s7, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s8, 56(sp)
	sd s2, 64(sp)
	sd s3, 72(sp)
	sd s4, 80(sp)
	sd s9, 88(sp)
	sd s10, 96(sp)
	jal getint
pcrel507:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
pcrel508:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	li s2, 50
pcrel509:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	mv s11, a0
pcrel510:
	auipc a1, %pcrel_hi(A)
pcrel511:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi s7, a1, %pcrel_lo(pcrel510)
	sd a0, 104(sp)
pcrel512:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
pcrel513:
	auipc a0, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a0, %pcrel_lo(pcrel513)
pcrel514:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	sd a2, 112(sp)
	addi s0, a0, %pcrel_lo(pcrel514)
	addi a2, a1, %pcrel_lo(pcrel512)
	li a0, 1005
pcrel515:
	auipc a1, %pcrel_hi(cmmc_parallel_body_3)
	slli s8, a0, 3
	sd a2, 120(sp)
	addi s1, a1, %pcrel_lo(pcrel515)
	ble s11, zero, label391
	mv s9, zero
	mv s10, s7
	mv s11, zero
	j label385
.p2align 2
label388:
	addiw s9, s9, 1
	ld s11, 104(sp)
	ble s11, s9, label391
	add s7, s7, s8
	mv s11, zero
	mv s10, s7
.p2align 2
label385:
	jal getint
	addiw a1, s11, 1
	sw a0, 0(s10)
	ld s11, 104(sp)
	ble s11, a1, label388
	addi s10, s10, 4
	mv s11, a1
	j label385
label391:
	auipc a0, %pcrel_hi(B)
	ld s11, 104(sp)
	addi s7, a0, %pcrel_lo(label391)
	ble s11, zero, label397
	mv s8, zero
	j label393
.p2align 2
label396:
	addi s7, s7, 4
	mv s8, a1
.p2align 2
label393:
	jal getint
	addiw a1, s8, 1
	sw a0, 0(s7)
	ld s11, 104(sp)
	bgt s11, a1, label396
label397:
	li a0, 59
	jal _sysy_starttime
	mv s8, zero
pcrel516:
	auipc a1, %pcrel_hi(C)
	addi s7, a1, %pcrel_lo(pcrel516)
.p2align 2
label398:
	ld s11, 104(sp)
	ble s11, zero, label400
	mv a0, zero
pcrel517:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s11, %pcrel_lo(pcrel517)(s3)
	ld a2, 112(sp)
	mv a1, s11
	jal cmmcParallelFor
	mv a0, zero
pcrel518:
	auipc s4, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s11, %pcrel_lo(pcrel518)(s4)
	ld a2, 120(sp)
	mv a1, s11
	jal cmmcParallelFor
	mv a0, zero
pcrel519:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_2)
	sw s11, %pcrel_lo(pcrel519)(s5)
	mv a1, s11
	mv a2, s0
	jal cmmcParallelFor
	mv a0, zero
pcrel520:
	auipc s6, %pcrel_hi(cmmc_parallel_body_payload_3)
	sw s11, %pcrel_lo(pcrel520)(s6)
	mv a1, s11
	mv a2, s1
	jal cmmcParallelFor
	addiw s8, s8, 1
	blt s8, s2, label398
label401:
	li a0, 67
	jal _sysy_stoptime
	ld s11, 104(sp)
	mv a0, s11
	mv a1, s7
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s11, 8(sp)
	ld s7, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s8, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 128
	ret
label400:
	addiw s8, s8, 1
	blt s8, s2, label398
	j label401
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel115:
	auipc a0, %pcrel_hi(C)
	addi a3, a0, %pcrel_lo(pcrel115)
	ble a1, a4, label2
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label49
	sh2add a0, a2, a3
.p2align 2
label20:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	ble a5, a2, label86
	addi a0, a0, 64
	j label20
label86:
	mv a0, a2
label11:
	ble a4, a0, label2
	sh2add a5, a0, a3
	mv a2, a0
	j label15
label18:
	addi a5, a5, 16
label15:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label18
label2:
	ble a1, a2, label4
	sh2add a0, a2, a3
	j label6
label9:
	addi a0, a0, 4
label6:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label9
label4:
	ret
label49:
	mv a0, a2
	mv a2, zero
	j label11
.p2align 2
cmmc_parallel_body_1:
	mv a3, a0
	mv a5, a1
pcrel187:
	auipc a4, %pcrel_hi(A)
pcrel188:
	auipc t1, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel189:
	auipc t2, %pcrel_hi(B)
	li a0, 1005
	addi a2, a4, %pcrel_lo(pcrel187)
	slli t0, a0, 3
	lw a0, %pcrel_lo(pcrel188)(t1)
	mulw a1, a3, t0
pcrel190:
	auipc t1, %pcrel_hi(C)
	add a4, a2, a1
	addi a2, t1, %pcrel_lo(pcrel190)
	addi a1, t2, %pcrel_lo(pcrel189)
	mv t1, a4
	mv t2, zero
	lw t3, 0(a4)
	beq t3, zero, label123
	sh2add t6, a3, a2
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
.p2align 2
label123:
	addiw t2, t2, 1
	ble a0, t2, label150
.p2align 2
label124:
	addi t1, t1, 4
	lw t3, 0(t1)
	beq t3, zero, label123
	sh2add a6, t2, a1
	sh2add t6, a3, a2
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label124
	addiw a3, a3, 1
	bgt a5, a3, label126
	j label127
.p2align 2
label150:
	addiw a3, a3, 1
	ble a5, a3, label127
.p2align 2
label126:
	add a4, a4, t0
	mv t2, zero
	lw t3, 0(a4)
	mv t1, a4
	beq t3, zero, label123
	sh2add t6, a3, a2
	li t2, 1
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label124
	j label150
label127:
	ret
.p2align 2
cmmc_parallel_body_2:
	mv a2, a0
	addiw a4, a0, 3
pcrel304:
	auipc a0, %pcrel_hi(B)
	addi a3, a0, %pcrel_lo(pcrel304)
	ble a1, a4, label206
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label227
	sh2add a0, a2, a3
	j label202
.p2align 2
label205:
	addi a0, a0, 64
.p2align 2
label202:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label205
	mv a0, a2
label193:
	ble a4, a0, label206
	sh2add a5, a0, a3
	mv a2, a0
	j label197
label200:
	addi a5, a5, 16
label197:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label200
label206:
	ble a1, a2, label213
	sh2add a0, a2, a3
	j label209
label212:
	addi a0, a0, 4
label209:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label212
label213:
	ret
label227:
	mv a0, a2
	mv a2, zero
	j label193
.p2align 2
cmmc_parallel_body_3:
	mv a3, a0
	mv a5, a1
pcrel376:
	auipc a4, %pcrel_hi(A)
pcrel377:
	auipc t1, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel378:
	auipc t2, %pcrel_hi(C)
	li a0, 1005
	addi a2, a4, %pcrel_lo(pcrel376)
	slli t0, a0, 3
	lw a0, %pcrel_lo(pcrel377)(t1)
	mulw a1, a3, t0
pcrel379:
	auipc t1, %pcrel_hi(B)
	add a4, a2, a1
	addi a2, t1, %pcrel_lo(pcrel379)
	addi a1, t2, %pcrel_lo(pcrel378)
	mv t1, a4
	mv t2, zero
	lw t3, 0(a4)
	beq t3, zero, label312
	sh2add t6, a3, a2
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
.p2align 2
label312:
	addiw t2, t2, 1
	ble a0, t2, label339
.p2align 2
label313:
	addi t1, t1, 4
	lw t3, 0(t1)
	beq t3, zero, label312
	sh2add a6, t2, a1
	sh2add t6, a3, a2
	addiw t2, t2, 1
	lw t5, 0(a6)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label313
	addiw a3, a3, 1
	bgt a5, a3, label315
	j label316
.p2align 2
label339:
	addiw a3, a3, 1
	ble a5, a3, label316
.p2align 2
label315:
	add a4, a4, t0
	mv t2, zero
	lw t3, 0(a4)
	mv t1, a4
	beq t3, zero, label312
	sh2add t6, a3, a2
	li t2, 1
	lw t5, 0(a1)
	mulw t4, t3, t5
	amoadd.w.aqrl a6, t4, (t6)
	bgt a0, t2, label313
	j label339
label316:
	ret
