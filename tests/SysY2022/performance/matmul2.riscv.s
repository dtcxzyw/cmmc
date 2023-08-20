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
pcrel2037:
	auipc a0, %pcrel_hi(a)
pcrel2038:
	auipc a1, %pcrel_hi(cmmc_parallel_body_2)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a0, %pcrel_lo(pcrel2037)
	sd s0, 16(sp)
pcrel2039:
	auipc a0, %pcrel_hi(c)
	sd s7, 24(sp)
pcrel2040:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s8, 32(sp)
	addi s8, s7, %pcrel_lo(pcrel2040)
	sd s1, 40(sp)
	addi s1, a0, %pcrel_lo(pcrel2039)
	sd s6, 48(sp)
pcrel2041:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	addi s6, a1, %pcrel_lo(pcrel2038)
	sd s9, 56(sp)
	mv s9, zero
	sd s2, 64(sp)
	addi s2, a0, %pcrel_lo(pcrel2041)
	sd s3, 72(sp)
	li a0, 125
	sd s4, 80(sp)
	slli s0, a0, 5
	sh1add s4, s0, s0
	slli s3, s0, 1
label1349:
	li a0, 1000
	bge s9, a0, label1356
	mv a0, s5
	jal getarray
	li a1, 1000
	bne a0, a1, label1354
	addiw s9, s9, 1
	add s5, s5, s0
	j label1349
label1356:
	li a0, 23
	jal _sysy_starttime
	li a1, 1000
	mv a0, zero
pcrel2042:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel2042)
	jal cmmcParallelFor
	li a1, 1000
	mv a0, zero
pcrel2043:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel2043)
	jal cmmcParallelFor
	mv s9, zero
	mv s5, s1
	mv a0, s1
	mv a1, zero
	lui a3, 524288
	addiw a2, a3, -1
	j label1360
.p2align 2
label1383:
	addi a0, a0, 256
.p2align 2
label1360:
	ld a4, 0(a0)
	addiw a1, a1, 64
	srai t1, a4, 32
	sext.w a3, a4
	min t0, a2, a3
	ld a3, 8(a0)
	min a5, t0, t1
	srai t2, a3, 32
	sext.w a2, a3
	min t0, a5, a2
	ld a2, 16(a0)
	min a4, t0, t2
	sext.w t1, a2
	srai t2, a2, 32
	min a5, a4, t1
	ld a4, 24(a0)
	min a3, a5, t2
	srai t1, a4, 32
	sext.w t0, a4
	min a5, a3, t0
	ld a3, 32(a0)
	min a2, a5, t1
	srai t0, a3, 32
	sext.w t2, a3
	min a5, a2, t2
	ld a2, 40(a0)
	min a4, a5, t0
	srai t1, a2, 32
	sext.w a3, a2
	min t0, a4, a3
	ld a3, 48(a0)
	min a5, t0, t1
	srai t2, a3, 32
	sext.w a4, a3
	min t0, a5, a4
	ld a4, 56(a0)
	min a2, t0, t2
	sext.w t1, a4
	srai t0, a4, 32
	min a5, a2, t1
	ld a2, 64(a0)
	min a3, a5, t0
	sext.w t1, a2
	srai t0, a2, 32
	min a5, a3, t1
	ld a3, 72(a0)
	min a4, a5, t0
	srai t1, a3, 32
	sext.w a2, a3
	min t0, a4, a2
	ld a2, 80(a0)
	min a5, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a5, a3
	ld a3, 88(a0)
	min a4, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min a5, a4, a2
	ld a2, 96(a0)
	min t0, a5, t1
	sext.w a3, a2
	srai t1, a2, 32
	min a4, t0, a3
	ld a3, 104(a0)
	min a5, a4, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a5, a2
	ld a2, 112(a0)
	min a4, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a4, a3
	ld a3, 120(a0)
	min a5, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a5, a2
	ld a2, 128(a0)
	min a4, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a4, a3
	ld a3, 136(a0)
	min a5, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min a4, a5, a2
	ld a2, 144(a0)
	min t0, a4, t1
	sext.w a3, a2
	srai t1, a2, 32
	min a5, t0, a3
	ld a3, 152(a0)
	min a4, a5, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a4, a2
	ld a2, 160(a0)
	min a5, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a5, a3
	ld a3, 168(a0)
	min a4, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min t0, a4, a2
	ld a2, 176(a0)
	min a5, t0, t1
	sext.w a3, a2
	srai t1, a2, 32
	min a4, a5, a3
	ld a3, 184(a0)
	min t0, a4, t1
	sext.w a2, a3
	srai t1, a3, 32
	min a5, t0, a2
	ld a2, 192(a0)
	min a4, a5, t1
	sext.w t0, a2
	srai t1, a2, 32
	min a5, a4, t0
	ld a4, 200(a0)
	min a3, a5, t1
	sext.w t0, a4
	srai t1, a4, 32
	min a5, a3, t0
	ld a3, 208(a0)
	min a2, a5, t1
	sext.w t0, a3
	srai t1, a3, 32
	min a5, a2, t0
	ld a2, 216(a0)
	min a4, a5, t1
	sext.w a3, a2
	srai t1, a2, 32
	min t0, a4, a3
	ld a3, 224(a0)
	min a5, t0, t1
	sext.w a2, a3
	srai t1, a3, 32
	min a4, a5, a2
	ld a2, 232(a0)
	min t0, a4, t1
	sext.w a3, a2
	srai t1, a2, 32
	min a5, t0, a3
	ld a3, 240(a0)
	min a4, a5, t1
	srai t0, a3, 32
	sext.w t2, a3
	min a2, a4, t2
	ld a4, 248(a0)
	min a5, a2, t0
	sext.w t1, a4
	srai t0, a4, 32
	min a3, a5, t1
	li a4, 960
	min a2, a3, t0
	blt a1, a4, label1383
	ld a3, 256(a0)
	srai t0, a3, 32
	sext.w a1, a3
	min a5, a2, a1
	ld a1, 264(a0)
	min a4, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a4, a2
	ld a2, 272(a0)
	min a3, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a3, a1
	ld a1, 280(a0)
	min a4, a5, t0
	sext.w a3, a1
	srai t0, a1, 32
	min a5, a4, a3
	ld a3, 288(a0)
	min a2, a5, t0
	sext.w t1, a3
	srai a5, a3, 32
	min a4, a2, t1
	ld a2, 296(a0)
	min a1, a4, a5
	sext.w t0, a2
	srai a5, a2, 32
	min a4, a1, t0
	ld a1, 304(a0)
	min a3, a4, a5
	srai t0, a1, 32
	sext.w a2, a1
	min a5, a3, a2
	ld a2, 312(a0)
	min a4, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 320(a0)
	min a3, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 328(a0)
	min a4, a5, t0
	srai t1, a2, 32
	sext.w a3, a2
	min a5, a4, a3
	ld a3, 336(a0)
	min a1, a5, t1
	sext.w t0, a3
	srai t1, a3, 32
	min a4, a1, t0
	ld a1, 344(a0)
	min a2, a4, t1
	srai t0, a1, 32
	sext.w a5, a1
	min a3, a2, a5
	ld a2, 352(a0)
	min a4, a3, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 360(a0)
	min a3, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 368(a0)
	min a4, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 376(a0)
	min a3, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 384(a0)
	min a4, a5, t0
	sext.w a1, a2
	srai t0, a2, 32
	min a5, a4, a1
	ld a1, 392(a0)
	min a3, a5, t0
	sext.w a2, a1
	srai t0, a1, 32
	min a5, a3, a2
	ld a2, 400(a0)
	min a4, a5, t0
	srai t1, a2, 32
	sext.w a1, a2
	min a5, a4, a1
	ld a1, 408(a0)
	min a3, a5, t1
