.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
x:
	.zero	864000000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -80
	sd ra, 0(sp)
	sd s5, 8(sp)
	sd s0, 16(sp)
	sd s1, 24(sp)
	sd s6, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	jal getint
	mv s5, a0
	jal getint
	mv s1, a0
	li a0, 13
	jal _sysy_starttime
	li a1, 75
pcrel474:
	auipc a0, %pcrel_hi(x)
	addiw s0, s5, -1
	slli s2, a1, 5
	addi s4, a0, %pcrel_lo(pcrel474)
	sub s3, zero, s2
	lui a0, 352
	addiw s6, a0, -1792
	ble s5, zero, label334
pcrel475:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel476:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s5, %pcrel_lo(pcrel475)(a0)
	addi a2, a3, %pcrel_lo(pcrel476)
	mv a1, s5
	mv a0, zero
	jal cmmcParallelFor
label334:
	li a0, 1
	ble s0, a0, label368
	add t0, s4, s6
	mv a4, s4
	li t1, 1
	add a5, t0, s6
	addiw t1, t1, 1
	add a0, t0, s2
	li t2, 1
	mul t4, t2, s2
	add a2, a0, s3
	addiw t2, t2, 1
	add a1, a5, t4
	add a3, s4, t4
	li t4, 1
	addi t3, a3, 4
	add a3, a0, s2
	j label343
.p2align 2
label350:
	addi t3, t3, 4
.p2align 2
label343:
	sh2add t6, t4, a1
	lw a6, 0(t3)
	sh2add a7, t4, a2
	lw s7, 0(t6)
	addw t5, a6, s7
	lw a6, 0(a7)
	sh2add a7, t4, a3
	addw t6, t5, a6
	lw s8, 0(a7)
	sh2add t5, t4, a0
	addw a6, t6, s8
	addiw t4, t4, 1
	lw s7, -4(t5)
	lw a7, 4(t5)
	addw t6, a6, s7
	addw a6, t6, a7
	divw s7, a6, s1
	sw s7, 0(t5)
	bgt s0, t4, label350
	ble s0, t2, label411
	add a0, a0, s2
	mul t4, t2, s2
	add a2, a0, s3
	addiw t2, t2, 1
	add a1, a5, t4
	add a3, a4, t4
	li t4, 1
	addi t3, a3, 4
	add a3, a0, s2
	j label343
.p2align 2
label411:
	ble s0, t1, label469
	add a0, t0, s6
	mv a4, t0
	addiw t1, t1, 1
	li t2, 1
	add a5, a0, s6
	mv t0, a0
	mul t4, t2, s2
	add a0, a0, s2
	addiw t2, t2, 1
	add a1, a5, t4
	add a3, a4, t4
	add a2, a0, s3
	li t4, 1
	addi t3, a3, 4
	add a3, a0, s2
	j label343
label469:
	mv s0, t0
	mv s1, t2
label351:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s5
	mv a1, s4
	jal putarray
	mv a0, s5
	bge s5, zero, label458
	addiw a0, s5, 1
label458:
	sraiw a2, a0, 1
	mv a0, s5
	mul a5, a2, s2
	mul a4, a2, s6
	add a3, s4, a4
	add a1, a3, a5
	jal putarray
	mv a0, s5
	addiw a2, s1, -1
	mul a3, a2, s2
	add a1, s0, a3
	jal putarray
	ld ra, 0(sp)
	mv a0, zero
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
label368:
	mv s0, s4
	li s1, 1
	j label351
.p2align 2
cmmc_parallel_body_0:
	mv t4, a0
	mv a3, a1
pcrel330:
	auipc a2, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a5, 75
	lui t1, 352
	li t0, 1
	li a1, 1
	addiw a4, t1, -1792
	lw a0, %pcrel_lo(pcrel330)(a2)
	slli a2, a5, 5
	slli a5, t0, 32
	ble a0, zero, label68
pcrel331:
	auipc t0, %pcrel_hi(x)
	li t1, 3
	addi t2, t0, %pcrel_lo(pcrel331)
	bgt a0, t1, label3
	mul t1, t4, a4
	mv t0, t4
	add a5, t2, t1
	mv t4, zero
	mv t3, a5
	mv t2, zero
	mv t1, a5
	j label60
.p2align 2
label312:
	addiw t2, t2, 1
	bgt a0, t2, label64
.p2align 2
label197:
	addiw t0, t0, 1
	ble a3, t0, label68
.p2align 2
label66:
	add a5, a5, a4
	mv t2, zero
	li t4, 1
	mv t3, a5
	mv t1, a5
	sw a1, 0(a5)
	ble a0, t4, label312
