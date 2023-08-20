.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
a:
	.zero	4000000
.p2align 3
b:
	.zero	4000000
.p2align 3
c:
	.zero	4000000
.p2align 3
cmmc_parallel_body_payload_2:
	.zero	12
.p2align 3
cmmc_parallel_body_payload_3:
	.zero	16
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
pcrel2255:
	auipc a0, %pcrel_hi(a)
pcrel2256:
	auipc a1, %pcrel_hi(cmmc_parallel_body_3)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a0, %pcrel_lo(pcrel2255)
	sd s0, 16(sp)
pcrel2257:
	auipc a0, %pcrel_hi(c)
	sd s7, 24(sp)
pcrel2258:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s8, 32(sp)
	addi s8, s7, %pcrel_lo(pcrel2258)
	sd s1, 40(sp)
	addi s1, a0, %pcrel_lo(pcrel2257)
	sd s6, 48(sp)
pcrel2259:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	sd s9, 56(sp)
	addi s6, a0, %pcrel_lo(pcrel2259)
	mv s9, zero
	li a0, 125
	sd s2, 64(sp)
	slli s0, a0, 5
	addi s2, a1, %pcrel_lo(pcrel2256)
	sd s3, 72(sp)
	slli s3, s0, 1
	sd s4, 80(sp)
	sh1add s4, s0, s0
label1566:
	li a0, 1000
	bge s9, a0, label1571
	mv a0, s5
	jal getarray
	li a1, 1000
	beq a0, a1, label1570
label1599:
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s7, 24(sp)
	ld s8, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s9, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	addi sp, sp, 88
	ret
label1570:
	addiw s9, s9, 1
	add s5, s5, s0
	j label1566
label1571:
	li a0, 23
	jal _sysy_starttime
	li a1, 1000
	mv a0, zero
pcrel2260:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel2260)
	jal cmmcParallelFor
	li a1, 1000
	mv a0, zero
pcrel2261:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel2261)
	jal cmmcParallelFor
	mv s9, zero
	mv s5, s1
	mv a0, s1
	mv a1, zero
	lui a4, 524288
	addiw a2, a4, -1
	j label1575
.p2align 2
label1598:
	addi a0, a0, 256
