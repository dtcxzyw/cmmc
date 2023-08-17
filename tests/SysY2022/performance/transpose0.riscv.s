.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
matrix:
	.zero	80000000
.p2align 3
a:
	.zero	400000
.p2align 3
cmmc_parallel_body_payload_0:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -72
	sd ra, 0(sp)
	sd s6, 8(sp)
	sd s1, 16(sp)
	sd s7, 24(sp)
	sd s2, 32(sp)
	sd s3, 40(sp)
	sd s0, 48(sp)
	sd s5, 56(sp)
	sd s4, 64(sp)
	jal getint
pcrel522:
	auipc a1, %pcrel_hi(a)
	mv s6, a0
	addi s7, a1, %pcrel_lo(pcrel522)
	mv a0, s7
	jal getarray
	mv s1, a0
	li a0, 28
	jal _sysy_starttime
	li s5, 13
	li s4, 11
pcrel523:
	auipc a0, %pcrel_hi(matrix)
	addiw s3, s1, -18
	addiw s2, s1, -3
	addi s0, a0, %pcrel_lo(pcrel523)
	ble s6, zero, label139
pcrel524:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel525:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s6, %pcrel_lo(pcrel524)(a0)
	addi a2, a3, %pcrel_lo(pcrel525)
	mv a1, s6
	mv a0, zero
	jal cmmcParallelFor
	mv a5, zero
	mv a4, s7
label140:
	lw a0, 0(a4)
	divw a2, s6, a0
	bgt a2, zero, label143
	j label155
.p2align 2
label497:
	addiw a5, a5, 1
	ble s1, a5, label156
.p2align 2
label209:
	addi a4, a4, 4
	lw a0, 0(a4)
	divw a2, s6, a0
	ble a2, zero, label155
.p2align 2
label143:
	mv t0, s0
	mv a1, zero
	mv a3, s0
	mv t1, s0
	mv t3, zero
	bgt a0, zero, label150
	j label232
.p2align 2
label151:
	addi t1, t1, 4
	mv t3, t2
	ble a0, t2, label491
.p2align 2
label150:
	addiw t2, t3, 1
	blt a1, t3, label151
	mulw t6, a2, t3
	lw t5, 0(t1)
	mv t3, t2
	sh2add t4, t6, a3
	addi t1, t1, 4
	sw t5, 0(t4)
	bgt a0, t2, label150
	addiw a1, a1, 1
	ble a2, a1, label499
.p2align 2
label154:
	sh2add t0, a0, t0
	mv t3, zero
	sh2add a3, a1, s0
	mv t1, t0
	bgt a0, zero, label150
	j label498
label156:
	li a0, 3
	ble s1, a0, label259
	li a0, 15
	ble s2, a0, label263
	mv a0, s0
	li a1, 9
	li a3, 7
	li a4, 6
	li a5, 5
	li t1, 3
	mv t0, zero
	li a2, 1
	mv t2, zero
	mv t3, zero
