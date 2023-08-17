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
pcrel1983:
	auipc a0, %pcrel_hi(a)
pcrel1984:
	auipc a1, %pcrel_hi(cmmc_parallel_body_3)
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a0, %pcrel_lo(pcrel1983)
	sd s0, 16(sp)
pcrel1985:
	auipc a0, %pcrel_hi(c)
	sd s7, 24(sp)
pcrel1986:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s8, 32(sp)
	addi s8, s7, %pcrel_lo(pcrel1986)
	sd s1, 40(sp)
	addi s1, a0, %pcrel_lo(pcrel1985)
	sd s6, 48(sp)
pcrel1987:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	sd s9, 56(sp)
	addi s6, a0, %pcrel_lo(pcrel1987)
	mv s9, zero
	li a0, 125
	sd s2, 64(sp)
	slli s0, a0, 5
	addi s2, a1, %pcrel_lo(pcrel1984)
	sd s3, 72(sp)
	slli s3, s0, 1
	sd s4, 80(sp)
	sh1add s4, s0, s0
label1347:
	li a0, 1000
	bge s9, a0, label1354
	mv a0, s5
	jal getarray
	li a1, 1000
	bne a0, a1, label1352
	addiw s9, s9, 1
	add s5, s5, s0
	j label1347
label1354:
	li a0, 23
	jal _sysy_starttime
	li a1, 1000
	mv a0, zero
pcrel1988:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel1988)
	jal cmmcParallelFor
	li a1, 1000
	mv a0, zero
pcrel1989:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel1989)
	jal cmmcParallelFor
	mv s9, zero
	mv s5, s1
	mv a0, s1
	mv a1, zero
	lui a3, 524288
	addiw a2, a3, -1
	j label1358
.p2align 2
label1381:
	addi a0, a0, 256