.p2align 2
label1575:
	ld a3, 0(a0)
	addiw a1, a1, 64
	srai t1, a3, 32
	sext.w t0, a3
	min a5, a2, t0
	ld a2, 8(a0)
	min a4, a5, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a4, a3
	ld a3, 16(a0)
	min a5, t0, t1
	srai t2, a3, 32
	sext.w a4, a3
	min t0, a5, a4
	ld a4, 24(a0)
	min a2, t0, t2
	sext.w t1, a4
	srai t0, a4, 32
	min a5, a2, t1
	ld a2, 32(a0)
	min a3, a5, t0
	sext.w t1, a2
	srai t0, a2, 32
	min a5, a3, t1
	ld a3, 40(a0)
	min a4, a5, t0
	srai t1, a3, 32
	sext.w a2, a3
	min t0, a4, a2
	ld a2, 48(a0)
	min a5, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a5, a3
	ld a3, 56(a0)
	min a4, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a4, a2
	ld a2, 64(a0)
	min a5, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a5, a3
	ld a3, 72(a0)
	min a4, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a4, a2
	ld a2, 80(a0)
	min a5, t0, t1
	srai t2, a2, 32
	sext.w a3, a2
	min t0, a5, a3
	ld a3, 88(a0)
	min a4, t0, t2
	sext.w t1, a3
	srai t0, a3, 32
	min a5, a4, t1
	ld a4, 96(a0)
	min a2, a5, t0
	sext.w t1, a4
	srai t0, a4, 32
	min a5, a2, t1
	ld a2, 104(a0)
	min a3, a5, t0
	sext.w t1, a2
	srai t0, a2, 32
	min a5, a3, t1
	ld a3, 112(a0)
	min a4, a5, t0
	srai t1, a3, 32
	sext.w a2, a3
	min t0, a4, a2
	ld a2, 120(a0)
	min a5, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a5, a3
	ld a3, 128(a0)
	min a4, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a4, a2
	ld a2, 136(a0)
	min a5, t0, t1
	srai t2, a2, 32
	sext.w a4, a2
	min t0, a5, a4
	ld a4, 144(a0)
	min a3, t0, t2
	sext.w t1, a4
	srai t0, a4, 32
	min a5, a3, t1
	ld a3, 152(a0)
	min a2, a5, t0
	sext.w t1, a3
	srai t0, a3, 32
	min a5, a2, t1
	ld a2, 160(a0)
	min a4, a5, t0
	srai t1, a2, 32
	sext.w a3, a2
	min t0, a4, a3
	ld a3, 168(a0)
	min a5, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min a4, a5, a2
	ld a2, 176(a0)
	min t0, a4, t1
	sext.w a3, a2
	srai t1, a2, 32
	min a5, t0, a3
	ld a3, 184(a0)
	min a4, a5, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a4, a2
	ld a2, 192(a0)
	min a5, t0, t1
	sext.w a4, a2
	srai t1, a2, 32
	min t0, a5, a4
	ld a4, 200(a0)
	min a3, t0, t1
	sext.w t2, a4
	srai t0, a4, 32
	min a5, a3, t2
	ld a3, 208(a0)
	min a2, a5, t0
	sext.w t1, a3
	srai t0, a3, 32
	min a5, a2, t1
	ld a2, 216(a0)
	min a4, a5, t0
	srai t2, a2, 32
	sext.w t1, a2
	min a5, a4, t1
	ld a4, 224(a0)
	min a3, a5, t2
	srai t1, a4, 32
	sext.w t0, a4
	min a5, a3, t0
	ld a3, 232(a0)
	min a2, a5, t1
	sext.w t0, a3
	srai t1, a3, 32
	min a4, a2, t0
	ld a2, 240(a0)
	min a5, a4, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a5, a3
	ld a3, 248(a0)
	min a4, t0, t1
	sext.w t2, a3
	srai t0, a3, 32
	min a5, a4, t2
	li a3, 960
	min a2, a5, t0
	blt a1, a3, label1598
	ld a1, 256(a0)
	srai t0, a1, 32
	sext.w a5, a1
	min a3, a2, a5
	ld a2, 264(a0)
	min a4, a3, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 272(a0)
	min a3, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 280(a0)
	min a4, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 288(a0)
	min a3, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 296(a0)
	min a4, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a3, a4, a1
	ld a1, 304(a0)
	min a5, a3, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a4, a5, a2
	ld a2, 312(a0)
	min a3, a4, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a3, a1
	ld a1, 320(a0)
	min a4, a5, t0
	srai t1, a1, 32
	sext.w a3, a1
	min a5, a4, a3
	ld a3, 328(a0)
	min a2, a5, t1
	sext.w t0, a3
	srai t1, a3, 32
	min a4, a2, t0
	ld a2, 336(a0)
	min a1, a4, t1
	srai t0, a2, 32
	sext.w a5, a2
	min a4, a1, a5
	ld a1, 344(a0)
	min a3, a4, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 352(a0)
	min a4, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 360(a0)
	min a3, a5, t0
	sext.w t1, a1
	srai t0, a1, 32
	min a4, a3, t1
	ld a3, 368(a0)
	min a2, a4, t0
	sext.w a5, a3
	srai t0, a3, 32
	min a4, a2, a5
	ld a2, 376(a0)
	min a1, a4, t0
	sext.w a5, a2
	srai t0, a2, 32
	min a4, a1, a5
	ld a1, 384(a0)
	min a3, a4, t0
	sext.w a5, a1
	srai t0, a1, 32
	min a4, a3, a5
	ld a3, 392(a0)
	min a2, a4, t0
	sext.w a5, a3
	srai t0, a3, 32
	min a4, a2, a5
	ld a2, 400(a0)
	min a1, a4, t0
	sext.w a5, a2
	srai t0, a2, 32
	min a4, a1, a5
	ld a1, 408(a0)
	min a3, a4, t0
pcrel2262:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s5, %pcrel_lo(pcrel2262)(s7)
	srai a0, a1, 32
	sext.w a5, a1
	li a1, 1000
	min a4, a3, a5
	min a2, a4, a0
	mv a0, zero
	sw a2, 8(s8)
	mv a2, s6
	jal cmmcParallelFor
	li a0, 1000
	addiw s9, s9, 1
	bge s9, a0, label1580
	add s5, s5, s0
	mv a1, zero
	lui a4, 524288
	mv a0, s5
	addiw a2, a4, -1
	j label1575
label1580:
	mv a2, s1
	mv a0, zero
	mv a1, s1
	mv a4, zero
	j label1584
.p2align 2
label1596:
	addi a1, a1, 64
