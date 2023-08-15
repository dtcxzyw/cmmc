.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	400040
.align 8
y:
	.zero	12000000
.align 8
v:
	.zero	12000000
.align 8
a:
	.zero	400040
.align 8
b:
	.zero	400040
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
	addi sp, sp, -104
pcrel760:
	auipc a1, %pcrel_hi(x)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a1, %pcrel_lo(pcrel760)
	sd s0, 16(sp)
	sd s6, 24(sp)
	sd s1, 32(sp)
	sd s3, 40(sp)
	sd s2, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s11, 72(sp)
	sd s8, 80(sp)
	sd s9, 88(sp)
	sd s10, 96(sp)
	mv a0, s5
	jal getarray
pcrel761:
	auipc a1, %pcrel_hi(y)
	mv s6, a0
	addi s3, a1, %pcrel_lo(pcrel761)
	mv a0, s3
	jal getarray
pcrel762:
	auipc a1, %pcrel_hi(v)
	addi s2, a1, %pcrel_lo(pcrel762)
	mv a0, s2
	jal getarray
pcrel763:
	auipc a1, %pcrel_hi(a)
	addi s0, a1, %pcrel_lo(pcrel763)
	mv a0, s0
	jal getarray
	li a0, 39
	jal _sysy_starttime
pcrel764:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	li s8, 100
	mv s11, zero
pcrel765:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
pcrel766:
	auipc a1, %pcrel_hi(cmmc_parallel_body_0)
pcrel767:
	auipc a0, %pcrel_hi(b)
	addiw s4, s6, -1
	addi s1, a0, %pcrel_lo(pcrel767)
	addi s6, a1, %pcrel_lo(pcrel766)
pcrel768:
	auipc a0, %pcrel_hi(cmmc_parallel_body_1)
	addi s7, a0, %pcrel_lo(pcrel768)
	j label232
.p2align 2
label707:
	addiw s11, s11, 1
	bge s11, s8, label299
.p2align 2
label232:
	ble s4, zero, label298
pcrel769:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s4, %pcrel_lo(pcrel769)(s9)
	mv a0, zero
	mv a1, s4
	mv a2, s6
	jal cmmcParallelFor
	mv a4, zero
	mv a0, s5
	lw t0, 0(s5)
	li a1, 1
	lw a2, 4(s5)
	blt t0, a2, label272
	bgt s4, a1, label271
	j label239
.p2align 2
label292:
	addi a3, a3, 4
.p2align 2
label289:
	lw t3, 0(a3)
	sh2add t2, a5, s2
	sh2add t0, t3, s1
	addiw a5, a5, 1
	lw t1, 0(t0)
	lw t4, 0(t2)
	mulw t5, a4, t4
	addw t3, t1, t5
	sw t3, 0(t0)
	bgt a2, a5, label292
	ble s4, a1, label239
.p2align 2
label271:
	addi a0, a0, 4
	mv a4, a1
	lw t0, 0(a0)
	addiw a1, a1, 1
	lw a2, 4(a0)
	bge t0, a2, label709
.p2align 2
label272:
	addiw a5, t0, 3
	addiw a3, a2, -3
	ble a2, a5, label494
	sh2add t1, t0, s3
	mv t2, t0
	j label274
.p2align 2
label277:
	addi t1, t1, 16
.p2align 2
label274:
	lw t6, 0(t1)
	sh2add t3, t2, s2
	sh2add t4, t6, s1
	addiw t2, t2, 4
	lw t5, 0(t4)
	lw a7, 0(t3)
	addw a6, t5, a7
	sw a6, 0(t4)
	lw t6, 4(t1)
	sh2add t5, t6, s1
	lw t4, 0(t5)
	lw a7, 4(t3)
	addw a6, t4, a7
	sw a6, 0(t5)
	lw t6, 8(t1)
	sh2add t4, t6, s1
	lw t5, 0(t4)
	lw a6, 8(t3)
	addw t6, t5, a6
	sw t6, 0(t4)
	lw a7, 12(t1)
	sh2add t5, a7, s1
	lw t4, 0(t5)
	lw a6, 12(t3)
	addw t6, t4, a6
	sw t6, 0(t5)
	bgt a3, t2, label277
	ble a2, t2, label711
.p2align 2
label280:
	sh2add t1, t2, s3
.p2align 2
label281:
	lw t5, 0(t1)
	sh2add t6, t2, s2
	sh2add t3, t5, s1
	addiw t2, t2, 1
	lw t4, 0(t3)
	lw a6, 0(t6)
	addw t5, t4, a6
	sw t5, 0(t3)
	ble a2, t2, label553
	addi t1, t1, 4
	j label281