pcrel2044:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s5, %pcrel_lo(pcrel2044)(s7)
	srai a0, a1, 32
	sext.w t0, a1
	li a1, 1000
	min a4, a3, t0
	min a2, a4, a0
	mv a0, zero
	sw a2, 8(s8)
	mv a2, s6
	jal cmmcParallelFor
	li a0, 1000
	addiw s9, s9, 1
	bge s9, a0, label1365
	add s5, s5, s0
	mv a1, zero
	lui a3, 524288
	mv a0, s5
	addiw a2, a3, -1
	j label1360
label1381:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s6
	jal putint
	mv a0, zero
label1354:
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
label1365:
	mv a2, s1
	mv a0, zero
	mv a1, s1
	mv a4, zero
	j label1369
.p2align 2
label1372:
	addi a1, a1, 64
.p2align 2
label1369:
	mul t0, a4, s0
	li t5, 375
	li t6, 875
	addiw a4, a4, 16
	add a3, s1, t0
	sh2add a5, a0, a3
	add t3, a3, s4
	lw t1, 0(a5)
	add a5, a3, s0
	subw t0, zero, t1
	sh2add t1, a0, a5
	sw t0, 0(a1)
	lw t0, 0(t1)
	add t1, a3, s3
	subw t2, zero, t0
	sh2add a5, a0, t1
	sh2add t1, a0, t3
	sw t2, 4(a1)
	lw t2, 0(a5)
	subw t0, zero, t2
	sw t0, 8(a1)
	lw a5, 0(t1)
	li t1, 125
	subw t0, zero, a5
	slli t2, t1, 7
	add a5, a3, t2
	sw t0, 12(a1)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 625
	subw t3, zero, t1
	slli t1, t0, 5
	add a5, a3, t1
	sw t3, 16(a1)
	sh2add t4, a0, a5
	lw t0, 0(t4)
	subw t3, zero, t0
	slli t0, t5, 6
	add t4, a3, t0
	sw t3, 20(a1)
	sh2add a5, a0, t4
	lw t3, 0(a5)
	slli a5, t6, 5
	subw t5, zero, t3
	add t4, a3, a5
	sw t5, 24(a1)
	sh2add t5, a0, t4
	slli t4, t2, 1
	lw t3, 0(t5)
	subw t6, zero, t3
	add t3, a3, t4
	sh2add t5, a0, t3
	sw t6, 28(a1)
	lw t2, 0(t5)
	li t5, 1125
	subw t4, zero, t2
	slli t2, t5, 5
	sw t4, 32(a1)
	add t4, a3, t2
	sh2add t3, a0, t4
	lw t5, 0(t3)
	slli t3, t1, 1
	subw t2, zero, t5
	add t5, a3, t3
	li t3, 1375
	sw t2, 36(a1)
	sh2add t2, a0, t5
	lw t4, 0(t2)
	slli t2, t3, 5
	subw t1, zero, t4
	sw t1, 40(a1)
	add t1, a3, t2
	sh2add t5, a0, t1
	lw t3, 0(t5)
	slli t5, t0, 1
	subw t4, zero, t3
	add t2, a3, t5
	sh2add t1, a0, t2
	sw t4, 44(a1)
	li t4, 1625
	lw t3, 0(t1)
	slli t2, t4, 5
	subw t0, zero, t3
	sw t0, 48(a1)
	add t0, a3, t2
	sh2add t1, a0, t0
	lw t3, 0(t1)
	slli t1, a5, 1
	subw t2, zero, t3
	add t3, a3, t1
	sw t2, 52(a1)
	sh2add t2, a0, t3
	li t3, 1875
	lw t0, 0(t2)
	subw a5, zero, t0
	slli t0, t3, 5
	add t2, a3, t0
	sw a5, 56(a1)
	li t0, 992
	sh2add t1, a0, t2
	lw t3, 0(t1)
	subw a5, zero, t3
	sw a5, 60(a1)
	blt a4, t0, label1372
	li t2, 125
	slli a5, t2, 9
	add t1, a3, a5
	sh2add t0, a0, t1
	lw a4, 0(t0)
	lui t0, 17
	subw a5, zero, a4
	addiw a4, t0, -1632
	add t2, a3, a4
	sw a5, 64(a1)
	sh2add t1, a0, t2
	li t2, 1125
	lw t0, 0(t1)
	slli a4, t2, 6
	subw a5, zero, t0
	lui t2, 21
	add t1, a3, a4
	sh2add t0, a0, t1
	sw a5, 68(a1)
	lui t1, 19
	lw a5, 0(t0)
	addiw t0, t1, -1824
	subw a4, zero, a5
	add a5, a3, t0
	sw a4, 72(a1)
	sh2add a4, a0, a5
	lw t1, 0(a4)
	li a4, 625
	subw t0, zero, t1
	slli a5, a4, 7
	add t1, a3, a5
	sw t0, 76(a1)
	sh2add t0, a0, t1
	lw a4, 0(t0)
	subw a5, zero, a4
	addiw a4, t2, -2016
	li t2, 1375
	add t1, a3, a4
	sw a5, 80(a1)
	sh2add t0, a0, t1
	slli t1, t2, 6
	lw a5, 0(t0)
	add t0, a3, t1
	subw a4, zero, a5
	sh2add a5, a0, t0
	sw a4, 84(a1)
	lw a4, 0(a5)
	lui a5, 22
	subw t1, zero, a4
	addiw t0, a5, 1888
	sw t1, 88(a1)
	add t1, a3, t0
	sh2add a4, a0, t1
	addiw a0, a0, 1
	lw a5, 0(a4)
	li a4, 1000
	subw a3, zero, a5
	sw a3, 92(a1)
	bge a0, a4, label1879
	add a2, a2, s0
	mv a4, zero
	mv a1, a2
	j label1369
