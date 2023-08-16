.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
x:
	.zero	864000000
.align 8
cmmc_parallel_body_payload_0:
	.zero	4
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
	sd ra, 0(sp)
	sd s6, 8(sp)
	sd s1, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s2, 40(sp)
	sd s3, 48(sp)
	sd s4, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s8, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
	jal getint
	mv s6, a0
	jal getint
	mv s0, a0
	li a0, 13
	jal _sysy_starttime
	li a0, 75
	addiw s1, s6, -2
pcrel1697:
	auipc a1, %pcrel_hi(x)
	addiw s2, s6, -1
	slli s3, a0, 5
	addi s5, a1, %pcrel_lo(pcrel1697)
	sub s4, zero, s3
	ble s6, zero, label1452
pcrel1698:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_0)
pcrel1699:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	sw s6, %pcrel_lo(pcrel1698)(a0)
	addi a2, a3, %pcrel_lo(pcrel1699)
	mv a1, s6
	mv a0, zero
	jal cmmcParallelFor
label1452:
	li a0, 1
	ble s2, a0, label1496
	lui a2, 352
	mv a3, s5
	addiw a0, a2, -1792
	li a2, 1
	add a1, s5, a0
	lui a5, 352
	addiw a2, a2, 1
	addiw a0, a5, -1792
	li a5, 2
	add a4, a1, a0
	bgt s2, a5, label1462
.p2align 2
label1458:
	li t0, 601
	slli a0, t0, 2
	lui t0, 352
	add a5, a3, a0
	addiw a3, t0, 612
	lw a4, 0(a5)
	add t2, a1, a3
	lw t1, 0(t2)
	lw t0, 4(a1)
	addw a5, a4, t1
	li a4, 1201
	addw a3, a5, t0
	slli t2, a4, 2
	add t0, a1, s3
	add a5, a1, t2
	addi t2, a0, 4
	lw t1, 0(a5)
	lw a5, 0(t0)
	addw a4, a3, t1
	add t1, a1, t2
	addw a3, a4, a5
	li t2, 2
	lw a5, 0(t1)
	add t1, a1, a0
	addw t0, a3, a5
	divw a4, t0, s0
	sw a4, 0(t1)
	ble s2, a2, label1526
.p2align 2
label1461:
	lui a5, 352
	mv a3, a1
	addiw a2, a2, 1
	addiw a4, a5, -1792
	add a0, a1, a4
	mv a1, a0
	addiw a0, a5, -1792
	li a5, 2
	add a4, a1, a0
	ble s2, a5, label1458
.p2align 2
label1462:
	add a0, a1, s3
	li t2, 1
	mul t5, t2, s3
	add t0, a0, s4
	add t1, a0, s3
	add a5, a4, t5
	add t3, a3, t5
	li t5, 1
	addi t4, t3, 4
	j label1466
.p2align 2
label1469:
	bgt s2, t5, label1470
	addiw t2, t2, 1
	ble s2, t2, label1686
.p2align 2
label1476:
	add a0, a0, s3
	mul t5, t2, s3
	add t1, a0, s3
	add t0, a0, s4
	add a5, a4, t5
	add t3, a3, t5
	li t5, 1
	addi t4, t3, 4
.p2align 2
label1466:
	sh2add a6, t5, a5
	lw s7, 0(t4)
	sh2add a7, t5, t0
	lw s9, 0(a6)
	lw s8, 0(a7)
	addw t6, s7, s9
	sh2add s7, t5, t1
	addw s9, t6, s8
	lw s11, 0(s7)
	sh2add t6, t5, a0
	addw s8, s9, s11
	addiw t5, t5, 2
	lw s10, -4(t6)
	addw s9, s8, s10
	lw s8, 4(t6)
	addw s11, s9, s8
	divw s8, s11, s0
	sw s8, 0(t6)
	lw s9, 4(t4)
	lw s11, 4(a6)
	lw a6, 4(a7)
	addw s8, s9, s11
	lw a7, 4(s7)
	addw s10, s8, a6
	lw s8, 0(t6)
	addw a6, s10, a7
	lw s9, 8(t6)
	addw a7, a6, s8
	addw s7, a7, s9
	divw a6, s7, s0
	sw a6, 4(t6)
	ble s1, t5, label1469
	addi t4, t4, 8
	j label1466