.p2align 2
label1584:
	mul t0, a4, s0
	addiw a4, a4, 16
	add a3, s1, t0
	sh2add a5, a0, a3
	add t2, a3, s0
	lw t1, 0(a5)
	sh2add a5, a0, t2
	subw t0, zero, t1
	add t2, a3, s3
	sw t0, 0(a1)
	lw t1, 0(a5)
	sh2add a5, a0, t2
	subw t0, zero, t1
	sw t0, 4(a1)
	add t0, a3, s4
	lw t3, 0(a5)
	sh2add t2, a0, t0
	subw t1, zero, t3
	li t0, 125
	sw t1, 8(a1)
	lw a5, 0(t2)
	slli t2, t0, 7
	subw t1, zero, a5
	add a5, a3, t2
	sh2add t3, a0, a5
	sw t1, 12(a1)
	lw t1, 0(t3)
	li t3, 625
	subw t0, zero, t1
	slli t1, t3, 5
	add a5, a3, t1
	sw t0, 16(a1)
	sh2add t4, a0, a5
	li a5, 375
	lw t0, 0(t4)
	subw t3, zero, t0
	slli t0, a5, 6
	add t4, a3, t0
	sw t3, 20(a1)
	sh2add t5, a0, t4
	lw a5, 0(t5)
	li t5, 875
	subw t3, zero, a5
	slli a5, t5, 5
	add t4, a3, a5
	sw t3, 24(a1)
	sh2add t3, a0, t4
	lw t6, 0(t3)
	slli t3, t2, 1
	subw t5, zero, t6
	add t6, a3, t3
	sh2add t4, a0, t6
	sw t5, 28(a1)
	li t5, 1125
	lw t2, 0(t4)
	subw t3, zero, t2
	slli t2, t5, 5
	add t4, a3, t2
	sw t3, 32(a1)
	slli t2, t1, 1
	sh2add t3, a0, t4
	lw t5, 0(t3)
	subw t6, zero, t5
	add t5, a3, t2
	sh2add t4, a0, t5
	sw t6, 36(a1)
	lw t3, 0(t4)
	li t4, 1375
	subw t1, zero, t3
	slli t3, t4, 5
	add t2, a3, t3
	sw t1, 40(a1)
	sh2add t1, a0, t2
	slli t2, t0, 1
	lw t4, 0(t1)
	add t1, a3, t2
	subw t3, zero, t4
	li t2, 1625
	sh2add t4, a0, t1
	slli t1, t2, 5
	sw t3, 44(a1)
	lw t3, 0(t4)
	subw t0, zero, t3
	add t3, a3, t1
	sh2add t4, a0, t3
	sw t0, 48(a1)
	slli t3, a5, 1
	lw t0, 0(t4)
	add t1, a3, t3
	li t4, 1875
	subw t2, zero, t0
	slli t3, t4, 5
	sh2add t0, a0, t1
	sw t2, 52(a1)
	lw a5, 0(t0)
	add t0, a3, t3
	subw t2, zero, a5
	sh2add t1, a0, t0
	sw t2, 56(a1)
	lw a5, 0(t1)
	subw t2, zero, a5
	li a5, 992
	sw t2, 60(a1)
	blt a4, a5, label1596
	li t0, 125
	lui t2, 17
	slli a5, t0, 9
	add t1, a3, a5
	sh2add a4, a0, t1
	lw t0, 0(a4)
	addiw a4, t2, -1632
	subw a5, zero, t0
	li t2, 1125
	add t0, a3, a4
	sh2add t1, a0, t0
	sw a5, 64(a1)
	lw a5, 0(t1)
	subw a4, zero, a5
	slli a5, t2, 6
	lui t2, 19
	add t1, a3, a5
	sw a4, 68(a1)
	sh2add t0, a0, t1
	lw a4, 0(t0)
	subw a5, zero, a4
	addiw a4, t2, -1824
	li t2, 625
	add t1, a3, a4
	sw a5, 72(a1)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw a4, zero, a5
	slli a5, t2, 7
	add t0, a3, a5
	sw a4, 76(a1)
	sh2add t1, a0, t0
	lui t0, 21
	lw a4, 0(t1)
	subw a5, zero, a4
	addiw a4, t0, -2016
	add t1, a3, a4
	sw a5, 80(a1)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	li a5, 1375
	subw a4, zero, t0
	slli t2, a5, 6
	add t1, a3, t2
	sw a4, 84(a1)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	lui t0, 22
	subw a4, zero, a5
	addiw t1, t0, 1888
	add a5, a3, t1
	sw a4, 88(a1)
	sh2add a4, a0, a5
	addiw a0, a0, 1
	lw t0, 0(a4)
	li a4, 1000
	subw a3, zero, t0
	sw a3, 92(a1)
	bge a0, a4, label1588
	add a2, a2, s0
	mv a4, zero
	mv a1, a2
	j label1584
label1588:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv s4, zero
	mv s6, zero
	addi s3, a0, %pcrel_lo(label1588)
.p2align 2
label1589:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv a0, zero
	li a1, 1000
	sw s6, %pcrel_lo(label1589)(s5)
	sw s6, 4(s3)
	sd s1, 8(s3)
	mv a2, s2
	jal cmmcParallelFor
	li a0, 1000
	addiw s4, s4, 1
	lw s6, %pcrel_lo(label1589)(s5)
	bge s4, a0, label1593
	add s1, s1, s0
	j label1589
label1593:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s6
	jal putint
	mv a0, zero
	j label1599
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -32
	mv t4, a1
pcrel1081:
	auipc a2, %pcrel_hi(b)
pcrel1082:
	auipc a1, %pcrel_hi(a)
	sd s0, 0(sp)
	addi t3, a2, %pcrel_lo(pcrel1081)
	addi t5, a1, %pcrel_lo(pcrel1082)
	li a2, 125
	sd s1, 8(sp)
	slli a3, a2, 5
	sd s2, 16(sp)
	sh2add t1, a3, a3
	sh1add a5, a3, a3
	slli a4, a3, 1
	sd s3, 24(sp)
	slli t2, a5, 1
	slli t0, a4, 1
	j label2
