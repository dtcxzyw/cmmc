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
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s0, 8(sp)
	sd s5, 16(sp)
	sd s4, 24(sp)
	sd s6, 32(sp)
	sd s1, 40(sp)
	sd s3, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	sd s9, 72(sp)
	sd s2, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	jal getint
pcrel444:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_1)
	li s7, 50
pcrel445:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel446:
	auipc a1, %pcrel_hi(A)
	mv s0, a0
	addi s4, a1, %pcrel_lo(pcrel446)
pcrel447:
	auipc a0, %pcrel_hi(cmmc_parallel_body_0)
pcrel448:
	auipc a1, %pcrel_hi(cmmc_parallel_body_1)
	addi s5, a0, %pcrel_lo(pcrel447)
	addi s6, a1, %pcrel_lo(pcrel448)
	li a0, 1005
	slli s3, a0, 3
	ble s0, zero, label241
	mv s1, s4
	mv s2, zero
	mv s10, s4
	mv s11, zero
	j label235
.p2align 2
label292:
	addiw s2, s2, 1
	ble s0, s2, label241
	add s1, s1, s3
	mv s11, zero
	mv s10, s1
.p2align 2
label235:
	jal getint
	addiw s11, s11, 1
	sw a0, 0(s10)
	ble s0, s11, label292
	addi s10, s10, 4
	j label235
label241:
	auipc a0, %pcrel_hi(B)
	addi s1, a0, %pcrel_lo(label241)
	ble s0, zero, label242
	mv s2, s1
	mv s10, zero
	j label272
.p2align 2
label275:
	addi s2, s2, 4
.p2align 2
label272:
	jal getint
	addiw s10, s10, 1
	sw a0, 0(s2)
	bgt s0, s10, label275
label242:
	li a0, 59
	jal _sysy_starttime
	mv s10, zero
pcrel449:
	auipc a1, %pcrel_hi(C)
	addi s2, a1, %pcrel_lo(pcrel449)
	j label243
.p2align 2
label422:
	sh2add a5, a0, s1
	sh2add t2, a3, s2
	lw t0, 0(a5)
	addiw a3, a3, 1
	lw t3, 0(t2)
	mulw t1, a4, t3
	addw t4, t0, t1
	sw t4, 0(a5)
	bgt s0, a3, label265
	addiw a0, a0, 1
	bgt s0, a0, label267
.p2align 2
label416:
	addiw s10, s10, 1
	bge s10, s7, label270
.p2align 2
label243:
	ble s0, zero, label269
pcrel450:
	auipc s8, %pcrel_hi(cmmc_parallel_body_payload_0)
	sw s0, %pcrel_lo(pcrel450)(s8)
	mv a0, zero
	mv a1, s0
	mv a2, s5
	jal cmmcParallelFor
	mv a0, zero
	mv a1, s4
	mv a2, s4
	mv a3, zero
	lw a4, 0(s4)
	beq a4, zero, label253
	mv a5, s2
	mv t2, s1
	lw t0, 0(s2)
	lw t4, 0(s1)
	mulw t1, a4, t4
	addw t3, t0, t1
	sw t3, 0(s2)
	j label253
.p2align 2
label346:
	addiw a0, a0, 1
	ble s0, a0, label416
.p2align 2
label267:
	add a1, a1, s3
	mv a3, zero
	lw a4, 0(a1)
	mv a2, a1
	bne a4, zero, label422
.p2align 2
label264:
	addiw a3, a3, 1
	ble s0, a3, label346
.p2align 2
label265:
	addi a2, a2, 4
	lw a4, 0(a2)
	beq a4, zero, label264
	sh2add a5, a0, s1
	sh2add t2, a3, s2
	lw t0, 0(a5)
	addiw a3, a3, 1
	lw t3, 0(t2)
	mulw t1, a4, t3
	addw t4, t0, t1
	sw t4, 0(a5)
	bgt s0, a3, label265
	addiw a0, a0, 1
	bgt s0, a0, label267
	addiw s10, s10, 1
	blt s10, s7, label243
	j label270
.p2align 2
label328:
	addiw a0, a0, 1
	ble s0, a0, label257
.p2align 2
label256:
	add a1, a1, s3
	mv a3, zero
	lw a4, 0(a1)
	mv a2, a1
	bne a4, zero, label420
.p2align 2
label253:
	addiw a3, a3, 1
	ble s0, a3, label328
.p2align 2
label254:
	addi a2, a2, 4
	lw a4, 0(a2)
	beq a4, zero, label253
	sh2add a5, a0, s2
	sh2add t2, a3, s1
	lw t0, 0(a5)
	addiw a3, a3, 1
	lw t4, 0(t2)
	mulw t1, a4, t4
	addw t3, t0, t1
	sw t3, 0(a5)
	bgt s0, a3, label254
	addiw a0, a0, 1
	bgt s0, a0, label256
.p2align 2
label257:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_1)
	sw s0, %pcrel_lo(label257)(s9)
	mv a0, zero
	mv a1, s0
	mv a2, s6
	jal cmmcParallelFor
	mv a0, zero
	mv a1, s4
	mv a2, s4
	mv a3, zero
	lw a4, 0(s4)
	beq a4, zero, label264
	mv a5, s1
	mv t2, s2
	lw t0, 0(s1)
	lw t3, 0(s2)
	mulw t1, a4, t3
	addw t4, t0, t1
	sw t4, 0(s1)
	j label264
.p2align 2
label420:
	sh2add a5, a0, s2
	sh2add t2, a3, s1
	lw t0, 0(a5)
	addiw a3, a3, 1
	lw t4, 0(t2)
	mulw t1, a4, t4
	addw t3, t0, t1
	sw t3, 0(a5)
	bgt s0, a3, label254
	addiw a0, a0, 1
	bgt s0, a0, label256
	j label257
label269:
	addiw s10, s10, 1
	blt s10, s7, label243
label270:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s4, 24(sp)
	ld s6, 32(sp)
	ld s1, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	ld s9, 72(sp)
	ld s2, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
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
pcrel229:
	auipc a0, %pcrel_hi(B)
	addi a3, a0, %pcrel_lo(pcrel229)
	ble a1, a4, label131
	addiw t0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge t0, a4, label152
	sh2add a0, a2, a3
	j label127
.p2align 2
label130:
	addi a0, a0, 64
.p2align 2
label127:
	addiw a2, a2, 16
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	bgt a5, a2, label130
	mv a0, a2
label118:
	ble a4, a0, label131
	sh2add a5, a0, a3
	mv a2, a0
	j label122
label125:
	addi a5, a5, 16
label122:
	addiw a2, a2, 4
	sw zero, 0(a5)
	sw zero, 4(a5)
	sw zero, 8(a5)
	sw zero, 12(a5)
	bgt a4, a2, label125
label131:
	ble a1, a2, label138
	sh2add a0, a2, a3
	j label134
label137:
	addi a0, a0, 4
label134:
	addiw a2, a2, 1
	sw zero, 0(a0)
	bgt a1, a2, label137
label138:
	ret
label152:
	mv a0, a2
	mv a2, zero
	j label118