.p2align 2
label1470:
	sh2add t3, t5, t3
.p2align 2
label1471:
	sh2add t6, t5, a5
	lw a6, 0(t3)
	sh2add a7, t5, t0
	lw s7, 0(t6)
	addw t4, a6, s7
	sh2add s7, t5, t1
	lw a6, 0(a7)
	lw a7, 0(s7)
	addw t6, t4, a6
	sh2add t4, t5, a0
	addw a6, t6, a7
	addiw t5, t5, 1
	lw s8, -4(t4)
	lw a7, 4(t4)
	addw t6, a6, s8
	addw s7, t6, a7
	divw a6, s7, s0
	sw a6, 0(t4)
	ble s2, t5, label1613
	addi t3, t3, 4
	j label1471
.p2align 2
label1613:
	addiw t2, t2, 1
	bgt s2, t2, label1476
	bgt s2, a2, label1461
	j label1526
.p2align 2
label1686:
	bgt s2, a2, label1461
label1526:
	mv s0, a1
	mv s1, t2
label1478:
	li a0, 53
	jal _sysy_stoptime
	mv a0, s6
	mv a1, s5
	jal putarray
	lui a4, 352
	srliw a0, s6, 31
	addiw a5, a4, -1792
	add a1, s6, a0
	sraiw a2, a1, 1
	mul a4, a2, s3
	mul a0, a2, a5
	add a3, s5, a0
	mv a0, s6
	add a1, a3, a4
	jal putarray
	mv a0, s6
	addiw a3, s1, -1
	mul a2, a3, s3
	add a1, s0, a2
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s6, 8(sp)
	ld s1, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s4, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s8, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
label1496:
	mv s0, s5
	li s1, 1
	j label1478
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -24
	mv t6, a0
pcrel1448:
	auipc a4, %pcrel_hi(cmmc_parallel_body_payload_0)
	li a3, 75
	sd s2, 0(sp)
	li a0, 1
	sd s1, 8(sp)
	sd s0, 16(sp)
	lw a2, %pcrel_lo(pcrel1448)(a4)
	slli a4, a3, 5
	ble a2, zero, label240
	addiw t4, a1, -57
	addiw t3, a1, -26
	addiw t2, a1, -11
	addiw t0, a1, -4
	addiw a5, a1, -1
pcrel1449:
	auipc a3, %pcrel_hi(x)
	addi t1, a3, %pcrel_lo(pcrel1449)
	bgt a2, a0, label3
	addiw a2, t6, 1
	ble a1, a2, label186
	addiw a3, t6, 3
	ble a5, a3, label693
	addiw a3, t6, 7
	ble t0, a3, label711
	addiw a3, t6, 15
	ble t2, a3, label731
	addiw a2, t6, 31
	ble t3, a2, label736
	lui t5, 352
	addiw a3, t5, -1792
	mul a4, t6, a3
	mv a3, t6
	add a2, t1, a4