.p2align 2
label8:
	li a6, 125
	lui s2, 63
	slli t6, a6, 11
	add a7, a1, t6
	sh2add s0, a0, a7
	add a7, a2, t6
	lw a6, 0(s0)
	addiw t6, s2, 1952
	sh2add s1, a0, a7
	lui s2, 64
	add a7, a1, t6
	sw a6, 0(s1)
	sh2add s0, a0, a7
	add a7, a2, t6
	lw a6, 0(s0)
	addiw t6, s2, 1856
	sh2add s1, a0, a7
	lui s2, 65
	add a7, a1, t6
	sw a6, 0(s1)
	sh2add s0, a0, a7
	add a7, a2, t6
	lw a6, 0(s0)
	addiw t6, s2, 1760
	sh2add s1, a0, a7
	lui s2, 66
	add a7, a1, t6
	sw a6, 0(s1)
	sh2add s0, a0, a7
	add s1, a2, t6
	lw a6, 0(s0)
	addiw t6, s2, 1664
	sh2add a7, a0, s1
	lui s2, 67
	add s0, a1, t6
	add s1, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, 1568
	sh2add a7, a0, s0
	lui s2, 68
	lw a6, 0(a7)
	sh2add a7, a0, s1
	add s1, a2, t6
	sw a6, 0(a7)
	add a7, a1, t6
	addiw t6, s2, 1472
	sh2add s0, a0, a7
	li s2, 1125
	sh2add a7, a0, s1
	lw a6, 0(s0)
	add s1, a2, t6
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s0, a0, a7
	sh2add a7, a0, s1
	lw a6, 0(s0)
	lui s0, 69
	addiw t6, s0, 1376
	sw a6, 0(a7)
	add s0, a2, t6
	add s1, a1, t6
	slli t6, s2, 8
	sh2add a7, a0, s1
	lui s2, 73
	lw a6, 0(a7)
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	lui a7, 71
	addiw t6, a7, 1184
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	lui s1, 72
	lw a6, 0(a7)
	addiw t6, s1, 1088
	sh2add a7, a0, s0
	add s1, a2, t6
	sw a6, 0(a7)
	add a7, a1, t6
	addiw t6, s2, 992
	sh2add s0, a0, a7
	lui s2, 75
	sh2add a7, a0, s1
	lw a6, 0(s0)
	add s1, a2, t6
	add s0, a1, t6
	sw a6, 0(a7)
	sh2add a7, a0, s0
	lui s0, 74
	lw a6, 0(a7)
	addiw t6, s0, 896
	sh2add a7, a0, s1
	add s0, a2, t6
	add s1, a1, t6
	sw a6, 0(a7)
	addiw t6, s2, 800
	sh2add a7, a0, s1
	lui s2, 77
	lw a6, 0(a7)
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	lui a7, 76
	addiw t6, a7, 704
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, 608
	lw a6, 0(a7)
	li s2, 625
	add s1, a1, t6
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	slli t6, s2, 9
	sh2add a7, a0, s1
	lui s2, 79
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, 416
	sh2add a7, a0, s1
	lui s2, 80
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, 320
	sh2add a7, a0, s1
	lui s2, 81
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, 224
	sh2add a7, a0, s1
	lui s2, 83
	lw a6, 0(a7)
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	lui a7, 82
	addiw t6, a7, 128
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, 32
	lw a6, 0(a7)
	lui s2, 85
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	lui a7, 84
	addiw t6, a7, -64
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, -160
	lw a6, 0(a7)
	lui s2, 87
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	li a7, 1375
	slli t6, a7, 8
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, -352
	lw a6, 0(a7)
	lui s2, 89
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	lui a7, 88
	addiw t6, a7, -448
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, -544
	lw a6, 0(a7)
	lui s2, 90
	add s1, a1, t6
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, -640
	sh2add a7, a0, s1
	lui s2, 91
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, -736
	sh2add a7, a0, s1
	lui s2, 93
	lw a6, 0(a7)
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	lui a7, 92
	addiw t6, a7, -832
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, -928
	lw a6, 0(a7)
	lui s2, 95
	sh2add a7, a0, s0
	sw a6, 0(a7)
	add a7, a1, t6
	sh2add s1, a0, a7
	add a7, a2, t6
	lw a6, 0(s1)
	sh2add s0, a0, a7
	li a7, 375
	slli t6, a7, 10
	sw a6, 0(s0)
	add s1, a1, t6
	add s0, a2, t6
	sh2add a7, a0, s1
	addiw t6, s2, -1120
	lw a6, 0(a7)
	lui s2, 96
	add s1, a1, t6
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, -1216
	sh2add a7, a0, s1
	lui s2, 99
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	sh2add a7, a0, s1
	lui s1, 97
	lw a6, 0(a7)
	addiw t6, s1, -1312
	sh2add a7, a0, s0
	add s1, a2, t6
	add s0, a1, t6
	sw a6, 0(a7)
	sh2add a7, a0, s0
	lui s0, 98
	lw a6, 0(a7)
	addiw t6, s0, -1408
	sh2add a7, a0, s1
	add s0, a2, t6
	add s1, a1, t6
	sw a6, 0(a7)
	addiw t6, s2, -1504
	sh2add a7, a0, s1
	lui s2, 100
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	addiw t6, s2, -1600
	sh2add a7, a0, s1
	add s1, a1, t6
	lw a6, 0(a7)
	sh2add a7, a0, s0
	add s0, a2, t6
	sw a6, 0(a7)
	sh2add a7, a0, s1
	lui s1, 101
	lw a6, 0(a7)
	addiw t6, s1, -1696
	sh2add a7, a0, s0
	add s1, a2, t6
	add s0, a1, t6
	sw a6, 0(a7)
	sh2add a1, a0, s1
	sh2add a7, a0, s0
	addiw a0, a0, 1
	lw a6, 0(a7)
	sw a6, 0(a1)
	ble t4, a0, label9