.p2align 2
label67:
	addi t3, t3, 4
.p2align 2
label60:
	addiw t4, t4, 1
	sw a1, 0(t3)
	bgt a0, t4, label67
	addiw t2, t2, 1
	ble a0, t2, label197
.p2align 2
label64:
	add t1, t1, a2
	li t4, 1
	sw a1, 0(t1)
	mv t3, t1
	bgt a0, t4, label67
	addiw t2, t2, 1
	bgt a0, t2, label64
	addiw t0, t0, 1
	bgt a3, t0, label66
label68:
	ret
label3:
	addiw t0, a0, -3
	addiw t1, a0, -18
	li t3, 15
	bgt t0, t3, label4
	mul t3, t4, a4
	mv t6, zero
	add t1, t2, t3
	mv t5, t1
	mv t3, t1
	mv t2, t4
	mv t4, zero
	j label39
.p2align 2
label52:
	addi t5, t5, 4
.p2align 2
label49:
	addiw a6, a6, 1
	sw a1, 0(t5)
	bgt a0, a6, label52
	addiw t4, t4, 1
	ble a0, t4, label298
.p2align 2
label47:
	add t3, t3, a2
	li t6, 4
	ori a6, a5, 1
	mv t5, t3
	sd a6, 0(t3)
	sd a6, 8(t3)
	ble t0, t6, label304
.p2align 2
label42:
	addi t5, t5, 16
.p2align 2
label39:
	addiw t6, t6, 4
	ori a6, a5, 1
	sd a6, 0(t5)
	sd a6, 8(t5)
	bgt t0, t6, label42
.p2align 2
label160:
	ble a0, t6, label297
.p2align 2
label48:
	sh2add t5, t6, t3
	mv a6, t6
	j label49
.p2align 2
label304:
	bgt a0, t6, label48
	addiw t4, t4, 1
	bgt a0, t4, label47
	j label303
.p2align 2
label298:
	addiw t2, t2, 1
	ble a3, t2, label68
.p2align 2
label46:
	add t1, t1, a4
	mv t4, zero
	li t6, 4
	ori a6, a5, 1
	mv t5, t1
	mv t3, t1
	sd a6, 0(t1)
	sd a6, 8(t1)
	bgt t0, t6, label42
	j label160
.p2align 2
label297:
	addiw t4, t4, 1
	bgt a0, t4, label47
label303:
	addiw t2, t2, 1
	bgt a3, t2, label46
	j label68
label4:
	mul t5, t4, a4
	add t3, t2, t5
	mv t2, t3
	mv t5, zero
	mv t6, t3
	mv a6, zero
	j label11
.p2align 2
label14:
	addi t6, t6, 64
.p2align 2
label11:
	addiw a6, a6, 16
	ori a7, a5, 1
	sd a7, 0(t6)
	sd a7, 8(t6)
	sd a7, 16(t6)
	sd a7, 24(t6)
	sd a7, 32(t6)
	sd a7, 40(t6)
	sd a7, 48(t6)
	sd a7, 56(t6)
	bgt t1, a6, label14
	ble t0, a6, label294
	sh2add t6, a6, t2
	mv a7, a6
.p2align 2
label28:
	addiw a7, a7, 4
	ori a6, a5, 1
	sd a6, 0(t6)
	sd a6, 8(t6)
	ble t0, a7, label149
	addi t6, t6, 16
	j label28
.p2align 2
label149:
	mv a6, a7
	ble a0, a7, label296
.p2align 2
label22:
	sh2add t6, a6, t2
.p2align 2
label23:
	addiw a6, a6, 1
	sw a1, 0(t6)
	ble a0, a6, label138
	addi t6, t6, 4
	j label23
.p2align 2
label138:
	addiw t5, t5, 1
	ble a0, t5, label295
.p2align 2
label21:
	add t2, t2, a2
	mv a6, zero
	mv t6, t2
	j label11
.p2align 2
label294:
	bgt a0, a6, label22
	addiw t5, t5, 1
	bgt a0, t5, label21
	j label19
.p2align 2
label295:
	addiw t4, t4, 1
	ble a3, t4, label68
.p2align 2
label20:
	add t3, t3, a4
	mv t5, zero
	mv a6, zero
	mv t6, t3
	mv t2, t3
	j label11
.p2align 2
label296:
	addiw t5, t5, 1
	bgt a0, t5, label21
label19:
	addiw t4, t4, 1
	bgt a3, t4, label20
	j label68