label1879:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv s4, zero
	mv s6, zero
	addi s3, a1, %pcrel_lo(label1879)
.p2align 2
label1376:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv a0, zero
	li a1, 1000
	sw s6, %pcrel_lo(label1376)(s5)
	sw s6, 4(s3)
	sd s1, 8(s3)
	mv a2, s2
	jal cmmcParallelFor
	li a0, 1000
	addiw s4, s4, 1
	lw s6, %pcrel_lo(label1376)(s5)
	bge s4, a0, label1381
	add s1, s1, s0
	j label1376
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -24
	mv t5, a1
pcrel772:
	auipc a4, %pcrel_hi(b)
	li a5, 125
	sd s1, 0(sp)
	addi a2, a4, %pcrel_lo(pcrel772)
	slli a3, a5, 5
	sd s0, 8(sp)
	sh2add t2, a3, a3
	sh1add t0, a3, a3
	slli a5, a3, 1
	mul a1, a0, a3
	sd s2, 16(sp)
	slli t3, t0, 1
	slli t1, a5, 1
	add t4, a2, a1
pcrel773:
	auipc a1, %pcrel_hi(a)
	addi a4, a1, %pcrel_lo(pcrel773)
	mv a1, t4
	mv t6, zero
	j label5
.p2align 2
label9:
	li a6, 125
	lui s0, 63
	slli t6, a6, 11
	add a7, a2, t6
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addiw a6, s0, 1952
	lui s0, 64
	add a7, a2, a6
	sw t6, 256(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, 1856
	lui s0, 66
	add a7, a2, t6
	sw a6, 260(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	lui a6, 65
	sw t6, 264(a1)
	addiw t6, a6, 1760
	add a7, a2, t6
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addiw a6, s0, 1664
	lui s0, 67
	add a7, a2, a6
	sw t6, 268(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, 1568
	add a7, a2, t6
	sw a6, 272(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	lui a6, 68
	addiw a7, a6, 1472
	sw t6, 276(a1)
	add t6, a2, a7
	sh2add a6, a0, t6
	lui t6, 69
	lw a7, 0(a6)
	addiw a6, t6, 1376
	sw a7, 280(a1)
	add a7, a2, a6
	sh2add t6, a0, a7
	li a7, 1125
	lw a6, 0(t6)
	slli t6, a7, 8
	add s0, a2, t6
	sw a6, 284(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	lui a7, 71
	addiw t6, a7, 1184
	sw a6, 288(a1)
	add s0, a2, t6
	lui t6, 72
	sh2add a6, a0, s0
	lw a7, 0(a6)
	addiw a6, t6, 1088
	sw a7, 292(a1)
	add a7, a2, a6
	sh2add t6, a0, a7
	lui a7, 73
	lw a6, 0(t6)
	addiw t6, a7, 992
	add s0, a2, t6
	sw a6, 296(a1)
	lui t6, 74
	sh2add a6, a0, s0
	lw a7, 0(a6)
	addiw a6, t6, 896
	sw a7, 300(a1)
	add a7, a2, a6
	sh2add t6, a0, a7
	lui a7, 75
	lw a6, 0(t6)
	addiw t6, a7, 800
	add s0, a2, t6
	sw a6, 304(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	lui a7, 76
	addiw t6, a7, 704
	sw a6, 308(a1)
	add s0, a2, t6
	lui t6, 77
	sh2add a6, a0, s0
	lw a7, 0(a6)
	addiw a6, t6, 608
	sw a7, 312(a1)
	add a7, a2, a6
	sh2add t6, a0, a7
	li a7, 625
	lw a6, 0(t6)
	slli t6, a7, 9
	add s0, a2, t6
	sw a6, 316(a1)
	lui t6, 79
	sh2add a6, a0, s0
	lw a7, 0(a6)
	addiw a6, t6, 416
	sw a7, 320(a1)
	add a7, a2, a6
	sh2add t6, a0, a7
	lui a7, 80
	lw a6, 0(t6)
	addiw t6, a7, 320
	add s0, a2, t6
	sw a6, 324(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	lui a7, 81
	addiw t6, a7, 224
	sw a6, 328(a1)
	add s0, a2, t6
	sh2add a7, a0, s0
	lui s0, 82
	lw a6, 0(a7)
	addiw t6, s0, 128
	lui s0, 83
	add a7, a2, t6
	sw a6, 332(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addiw a6, s0, 32
	lui s0, 84
	add a7, a2, a6
	sw t6, 336(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, -64
	add a7, a2, t6
	sw a6, 340(a1)
	sh2add a6, a0, a7
	lui a7, 85
	lw t6, 0(a6)
	addiw a6, a7, -160
	sw t6, 344(a1)
	add t6, a2, a6
	li a6, 1375
	sh2add s0, a0, t6
	slli t6, a6, 8
	lw a7, 0(s0)
	add s0, a2, t6
	sw a7, 348(a1)
	sh2add a7, a0, s0
	lui s0, 87
	lw a6, 0(a7)
	addiw t6, s0, -352
	lui s0, 88
	add a7, a2, t6
	sw a6, 352(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addiw a6, s0, -448
	lui s0, 89
	add a7, a2, a6
	sw t6, 356(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, -544
	lui s0, 91
	add a7, a2, t6
	sw a6, 360(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	lui a6, 90
	sw t6, 364(a1)
	addiw t6, a6, -640
	add a7, a2, t6
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addiw a6, s0, -736
	lui s0, 92
	add a7, a2, a6
	sw t6, 368(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, -832
	li s0, 375
	add a7, a2, t6
	sw a6, 372(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	lui a6, 93
	sw t6, 376(a1)
	addiw t6, a6, -928
	add a7, a2, t6
	sh2add a6, a0, a7
	lw t6, 0(a6)
	slli a6, s0, 10
	lui s0, 95
	add a7, a2, a6
	sw t6, 380(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, -1120
	lui s0, 96
	add a7, a2, t6
	sw a6, 384(a1)
	sh2add a6, a0, a7
	lw t6, 0(a6)
	addiw a6, s0, -1216
	lui s0, 97
	add a7, a2, a6
	sw t6, 388(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	addiw t6, s0, -1312
	add a7, a2, t6
	sw a6, 392(a1)
	sh2add a6, a0, a7
	lui a7, 98
	lw t6, 0(a6)
	addiw a6, a7, -1408
	add s0, a2, a6
	sw t6, 396(a1)
	lui a6, 99
	sh2add t6, a0, s0
	lw a7, 0(t6)
	addiw t6, a6, -1504
	sw a7, 400(a1)
	add a7, a2, t6
	sh2add a6, a0, a7
	lw t6, 0(a6)
	lui a6, 100
	sw t6, 404(a1)
	addiw t6, a6, -1600
	add a7, a2, t6
	sh2add a6, a0, a7
	lui a7, 101
	lw t6, 0(a6)
	addiw a6, a7, -1696
	sw t6, 408(a1)
	add t6, a2, a6
	sh2add a7, a0, t6
	addiw a0, a0, 1
	lw a6, 0(a7)
	sw a6, 412(a1)
	ble t5, a0, label11
	add t4, t4, a3
	mv t6, zero
	mv a1, t4
.p2align 2
label5:
	mul a6, t6, a3
	li s2, 875
	addiw t6, t6, 64
	add a2, a4, a6
	sh2add a7, a0, a2
	add a6, a2, a3
	sh2add s0, a0, a6
	add a6, a2, a5
	lw s1, 0(a7)
	sw s1, 0(a1)
	lw a7, 0(s0)
	sw a7, 4(a1)
	sh2add a7, a0, a6
	add a6, a2, t0
	lw s0, 0(a7)
	sh2add a7, a0, a6
	sw s0, 8(a1)
	lw s0, 0(a7)
	add a7, a2, t1
	sh2add a6, a0, a7
	sw s0, 12(a1)
	add a7, a2, t2
	lw s0, 0(a6)
	sh2add s1, a0, a7
	sw s0, 16(a1)
	add s0, a2, t3
	lw a6, 0(s1)
	sh2add a7, a0, s0
	li s1, 875
	sw a6, 20(a1)
	lw a6, 0(a7)
	slli a7, s1, 5
	li s1, 1125
	sw a6, 24(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	li a6, 125
	lw a7, 0(s0)
	sw a7, 28(a1)
	slli a7, a6, 8
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	sw a7, 32(a1)
	slli a7, s1, 5
	add a6, a2, a7
	sh2add s0, a0, a6
	li a6, 625
	lw a7, 0(s0)
	sw a7, 36(a1)
	slli a7, a6, 6
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	li a6, 1375
	slli s1, a6, 5
	sw a7, 40(a1)
	add a7, a2, s1
	li s1, 375
	sh2add a6, a0, a7
	lw s0, 0(a6)
	slli a6, s1, 7
	li s1, 1625
	add a7, a2, a6
	sw s0, 44(a1)
	sh2add s0, a0, a7
	lw a6, 0(s0)
	sw a6, 48(a1)
	slli a6, s1, 5
	add a7, a2, a6
	sh2add s0, a0, a7
	slli a7, s2, 6
	lw a6, 0(s0)
	li s2, 125
	add s1, a2, a7
	sh2add s0, a0, s1
	sw a6, 52(a1)
	li s1, 1875
	lw a6, 0(s0)
	slli a7, s1, 5
	sw a6, 56(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	slli a6, s2, 9
	lw a7, 0(s0)
	lui s2, 17
	add s1, a2, a6
	sh2add s0, a0, s1
	sw a7, 60(a1)
	addiw s1, s2, -1632
	lw a7, 0(s0)
	lui s2, 26
	add a6, a2, s1
	sw a7, 64(a1)
	sh2add a7, a0, a6
	lw s0, 0(a7)
	li a7, 1125
	slli a6, a7, 6
	sw s0, 68(a1)
	add s0, a2, a6
	sh2add a7, a0, s0
	lw a6, 0(a7)
	lui a7, 19
	sw a6, 72(a1)
	addiw a6, a7, -1824
	add s0, a2, a6
	sh2add a7, a0, s0
	lw a6, 0(a7)
	li a7, 625
	slli s1, a7, 7
	sw a6, 76(a1)
	add a6, a2, s1
	sh2add a7, a0, a6
	lw s0, 0(a7)
	lui a7, 21
	addiw a6, a7, -2016
	sw s0, 80(a1)
	add s0, a2, a6
	li a6, 1375
	sh2add s1, a0, s0
	lw a7, 0(s1)
	li s1, 375
	sw a7, 84(a1)
	slli a7, a6, 6
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	lui a6, 22
	sw a7, 88(a1)
	addiw a7, a6, 1888
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	slli a6, s1, 8
	lui s1, 24
	add s0, a2, a6
	sw a7, 92(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	sw a6, 96(a1)
	addiw a6, s1, 1696
	add a7, a2, a6
	sh2add s0, a0, a7
	li a7, 1625
	lw a6, 0(s0)
	sw a6, 100(a1)
	slli a6, a7, 6
	add s0, a2, a6
	addiw a6, s2, 1504
	sh2add s1, a0, s0
	li s2, 125
	add s0, a2, a6
	lw a7, 0(s1)
	sw a7, 104(a1)
	sh2add a7, a0, s0
	li s0, 875
	lw a6, 0(a7)
	slli s1, s0, 7
	add a7, a2, s1
	lui s1, 28
	sw a6, 108(a1)
	sh2add a6, a0, a7
	lw s0, 0(a6)
	addiw a6, s1, 1312
	li s1, 1875
	add a7, a2, a6
	sw s0, 112(a1)
	sh2add s0, a0, a7
	slli a7, s1, 6
	lw a6, 0(s0)
	lui s1, 30
	add s0, a2, a7
	sw a6, 116(a1)
	sh2add a6, a0, s0
	addiw s0, s1, 1120
	lw a7, 0(a6)
	add a6, a2, s0
	sw a7, 120(a1)
	sh2add a7, a0, a6
	lw s1, 0(a7)
	slli a7, s2, 10
	li s2, 1125
	add a6, a2, a7
	sw s1, 124(a1)
	sh2add s0, a0, a6
	lui s1, 32
	lw a7, 0(s0)
	addiw a6, s1, 928
	lui s1, 33
	sw a7, 128(a1)
	add a7, a2, a6
	sh2add s0, a0, a7
	lw a6, 0(s0)
	sw a6, 132(a1)
	addiw a6, s1, 832
	add a7, a2, a6
	sh2add s0, a0, a7
	lui a7, 34
	lw a6, 0(s0)
	sw a6, 136(a1)
	addiw a6, a7, 736
	add s1, a2, a6
	slli a6, s2, 7
	sh2add s0, a0, s1
	lui s2, 60
	add s1, a2, a6
	lw a7, 0(s0)
	sh2add s0, a0, s1
	lui s1, 36
	sw a7, 140(a1)
	addiw a6, s1, 544
	lw a7, 0(s0)
	lui s1, 37
	sw a7, 144(a1)
	add a7, a2, a6
	sh2add s0, a0, a7
	lw a6, 0(s0)
	sw a6, 148(a1)
	addiw a6, s1, 448
	lui s1, 38
	add a7, a2, a6
	sh2add s0, a0, a7
	addiw a7, s1, 352
	lw a6, 0(s0)
	li s1, 625
	sw a6, 152(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	lw a7, 0(s0)
	sw a7, 156(a1)
	slli a7, s1, 8
	lui s1, 40
	add a6, a2, a7
	sh2add s0, a0, a6
	lw a7, 0(s0)
	sw a7, 160(a1)
	addiw a7, s1, 160
	lui s1, 41
	add a6, a2, a7
	sh2add s0, a0, a6
	addiw a6, s1, 64
	lw a7, 0(s0)
	lui s1, 42
	add s0, a2, a6
	sw a7, 164(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	sw a6, 168(a1)
	addiw a6, s1, -32
	li s1, 1375
	add a7, a2, a6
	sh2add s0, a0, a7
	lw a6, 0(s0)
	sw a6, 172(a1)
	slli a6, s1, 7
	lui s1, 44
	add a7, a2, a6
	sh2add s0, a0, a7
	addiw a7, s1, -224
	lw a6, 0(s0)
	lui s1, 46
	sw a6, 176(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	lui a6, 45
	lw a7, 0(s0)
	sw a7, 180(a1)
	addiw a7, a6, -320
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	sw a7, 184(a1)
	addiw a7, s1, -416
	lui s1, 48
	add a6, a2, a7
	sh2add s0, a0, a6
	li a6, 375
	lw a7, 0(s0)
	sw a7, 188(a1)
	slli a7, a6, 9
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	addiw a6, s1, -608
	lui s1, 50
	add s0, a2, a6
	sw a7, 192(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	lui a7, 49
	sw a6, 196(a1)
	addiw a6, a7, -704
	add s0, a2, a6
	sh2add a7, a0, s0
	lw a6, 0(a7)
	addiw a7, s1, -800
	li s1, 1625
	sw a6, 200(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	slli a6, s1, 7
	lw a7, 0(s0)
	lui s1, 52
	add s0, a2, a6
	sw a7, 204(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	sw a6, 208(a1)
	addiw a6, s1, -992
	lui s1, 53
	add a7, a2, a6
	sh2add s0, a0, a7
	addiw a7, s1, -1088
	lw a6, 0(s0)
	lui s1, 54
	sw a6, 212(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	addiw a6, s1, -1184
	lw a7, 0(s0)
	li s1, 875
	sw a7, 216(a1)
	add a7, a2, a6
	sh2add s0, a0, a7
	slli a7, s1, 8
	lw a6, 0(s0)
	lui s1, 57
	add s0, a2, a7
	sw a6, 220(a1)
	sh2add a6, a0, s0
	lw a7, 0(a6)
	lui a6, 56
	sw a7, 224(a1)
	addiw a7, a6, -1376
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	sw a7, 228(a1)
	addiw a7, s1, -1472
	li s1, 1875
	add a6, a2, a7
	sh2add s0, a0, a6
	lui a6, 58
	lw a7, 0(s0)
	sw a7, 232(a1)
	addiw a7, a6, -1568
	add s0, a2, a7
	sh2add a6, a0, s0
	lw a7, 0(a6)
	slli a6, s1, 7
	sw a7, 236(a1)
	add a7, a2, a6
	sh2add s0, a0, a7
	addiw a7, s2, -1760
	lw a6, 0(s0)
	lui s2, 61
	add s0, a2, a7
	addiw a7, s2, -1856
	sh2add s1, a0, s0
	sw a6, 240(a1)
	lw a6, 0(s1)
	lui s1, 62
	sw a6, 244(a1)
	add a6, a2, a7
	sh2add s0, a0, a6
	addiw a6, s1, -1952
	lw a7, 0(s0)
	add s0, a2, a6
	sw a7, 248(a1)
	sh2add a7, a0, s0
	lw a6, 0(a7)
	li a7, 960
	sw a6, 252(a1)
	bge t6, a7, label9
	addi a1, a1, 256
	j label5
label11:
	ld s1, 0(sp)
	ld s0, 8(sp)
	ld s2, 16(sp)
	addi sp, sp, 24
	ret
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -80
	mv t4, a1
pcrel1086:
	auipc a4, %pcrel_hi(c)
	li a5, 125
	mv t6, a0
	addi a3, a4, %pcrel_lo(pcrel1086)
	slli a2, a5, 5
	sd s0, 0(sp)
	sh2add t1, a2, a2
	sh1add a5, a2, a2
	slli a4, a2, 1
	mul a1, a0, a2
	sd s5, 8(sp)
	slli t0, a4, 1
pcrel1087:
	auipc a0, %pcrel_hi(a)
	add t3, a3, a1
	addi t5, a0, %pcrel_lo(pcrel1087)
	sd s1, 16(sp)
pcrel1088:
	auipc a1, %pcrel_hi(b)
	sd s6, 24(sp)
	addi a3, a1, %pcrel_lo(pcrel1088)
	sd s3, 32(sp)
	sd s4, 40(sp)
	sd s2, 48(sp)
	sd s7, 56(sp)
	sd s9, 64(sp)
	sd s8, 72(sp)
	mul a1, t6, a2
	mv a6, t3
	mv a0, zero
	add t2, t5, a1
	mv a1, t2
	mv s0, zero
	mv s1, zero
	j label781
.p2align 2
label786:
	li s0, 125
	lui s6, 17
	slli s4, s0, 9
	lw s0, 64(a1)
	add s2, a7, s4
	sh2add s3, a0, s2
	lw s4, 0(s3)
	mulw s5, s0, s4
	addiw s4, s6, -1632
	addw s2, s1, s5
	li s6, 1125
	add s0, a7, s4
	lw s1, 68(a1)
	sh2add s3, a0, s0
	lw s4, 0(s3)
	mulw s5, s1, s4
	slli s4, s6, 6
	addw s0, s2, s5
	lui s6, 19
	add s1, a7, s4
	lw s2, 72(a1)
	sh2add s3, a0, s1
	lw s4, 0(s3)
	mulw s5, s2, s4
	lw s2, 76(a1)
	addiw s4, s6, -1824
	addw s1, s0, s5
	li s6, 625
	add s0, a7, s4
	sh2add s3, a0, s0
	lw s5, 0(s3)
	mulw s4, s2, s5
	lw s2, 80(a1)
	slli s5, s6, 7
	addw s0, s1, s4
	lui s6, 21
	add s1, a7, s5
	sh2add s3, a0, s1
	lw s4, 0(s3)
	mulw s5, s2, s4
	lw s2, 84(a1)
	addiw s4, s6, -2016
	addw s1, s0, s5
	li s6, 1375
	add s0, a7, s4
	sh2add s3, a0, s0
	lw s4, 0(s3)
	mulw s5, s2, s4
	lw s2, 88(a1)
	slli s4, s6, 6
	addw s0, s1, s5
	lui s6, 22
	add s1, a7, s4
	sh2add s3, a0, s1
	lw s5, 0(s3)
	mulw s4, s2, s5
	addiw s2, s6, 1888
	addw s1, s0, s4
	add s3, a7, s2
	lw a7, 92(a1)
	sh2add s0, a0, s3
	addiw a0, a0, 1
	lw s4, 0(s0)
	mulw s2, a7, s4
	li a7, 1000
	addw a1, s1, s2
	sw a1, 0(a6)
	bge a0, a7, label1003
	addi a6, a6, 4
	mv a1, t2
	mv s0, zero
	mv s1, zero
.p2align 2
label781:
	mul s3, s0, a2
	lw s2, 0(a1)
	addiw s0, s0, 16
	add a7, a3, s3
	sh2add s4, a0, a7
	add s6, a7, a2
	sh2add s7, a0, s6
	lw s3, 0(s4)
	lw s5, 4(a1)
	lw s9, 0(s7)
	mulw s8, s2, s3
	add s7, a7, a4
	lw s2, 8(a1)
	mulw s6, s5, s9
	sh2add s5, a0, s7
	addw s4, s6, s8
	add s6, a7, a5
	lw s8, 0(s5)
	sh2add s5, a0, s6
	add s6, a7, t0
	mulw s7, s2, s8
	addw s3, s4, s7
	lw s4, 12(a1)
	lw s8, 0(s5)
	sh2add s5, a0, s6
	add s6, a7, t1
	mulw s7, s4, s8
	lw s4, 16(a1)
	addw s2, s3, s7
	lw s7, 0(s5)
	sh2add s5, a0, s6
	mulw s8, s4, s7
	lw s4, 20(a1)
	addw s3, s2, s8
	lw s7, 0(s5)
	li s8, 125
	li s5, 375
	mulw s6, s4, s7
	slli s7, s5, 6
	addw s2, s3, s6
	lw s5, 24(a1)
	add s3, a7, s7
	sh2add s4, a0, s3
	lw s6, 0(s4)
	li s4, 875
	mulw s7, s5, s6
	slli s6, s4, 5
	addw s3, s2, s7
	lw s4, 28(a1)
	add s2, a7, s6
	sh2add s5, a0, s2
	lw s6, 0(s5)
	mulw s7, s4, s6
	lw s4, 32(a1)
	slli s6, s8, 8
	addw s2, s3, s7
	li s8, 1125
	add s3, a7, s6
	sh2add s5, a0, s3
	lw s6, 0(s5)
	mulw s7, s4, s6
	lw s4, 36(a1)
	slli s6, s8, 5
	addw s3, s2, s7
	li s8, 1375
	add s2, a7, s6
	sh2add s5, a0, s2
	lw s7, 0(s5)
	li s5, 625
	mulw s6, s4, s7
	slli s7, s5, 6
	addw s2, s3, s6
	lw s5, 40(a1)
	add s3, a7, s7
	sh2add s4, a0, s3
	lw s6, 0(s4)
	mulw s7, s5, s6
	lw s5, 44(a1)
	slli s6, s8, 5
	addw s3, s2, s7
	li s8, 875
	add s2, a7, s6
	sh2add s4, a0, s2
	lw s7, 0(s4)
	li s4, 375
	mulw s6, s5, s7
	slli s7, s4, 7
	addw s2, s3, s6
	lw s4, 48(a1)
	add s3, a7, s7
	sh2add s5, a0, s3
	lw s6, 0(s5)
	li s5, 1625
	mulw s7, s4, s6
	slli s6, s5, 5
	addw s3, s2, s7
	lw s5, 52(a1)
	add s4, a7, s6
	sh2add s2, a0, s4
	lw s7, 0(s2)
	mulw s6, s5, s7
	slli s7, s8, 6
	addw s4, s3, s6
	li s8, 1875
	add s2, a7, s7
	lw s3, 56(a1)
	sh2add s5, a0, s2
	lw s6, 0(s5)
	mulw s7, s3, s6
	lw s3, 60(a1)
	slli s6, s8, 5
	addw s2, s4, s7
	add s5, a7, s6
	sh2add s4, a0, s5
	lw s7, 0(s4)
	mulw s6, s3, s7
	addw s5, s2, s6
	li s2, 992
	addw s1, s1, s5
	bge s0, s2, label786
	addi a1, a1, 64
	j label781
.p2align 2
label1003:
	addiw t6, t6, 1
	ble t4, t6, label790
	add t3, t3, a2
	mul a1, t6, a2
	mv a0, zero
	mv s0, zero
	mv s1, zero
	mv a6, t3
	add t2, t5, a1
	mv a1, t2
	j label781
label790:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s7, 56(sp)
	ld s9, 64(sp)
	ld s8, 72(sp)
	addi sp, sp, 80
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t0, a0
	mv a2, a1
	addiw a4, a0, 3
pcrel1192:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_2)
	ld a3, %pcrel_lo(pcrel1192)(a5)
	addi a1, a5, %pcrel_lo(pcrel1192)
	lw a0, 8(a1)
	ble a2, a4, label1090
	addiw t1, t0, 15
	addiw a4, a2, -3
	addiw a5, a2, -18
	bge t1, a4, label1141
	sh2add a1, t0, a3
	j label1100
.p2align 2
label1103:
	addi a1, a1, 64
.p2align 2
label1100:
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
	bgt a5, t0, label1103
	mv a1, t0
label1104:
	ble a4, a1, label1090
	sh2add a5, a1, a3
label1108:
	sw a0, 0(a5)
	addiw a1, a1, 4
	sw a0, 4(a5)
	sw a0, 8(a5)
	sw a0, 12(a5)
	ble a4, a1, label1178
	addi a5, a5, 16
	j label1108
label1178:
	mv t0, a1
label1090:
	ble a2, t0, label1097
	sh2add a1, t0, a3
	j label1093
label1096:
	addi a1, a1, 4
label1093:
	addiw t0, t0, 1
	sw a0, 0(a1)
	bgt a2, t0, label1096
label1097:
	ret
label1141:
	mv a1, t0
	mv t0, zero
	j label1104
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
	addiw a5, a0, 3
pcrel1347:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a0, %pcrel_lo(pcrel1347)
	ld a3, 8(a2)
	ble a1, a5, label1235
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label1242
	sh2add a0, t0, a3
	mv t1, zero
	j label1210
.p2align 2
label1214:
	addi a0, a0, 64
.p2align 2
label1210:
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
	bgt a5, t0, label1214
	mv a5, t0
	mv t2, t1
label1195:
	ble a4, a5, label1246
	sh2add a0, a5, a3
	mv t0, t2
	j label1204
label1208:
	addi a0, a0, 16
label1204:
	lw t1, 0(a0)
	addiw a5, a5, 4
	lw t4, 4(a0)
	addw t3, t0, t1
	lw t5, 8(a0)
	addw t2, t3, t4
	lw t3, 12(a0)
	addw t1, t2, t5
	addw t0, t1, t3
	bgt a4, a5, label1208
	mv a0, t0
	mv a4, t0
	mv t0, a5
label1215:
	ble a1, t0, label1324
	sh2add a0, t0, a3
	mv a3, a4
	j label1222
label1226:
	addi a0, a0, 4
label1222:
	lw a5, 0(a0)
	addiw t0, t0, 1
	addw a3, a3, a5
	bgt a1, t0, label1226
label1219:
	amoadd.w.aqrl a1, a3, (a2)
	ret
label1246:
	mv a0, t1
	mv a4, t1
	j label1215
label1242:
	mv a5, t0
	mv t2, zero
	mv t1, zero
	mv t0, zero
	j label1195
label1324:
	mv a3, a0
	j label1219
label1235:
	mv a4, zero
	mv a0, zero
	j label1215
