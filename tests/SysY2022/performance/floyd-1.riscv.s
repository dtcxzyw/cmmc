.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
temp:
	.zero	8388608
.align 8
w:
	.zero	8388608
.align 8
dst:
	.zero	8388608
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.align 8
cmmc_parallel_body_payload_1:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -32
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s1, 16(sp)
	sd s2, 24(sp)
	jal getint
pcrel482:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel482)
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel483:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel483)
	ble s0, zero, label333
pcrel484:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel485:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s0, %pcrel_lo(pcrel484)(a0)
	addi a2, a3, %pcrel_lo(pcrel485)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	mv t0, zero
	mv a2, zero
pcrel486:
	auipc a1, %pcrel_hi(temp)
	addi a5, a1, %pcrel_lo(pcrel486)
	mv a0, a5
	mv a3, a5
	mv a4, zero
	mv a1, zero
	mv t1, zero
	mv t2, a5
	mv t3, zero
	mv t5, a5
	lw t4, 0(a5)
	bge t4, zero, label355
	li t3, 1
	bgt s0, t3, label354
	j label350
.p2align 2
label458:
	addiw t3, t3, 1
	ble s0, t3, label463
.p2align 2
label354:
	addi t2, t2, 4
	sh2add t5, a1, a0
	lw t4, 0(t5)
	blt t4, zero, label458
.p2align 2
label355:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	bge t5, zero, label356
	addiw t3, t3, 1
	bgt s0, t3, label354
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label353
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label352
	j label333
.p2align 2
label356:
	sh2add a7, a4, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	blt a6, zero, label358
	sh2add t5, t3, a3
	lw t4, 0(t5)
	blt t6, t4, label358
	addiw t3, t3, 1
	bgt s0, t3, label354
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label353
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label352
	j label333
.p2align 2
label463:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	ble s0, t1, label469
.p2align 2
label353:
	sh2add a3, s0, a3
	mv t2, a5
	mv t3, zero
	sh2add t5, a1, a0
	lw t4, 0(t5)
	bge t4, zero, label355
	li t3, 1
	bgt s0, t3, label354
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label353
label351:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label352
	j label333
.p2align 2
label358:
	sh2add t4, t3, a3
	addiw t3, t3, 1
	sw t6, 0(t4)
	bgt s0, t3, label354
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label353
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label352
	j label333
.p2align 2
label469:
	addiw t0, t0, 1
	addw a2, s0, a2
	ble s0, t0, label333
.p2align 2
label352:
	addi a0, a0, 4
	mv a3, a5
	mv a4, zero
	mv a1, zero
	mv t1, zero
	mv t2, a5
	mv t3, zero
	mv t5, a0
	lw t4, 0(a0)
	bge t4, zero, label355
	li t3, 1
	bgt s0, t3, label354
label350:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label353
	j label351
label333:
	mulw s2, s0, s0
	beq s0, zero, label334
pcrel487:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel488:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel488)
	sw s2, %pcrel_lo(pcrel487)(a1)
	mv a1, s2
	jal cmmcParallelFor
label334:
	li a0, 64
	jal _sysy_stoptime
	mv a0, s2
	mv a1, s1
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s0, 8(sp)
	ld s1, 16(sp)
	ld s2, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -64
	mv t0, a0
pcrel178:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel179:
	auipc t2, %pcrel_hi(w)
pcrel180:
	auipc t1, %pcrel_hi(temp)
	sd s2, 0(sp)
	addi a4, t1, %pcrel_lo(pcrel180)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	lw a0, %pcrel_lo(pcrel178)(a2)
	addi a2, t2, %pcrel_lo(pcrel179)
	slliw a3, a0, 2
	addi a5, a0, -3
	li t2, 3
	bgt a0, t2, label15
	bgt a0, zero, label4
label2:
	ld s2, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	addi sp, sp, 64
	ret
label4:
	sh2add a3, t0, a4
	mv a4, t0
	sh2add a5, t0, a2
	mv t0, zero
	mv t1, zero
	j label8
.p2align 2
label14:
	sh2add a5, a0, a5
.p2align 2
label8:
	sh2add t2, t0, a3
	lw t3, 0(a5)
	addiw t1, t1, 1
	addw t0, a0, t0
	sw t3, 0(t2)
	bgt a0, t1, label14
	addiw a4, a4, 1
	ble a1, a4, label2