.p2align 2
label216:
	addiw a3, a3, 32
	lui t5, 352
	sw a0, 0(a2)
	addiw a4, t5, -1792
	slli a6, a4, 1
	add t6, a2, a4
	add t5, a2, a6
	sw a0, 0(t6)
	sh1add t6, a4, a4
	sw a0, 0(t5)
	add a7, a2, t6
	slli t5, a6, 1
	sw a0, 0(a7)
	sh2add a6, a4, a4
	add a7, a2, t5
	add s0, a2, a6
	sw a0, 0(a7)
	slli a7, t6, 1
	sw a0, 0(s0)
	add a6, a2, a7
	lui a7, 2461
	sw a0, 0(a6)
	addiw t6, a7, -256
	slli a7, t5, 1
	add a6, a2, t6
	sh3add t5, a4, a4
	add t6, a2, a7
	sw a0, 0(a6)
	lui a7, 5977
	add a6, a2, t5
	sw a0, 0(t6)
	lui t6, 3516
	sw a0, 0(a6)
	addiw t5, t6, -1536
	lui a6, 4570
	lui t6, 3867
	add a4, a2, t5
	addiw t5, t6, 768
	sw a0, 0(a4)
	lui t6, 4219
	add a4, a2, t5
	addiw t5, t6, -1024
	sw a0, 0(a4)
	addiw t6, a6, 1280
	add a4, a2, t5
	lui a6, 4922
	add t5, a2, t6
	sw a0, 0(a4)
	lui t6, 5273
	addiw a4, a6, -512
	sw a0, 0(t5)
	lui a6, 5625
	add t5, a2, a4
	addiw a4, t6, 1792
	sw a0, 0(t5)
	add t6, a2, a6
	add t5, a2, a4
	addiw a4, a7, -1792
	sw a0, 0(t5)
	add t5, a2, a4
	sw a0, 0(t6)
	lui t6, 6328
	sw a0, 0(t5)
	addiw a4, t6, 512
	lui t6, 6680
	add t5, a2, a4
	addiw a4, t6, -1280
	sw a0, 0(t5)
	lui t6, 7031
	add t5, a2, a4
	addiw a4, t6, 1024
	sw a0, 0(t5)
	lui t6, 7383
	add t5, a2, a4
	addiw a4, t6, -768
	sw a0, 0(t5)
	lui t6, 7734
	add t5, a2, a4
	addiw a4, t6, 1536
	sw a0, 0(t5)
	lui t6, 8086
	add t5, a2, a4
	addiw a4, t6, -256
	sw a0, 0(t5)
	lui t6, 8438
	add t5, a2, a4
	addiw a4, t6, -2048
	sw a0, 0(t5)
	lui t6, 8789
	add t5, a2, a4
	addiw a4, t6, 256
	sw a0, 0(t5)
	lui t6, 9141
	add t5, a2, a4
	addiw a4, t6, -1536
	sw a0, 0(t5)
	lui t6, 9492
	add t5, a2, a4
	addiw a4, t6, 768
	sw a0, 0(t5)
	lui t6, 9844
	add t5, a2, a4
	addiw a4, t6, -1024
	sw a0, 0(t5)
	lui t6, 10195
	add t5, a2, a4
	addiw a4, t6, 1280
	sw a0, 0(t5)
	lui t6, 10547
	add t5, a2, a4
	addiw a4, t6, -512
	sw a0, 0(t5)
	lui t6, 10898
	add t5, a2, a4
	addiw a4, t6, 1792
	sw a0, 0(t5)
	add t5, a2, a4
	sw a0, 0(t5)
	ble t4, a3, label774
	lui a4, 11250
	add a2, a2, a4
	j label216
label240:
	ld s2, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	addi sp, sp, 24
	ret
label774:
	mv t6, a3
label220:
	ble t3, t6, label779
	lui t4, 352
	addiw a3, t4, -1792
	mul a4, t6, a3
	add a2, t1, a4