.p2align 2
label2:
	mv a1, t5
	mv t6, zero
.p2align 2
label4:
	mul a7, t6, a3
	addiw t6, t6, 64
	add a2, t3, a7
	sh2add a6, a0, a2
	add s1, a2, a3
	sh2add a7, a0, a1
	lw s0, 0(a7)
	sh2add a7, a0, s1
	add s1, a2, a4
	sw s0, 0(a6)
	add a6, a1, a3
	sh2add s0, a0, a6
	sh2add a6, a0, s1
	lw s2, 0(s0)
	sw s2, 0(a7)
	add s2, a1, a4
	sh2add s0, a0, s2
	add s2, a2, a5
	lw a7, 0(s0)
	add s0, a1, a5
	sh2add s1, a0, s0
	sw a7, 0(a6)
	add s0, a2, t0
	lw a6, 0(s1)
	sh2add a7, a0, s2
	add s2, a2, t1
	sw a6, 0(a7)
	add a7, a1, t0
	sh2add a6, a0, s0
	sh2add s1, a0, a7
	sh2add a7, a0, s2
	lw s0, 0(s1)
	li s2, 875
	sw s0, 0(a6)
	add s0, a2, t2
	add a6, a1, t1
	sh2add s3, a0, a6
	sh2add a6, a0, s0
	lw s1, 0(s3)
	sw s1, 0(a7)
	add s1, a1, t2
	sh2add a7, a0, s1
	lw s0, 0(a7)
	slli a7, s2, 5
	add s1, a2, a7
	sw s0, 0(a6)
	add s0, a1, a7
	sh2add a6, a0, s1
	sh2add s2, a0, s0
	li s1, 125
	lw a7, 0(s2)
	sw a7, 0(a6)
	slli a7, s1, 8
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	li s1, 1125
	lw a7, 0(s2)
	sw a7, 0(a6)
	slli a7, s1, 5
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	li s0, 625
	sw a7, 0(a6)
	slli a7, s0, 6
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	li s0, 1375
	lw a7, 0(s1)
	sw a7, 0(a6)
	slli a7, s0, 5
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	li s0, 375
	lw a7, 0(s2)
	sw a7, 0(a6)
	slli a7, s0, 7
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	li s1, 1625
	lw a7, 0(s0)
	sw a7, 0(a6)
	slli a7, s1, 5
	add s2, a1, a7
	add s0, a2, a7
	sh2add s1, a0, s2
	sh2add a6, a0, s0
	lw a7, 0(s1)
	li s0, 875
	sw a7, 0(a6)
	slli a7, s0, 6
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	li s0, 1875
	lw a7, 0(s1)
	sw a7, 0(a6)
	slli a7, s0, 5
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lw a7, 0(s0)
	li s2, 125
	sw a7, 0(a6)
	slli a7, s2, 9
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	lui s1, 17
	sw a7, 0(a6)
	addiw a7, s1, -1632
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	li s0, 1125
	lw a7, 0(s1)
	sw a7, 0(a6)
	slli a7, s0, 6
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	lui s0, 19
	lw a7, 0(s2)
	sw a7, 0(a6)
	addiw a7, s0, -1824
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	li s1, 625
	lw a7, 0(s0)
	sw a7, 0(a6)
	slli a7, s1, 7
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lui s0, 21
	lw a7, 0(s1)
	sw a7, 0(a6)
	addiw a7, s0, -2016
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	li s2, 1375
	lw a7, 0(s0)
	sw a7, 0(a6)
	slli a7, s2, 6
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	lui s1, 22
	sw a7, 0(a6)
	addiw a7, s1, 1888
	add s2, a1, a7
	add s0, a2, a7
	sh2add s1, a0, s2
	sh2add a6, a0, s0
	lw a7, 0(s1)
	li s0, 375
	sw a7, 0(a6)
	slli a7, s0, 8
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lui s0, 24
	lw a7, 0(s1)
	sw a7, 0(a6)
	addiw a7, s0, 1696
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	li s0, 1625
	lw a7, 0(s2)
	sw a7, 0(a6)
	slli a7, s0, 6
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	lui s0, 26
	lw a7, 0(s2)
	sw a7, 0(a6)
	addiw a7, s0, 1504
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	li s1, 875
	sw a7, 0(a6)
	slli a7, s1, 7
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lui s0, 28
	lw a7, 0(s1)
	sw a7, 0(a6)
	addiw a7, s0, 1312
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	li s0, 1875
	lw a7, 0(s1)
	sw a7, 0(a6)
	slli a7, s0, 6
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 30
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, 1120
	add s2, a1, a7
	add s0, a2, a7
	sh2add s1, a0, s2
	sh2add a6, a0, s0
	lw a7, 0(s1)
	li s0, 125
	sw a7, 0(a6)
	slli a7, s0, 10
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 32
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, 928
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 33
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, 832
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 34
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, 736
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	li s1, 1125
	lw a7, 0(s0)
	sw a7, 0(a6)
	slli a7, s1, 7
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lui s1, 36
	lw a7, 0(s2)
	sw a7, 0(a6)
	addiw a7, s1, 544
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	lui s0, 37
	sw a7, 0(a6)
	addiw a7, s0, 448
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 38
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, 352
	add s2, a1, a7
	add s0, a2, a7
	sh2add s1, a0, s2
	sh2add a6, a0, s0
	lw a7, 0(s1)
	li s0, 625
	sw a7, 0(a6)
	slli a7, s0, 8
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	lui s1, 40
	sw a7, 0(a6)
	addiw a7, s1, 160
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	lui s0, 41
	sw a7, 0(a6)
	addiw a7, s0, 64
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lw a7, 0(s1)
	lui s2, 42
	sw a7, 0(a6)
	addiw a7, s2, -32
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	li s0, 1375
	sw a7, 0(a6)
	slli a7, s0, 7
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lw a7, 0(s0)
	lui s2, 44
	sw a7, 0(a6)
	addiw a7, s2, -224
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	lui s1, 45
	sw a7, 0(a6)
	addiw a7, s1, -320
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lw a7, 0(s1)
	lui s2, 46
	sw a7, 0(a6)
	addiw a7, s2, -416
	add s2, a1, a7
	add s0, a2, a7
	sh2add s1, a0, s2
	sh2add a6, a0, s0
	lw a7, 0(s1)
	li s0, 375
	sw a7, 0(a6)
	slli a7, s0, 9
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lw a7, 0(s0)
	lui s2, 48
	sw a7, 0(a6)
	addiw a7, s2, -608
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	lw a7, 0(s2)
	lui s1, 49
	sw a7, 0(a6)
	addiw a7, s1, -704
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lui s1, 50
	lw a7, 0(s2)
	sw a7, 0(a6)
	addiw a7, s1, -800
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	li s0, 1625
	sw a7, 0(a6)
	slli a7, s0, 7
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 52
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, -992
	add s2, a1, a7
	add s0, a2, a7
	sh2add s1, a0, s2
	sh2add a6, a0, s0
	lw a7, 0(s1)
	lui s0, 53
	sw a7, 0(a6)
	addiw a7, s0, -1088
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lui s2, 54
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s2, -1184
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	lw a7, 0(s2)
	li s1, 875
	sw a7, 0(a6)
	slli a7, s1, 8
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	lui s0, 56
	sw a7, 0(a6)
	addiw a7, s0, -1376
	add s0, a1, a7
	add s1, a2, a7
	sh2add s2, a0, s0
	sh2add a6, a0, s1
	lw a7, 0(s2)
	lui s1, 57
	sw a7, 0(a6)
	addiw a7, s1, -1472
	add s1, a1, a7
	add s0, a2, a7
	sh2add s2, a0, s1
	sh2add a6, a0, s0
	lw a7, 0(s2)
	lui s0, 58
	sw a7, 0(a6)
	addiw a7, s0, -1568
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	li s1, 1875
	sw a7, 0(a6)
	slli a7, s1, 7
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lui s0, 60
	lw a7, 0(s1)
	sw a7, 0(a6)
	addiw a7, s0, -1760
	add s2, a1, a7
	add s1, a2, a7
	sh2add s0, a0, s2
	sh2add a6, a0, s1
	lw a7, 0(s0)
	lui s1, 61
	sw a7, 0(a6)
	addiw a7, s1, -1856
	add s1, a1, a7
	add s2, a2, a7
	sh2add s0, a0, s1
	sh2add a6, a0, s2
	lui s1, 62
	lw a7, 0(s0)
	sw a7, 0(a6)
	addiw a7, s1, -1952
	add s0, a1, a7
	add s2, a2, a7
	sh2add s1, a0, s0
	sh2add a6, a0, s2
	lw a7, 0(s1)
	sw a7, 0(a6)
	li a6, 960
	bge t6, a6, label8
	li a6, 125
	slli a2, a6, 11
	add a1, a1, a2
	j label4
