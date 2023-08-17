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
pcrel506:
	auipc a1, %pcrel_hi(w)
	mv s0, a0
	addi a0, a1, %pcrel_lo(pcrel506)
	jal getarray
	li a0, 62
	jal _sysy_starttime
pcrel507:
	auipc a1, %pcrel_hi(dst)
	addi s1, a1, %pcrel_lo(pcrel507)
	ble s0, zero, label344
pcrel508:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel509:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s0, %pcrel_lo(pcrel508)(a0)
	addi a2, a3, %pcrel_lo(pcrel509)
	mv a1, s0
	mv a0, zero
	jal cmmcParallelFor
	mv t0, zero
	mv a2, zero
pcrel510:
	auipc a1, %pcrel_hi(temp)
	addi a5, a1, %pcrel_lo(pcrel510)
	mv a0, a5
	mv a3, a5
	mv a4, zero
	mv a1, zero
	mv t1, zero
	mv t2, a5
	mv t3, zero
	mv t5, a5
	lw t4, 0(a5)
	bge t4, zero, label366
	li t3, 1
	bgt s0, t3, label365
	j label361
.p2align 2
label469:
	addiw t3, t3, 1
	ble s0, t3, label474
.p2align 2
label365:
	addi t2, t2, 4
	sh2add t5, a1, a0
	lw t4, 0(t5)
	blt t4, zero, label469
.p2align 2
label366:
	sh2add t6, a2, t2
	lw t5, 0(t6)
	bge t5, zero, label367
	addiw t3, t3, 1
	bgt s0, t3, label365
	j label470
.p2align 2
label367:
	sh2add a7, a4, t2
	addw t6, t4, t5
	lw a6, 0(a7)
	blt a6, zero, label369
	sh2add t5, t3, a3
	lw t4, 0(t5)
	blt t6, t4, label369
	addiw t3, t3, 1
	bgt s0, t3, label365
	j label471
.p2align 2
label474:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	ble s0, t1, label480
.p2align 2
label364:
	sh2add a3, s0, a3
	mv t2, a5
	mv t3, zero
	sh2add t5, a1, a0
	lw t4, 0(t5)
	bge t4, zero, label366
	li t3, 1
	bgt s0, t3, label365
	j label479
.p2align 2
label480:
	addiw t0, t0, 1
	addw a2, s0, a2
	ble s0, t0, label344
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
	bge t4, zero, label366
	li t3, 1
	bgt s0, t3, label365
	j label361
label344:
	mulw s2, s0, s0
	beq s0, zero, label345
pcrel511:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel512:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	mv a0, zero
	addi a2, a3, %pcrel_lo(pcrel512)
	sw s2, %pcrel_lo(pcrel511)(a1)
	mv a1, s2
	jal cmmcParallelFor
label345:
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
label361:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label364
	j label362
.p2align 2
label471:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label364
	j label476
.p2align 2
label479:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label364
label362:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label344
.p2align 2
label476:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label344
.p2align 2
label470:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label364
	j label475
.p2align 2
label369:
	sh2add t4, t3, a3
	addiw t3, t3, 1
	sw t6, 0(t4)
	bgt s0, t3, label365
	j label472
.p2align 2
label475:
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label344
.p2align 2
label472:
	addiw t1, t1, 1
	addw a1, s0, a1
	addw a4, s0, a4
	bgt s0, t1, label364
	addiw t0, t0, 1
	addw a2, s0, a2
	bgt s0, t0, label363
	j label344
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -64
	mv t0, a0
pcrel179:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel180:
	auipc t2, %pcrel_hi(w)
pcrel181:
	auipc t1, %pcrel_hi(temp)
	sd s2, 0(sp)
	addi a4, t1, %pcrel_lo(pcrel181)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	lw a0, %pcrel_lo(pcrel179)(a2)
	addi a2, t2, %pcrel_lo(pcrel180)
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
	addiw a2, a0, 3
pcrel341:
	auipc a4, %pcrel_hi(dst)
pcrel342:
	auipc a5, %pcrel_hi(temp)
	addi a0, a4, %pcrel_lo(pcrel341)
	addi a3, a5, %pcrel_lo(pcrel342)
	ble a1, a2, label183
	addiw t1, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t1, a4, label235
	sh2add a2, t0, a3
.p2align 2
label201:
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
	ld t3, 32(a2)
	sd t3, 32(t1)
	ld t2, 40(a2)
	sd t2, 40(t1)
	ld t3, 48(a2)
	sd t3, 48(t1)
	ld t2, 56(a2)
	sd t2, 56(t1)
	ble a5, t0, label314
	addi a2, a2, 64
	j label201
label314:
	mv a2, t0
label192:
	ble a4, a2, label183
	sh2add a5, a2, a3
	j label196
label199:
	addi a5, a5, 16
label196:
	sh2add t0, a2, a0
	ld t2, 0(a5)
	addiw a2, a2, 4
	sd t2, 0(t0)
	ld t1, 8(a5)
	sd t1, 8(t0)
	bgt a4, a2, label199
	mv t0, a2
label183:
	ble a1, t0, label190
	sh2add a2, t0, a3
	j label186
label189:
	addi a2, a2, 4
label186:
	sh2add a3, t0, a0
	lw a4, 0(a2)
	addiw t0, t0, 1
	sw a4, 0(a3)
	bgt a1, t0, label189
label190:
	ret
label235:
	mv a2, t0
	mv t0, zero
	j label192