.p2align 2
label181:
	lw t5, 0(a0)
	addw t4, t0, a2
	addiw s6, t1, 6
	addiw t2, t2, 16
	lw a6, 4(a0)
	addiw t1, t1, 96
	mulw a7, t0, t5
	addiw t5, a2, 1
	mulw t6, a6, t4
	sh1add a6, t5, t0
	addw t4, t6, a7
	lw t6, 8(a0)
	mulw a7, a6, t6
	lw a6, 12(a0)
	addw t6, t0, s6
	addw t5, t4, a7
	addiw s6, a3, 42
	slliw a7, a2, 2
	addiw a3, a3, 224
	mulw s7, t6, a6
	lw a6, 16(a0)
	addw t4, t5, s7
	addi t5, a7, 12
	addw t6, t0, t5
	mulw a7, t6, a6
	addiw a6, a5, 20
	addw t5, t4, a7
	addiw a5, a5, 160
	addw t6, t0, a6
	lw a7, 20(a0)
	mulw a6, t6, a7
	lw a7, 24(a0)
	addiw t6, a4, 30
	addw t4, t5, a6
	addiw a4, a4, 192
	addw a6, t0, t6
	mulw t5, a6, a7
	lw a7, 28(a0)
	addw a6, t0, s6
	addw t6, t4, t5
	addiw s6, a1, 72
	slliw t4, a2, 3
	addiw a1, a1, 288
	mulw s7, a6, a7
	addi a7, t4, 56
	addw t5, t6, s7
	addw a6, t0, a7
	lw s7, 32(a0)
	mulw a7, a6, s7
	addw a6, t0, s6
	addw t6, t5, a7
	lw a7, 36(a0)
	mulw s7, a6, a7
	sh2add a7, a2, a2
	addw t5, t6, s7
	slliw s6, a7, 1
	lw a7, 40(a0)
	addi t6, s6, 90
	addw a6, t0, t6
	mulw s6, a6, a7
	mulw a7, a2, s4
	addw t6, t5, s6
	addi t5, a7, 110
	lw a7, 44(a0)
	addw a6, t0, t5
	mulw s6, a6, a7
	sh1add a7, a2, a2
	addw t5, t6, s6
	slliw s7, a7, 2
	lw a7, 48(a0)
	addi t6, s7, 132
	addw a6, t0, t6
	mulw s6, a6, a7
	mulw a7, a2, s5
	addw t6, t5, s6
	addi t5, a7, 156
	lw a7, 52(a0)
	addw a6, t0, t5
	mulw s6, a6, a7
	subw a6, t4, a2
	addw t5, t6, s6
	slliw t4, a2, 4
	slliw a7, a6, 1
	addi t6, a7, 182
	lw a7, 56(a0)
	addw a6, t0, t6
	mulw s6, a6, a7
	subw a6, t4, a2
	addw t6, t5, s6
	addiw a2, a2, 32
	addi a7, a6, 210
	lw s6, 60(a0)
	addw t5, t0, a7
	mulw a6, t5, s6
	addi t5, t4, 240
	addw a7, t6, a6
	addw t0, t0, t5
	addw t3, t3, a7
	ble s3, t2, label416
	addi a0, a0, 64
	j label181
label416:
	mv a3, t0
	mv a1, a2
	mv a5, t2
	mv a4, t3
label158:
	ble s2, a5, label267
	sh2add a0, a5, s0
	mv a2, a5
label168:
	lw a5, 0(a0)
	addw t4, a1, a3
	lw t1, 4(a0)
	mulw t3, a3, a5
	mulw t2, t1, t4
	addiw t4, a1, 1
	addw t0, t2, t3
	sh1add t1, t4, a3
	lw t3, 8(a0)
	sh1add t4, a1, a1
	mulw t2, t1, t3
	addiw t1, t4, 6
	addw a5, t0, t2
	lw t2, 12(a0)
	addw t0, a3, t1
	mulw t3, t0, t2
	slliw t2, a1, 2
	addw t1, a5, t3
	addiw a1, a1, 8
	addi t0, t2, 12
	addiw a5, a2, 4
	addw a4, a4, t1
	addw a3, a3, t0
	ble s2, a5, label300
	addi a0, a0, 16
	mv a2, a5
	j label168
label155:
	addiw a5, a5, 1
	bgt s1, a5, label209
	j label156
label300:
	mv a2, a1
	mv a0, a3
	mv a1, a4
	mv a3, a5
	mv a5, a4
	mv a4, a0
label193:
	ble s1, a3, label421
	sh2add a0, a3, s0
	mv a1, a4
	mv a4, a3
	mv a3, a5
	j label202
label208:
	addi a0, a0, 4
label202:
	lw t0, 0(a0)
	addiw a4, a4, 1
	mulw a5, a1, t0
	addw a1, a1, a2
	addw a3, a3, a5
	addiw a2, a2, 2
	bgt s1, a4, label208