label9:
	ld s0, 0(sp)
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	addi sp, sp, 32
	ret
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -56
	mv t1, a1
pcrel1303:
	auipc a4, %pcrel_hi(c)
	li a5, 125
	mv t4, a0
	addi a2, a4, %pcrel_lo(pcrel1303)
	slli a3, a5, 5
	sd s0, 0(sp)
	li a5, 1000
	mul a1, a0, a3
	sd s5, 8(sp)
pcrel1304:
	auipc a0, %pcrel_hi(b)
	add a4, a2, a1
	sd s1, 16(sp)
	addi t2, a0, %pcrel_lo(pcrel1304)
pcrel1305:
	auipc a1, %pcrel_hi(a)
	sd s6, 24(sp)
	addi t3, a1, %pcrel_lo(pcrel1305)
	sd s4, 32(sp)
	li a1, 992
	sd s3, 40(sp)
	sd s2, 48(sp)
	mul a0, t4, a3
	mv a2, t2
	mv t5, zero
	add t0, t3, a0
	mv a0, t0
	mv a6, zero
	mv a7, zero
	j label1090
.p2align 2
label1095:
	lw a6, 64(a0)
	lw s3, 64(t6)
	lw s1, 68(a0)
	mulw s2, a6, s3
	lw s3, 68(t6)
	addw s0, a7, s2
	lw s2, 72(a0)
	mulw a7, s1, s3
	lw s3, 72(t6)
	addw a6, s0, a7
	lw s0, 76(a0)
	mulw s1, s2, s3
	lw s2, 76(t6)
	addw a7, a6, s1
	lw s1, 80(a0)
	lw s3, 80(t6)
	mulw s4, s0, s2
	lw s0, 84(a0)
	addw a6, a7, s4
	mulw s2, s1, s3
	lw s3, 84(t6)
	addw a7, a6, s2
	lw s1, 88(a0)
	mulw s2, s0, s3
	lw s3, 88(t6)
	addw a6, a7, s2
	lw s0, 92(a0)
	mulw s2, s1, s3
	lw s1, 92(t6)
	addw a7, a6, s2
	sh2add t6, t5, a4
	addiw t5, t5, 1
	mulw a6, s0, s1
	addw a0, a7, a6
	sw a0, 0(t6)
	bge t5, a5, label1266
	add a2, a2, a3
	mv a0, t0
	mv a6, zero
	mv a7, zero
