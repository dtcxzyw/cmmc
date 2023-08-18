.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
temp:
	.zero	8388608
.p2align 3
w:
	.zero	8388608
.p2align 3
dst:
	.zero	8388608
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.p2align 3
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
pcrel494:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel494)
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel495:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel495)
	ble s0, zero, label365
pcrel496:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel497:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	sw s0, %pcrel_lo(pcrel496)(a0)
	addi a2, a3, %pcrel_lo(pcrel497)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	mv t0, zero
	mv a2, zero
pcrel498:
	auipc a1, %pcrel_hi(temp)
	addi a5, a1, %pcrel_lo(pcrel498)
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
	bgt s0, t3, label364
	j label467
.p2align 2
label468:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	ble s0, t1, label473
.p2align 2
label361:
	sh2add a3, s0, a3
	mv t2, a5
	mv t3, zero
	sh2add t5, a1, a0
	lw t4, 0(t5)
	blt t4, zero, label475
.p2align 2
label355:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	bge t5, zero, label356
	addiw t3, t3, 1
	ble s0, t3, label468
.p2align 2
label364:
	addi t2, t2, 4
	sh2add t5, a1, a0
	lw t4, 0(t5)
	bge t4, zero, label355
	addiw t3, t3, 1
	bgt s0, t3, label364
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label361
	addiw t0, t0, 1
	addw a2, s0, a2
	ble s0, t0, label365
.p2align 2
label363:
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
	bgt s0, t3, label364
label467:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label361
	j label472
.p2align 2
label356:
	sh2add a7, a4, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	blt a6, zero, label358
	sh2add t4, t3, a3
	lw t5, 0(t4)
	blt t6, t5, label358
	addiw t3, t3, 1
	bgt s0, t3, label364
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label361
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label365
.p2align 2
label358:
	sh2add t4, t3, a3
	sw t6, 0(t4)
	addiw t3, t3, 1
	bgt s0, t3, label364
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label361
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label365
.p2align 2
label475:
	addiw t3, t3, 1
	bgt s0, t3, label364
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label361
label472:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
label365:
	mulw s2, s0, s0
	beq s0, zero, label366
pcrel499:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel500:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel500)
	sw s2, %pcrel_lo(pcrel499)(a1)
	mv a1, s2
	jal cmmcParallelFor
label366:
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
label473:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label365
.p2align 2
cmmc_parallel_body_0:
	mv t0, a0
	addiw a2, a0, 3
pcrel159:
	auipc a4, %pcrel_hi(dst)
pcrel160:
	auipc a5, %pcrel_hi(temp)
	addi a0, a4, %pcrel_lo(pcrel159)
	addi a3, a5, %pcrel_lo(pcrel160)
	ble a1, a2, label16
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label39
	sh2add a2, t0, a3
	j label12
.p2align 2
label15:
	addi a2, a2, 64
.p2align 2
label12:
	sh2add t1, t0, a0
	ld t3, 0(a2)
	addiw t0, t0, 16
	sd t3, 0(t1)
	ld t2, 8(a2)
	sd t2, 8(t1)
	ld t3, 16(a2)
	sd t3, 16(t1)
	ld t2, 24(a2)
	sd t2, 24(t1)
	ld t4, 32(a2)
	sd t4, 32(t1)
	ld t3, 40(a2)
	sd t3, 40(t1)
	ld t2, 48(a2)
	sd t2, 48(t1)
	ld t3, 56(a2)
	sd t3, 56(t1)
	bgt a5, t0, label15
	mv a2, t0
label3:
	ble a4, a2, label16
	sh2add a5, a2, a3
	j label7
label10:
	addi a5, a5, 16
label7:
	sh2add t0, a2, a0
	ld t2, 0(a5)
	addiw a2, a2, 4
	sd t2, 0(t0)
	ld t1, 8(a5)
	sd t1, 8(t0)
	bgt a4, a2, label10
	mv t0, a2
label16:
	ble a1, t0, label23
	sh2add a2, t0, a3
	j label19
label22:
	addi a2, a2, 4
label19:
	sh2add a3, t0, a0
	lw a4, 0(a2)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label22
label23:
	ret
label39:
	mv a2, t0
	mv t0, zero
	j label3
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -56
	mv t0, a0
pcrel338:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel339:
	auipc t2, %pcrel_hi(w)
pcrel340:
	auipc t1, %pcrel_hi(temp)
	sd s2, 0(sp)
	addi a4, t1, %pcrel_lo(pcrel340)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s3, 40(sp)
	sd s4, 48(sp)
	lw a0, %pcrel_lo(pcrel338)(a2)
	addi a2, t2, %pcrel_lo(pcrel339)
	slliw a3, a0, 2
	addiw a5, a0, -3
	li t2, 3
	bgt a0, t2, label163
	bgt a0, zero, label183
label162:
	ld s2, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
label183:
	sh2add a3, t0, a4
	mv a4, t0
	sh2add a5, t0, a2
	mv t0, zero
	mv t1, zero
	j label187
.p2align 2
label191:
	sh2add a5, a0, a5
.p2align 2
label187:
	sh2add t2, t0, a3
	lw t3, 0(a5)
	addiw t1, t1, 1
	addw t0, a0, t0
	sw t3, 0(t2)
	bgt a0, t1, label191
	addiw a4, a4, 1
	ble a1, a4, label162
.p2align 2
label193:
	addi a3, a3, 4
	sh2add a5, a4, a2
	li t1, 1
	sext.w t0, a0
	mv t2, a3
	lw t3, 0(a5)
	sw t3, 0(a3)
	bgt a0, t1, label191
	addiw a4, a4, 1
	bgt a1, a4, label193
	j label162
label163:
	sh2add a4, t0, a4
	j label164
.p2align 2
label271:
	addiw t0, t0, 1
	ble a1, t0, label162
.p2align 2
label175:
	addi a4, a4, 4
.p2align 2
label164:
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
	j label167
.p2align 2
label172:
	sh2add a7, a3, a7
.p2align 2
label167:
	sh2add s3, s0, a4
	lw s5, 0(a7)
	sh2add s6, s1, t1
	addiw s2, s2, 4
	sw s5, 0(s3)
	sh2add s3, s0, t5
	lw s4, 0(s6)
	sh2add s6, s1, t3
	sw s4, 0(s3)
	sh2add s4, s0, t6
	lw s5, 0(s6)
	sh2add s6, s1, t4
	addw s1, a3, s1
	sw s5, 0(s4)
	sh2add s4, s0, a6
	lw s3, 0(s6)
	addw s0, a3, s0
	sw s3, 0(s4)
	bgt a5, s2, label172
	ble a0, s2, label328
	sh2add t1, s1, t2
	mv t2, s2
.p2align 2
label177:
	sh2add t3, s0, a4
	lw t4, 0(t1)
	addiw t2, t2, 1
	addw s0, a0, s0
	sw t4, 0(t3)
	ble a0, t2, label271
	sh2add t1, a0, t1
	j label177
.p2align 2
label328:
	addiw t0, t0, 1
	bgt a1, t0, label175
	j label162