.p2align 2
label1358:
	lw t0, 0(a0)
	addiw a1, a1, 64
	lw a5, 4(a0)
	min a4, a2, t0
	lw t0, 8(a0)
	min a3, a4, a5
	lw a5, 12(a0)
	min a2, a3, t0
	lw t0, 16(a0)
	min a4, a2, a5
	lw a5, 20(a0)
	min a3, a4, t0
	lw t0, 24(a0)
	min a2, a3, a5
	lw a5, 28(a0)
	min a4, a2, t0
	lw t0, 32(a0)
	min a3, a4, a5
	lw t1, 36(a0)
	min a2, a3, t0
	lw a3, 40(a0)
	min a5, a2, t1
	lw t0, 44(a0)
	min a4, a5, a3
	lw a5, 48(a0)
	min a2, a4, t0
	lw t1, 52(a0)
	min a3, a2, a5
	lw t0, 56(a0)
	min a4, a3, t1
	lw a3, 60(a0)
	min a5, a4, t0
	lw t2, 64(a0)
	min a2, a5, a3
	lw t1, 68(a0)
	min t0, a2, t2
	lw a5, 72(a0)
	min a4, t0, t1
	lw t1, 76(a0)
	min a3, a4, a5
	lw t0, 80(a0)
	min a2, a3, t1
	lw t1, 84(a0)
	min a5, a2, t0
	lw t0, 88(a0)
	min a4, a5, t1
	lw t1, 92(a0)
	min a3, a4, t0
	lw t0, 96(a0)
	min a2, a3, t1
	lw t1, 100(a0)
	min a5, a2, t0
	lw a2, 104(a0)
	min a4, a5, t1
	lw t1, 108(a0)
	min a3, a4, a2
	lw t0, 112(a0)
	min a5, a3, t1
	lw t1, 116(a0)
	min a2, a5, t0
	lw a5, 120(a0)
	min a4, a2, t1
	lw t0, 124(a0)
	min a3, a4, a5
	lw a5, 128(a0)
	min a2, a3, t0
	lw t1, 132(a0)
	min a4, a2, a5
	lw t0, 136(a0)
	min a3, a4, t1
	lw t1, 140(a0)
	min a5, a3, t0
	lw t0, 144(a0)
	min a2, a5, t1
	lw t1, 148(a0)
	min a4, a2, t0
	lw t0, 152(a0)
	min a3, a4, t1
	lw a4, 156(a0)
	min a5, a3, t0
	lw t0, 160(a0)
	min a2, a5, a4
	lw a5, 164(a0)
	min a3, a2, t0
	lw t0, 168(a0)
	min a4, a3, a5
	lw t1, 172(a0)
	min a2, a4, t0
	lw a5, 176(a0)
	min a3, a2, t1
	lw t0, 180(a0)
	min a4, a3, a5
	lw a3, 184(a0)
	min a2, a4, t0
	lw t1, 188(a0)
	min a5, a2, a3
	lw t0, 192(a0)
	min a4, a5, t1
	lw a5, 196(a0)
	min a3, a4, t0
	lw t0, 200(a0)
	min a2, a3, a5
	lw t1, 204(a0)
	min a4, a2, t0
	lw t0, 208(a0)
	min a5, a4, t1
	lw t1, 212(a0)
	min a3, a5, t0
	lw t0, 216(a0)
	min a2, a3, t1
	lw a5, 220(a0)
	min a4, a2, t0
	lw t0, 224(a0)
	min a3, a4, a5
	lw a5, 228(a0)
	min a2, a3, t0
	lw t1, 232(a0)
	min a4, a2, a5
	lw t0, 236(a0)
	min a3, a4, t1
	lw a4, 240(a0)
	min a2, a3, t0
	lw t0, 244(a0)
	min a5, a2, a4
	lw t1, 248(a0)
	min a3, a5, t0
	lw a5, 252(a0)
	min a4, a3, t1
	li a3, 960
	min a2, a4, a5
	blt a1, a3, label1381
	lw a3, 256(a0)
	lw a5, 260(a0)
	min a1, a2, a3
	lw a2, 264(a0)
	min a4, a1, a5
	lw a5, 268(a0)
	min a3, a4, a2
	lw t0, 272(a0)
	min a1, a3, a5
	lw a3, 276(a0)
	min a2, a1, t0
	lw t0, 280(a0)
	min a4, a2, a3
	lw a5, 284(a0)
	min a1, a4, t0
	lw t0, 288(a0)
	min a3, a1, a5
	lw a4, 292(a0)
	min a2, a3, t0
	lw t0, 296(a0)
	min a1, a2, a4
	lw a5, 300(a0)
	min a3, a1, t0
	lw a1, 304(a0)
	min a2, a3, a5
	lw a5, 308(a0)
	min a4, a2, a1
	lw a2, 312(a0)
	min a3, a4, a5
	lw a5, 316(a0)
	min a1, a3, a2
	lw t0, 320(a0)
	min a4, a1, a5
	lw a5, 324(a0)
	min a3, a4, t0
	lw a4, 328(a0)
	min a2, a3, a5
	lw a5, 332(a0)
	min a1, a2, a4
	lw a4, 336(a0)
	min a3, a1, a5
	lw a5, 340(a0)
	min a2, a3, a4
	lw t0, 344(a0)
	min a1, a2, a5
	lw a4, 348(a0)
	min a3, a1, t0
	lw t0, 352(a0)
	min a2, a3, a4
	lw a5, 356(a0)
	min a1, a2, t0
	lw a4, 360(a0)
	min a3, a1, a5
	lw a5, 364(a0)
	min a2, a3, a4
	lw t0, 368(a0)
	min a1, a2, a5
	lw t1, 372(a0)
	min a3, a1, t0
	lw a5, 376(a0)
	min a4, a3, t1
	lw a3, 380(a0)
	min a2, a4, a5
	lw a5, 384(a0)
	min a1, a2, a3
	lw t0, 388(a0)
	min a4, a1, a5
	lw a5, 392(a0)
	min a2, a4, t0
	lw a4, 396(a0)
	min a3, a2, a5
	lw a5, 400(a0)
	min a1, a3, a4
	lw a4, 404(a0)
	min a2, a1, a5
	lw a5, 408(a0)
	min a3, a2, a4
	lw a4, 412(a0)
	min a1, a3, a5
	mv a0, zero
	min a2, a1, a4