label224:
	addiw a3, t6, 16
	lui t5, 352
	sw a0, 0(a2)
	addiw a4, t5, -1792
	sh1add t5, a4, a4
	slli t6, a4, 1
	add t4, a2, a4
	add a7, a2, t5
	add a6, a2, t6
	sw a0, 0(t4)
	slli t4, t6, 1
	sw a0, 0(a6)
	sh2add t6, a4, a4
	add a6, a2, t4
	sw a0, 0(a7)
	add a7, a2, t6
	sw a0, 0(a6)
	slli a6, t5, 1
	sw a0, 0(a7)
	add t6, a2, a6
	lui a7, 2461
	slli a6, t4, 1
	sw a0, 0(t6)
	addiw t5, a7, -256
	add t6, a2, t5
	add t5, a2, a6
	sw a0, 0(t6)
	lui a6, 3516
	sh3add t6, a4, a4
	sw a0, 0(t5)
	addiw a4, a6, -1536
	add t4, a2, t6
	add t5, a2, a4
	lui t6, 3867
	sw a0, 0(t4)
	addiw t4, t6, 768
	sw a0, 0(t5)
	lui t6, 4219
	add a4, a2, t4
	addiw t4, t6, -1024
	sw a0, 0(a4)
	lui t6, 4570
	add t5, a2, t4
	addiw a4, t6, 1280
	sw a0, 0(t5)
	lui t6, 4922
	add t4, a2, a4
	addiw a4, t6, -512
	sw a0, 0(t4)
	lui t6, 5273
	add t5, a2, a4
	addiw t4, t6, 1792
	sw a0, 0(t5)
	add a4, a2, t4
	sw a0, 0(a4)
	bgt t3, a3, label227
label779:
	mv a2, a3
	mv t6, a3
label230:
	bgt t2, t6, label235
	mv t6, a2
	j label203
label3:
	addiw a3, a2, -1
	li a5, 3
	bgt a3, a5, label4
	lui t3, 352
	mv t4, zero
	addiw t0, t3, -1792
	mul t2, t6, t0
	mv t0, t6
	add a5, t1, t2
	mv t2, zero
	mv t3, a5
	mv t1, a5
	j label171
.p2align 2
label1347:
	addiw t0, t0, 1
	ble a1, t0, label240
.p2align 2
label183:
	lui t2, 352
	li t4, 2
	li a6, 1
	addiw t1, t2, -1792
	slli t5, a6, 32
	mv t2, zero
	add a5, a5, t1
	addi t6, t5, 1
	mv t3, a5
	mv t1, a5
	sd t6, 0(a5)
	ble a3, t4, label1385
.p2align 2
label174:
	addi t3, t3, 8
.p2align 2
label171:
	addiw t4, t4, 2
	li a6, 1
	slli t5, a6, 32
	addi t6, t5, 1
	sd t6, 0(t3)
	bgt a3, t4, label174
	bgt a2, t4, label176
.p2align 2
label1345:
	addiw t2, t2, 1
	bgt a2, t2, label184
.p2align 2
label1366:
	addiw t0, t0, 1
	bgt a1, t0, label183
	j label240
.p2align 2
label180:
	addi t3, t3, 4
	mv t4, t5
.p2align 2
label177:
	addiw t5, t4, 1
	sw a0, 0(t3)
	bgt a2, t5, label180
	addiw t2, t2, 1
	ble a2, t2, label1347
.p2align 2
label184:
	add t1, t1, a4
	li t4, 2
	li a6, 1
	mv t3, t1
	slli t5, a6, 32
	addi t6, t5, 1
	sd t6, 0(t1)
	bgt a3, t4, label174
	bgt a2, t4, label176
	addiw t2, t2, 1
	bgt a2, t2, label184
	j label1366
.p2align 2
label1385:
	ble a2, t4, label1345
.p2align 2
label176:
	sh2add t3, t4, t1
	j label177
label239:
	lui t3, 2813
	mv t6, a3
	addiw a4, t3, -2048
	add a2, a2, a4
label236:
	addiw a3, t6, 8
	lui t4, 352
	sw a0, 0(a2)
	addiw a4, t4, -1792
	slli t4, a4, 1
	add t3, a2, a4
	add t5, a2, t4
	sw a0, 0(t3)
	sh1add t3, a4, a4
	sw a0, 0(t5)
	add a6, a2, t3
	slli t5, t4, 1
	sw a0, 0(a6)
	sh2add t4, a4, a4
	add t6, a2, t5
	slli a4, t3, 1
	add t5, a2, t4
	sw a0, 0(t6)
	add t4, a2, a4
	sw a0, 0(t5)
	lui t5, 2461
	sw a0, 0(t4)
	addiw a4, t5, -256
	add t3, a2, a4
	sw a0, 0(t3)
	bgt t2, a3, label239
	mv a2, a3
	mv t6, a3