.p2align 2
label1090:
	sh2add t6, a6, a2
	lw s0, 0(a0)
	addiw a6, a6, 16
	lw s1, 0(t6)
	lw s4, 4(a0)
	lw s5, 4(t6)
	mulw s6, s0, s1
	mulw s3, s4, s5
	lw s4, 8(a0)
	addw s2, s3, s6
	lw s5, 8(t6)
	lw s3, 12(a0)
	mulw s1, s4, s5
	lw s5, 12(t6)
	addw s0, s2, s1
	lw s2, 16(a0)
	mulw s4, s3, s5
	lw s5, 16(t6)
	addw s1, s0, s4
	lw s3, 20(a0)
	mulw s4, s2, s5
	lw s5, 20(t6)
	addw s0, s1, s4
	lw s4, 24(a0)
	mulw s1, s3, s5
	lw s5, 24(t6)
	addw s2, s0, s1
	lw s3, 28(a0)
	mulw s0, s4, s5
	lw s4, 28(t6)
	addw s1, s2, s0
	lw s2, 32(a0)
	mulw s5, s3, s4
	lw s4, 32(t6)
	addw s0, s1, s5
	lw s3, 36(a0)
	lw s6, 36(t6)
	mulw s5, s2, s4
	lw s2, 40(a0)
	addw s1, s0, s5
	mulw s4, s3, s6
	lw s5, 40(t6)
	addw s0, s1, s4
	lw s3, 44(a0)
	mulw s4, s2, s5
	lw s5, 44(t6)
	addw s1, s0, s4
	lw s4, 48(a0)
	mulw s2, s3, s5
	lw s3, 48(t6)
	addw s0, s1, s2
	lw s2, 52(a0)
	lw s5, 52(t6)
	mulw s6, s4, s3
	lw s3, 56(a0)
	addw s1, s0, s6
	mulw s4, s2, s5
	lw s5, 56(t6)
	addw s0, s1, s4
	lw s2, 60(a0)
	lw s4, 60(t6)
	mulw s6, s3, s5
	addw s1, s0, s6
	mulw s3, s2, s4
	addw s0, s1, s3
	addw a7, a7, s0
	bge a6, a1, label1095
	addi a0, a0, 64
	j label1090