.p2align 2
label553:
	sh2add t3, a4, s0
	lw t1, 0(t3)
	addi a4, t1, -1
	ble a2, a5, label713
.p2align 2
label293:
	sh2add a5, t0, s3
	j label294
.p2align 2
label297:
	addi a5, a5, 16
.p2align 2
label294:
	lw t4, 0(a5)
	sh2add t1, t0, s2
	sh2add t2, t4, s1
	addiw t0, t0, 4
	lw t3, 0(t2)
	lw t4, 0(t1)
	mulw t6, a4, t4
	addw t5, t3, t6
	sw t5, 0(t2)
	lw t4, 4(a5)
	sh2add t3, t4, s1
	lw t2, 0(t3)
	lw t6, 4(t1)
	mulw t4, a4, t6
	addw t5, t2, t4
	sw t5, 0(t3)
	lw t6, 8(a5)
	sh2add t4, t6, s1
	lw t2, 0(t4)
	lw t3, 8(t1)
	mulw t6, a4, t3
	addw t5, t2, t6
	sw t5, 0(t4)
	lw a6, 12(a5)
	sh2add t2, a6, s1
	lw t3, 0(t2)
	lw t5, 12(t1)
	mulw t4, a4, t5
	addw t6, t3, t4
	sw t6, 0(t2)
	bgt a3, t0, label297
	ble a2, t0, label716
.p2align 2
label288:
	sh2add a3, t0, s3
	mv a5, t0
	j label289
.p2align 2
label239:
	auipc s10, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s4, %pcrel_lo(label239)(s10)
	mv a0, zero
	mv a1, s4
	mv a2, s7
	jal cmmcParallelFor
	mv a4, zero
	mv a0, s5
	lw t0, 0(s5)
	li a1, 1
	lw a2, 4(s5)
	blt t0, a2, label245
	bgt s4, a1, label244
	j label348
.p2align 2
label442:
	ble s4, a1, label707
.p2align 2
label244:
	addi a0, a0, 4
	mv a4, a1
	lw t0, 0(a0)
	addiw a1, a1, 1
	lw a2, 4(a0)
	bge t0, a2, label701
.p2align 2
label245:
	addiw a5, t0, 3
	addiw a3, a2, -3
	ble a2, a5, label355
	sh2add t1, t0, s2
	mv t2, t0
	j label247
.p2align 2
label250:
	addi t1, t1, 16
.p2align 2
label247:
	sh2add t3, t2, s3
	addiw t2, t2, 4
	lw t6, 0(t3)
	sh2add t4, t6, s0
	lw t5, 0(t4)
	lw t6, 0(t1)
	addw a6, t5, t6
	sw a6, 0(t4)
	lw a7, 4(t3)
	sh2add t6, a7, s0
	lw t4, 0(t6)
	lw t5, 4(t1)
	addw a7, t4, t5
	sw a7, 0(t6)
	lw a6, 8(t3)
	sh2add t5, a6, s0
	lw t4, 0(t5)
	lw t6, 8(t1)
	addw a6, t4, t6
	sw a6, 0(t5)
	lw a7, 12(t3)
	sh2add t4, a7, s0
	lw t5, 0(t4)
	lw t6, 12(t1)
	addw t3, t5, t6
	sw t3, 0(t4)
	bgt a3, t2, label250
	ble a2, t2, label703
.p2align 2
label253:
	sh2add t1, t2, s3
	j label254
.p2align 2
label257:
	addi t1, t1, 4
.p2align 2
label254:
	lw t5, 0(t1)
	sh2add a6, t2, s2
	sh2add t3, t5, s0
	addiw t2, t2, 1
	lw t4, 0(t3)
	lw t6, 0(a6)
	addw t5, t4, t6
	sw t5, 0(t3)
	bgt a2, t2, label257
	sh2add t3, a4, s1
	lw t1, 0(t3)
	addi a4, t1, -1
	ble a2, a5, label705
.p2align 2
label266:
	sh2add a5, t0, s2