label203:
	bgt t0, t6, label206
	mv t6, a2
label194:
	ble a5, t6, label697
	lui t0, 352
	addiw a3, t0, -1792
	mul a4, t6, a3
	add a2, t1, a4
label198:
	addiw t6, t6, 2
	lui t0, 352
	sw a0, 0(a2)
	addiw a3, t0, -1792
	add a4, a2, a3
	sw a0, 0(a4)
	bgt a5, t6, label201
	j label186
label697:
	mv t6, a2
label186:
	ble a1, t6, label240
	lui a5, 352
	addiw a4, a5, -1792
	mul a3, t6, a4
	add a2, t1, a3
label189:
	addiw t6, t6, 1
	sw a0, 0(a2)
	ble a1, t6, label240
	lui a4, 352
	addiw a3, a4, -1792
	add a2, a2, a3
	j label189
label206:
	lui t2, 352
	addiw a3, t2, -1792
	mul a4, t6, a3
	add a2, t1, a4
label207:
	addiw a3, t6, 4
	lui t2, 352
	sw a0, 0(a2)
	addiw a4, t2, -1792
	slli t2, a4, 1
	add t3, a2, a4
	add t4, a2, t2
	sw a0, 0(t3)
	sh1add t3, a4, a4
	sw a0, 0(t4)
	add t2, a2, t3
	sw a0, 0(t2)
	ble t0, a3, label725
	lui t2, 1406
	mv t6, a3
	addiw a4, t2, 1024
	add a2, a2, a4
	j label207
label4:
	addiw a5, a2, -4
	li t0, 7
	bgt a5, t0, label5
	ble a5, zero, label240
	lui t4, 352
	addiw t2, t4, -1792
	mul t3, t6, t2
	mv t2, t6
	add t0, t1, t3
	mv t1, t0
	mv t3, zero
	mv t4, t0
	mv t5, zero
	j label143
.p2align 2
label146:
	addi t4, t4, 16
.p2align 2
label143:
	addiw t5, t5, 4
	li a7, 1
	slli a6, a7, 32
	addi t6, a6, 1
	sd t6, 0(t4)
	sd t6, 8(t4)
	bgt a5, t5, label146
.p2align 2
label600:
	bgt a3, t5, label159
	ble a2, t5, label1363
.p2align 2
label150:
	sh2add t4, t5, t1
	j label151
.p2align 2
label154:
	addi t4, t4, 4
	mv t5, t6
.p2align 2
label151:
	addiw t6, t5, 1
	sw a0, 0(t4)
	bgt a2, t6, label154
	addiw t3, t3, 1
	ble a2, t3, label156
.p2align 2
label158:
	add t1, t1, a4
	li t5, 4
	li a7, 1
	mv t4, t1
	slli a6, a7, 32
	addi t6, a6, 1
	sd t6, 0(t1)
	sd t6, 8(t1)
	bgt a5, t5, label146
	ble a3, t5, label1383
.p2align 2
label159:
	sh2add t4, t5, t1
.p2align 2
label160:
	addiw t6, t5, 2
	li s0, 1
	slli a6, s0, 32
	addi a7, a6, 1
	sd a7, 0(t4)
	ble a3, t6, label637
	addi t4, t4, 8
	mv t5, t6
	j label160
.p2align 2
label637:
	mv t5, t6
	bgt a2, t6, label150
	addiw t3, t3, 1
	bgt a2, t3, label158
	j label156
.p2align 2
label1383:
	bgt a2, t5, label150
	addiw t3, t3, 1
	bgt a2, t3, label158