pcrel1990:
	auipc s7, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s5, %pcrel_lo(pcrel1990)(s7)
	li a1, 1000
	sw a2, 8(s8)
	mv a2, s6
	jal cmmcParallelFor
	li a0, 1000
	addiw s9, s9, 1
	bge s9, a0, label1722
	add s5, s5, s0
	mv a1, zero
	lui a3, 524288
	mv a0, s5
	addiw a2, a3, -1
	j label1358
label1377:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s6
	jal putint
	mv a0, zero
label1352:
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
label1722:
	mv a2, s1
	mv a0, zero
	mv a1, s1
	mv a4, zero
	j label1368
.p2align 2
label1380:
	addi a1, a1, 64
.p2align 2
label1368:
	mul t0, a4, s0
	li t4, 125
	li t5, 375
	addiw a4, a4, 16
	add a3, s1, t0
	sh2add t2, a0, a3
	lw a5, 0(t2)
	add t2, a3, s0
	subw t1, zero, a5
	sh2add t0, a0, t2
	add t2, a3, s3
	sw t1, 0(a1)
	lw t1, 0(t0)
	sh2add t0, a0, t2
	subw a5, zero, t1
	add t2, a3, s4
	sw a5, 4(a1)
	lw t1, 0(t0)
	subw a5, zero, t1
	sh2add t1, a0, t2
	slli t2, t4, 7
	sw a5, 8(a1)
	lw t0, 0(t1)
	add t1, a3, t2
	subw a5, zero, t0
	sh2add t3, a0, t1
	sw a5, 12(a1)
	lw t0, 0(t3)
	li t3, 625
	subw a5, zero, t0
	slli t1, t3, 5
	add t4, a3, t1
	sw a5, 16(a1)
	sh2add t0, a0, t4
	lw t3, 0(t0)
	slli t0, t5, 6
	subw a5, zero, t3
	add t4, a3, t0
	sw a5, 20(a1)
	sh2add a5, a0, t4
	li t4, 875
	lw t5, 0(a5)
	slli a5, t4, 5
	subw t3, zero, t5
	add t5, a3, a5
	sw t3, 24(a1)
	sh2add t3, a0, t5
	slli t5, t2, 1
	lw t6, 0(t3)
	add t3, a3, t5
	subw t4, zero, t6
	sw t4, 28(a1)
	sh2add t4, a0, t3
	li t3, 1125
	lw t2, 0(t4)
	slli t4, t3, 5
	subw t5, zero, t2
	sw t5, 32(a1)
	add t5, a3, t4
	sh2add t2, a0, t5
	lw t3, 0(t2)
	slli t2, t1, 1
	subw t6, zero, t3
	add t4, a3, t2
	sh2add t3, a0, t4
	sw t6, 36(a1)
	li t4, 1375
	lw t5, 0(t3)
	slli t2, t4, 5
	subw t1, zero, t5
	add t3, a3, t2
	sw t1, 40(a1)
	sh2add t1, a0, t3
	lw t4, 0(t1)
	slli t1, t0, 1
	subw t2, zero, t4
	add t3, a3, t1
	sh2add t4, a0, t3
	sw t2, 44(a1)
	li t3, 1625
	lw t2, 0(t4)
	slli t1, t3, 5
	subw t0, zero, t2
	sw t0, 48(a1)
	add t0, a3, t1
	slli t1, a5, 1
	sh2add t4, a0, t0
	add t0, a3, t1
	lw t2, 0(t4)
	li t1, 1875
	subw t3, zero, t2
	sw t3, 52(a1)
	sh2add t3, a0, t0
	slli t0, t1, 5
	lw t2, 0(t3)
	subw a5, zero, t2
	sw a5, 56(a1)
	add a5, a3, t0
	sh2add t2, a0, a5
	li a5, 992
	lw t1, 0(t2)
	subw t0, zero, t1
	sw t0, 60(a1)
	blt a4, a5, label1380
	li a4, 125
	lui t3, 17
	slli a5, a4, 9
	addiw t2, t3, -1632
	add t1, a3, a5
	sh2add t0, a0, t1
	add t1, a3, t2
	lw a4, 0(t0)
	li t2, 1125
	sh2add t0, a0, t1
	subw a5, zero, a4
	sw a5, 64(a1)
	lw a4, 0(t0)
	subw a5, zero, a4
	slli a4, t2, 6
	add t1, a3, a4
	sw a5, 68(a1)
	sh2add t0, a0, t1
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
	lui t0, 21
	subw a5, zero, a4
	addiw a4, t0, -2016
	add t1, a3, a4
	sw a5, 80(a1)
	sh2add a5, a0, t1
	li t1, 1375
	lw t0, 0(a5)
	subw a4, zero, t0
	slli t0, t1, 6
	sw a4, 84(a1)
	add a4, a3, t0
	sh2add a5, a0, a4
	lui a4, 22
	lw t2, 0(a5)
	addiw t0, a4, 1888
	subw t1, zero, t2
	add a5, a3, t0
	sw t1, 88(a1)
	sh2add t1, a0, a5
	addiw a0, a0, 1
	lw a4, 0(t1)
	subw a3, zero, a4
	li a4, 1000
	sw a3, 92(a1)
	bge a0, a4, label1372
	add a2, a2, s0
	mv a4, zero
	mv a1, a2
	j label1368