.p2align 2
label1266:
	addiw t4, t4, 1
	ble t1, t4, label1099
	add a4, a4, a3
	mul a0, t4, a3
	mv a2, t2
	mv t5, zero
	mv a6, zero
	mv a7, zero
	add t0, t3, a0
	mv a0, t0
	j label1090
label1099:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s4, 32(sp)
	ld s3, 40(sp)
	ld s2, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t0, a0
	mv a2, a1
	addiw a4, a0, 3
pcrel1409:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_2)
	ld a3, %pcrel_lo(pcrel1409)(a5)
	addi a1, a5, %pcrel_lo(pcrel1409)
	lw a0, 8(a1)
	ble a2, a4, label1307
	addiw t1, t0, 15
	addiw a4, a2, -3
	addiw a5, a2, -18
	bge t1, a4, label1358
	sh2add a1, t0, a3
	j label1317
.p2align 2
label1320:
	addi a1, a1, 64
.p2align 2
label1317:
	sw a0, 0(a1)
	addiw t0, t0, 16
	sw a0, 4(a1)
	sw a0, 8(a1)
	sw a0, 12(a1)
	sw a0, 16(a1)
	sw a0, 20(a1)
	sw a0, 24(a1)
	sw a0, 28(a1)
	sw a0, 32(a1)
	sw a0, 36(a1)
	sw a0, 40(a1)
	sw a0, 44(a1)
	sw a0, 48(a1)
	sw a0, 52(a1)
	sw a0, 56(a1)
	sw a0, 60(a1)
	bgt a5, t0, label1320
	mv a1, t0
label1321:
	ble a4, a1, label1307
	sh2add a5, a1, a3
label1325:
	sw a0, 0(a5)
	addiw a1, a1, 4
	sw a0, 4(a5)
	sw a0, 8(a5)
	sw a0, 12(a5)
	ble a4, a1, label1395
	addi a5, a5, 16
	j label1325
label1395:
	mv t0, a1
label1307:
	ble a2, t0, label1314
	sh2add a1, t0, a3
	j label1310
label1313:
	addi a1, a1, 4
label1310:
	addiw t0, t0, 1
	sw a0, 0(a1)
	bgt a2, t0, label1313
label1314:
	ret
label1358:
	mv a1, t0
	mv t0, zero
	j label1321
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
	addiw a5, a0, 3
pcrel1564:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a0, %pcrel_lo(pcrel1564)
	ld a3, 8(a2)
	ble a1, a5, label1452
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label1459
	sh2add a0, t0, a3
	mv t1, zero
	j label1427
.p2align 2
label1431:
	addi a0, a0, 64
.p2align 2
label1427:
	lw t4, 0(a0)
	addiw t0, t0, 16
	lw t5, 4(a0)
	addw t2, t1, t4
	lw t4, 8(a0)
	addw t3, t2, t5
	lw t5, 12(a0)
	addw t1, t3, t4
	lw t4, 16(a0)
	addw t2, t1, t5
	lw t5, 20(a0)
	addw t3, t2, t4
	lw t4, 24(a0)
	addw t1, t3, t5
	lw t5, 28(a0)
	addw t2, t1, t4
	lw t1, 32(a0)
	addw t3, t2, t5
	lw t5, 36(a0)
	addw t4, t3, t1
	lw t3, 40(a0)
	addw t2, t4, t5
	lw t6, 44(a0)
	addw t1, t2, t3
	lw t2, 48(a0)
	addw t4, t1, t6
	lw t1, 52(a0)
	addw t5, t4, t2
	lw t6, 56(a0)
	addw t3, t5, t1
	lw t4, 60(a0)
	addw t2, t3, t6
	addw t1, t2, t4
	bgt a5, t0, label1431
	mv a5, t0
	mv t2, t1
label1412:
	ble a4, a5, label1463
	sh2add a0, a5, a3
	mv t0, t2
	j label1421
label1425:
	addi a0, a0, 16
label1421:
	lw t1, 0(a0)
	addiw a5, a5, 4
	lw t4, 4(a0)
	addw t3, t0, t1
	lw t5, 8(a0)
	addw t2, t3, t4
	lw t3, 12(a0)
	addw t1, t2, t5
	addw t0, t1, t3
	bgt a4, a5, label1425
	mv a0, t0
	mv a4, t0
	mv t0, a5
label1432:
	ble a1, t0, label1541
	sh2add a0, t0, a3
	mv a3, a4
	j label1439
label1443:
	addi a0, a0, 4
label1439:
	lw a5, 0(a0)
	addiw t0, t0, 1
	addw a3, a3, a5
	bgt a1, t0, label1443
label1436:
	amoadd.w.aqrl a1, a3, (a2)
	ret
label1463:
	mv a0, t1
	mv a4, t1
	j label1432
label1459:
	mv a5, t0
	mv t2, zero
	mv t1, zero
	mv t0, zero
	j label1412
label1541:
	mv a3, a0
	j label1436
label1452:
	mv a4, zero
	mv a0, zero
	j label1432