.p2align 2
label13:
	addi a3, a3, 4
	sh2add a5, a4, a2
	li t1, 1
	sext.w t0, a0
	mv t2, a3
	lw t3, 0(a5)
	sw t3, 0(a3)
	bgt a0, t1, label14
	addiw a4, a4, 1
	bgt a1, a4, label13
	j label2
label15:
	sh2add a4, t0, a4
	j label16
.p2align 2
label136:
	addiw t0, t0, 1
	ble a1, t0, label2
.p2align 2
label27:
	addi a4, a4, 4
.p2align 2
label16:
	sh2add t2, t0, a2
	mv s2, zero
	mv s0, zero
	mv s1, zero
	sh2add t5, a0, a4
	mv a7, t2
	sh2add t1, a0, t2
	sh2add t6, a0, t5
	sh2add t3, a0, t1
	sh2add a6, a0, t6
	sh2add t4, a0, t3
	j label19
.p2align 2
label24:
	sh2add a7, a3, a7
.p2align 2
label19:
	sh2add s4, s0, a4
	lw s5, 0(a7)
	sh2add s7, s1, t1
	addiw s2, s2, 4
	sh2add s6, s0, t5
	sw s5, 0(s4)
	sh2add s5, s1, t3
	lw s3, 0(s7)
	sw s3, 0(s6)
	sh2add s6, s0, t6
	lw s4, 0(s5)
	sh2add s5, s1, t4
	addw s1, a3, s1
	sw s4, 0(s6)
	sh2add s4, s0, a6
	lw s3, 0(s5)
	addw s0, a3, s0
	sw s3, 0(s4)
	bgt a5, s2, label24
	ble a0, s2, label169
	sh2add t1, s1, t2
	mv t2, s2
.p2align 2
label29:
	sh2add t3, s0, a4
	lw t4, 0(t1)
	addiw t2, t2, 1
	addw s0, a0, s0
	sw t4, 0(t3)
	ble a0, t2, label136
	sh2add t1, a0, t1
	j label29
.p2align 2
label169:
	addiw t0, t0, 1
	bgt a1, t0, label27
	j label2
.p2align 2
cmmc_parallel_body_1:
	mv t0, a0
	addiw a4, a0, 3
pcrel330:
	auipc a5, %pcrel_hi(dst)
pcrel331:
	auipc a0, %pcrel_hi(temp)
	addi a2, a5, %pcrel_lo(pcrel330)
	addi a3, a0, %pcrel_lo(pcrel331)
	ble a1, a4, label182
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label234
	sh2add a0, t0, a3
.p2align 2
label200:
	sh2add t1, t0, a2
	lw t2, 0(a0)
	addiw t0, t0, 16
	sw t2, 0(t1)
	lw t3, 4(a0)
	sw t3, 4(t1)
	lw t2, 8(a0)
	sw t2, 8(t1)
	lw t4, 12(a0)
	sw t4, 12(t1)
	lw t3, 16(a0)
	sw t3, 16(t1)
	lw t2, 20(a0)
	sw t2, 20(t1)
	lw t4, 24(a0)
	sw t4, 24(t1)
	lw t3, 28(a0)
	sw t3, 28(t1)
	lw t2, 32(a0)
	sw t2, 32(t1)
	lw t3, 36(a0)
	sw t3, 36(t1)
	lw t2, 40(a0)
	sw t2, 40(t1)
	lw t3, 44(a0)
	sw t3, 44(t1)
	lw t2, 48(a0)
	sw t2, 48(t1)
	lw t4, 52(a0)
	sw t4, 52(t1)
	lw t3, 56(a0)
	sw t3, 56(t1)
	lw t2, 60(a0)
	sw t2, 60(t1)
	ble a5, t0, label313
	addi a0, a0, 64
	j label200
label313:
	mv a5, t0
label191:
	ble a4, a5, label182
	sh2add a0, a5, a3
	j label195
label198:
	addi a0, a0, 16
label195:
	sh2add t0, a5, a2
	lw t1, 0(a0)
	addiw a5, a5, 4
	sw t1, 0(t0)
	lw t2, 4(a0)
	sw t2, 4(t0)
	lw t1, 8(a0)
	sw t1, 8(t0)
	lw t2, 12(a0)
	sw t2, 12(t0)
	bgt a4, a5, label198
	mv t0, a5
label182:
	ble a1, t0, label189
	sh2add a0, t0, a3
	j label185
label188:
	addi a0, a0, 4
label185:
	sh2add a3, t0, a2
	lw a4, 0(a0)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label188
label189:
	ret
label234:
	mv a5, t0
	mv t0, zero
	j label191