label1372:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv s4, zero
	mv s6, zero
	addi s3, a0, %pcrel_lo(label1372)
	j label1373
.p2align 2
label1378:
	add s1, s1, s0
.p2align 2
label1373:
	auipc s5, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv a0, zero
	li a1, 1000
	sw s6, %pcrel_lo(label1373)(s5)
	sw s6, 4(s3)
	sd s1, 8(s3)
	mv a2, s2
	jal cmmcParallelFor
	li a0, 1000
	addiw s4, s4, 1
	lw s6, %pcrel_lo(label1373)(s5)
	blt s4, a0, label1378
	j label1377
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
	addi sp, sp, -72
	mv t4, a1
pcrel1084:
	auipc a4, %pcrel_hi(c)
	li a5, 125
	mv t6, a0
	addi a3, a4, %pcrel_lo(pcrel1084)
	slli a2, a5, 5
	sd s0, 0(sp)
	sh2add t1, a2, a2
	sh1add a5, a2, a2
	slli a4, a2, 1
	mul a1, a0, a2
	sd s5, 8(sp)
	slli t0, a4, 1
pcrel1085:
	auipc a0, %pcrel_hi(a)
	add t3, a3, a1
	addi t5, a0, %pcrel_lo(pcrel1085)
	sd s1, 16(sp)
pcrel1086:
	auipc a1, %pcrel_hi(b)
	sd s6, 24(sp)
	addi a3, a1, %pcrel_lo(pcrel1086)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
	sd s7, 56(sp)
	sd s8, 64(sp)
	mul a1, t6, a2
	mv a6, t3
	mv a0, zero
	add t2, t5, a1
	mv a1, t2
	mv s0, zero
	mv s1, zero
	j label781