label199:
	subw a1, zero, a3
	li a0, 47
	max s0, a1, a3
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s7, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s4, 64(sp)
	addi sp, sp, 72
	ret
label139:
	mv a4, s7
	mv a5, zero
	j label140
.p2align 2
label491:
	addiw a1, a1, 1
	bgt a2, a1, label154
	j label497
label421:
	mv a3, a1
	j label199
.p2align 2
label498:
	addiw a1, a1, 1
	bgt a2, a1, label154
label490:
	addiw a5, a5, 1
	bgt s1, a5, label209
	j label156
label263:
	mv a3, zero
	li a1, 1
	mv a5, zero
	mv a4, zero
	mv a2, zero
	mv t0, zero
	mv t3, zero
	mv t2, zero
	j label158
label259:
	mv a5, zero
	mv a3, zero
	li a2, 1
	mv a4, zero
	mv a1, zero
	j label193
.p2align 2
label499:
	addiw a5, a5, 1
	bgt s1, a5, label209
	j label156
label267:
	mv a0, t0
	mv a1, t3
	mv a3, t2
	mv a5, t3
	mv a4, t0
	j label193
label232:
	addiw a1, a1, 1
	bgt a2, a1, label154
	j label490
.p2align 2
cmmc_parallel_body_0:
	mv a2, a0
	addiw a4, a0, 3
pcrel137:
	auipc a0, %pcrel_hi(matrix)
	addi a3, a0, %pcrel_lo(pcrel137)
	ble a1, a4, label16
	addiw a0, a2, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label37
	sh2add a0, a2, a3
	j label4
.p2align 2
label7:
	addi a0, a0, 64
.p2align 2
label4:
	addiw t0, a2, 1
	addiw t4, a2, 15
	slli t1, t0, 32
	addiw t0, a2, 2
	add.uw t2, a2, t1
	addiw t1, a2, 3
	sd t2, 0(a0)
	slli t3, t1, 32
	addiw t1, a2, 4
	add.uw t2, t0, t3
	addiw t0, a2, 5
	sd t2, 8(a0)
	slli t3, t0, 32
	addiw t0, a2, 6
	add.uw t2, t1, t3
	addiw t1, a2, 7
	sd t2, 16(a0)
	slli t3, t1, 32
	addiw t1, a2, 8
	add.uw t2, t0, t3
	addiw t0, a2, 9
	sd t2, 24(a0)
	slli t2, t0, 32
	addiw t0, a2, 10
	add.uw t3, t1, t2
	addiw t1, a2, 11
	sd t3, 32(a0)
	slli t3, t1, 32
	addiw t1, a2, 12
	add.uw t2, t0, t3
	addiw t0, a2, 13
	sd t2, 40(a0)
	slli t2, t0, 32
	addiw t0, a2, 14
	add.uw t3, t1, t2
	addiw a2, a2, 16
	slli t2, t4, 32
	sd t3, 48(a0)
	add.uw t1, t0, t2
	sd t1, 56(a0)
	bgt a5, a2, label7
	mv a5, a2
label8:
	ble a4, a5, label16
	sh2add a0, a5, a3
label12:
	addiw a2, a5, 1
	addiw t2, a5, 3
	slli t0, a2, 32
	addiw a2, a5, 2
	add.uw t1, a5, t0
	addiw a5, a5, 4
	slli t0, t2, 32
	sd t1, 0(a0)
	add.uw t1, a2, t0
	sd t1, 8(a0)
	ble a4, a5, label92
	addi a0, a0, 16
	j label12
label92:
	mv a2, a5
label16:
	ble a1, a2, label23
	sh2add a0, a2, a3
	j label19
label22:
	addi a0, a0, 4
	mv a2, a3
label19:
	addiw a3, a2, 1
	sw a2, 0(a0)
	bgt a1, a3, label22
label23:
	ret
label37:
	mv a5, a2
	mv a2, zero
	j label8