label156:
	addiw t2, t2, 1
	ble a1, t2, label240
	lui t3, 352
	li t5, 4
	li a7, 1
	addiw t1, t3, -1792
	slli a6, a7, 32
	mv t3, zero
	add t0, t0, t1
	addi t6, a6, 1
	mv t4, t0
	mv t1, t0
	sd t6, 0(t0)
	sd t6, 8(t0)
	bgt a5, t5, label146
	j label600
.p2align 2
label1363:
	addiw t3, t3, 1
	bgt a2, t3, label158
	j label156
label5:
	addiw t0, a2, -11
	li t2, 15
	bgt t0, t2, label6
	ble t0, zero, label240
	lui t5, 352
	addiw t3, t5, -1792
	mul t4, t6, t3
	mv t3, t6
	add t2, t1, t4
	mv t1, t2
	mv t4, zero
	mv t5, t2
	mv t6, zero
	j label107
.p2align 2
label564:
	addiw t4, t4, 1
	ble a2, t4, label116
.p2align 2
label118:
	add t1, t1, a4
	li t6, 8
	li s0, 1
	mv t5, t1
	slli a7, s0, 32
	addi a6, a7, 1
	sd a6, 0(t1)
	sd a6, 8(t1)
	sd a6, 16(t1)
	sd a6, 24(t1)
	ble t0, t6, label1360
.p2align 2
label134:
	addi t5, t5, 32
.p2align 2
label107:
	addiw t6, t6, 8
	li s0, 1
	slli a7, s0, 32
	addi a6, a7, 1
	sd a6, 0(t5)
	sd a6, 8(t5)
	sd a6, 16(t5)
	sd a6, 24(t5)
	bgt t0, t6, label134
	ble a5, t6, label111
.p2align 2
label129:
	sh2add t5, t6, t1
.p2align 2
label130:
	addiw a6, t6, 4
	li s0, 1
	slli t6, s0, 32
	addi a7, t6, 1
	sd a7, 0(t5)
	sd a7, 8(t5)
	bgt a5, a6, label133
	mv t6, a6
	ble a3, a6, label1340
.p2align 2
label124:
	sh2add t5, t6, t1
	j label125
.p2align 2
label128:
	addi t5, t5, 8
.p2align 2
label125:
	addiw t6, t6, 2
	li s0, 1
	slli a7, s0, 32
	addi a6, a7, 1
	sd a6, 0(t5)
	bgt a3, t6, label128
	bgt a2, t6, label119
	addiw t4, t4, 1
	bgt a2, t4, label118
	j label116
.p2align 2
label119:
	sh2add t5, t6, t1
.p2align 2
label120:
	addiw a6, t6, 1
	sw a0, 0(t5)
	ble a2, a6, label564
	addi t5, t5, 4
	mv t6, a6
	j label120
.p2align 2
label111:
	bgt a3, t6, label124
	bgt a2, t6, label119
	addiw t4, t4, 1
	bgt a2, t4, label118
	j label116
.p2align 2
label1360:
	bgt a5, t6, label129
	bgt a3, t6, label124
	bgt a2, t6, label119
	addiw t4, t4, 1
	bgt a2, t4, label118
	j label116
.p2align 2
label1340:
	bgt a2, t6, label119
	addiw t4, t4, 1
	bgt a2, t4, label118
label116:
	addiw t3, t3, 1
	ble a1, t3, label240
	lui t4, 352
	mv t6, zero
	addiw t1, t4, -1792
	mv t4, zero
	add t2, t2, t1
	mv t5, t2
	mv t1, t2
	j label107
label6:
	addiw t2, a2, -26
	addiw t3, a2, -57
	li t4, 31
	ble t2, t4, label56
	lui a7, 352
	addiw a6, a7, -1792
	mul t4, t6, a6
	add t5, t1, t4
	mv t4, t5
	mv a6, zero
	mv t1, t5
	mv a7, zero
	j label14