.p2align 2
label785:
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
	lw s5, 0(s3)
	mulw s4, s1, s5
	slli s1, s6, 6
	addw s0, s2, s4
	lui s6, 19
	add s5, a7, s1
	lw s2, 72(a1)
	sh2add s3, a0, s5
	lw s4, 0(s3)
	mulw s5, s2, s4
	lw s2, 76(a1)
	addiw s4, s6, -1824
	addw s1, s0, s5
	li s6, 625
	add s0, a7, s4
	sh2add s3, a0, s0
	lw s4, 0(s3)
	mulw s5, s2, s4
	slli s4, s6, 7
	addw s0, s1, s5
	lw s2, 80(a1)
	lui s6, 21
	add s1, a7, s4
	sh2add s3, a0, s1
	lw s4, 0(s3)
	mulw s5, s2, s4
	lw s2, 84(a1)
	addiw s4, s6, -2016
	addw s1, s0, s5
	lui s6, 22
	add s0, a7, s4
	sh2add s3, a0, s0
	lw s4, 0(s3)
	li s3, 1375
	mulw s5, s2, s4
	slli s4, s3, 6
	addw s0, s1, s5
	lw s3, 88(a1)
	add s1, a7, s4
	sh2add s2, a0, s1
	lw s5, 0(s2)
	addiw s2, s6, 1888
	mulw s4, s3, s5
	add s3, a7, s2
	addw s1, s0, s4
	lw a7, 92(a1)
	sh2add s0, a0, s3
	addiw a0, a0, 1
	lw s2, 0(s0)
	mulw s3, a7, s2
	li a7, 1000
	addw a1, s1, s3
	sw a1, 0(a6)
	bge a0, a7, label786
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
	sh2add s5, a0, a7
	add s6, a7, a2
	sh2add s4, a0, s6
	lw s3, 0(s5)
	lw s5, 4(a1)
	lw s7, 0(s4)
	mulw s8, s2, s3
	lw s2, 8(a1)
	mulw s6, s5, s7
	add s7, a7, a4
	addw s4, s6, s8
	sh2add s5, a0, s7
	add s6, a7, a5
	lw s8, 0(s5)
	sh2add s5, a0, s6
	add s6, a7, t0
	mulw s7, s2, s8
	addw s3, s4, s7
	lw s4, 12(a1)
	lw s8, 0(s5)
	lw s5, 16(a1)
	mulw s7, s4, s8
	sh2add s4, a0, s6
	addw s2, s3, s7
	add s6, a7, t1
	lw s7, 0(s4)
	lw s4, 20(a1)
	mulw s8, s5, s7
	sh2add s5, a0, s6
	addw s3, s2, s8
	lw s7, 0(s5)
	li s5, 375
	slli s6, s5, 6
	mulw s8, s4, s7
	lw s5, 24(a1)
	addw s2, s3, s8
	li s8, 625
	add s3, a7, s6
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
	li s5, 125
	mulw s7, s4, s6
	slli s6, s5, 8
	addw s2, s3, s7
	lw s5, 32(a1)
	add s3, a7, s6
	sh2add s4, a0, s3
	lw s6, 0(s4)
	li s4, 1125
	mulw s7, s5, s6
	slli s6, s4, 5
	addw s3, s2, s7
	lw s4, 36(a1)
	add s2, a7, s6
	sh2add s5, a0, s2
	lw s7, 0(s5)
	mulw s6, s4, s7
	lw s4, 40(a1)
	slli s7, s8, 6
	addw s2, s3, s6
	li s8, 1375
	add s3, a7, s7
	sh2add s5, a0, s3
	lw s6, 0(s5)
	mulw s7, s4, s6
	slli s4, s8, 5
	addw s3, s2, s7
	li s8, 375
	add s6, a7, s4
	lw s2, 44(a1)
	sh2add s5, a0, s6
	lw s7, 0(s5)
	mulw s6, s2, s7
	slli s2, s8, 7
	addw s4, s3, s6
	li s8, 1875
	add s7, a7, s2
	lw s3, 48(a1)
	sh2add s5, a0, s7
	lw s6, 0(s5)
	li s5, 1625
	mulw s7, s3, s6
	slli s6, s5, 5
	addw s2, s4, s7
	lw s5, 52(a1)
	add s3, a7, s6
	sh2add s4, a0, s3
	lw s7, 0(s4)
	li s4, 875
	mulw s6, s5, s7
	slli s7, s4, 6
	addw s3, s2, s6
	lw s4, 56(a1)
	add s2, a7, s7
	sh2add s5, a0, s2
	lw s7, 0(s5)
	slli s5, s8, 5
	mulw s6, s4, s7
	lw s4, 60(a1)
	addw s2, s3, s6
	add s6, a7, s5
	sh2add s3, a0, s6
	lw s7, 0(s3)
	mulw s6, s4, s7
	addw s5, s2, s6
	li s2, 992
	addw s1, s1, s5
	bge s0, s2, label785
	addi a1, a1, 64
	j label781