.p2align 2
label267:
	sh2add t1, t0, s3
	addiw t0, t0, 4
	lw t5, 0(t1)
	sh2add t3, t5, s0
	lw t2, 0(t3)
	lw t4, 0(a5)
	mulw t6, a4, t4
	addw t5, t2, t6
	sw t5, 0(t3)
	lw t4, 4(t1)
	sh2add t2, t4, s0
	lw t3, 0(t2)
	lw t6, 4(a5)
	mulw t4, a4, t6
	addw t5, t3, t4
	sw t5, 0(t2)
	lw t6, 8(t1)
	sh2add t3, t6, s0
	lw t2, 0(t3)
	lw t5, 8(a5)
	mulw t4, a4, t5
	addw t6, t2, t4
	sw t6, 0(t3)
	lw t5, 12(t1)
	sh2add t2, t5, s0
	lw t3, 0(t2)
	lw t6, 12(a5)
	mulw t1, a4, t6
	addw t4, t3, t1
	sw t4, 0(t2)
	ble a3, t0, label486
	addi a5, a5, 16
	j label267
.p2align 2
label486:
	ble a2, t0, label708
.p2align 2
label261:
	sh2add a3, t0, s3
	mv a5, t0
.p2align 2
label262:
	lw t2, 0(a3)
	sh2add t3, a5, s2
	sh2add t0, t2, s0
	addiw a5, a5, 1
	lw t1, 0(t0)
	lw t4, 0(t3)
	mulw t2, a4, t4
	addw t5, t1, t2
	sw t5, 0(t0)
	ble a2, a5, label442
	addi a3, a3, 4
	j label262
.p2align 2
label355:
	mv t2, t0
	bgt a2, t0, label253
	sh2add t3, a4, s1
	lw t1, 0(t3)
	addi a4, t1, -1
	bgt a2, a5, label266
	bgt s4, a1, label244
	j label706
.p2align 2
label494:
	mv t2, t0
	bgt a2, t0, label280
	sh2add t3, a4, s0
	lw t1, 0(t3)
	addi a4, t1, -1
	bgt a2, a5, label293
	bgt s4, a1, label271
	j label239
.p2align 2
label703:
	sh2add t3, a4, s1
	lw t1, 0(t3)
	addi a4, t1, -1
	bgt a2, a5, label266
	bgt a2, t0, label261
	bgt s4, a1, label244
	j label706
.p2align 2
label711:
	sh2add t3, a4, s0
	lw t1, 0(t3)
	addi a4, t1, -1
	bgt a2, a5, label293
	bgt a2, t0, label288
	bgt s4, a1, label271
	j label239
.p2align 2
label705:
	bgt a2, t0, label261
	bgt s4, a1, label244
label706:
	addiw s11, s11, 1
	blt s11, s8, label232
	j label299
.p2align 2
label713:
	bgt a2, t0, label288
	bgt s4, a1, label271
	j label239
.p2align 2
label708:
	bgt s4, a1, label244
	addiw s11, s11, 1
	blt s11, s8, label232
	j label299
.p2align 2
label716:
	bgt s4, a1, label271
	j label239
label298:
	addiw s11, s11, 1
	blt s11, s8, label232
	j label299
.p2align 2
label701:
	bgt s4, a1, label244
label348:
	addiw s11, s11, 1
	blt s11, s8, label232
	j label299
.p2align 2
label709:
	bgt s4, a1, label271
	j label239
label299:
	li a0, 47
	jal _sysy_stoptime
	mv a0, s4
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s6, 24(sp)
	ld s1, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s11, 72(sp)
	ld s8, 80(sp)
	ld s9, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel115:
	auipc a0, %pcrel_hi(b)
	addi a3, a0, %pcrel_lo(pcrel115)
	ble a1, a4, label2
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label49
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
label16:
	ble a4, a0, label2
	sh2add a5, a0, a3
	mv a2, a0
label20:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	ble a4, a2, label2
	addi a5, a5, 16
	j label20
label2:
	ble a1, a2, label9
	sh2add a0, a2, a3
	j label5
label8:
	addi a0, a0, 4
label5:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label8
label9:
	ret
label49:
	mv a0, a2
	mv a2, zero
	j label16
.p2align 2
cmmc_parallel_body_1:
	mv a2, a0
	addiw a4, a0, 3
pcrel230:
	auipc a0, %pcrel_hi(a)
	addi a3, a0, %pcrel_lo(pcrel230)
	ble a1, a4, label117
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label164
	sh2add a0, a2, a3
.p2align 2
label135:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	ble a5, a2, label201
	addi a0, a0, 64
	j label135
label201:
	mv a0, a2
label126:
	ble a4, a0, label117
	sh2add a5, a0, a3
	mv a2, a0
	j label130
label133:
	addi a5, a5, 16
label130:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label133
label117:
	ble a1, a2, label124
	sh2add a0, a2, a3
	j label120
label123:
	addi a0, a0, 4
label120:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label123
label124:
	ret
label164:
	mv a0, a2
	mv a2, zero
	j label126