.p2align 2
label17:
	addi t1, t1, 128
.p2align 2
label14:
	addiw a7, a7, 32
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(t1)
	sd s0, 8(t1)
	sd s0, 16(t1)
	sd s0, 24(t1)
	sd s0, 32(t1)
	sd s0, 40(t1)
	sd s0, 48(t1)
	sd s0, 56(t1)
	sd s0, 64(t1)
	sd s0, 72(t1)
	sd s0, 80(t1)
	sd s0, 88(t1)
	sd s0, 96(t1)
	sd s0, 104(t1)
	sd s0, 112(t1)
	sd s0, 120(t1)
	bgt t3, a7, label17
	ble t2, a7, label1324
	sh2add t1, a7, t4
	j label20
.p2align 2
label23:
	addi t1, t1, 64
.p2align 2
label20:
	addiw a7, a7, 16
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(t1)
	sd s0, 8(t1)
	sd s0, 16(t1)
	sd s0, 24(t1)
	sd s0, 32(t1)
	sd s0, 40(t1)
	sd s0, 48(t1)
	sd s0, 56(t1)
	bgt t2, a7, label23
	ble t0, a7, label1326
.p2align 2
label51:
	sh2add t1, a7, t4
	j label52
.p2align 2
label55:
	addi t1, t1, 32
.p2align 2
label52:
	addiw a7, a7, 8
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(t1)
	sd s0, 8(t1)
	sd s0, 16(t1)
	sd s0, 24(t1)
	bgt t0, a7, label55
	bgt a5, a7, label46
	bgt a3, a7, label41
	ble a2, a7, label1374
.p2align 2
label36:
	sh2add t1, a7, t4
.p2align 2
label37:
	addiw a7, a7, 1
	sw a0, 0(t1)
	ble a2, a7, label381
	addi t1, t1, 4
	j label37
.p2align 2
label1326:
	ble a5, a7, label1350
.p2align 2
label46:
	sh2add t1, a7, t4
.p2align 2
label47:
	addiw a7, a7, 4
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(t1)
	sd s0, 8(t1)
	bgt a5, a7, label50
	bgt a3, a7, label41
	bgt a2, a7, label36
	addiw a6, a6, 1
	bgt a2, a6, label35
	j label33
.p2align 2
label381:
	addiw a6, a6, 1
	ble a2, a6, label33
.p2align 2
label35:
	add t4, t4, a4
	mv a7, zero
	mv t1, t4
	j label14
.p2align 2
label1324:
	bgt t0, a7, label51
	bgt a5, a7, label46
	ble a3, a7, label1387
.p2align 2
label41:
	sh2add t1, a7, t4
	j label42
.p2align 2
label45:
	addi t1, t1, 8
.p2align 2
label42:
	addiw a7, a7, 2
	li s2, 1
	slli s1, s2, 32
	addi s0, s1, 1
	sd s0, 0(t1)
	bgt a3, a7, label45
	bgt a2, a7, label36
	addiw a6, a6, 1
	bgt a2, a6, label35
	j label33
.p2align 2
label1350:
	bgt a3, a7, label41
	bgt a2, a7, label36
	addiw a6, a6, 1
	bgt a2, a6, label35
	j label33
.p2align 2
label1387:
	bgt a2, a7, label36
	addiw a6, a6, 1
	bgt a2, a6, label35
label33:
	addiw t6, t6, 1
	ble a1, t6, label240
	lui t4, 352
	mv a6, zero
	mv a7, zero
	addiw t1, t4, -1792
	add t5, t5, t1
	mv t1, t5
	mv t4, t5
	j label14
.p2align 2
label1374:
	addiw a6, a6, 1
	bgt a2, a6, label35
	j label33
label56:
	ble t2, zero, label240
	lui a6, 352
	addiw t4, a6, -1792
	mul t5, t6, t4
	mv t4, t6
	add t3, t1, t5
	mv t1, t3
	mv t5, zero
	mv t6, t3
	mv a6, zero
	j label64