.p2align 2
label786:
	addiw t6, t6, 1
	ble t4, t6, label788
	add t3, t3, a2
	mul a1, t6, a2
	mv a0, zero
	mv s0, zero
	mv s1, zero
	mv a6, t3
	add t2, t5, a1
	mv a1, t2
	j label781
label788:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	ld s8, 64(sp)
	addi sp, sp, 72
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t0, a0
	mv a2, a1
	addiw a4, a0, 3
pcrel1190:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_2)
	ld a3, %pcrel_lo(pcrel1190)(a5)
	addi a1, a5, %pcrel_lo(pcrel1190)
	lw a0, 8(a1)
	ble a2, a4, label1088
	addiw t1, t0, 15
	addiw a4, a2, -3
	addiw a5, a2, -18
	bge t1, a4, label1139
	sh2add a1, t0, a3
	j label1098
.p2align 2
label1101:
	addi a1, a1, 64
.p2align 2
label1098:
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
	bgt a5, t0, label1101
	mv a1, t0
label1102:
	ble a4, a1, label1088
	sh2add a5, a1, a3
label1106:
	sw a0, 0(a5)
	addiw a1, a1, 4
	sw a0, 4(a5)
	sw a0, 8(a5)
	sw a0, 12(a5)
	ble a4, a1, label1176
	addi a5, a5, 16
	j label1106
label1176:
	mv t0, a1
label1088:
	ble a2, t0, label1095
	sh2add a1, t0, a3
	j label1091
label1094:
	addi a1, a1, 4
label1091:
	addiw t0, t0, 1
	sw a0, 0(a1)
	bgt a2, t0, label1094
label1095:
	ret
label1139:
	mv a1, t0
	mv t0, zero
	j label1102
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
	addiw a5, a0, 3
pcrel1345:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a0, %pcrel_lo(pcrel1345)
	ld a3, 8(a2)
	ble a1, a5, label1233
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label1240
	sh2add a0, t0, a3
	mv t1, zero
	j label1208
.p2align 2
label1212:
	addi a0, a0, 64
.p2align 2
label1208:
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
	bgt a5, t0, label1212
	mv a5, t0
	mv t2, t1
label1193:
	ble a4, a5, label1244
	sh2add a0, a5, a3
	mv t0, t2
	j label1202
label1206:
	addi a0, a0, 16
label1202:
	lw t1, 0(a0)
	addiw a5, a5, 4
	lw t4, 4(a0)
	addw t3, t0, t1
	lw t5, 8(a0)
	addw t2, t3, t4
	lw t3, 12(a0)
	addw t1, t2, t5
	addw t0, t1, t3
	bgt a4, a5, label1206
	mv a0, t0
	mv a4, t0
	mv t0, a5
label1213:
	ble a1, t0, label1322
	sh2add a0, t0, a3
	mv a3, a4
	j label1220
label1224:
	addi a0, a0, 4
label1220:
	lw a5, 0(a0)
	addiw t0, t0, 1
	addw a3, a3, a5
	bgt a1, t0, label1224
label1217:
	amoadd.w.aqrl a1, a3, (a2)
	ret
label1244:
	mv a0, t1
	mv a4, t1
	j label1213
label1240:
	mv a5, t0
	mv t2, zero
	mv t1, zero
	mv t0, zero
	j label1193
label1322:
	mv a3, a0
	j label1217
label1233:
	mv a4, zero
	mv a0, zero
	j label1213