.p2align 2
label98:
	addi t6, t6, 64
.p2align 2
label64:
	addiw a6, a6, 16
	li s1, 1
	slli s0, s1, 32
	addi a7, s0, 1
	sd a7, 0(t6)
	sd a7, 8(t6)
	sd a7, 16(t6)
	sd a7, 24(t6)
	sd a7, 32(t6)
	sd a7, 40(t6)
	sd a7, 48(t6)
	sd a7, 56(t6)
	bgt t2, a6, label98
	ble t0, a6, label447
	sh2add t6, a6, t1
	j label69
.p2align 2
label72:
	addi t6, t6, 32
	mv a6, a7
.p2align 2
label69:
	addiw a7, a6, 8
	li s1, 1
	slli s0, s1, 32
	addi a6, s0, 1
	sd a6, 0(t6)
	sd a6, 8(t6)
	sd a6, 16(t6)
	sd a6, 24(t6)
	bgt t0, a7, label72
	mv a6, a7
	bgt a5, a7, label75
	bgt a3, a7, label82
	bgt a2, a7, label93
	addiw t5, t5, 1
	bgt a2, t5, label92
	j label90
.p2align 2
label1334:
	ble a2, a6, label1357
.p2align 2
label93:
	sh2add t6, a6, t1
.p2align 2
label94:
	addiw a7, a6, 1
	sw a0, 0(t6)
	ble a2, a7, label513
	addi t6, t6, 4
	mv a6, a7
	j label94
.p2align 2
label75:
	sh2add t6, a6, t1
.p2align 2
label76:
	addiw a6, a6, 4
	li s1, 1
	slli s0, s1, 32
	addi a7, s0, 1
	sd a7, 0(t6)
	sd a7, 8(t6)
	ble a5, a6, label476
	addi t6, t6, 16
	j label76
.p2align 2
label513:
	addiw t5, t5, 1
	ble a2, t5, label90
.p2align 2
label92:
	add t1, t1, a4
	mv a6, zero
	mv t6, t1
	j label64
.p2align 2
label476:
	ble a3, a6, label1334
.p2align 2
label82:
	sh2add t6, a6, t1
	j label83
.p2align 2
label86:
	addi t6, t6, 8
.p2align 2
label83:
	addiw a6, a6, 2
	li s1, 1
	slli s0, s1, 32
	addi a7, s0, 1
	sd a7, 0(t6)
	bgt a3, a6, label86
	bgt a2, a6, label93
	addiw t5, t5, 1
	bgt a2, t5, label92
	j label90
.p2align 2
label447:
	bgt a5, a6, label75
	bgt a3, a6, label82
	bgt a2, a6, label93
	addiw t5, t5, 1
	bgt a2, t5, label92
label90:
	addiw t4, t4, 1
	ble a1, t4, label240
	lui t5, 352
	mv a6, zero
	addiw t1, t5, -1792
	mv t5, zero
	add t3, t3, t1
	mv t6, t3
	mv t1, t3
	j label64
.p2align 2
label1357:
	addiw t5, t5, 1
	bgt a2, t5, label92
	j label90
.p2align 2
label133:
	addi t5, t5, 16
	mv t6, a6
	j label130
label235:
	lui t3, 352
	addiw a4, t3, -1792
	mul a3, t6, a4
	add a2, t1, a3
	j label236
label693:
	mv a2, zero
	j label194
label201:
	lui a4, 703
	addiw a3, a4, 512
	add a2, a2, a3
	j label198
label736:
	mv a3, zero
	j label220
.p2align 2
label50:
	addi t1, t1, 16
	j label47
label711:
	mv a2, zero
	j label203
label731:
	mv a2, zero
	j label230
label227:
	lui a4, 5625
	mv t6, a3
	add a2, a2, a4
	j label224
label725:
	mv a2, a3
	mv t6, a3
	j label194
