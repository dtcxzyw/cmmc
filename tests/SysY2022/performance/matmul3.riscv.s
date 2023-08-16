.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	4000000
.align 8
b:
	.zero	4000000
.align 8
c:
	.zero	4000000
.align 8
cmmc_parallel_body_payload_2:
	.zero	12
.align 8
cmmc_parallel_body_payload_3:
	.zero	16
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
pcrel2002:
	auipc a0, %pcrel_hi(a)
pcrel2003:
	auipc a1, %pcrel_hi(cmmc_parallel_body_3)
	sd ra, 0(sp)
	addi a2, a1, %pcrel_lo(pcrel2003)
	sd s7, 8(sp)
	li a1, 875
	addi s7, a0, %pcrel_lo(pcrel2002)
	sd s9, 16(sp)
pcrel2004:
	auipc a0, %pcrel_hi(c)
pcrel2005:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s10, 24(sp)
	addi s10, s9, %pcrel_lo(pcrel2005)
	sd s0, 32(sp)
	addi s0, a0, %pcrel_lo(pcrel2004)
	sd s5, 40(sp)
pcrel2006:
	auipc a0, %pcrel_hi(cmmc_parallel_body_2)
	sd s11, 48(sp)
	mv s11, zero
	sd s8, 56(sp)
	addi s8, a0, %pcrel_lo(pcrel2006)
	sd s1, 64(sp)
	li a0, 125
	sd s6, 72(sp)
	slli a5, a0, 5
	slli s6, a1, 5
	slli s1, a5, 1
	sd s2, 80(sp)
	sh1add s2, a5, a5
	sd s3, 88(sp)
	slli s5, s2, 1
	slli s3, s1, 1
	sd s4, 96(sp)
	sh2add s4, a5, a5
	sd a2, 104(sp)
	sd a5, 112(sp)
label1358:
	li a0, 1000
	bge s11, a0, label1365
	mv a0, s7
	jal getarray
	li a1, 1000
	bne a0, a1, label1363
	addiw s11, s11, 1
	ld a5, 112(sp)
	add s7, s7, a5
	j label1358
.p2align 2
label1389:
	ld a5, 112(sp)
	add s0, s0, a5
.p2align 2
label1384:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv a0, zero
	li a1, 1000
	sw s4, %pcrel_lo(label1384)(s3)
	sw s4, 4(s1)
	sd s0, 8(s1)
	ld a2, 104(sp)
	jal cmmcParallelFor
	li a0, 1000
	addiw s2, s2, 1
	lw s4, %pcrel_lo(label1384)(s3)
	blt s2, a0, label1389
	li a0, 92
	jal _sysy_stoptime
	mv a0, s4
	jal putint
	mv a0, zero
label1363:
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s9, 16(sp)
	ld s10, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s11, 48(sp)
	ld s8, 56(sp)
	ld s1, 64(sp)
	ld s6, 72(sp)
	ld s2, 80(sp)
	ld s3, 88(sp)
	ld s4, 96(sp)
	addi sp, sp, 120
	ret
label1365:
	li a0, 23
	jal _sysy_starttime
	li a1, 1000
	mv a0, zero
pcrel2007:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel2007)
	jal cmmcParallelFor
	li a1, 1000
	mv a0, zero
pcrel2008:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel2008)
	jal cmmcParallelFor
	mv s11, zero
	mv s7, s0
	mv a0, s0
	mv a1, zero
	lui a3, 524288
	addiw a2, a3, -1
	j label1369
.p2align 2
label1392:
	addi a0, a0, 256
.p2align 2
label1369:
	lw a5, 0(a0)
	addiw a1, a1, 64
	lw t0, 4(a0)
	min a3, a2, a5
	lw t1, 8(a0)
	min a4, a3, t0
	lw t2, 12(a0)
	min a5, a4, t1
	lw t0, 16(a0)
	min a2, a5, t2
	lw a5, 20(a0)
	min a3, a2, t0
	lw t0, 24(a0)
	min a4, a3, a5
	lw t1, 28(a0)
	min a2, a4, t0
	lw a4, 32(a0)
	min a5, a2, t1
	lw a2, 36(a0)
	min a3, a5, a4
	lw a5, 40(a0)
	min t0, a3, a2
	lw a3, 44(a0)
	min a4, t0, a5
	lw t0, 48(a0)
	min a2, a4, a3
	lw t1, 52(a0)
	min a5, a2, t0
	lw t0, 56(a0)
	min a3, a5, t1
	lw t1, 60(a0)
	min a4, a3, t0
	lw a5, 64(a0)
	min a2, a4, t1
	lw t0, 68(a0)
	min a3, a2, a5
	lw a5, 72(a0)
	min a4, a3, t0
	lw t1, 76(a0)
	min a2, a4, a5
	lw t0, 80(a0)
	min a3, a2, t1
	lw a2, 84(a0)
	min a5, a3, t0
	lw t1, 88(a0)
	min a4, a5, a2
	lw t0, 92(a0)
	min a3, a4, t1
	lw a5, 96(a0)
	min a2, a3, t0
	lw t0, 100(a0)
	min a4, a2, a5
	lw t1, 104(a0)
	min a3, a4, t0
	lw t0, 108(a0)
	min a5, a3, t1
	lw a3, 112(a0)
	min a2, a5, t0
	lw t0, 116(a0)
	min a4, a2, a3
	lw t2, 120(a0)
	min a5, a4, t0
	lw t1, 124(a0)
	min a3, a5, t2
	lw t0, 128(a0)
	min a2, a3, t1
	lw t2, 132(a0)
	min a4, a2, t0
	lw t1, 136(a0)
	min a5, a4, t2
	lw t0, 140(a0)
	min a3, a5, t1
	lw a5, 144(a0)
	min a2, a3, t0
	lw t1, 148(a0)
	min a4, a2, a5
	lw t0, 152(a0)
	min a3, a4, t1
	lw a4, 156(a0)
	min a2, a3, t0
	lw t1, 160(a0)
	min a5, a2, a4
	lw t0, 164(a0)
	min a3, a5, t1
	lw a5, 168(a0)
	min a4, a3, t0
	lw t1, 172(a0)
	min a2, a4, a5
	lw t0, 176(a0)
	min a3, a2, t1
	lw a2, 180(a0)
	min a5, a3, t0
	lw t0, 184(a0)
	min a4, a5, a2
	lw a5, 188(a0)
	min a3, a4, t0
	lw t0, 192(a0)
	min a2, a3, a5
	lw t1, 196(a0)
	min a4, a2, t0
	lw a5, 200(a0)
	min a3, a4, t1
	lw t0, 204(a0)
	min a2, a3, a5
	lw a5, 208(a0)
	min a4, a2, t0
	lw t0, 212(a0)
	min a3, a4, a5
	lw a5, 216(a0)
	min a2, a3, t0
	lw t0, 220(a0)
	min a4, a2, a5
	lw t1, 224(a0)
	min a3, a4, t0
	lw t0, 228(a0)
	min a5, a3, t1
	lw t1, 232(a0)
	min a2, a5, t0
	lw a5, 236(a0)
	min a4, a2, t1
	lw t0, 240(a0)
	min a3, a4, a5
	lw a5, 244(a0)
	min a2, a3, t0
	lw t0, 248(a0)
	min a4, a2, a5
	lw a5, 252(a0)
	min a3, a4, t0
	li a4, 960
	min a2, a3, a5
	blt a1, a4, label1392
	lw a4, 256(a0)
	lw t0, 260(a0)
	min a3, a2, a4
	lw a5, 264(a0)
	min a1, a3, t0
	lw t0, 268(a0)
	min a4, a1, a5
	lw a5, 272(a0)
	min a2, a4, t0
	lw a4, 276(a0)
	min a3, a2, a5
	lw a5, 280(a0)
	min a1, a3, a4
	lw a4, 284(a0)
	min a2, a1, a5
	lw t0, 288(a0)
	min a3, a2, a4
	lw a5, 292(a0)
	min a1, a3, t0
	lw a4, 296(a0)
	min a2, a1, a5
	lw a5, 300(a0)
	min a3, a2, a4
	lw t0, 304(a0)
	min a1, a3, a5
	lw a4, 308(a0)
	min a2, a1, t0
	lw a5, 312(a0)
	min a3, a2, a4
	lw t0, 316(a0)
	min a1, a3, a5
	lw a4, 320(a0)
	min a2, a1, t0
	lw a5, 324(a0)
	min a3, a2, a4
	lw a4, 328(a0)
	min a1, a3, a5
	lw a5, 332(a0)
	min a2, a1, a4
	lw a4, 336(a0)
	min a3, a2, a5
	lw a5, 340(a0)
	min a1, a3, a4
	lw t0, 344(a0)
	min a2, a1, a5
	lw a5, 348(a0)
	min a4, a2, t0
	lw a2, 352(a0)
	min a3, a4, a5
	lw a5, 356(a0)
	min a1, a3, a2
	lw t0, 360(a0)
	min a4, a1, a5
	lw t1, 364(a0)
	min a2, a4, t0
	lw a5, 368(a0)
	min a3, a2, t1
	lw t0, 372(a0)
	min a1, a3, a5
	lw a3, 376(a0)
	min a4, a1, t0
	lw t0, 380(a0)
	min a2, a4, a3
	lw a5, 384(a0)
	min a1, a2, t0
	lw a4, 388(a0)
	min a3, a1, a5
	lw a5, 392(a0)
	min a2, a3, a4
	lw a3, 396(a0)
	min a1, a2, a5
	lw a5, 400(a0)
	min a4, a1, a3
	lw t0, 404(a0)
	min a2, a4, a5
	lw a5, 408(a0)
	min a3, a2, t0
	lw a4, 412(a0)
	min a1, a3, a5
	mv a0, zero
	min a2, a1, a4
pcrel2009:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s7, %pcrel_lo(pcrel2009)(s9)
	li a1, 1000
	sw a2, 8(s10)
	mv a2, s8
	jal cmmcParallelFor
	li a0, 1000
	addiw s11, s11, 1
	bge s11, a0, label1733
	ld a5, 112(sp)
	mv a1, zero
	lui a3, 524288
	add s7, s7, a5
	addiw a2, a3, -1
	mv a0, s7
	j label1369
label1733:
	mv a2, s0
	mv a0, zero
	mv a1, s0
	mv a4, zero
	j label1379
.p2align 2
label1391:
	addi a1, a1, 64
.p2align 2
label1379:
	ld a5, 112(sp)
	mul t1, a4, a5
	addiw a4, a4, 16
	add a3, s0, t1
	sh2add t0, a0, a3
	lw t2, 0(t0)
	add t0, a3, a5
	subw t1, zero, t2
	sh2add t2, a0, t0
	add t0, a3, s1
	sw t1, 0(a1)
	sh2add a5, a0, t0
	lw t1, 0(t2)
	subw t3, zero, t1
	add t1, a3, s2
	sh2add t0, a0, t1
	sw t3, 4(a1)
	add t1, a3, s3
	lw t3, 0(a5)
	subw t2, zero, t3
	li t3, 125
	sw t2, 8(a1)
	lw t2, 0(t0)
	subw a5, zero, t2
	sh2add t2, a0, t1
	sw a5, 12(a1)
	lw a5, 0(t2)
	add t2, a3, s4
	subw t0, zero, a5
	sh2add a5, a0, t2
	add t2, a3, s5
	sw t0, 16(a1)
	lw t0, 0(a5)
	subw t1, zero, t0
	sh2add t0, a0, t2
	add t2, a3, s6
	sw t1, 20(a1)
	lw a5, 0(t0)
	sh2add t0, a0, t2
	subw t1, zero, a5
	sw t1, 24(a1)
	lw a5, 0(t0)
	slli t0, t3, 8
	subw t1, zero, a5
	sw t1, 28(a1)
	add t1, a3, t0
	sh2add t2, a0, t1
	lw a5, 0(t2)
	li t2, 1125
	subw t0, zero, a5
	slli t3, t2, 5
	add t1, a3, t3
	sw t0, 32(a1)
	li t3, 625
	sh2add a5, a0, t1
	slli t1, t3, 6
	lw t2, 0(a5)
	li t3, 1375
	subw t0, zero, t2
	sw t0, 36(a1)
	add t0, a3, t1
	sh2add a5, a0, t0
	slli t0, t3, 5
	lw t2, 0(a5)
	li t3, 375
	add a5, a3, t0
	subw t1, zero, t2
	sh2add t2, a0, a5
	slli a5, t3, 7
	sw t1, 40(a1)
	li t3, 1625
	lw t1, 0(t2)
	add t2, a3, a5
	subw t0, zero, t1
	sw t0, 44(a1)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	subw a5, zero, t1
	slli t1, t3, 5
	li t3, 875
	add t0, a3, t1
	sw a5, 48(a1)
	sh2add t2, a0, t0
	slli t0, t3, 6
	lw a5, 0(t2)
	subw t1, zero, a5
	sw t1, 52(a1)
	add t1, a3, t0
	sh2add t2, a0, t1
	lw a5, 0(t2)
	li t2, 1875
	subw t0, zero, a5
	slli a5, t2, 5
	add t1, a3, a5
	sw t0, 56(a1)
	sh2add t0, a0, t1
	lw t2, 0(t0)
	li t0, 992
	subw a5, zero, t2
	sw a5, 60(a1)
	blt a4, t0, label1391
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
	lui t2, 21
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
	li a5, 625
	lw t1, 0(a4)
	slli a4, a5, 7
	subw t0, zero, t1
	add t1, a3, a4
	sw t0, 76(a1)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	subw a4, zero, a5
	addiw a5, t2, -2016
	add t1, a3, a5
	sw a4, 80(a1)
	sh2add t0, a0, t1
	li t1, 1375
	lw a4, 0(t0)
	slli t0, t1, 6
	subw a5, zero, a4
	add a4, a3, t0
	sw a5, 84(a1)
	sh2add a5, a0, a4
	lui a4, 22
	lw t1, 0(a5)
	subw t0, zero, t1
	addiw t1, a4, 1888
	add a5, a3, t1
	sw t0, 88(a1)
	sh2add t0, a0, a5
	addiw a0, a0, 1
	lw a4, 0(t0)
	subw a3, zero, a4
	li a4, 1000
	sw a3, 92(a1)
	bge a0, a4, label1383
	ld a5, 112(sp)
	mv a4, zero
	add a2, a2, a5
	mv a1, a2
	j label1379
label1383:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv s2, zero
	mv s4, zero
	addi s1, a0, %pcrel_lo(label1383)
	j label1384
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -64
pcrel779:
	auipc a5, %pcrel_hi(b)
	li a4, 125
	addi a2, a5, %pcrel_lo(pcrel779)
	sd s0, 0(sp)
	slli a3, a4, 5
	mv s0, a1
	sh3add t6, a3, a3
	sh2add t2, a3, a3
	slli a5, a3, 1
	sd s5, 8(sp)
	mul a1, a0, a3
	sh1add t0, a3, a3
	slli t1, a5, 1
	sd s1, 16(sp)
	add a7, a2, a1
	slli t3, t0, 1
	slli t5, t1, 1
	sd s6, 24(sp)
	li a2, 625
pcrel780:
	auipc a1, %pcrel_hi(a)
	slli a6, a2, 6
	sd s4, 32(sp)
	addi a4, a1, %pcrel_lo(pcrel780)
	sd s2, 40(sp)
	li a1, 875
	sd s3, 48(sp)
	slli t4, a1, 5
	sd s7, 56(sp)
	mv a1, a7
	mv s1, zero
	j label5
.p2align 2
label9:
	li s5, 125
	slli s4, s5, 11
	lui s5, 63
	add s3, a2, s4
	addiw s4, s5, 1952
	sh2add s2, a0, s3
	lui s5, 64
	add s3, a2, s4
	lw s1, 0(s2)
	addiw s4, s5, 1856
	sh2add s2, a0, s3
	lui s5, 65
	add s3, a2, s4
	sw s1, 256(a1)
	addiw s4, s5, 1760
	lw s1, 0(s2)
	lui s5, 66
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 260(a1)
	addiw s4, s5, 1664
	lw s1, 0(s2)
	lui s5, 67
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 264(a1)
	addiw s4, s5, 1568
	lw s1, 0(s2)
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 268(a1)
	lui s4, 68
	lw s1, 0(s2)
	sh2add s2, a0, s3
	addiw s3, s4, 1472
	sw s1, 272(a1)
	lw s1, 0(s2)
	sw s1, 276(a1)
	add s1, a2, s3
	sh2add s2, a0, s1
	lui s1, 69
	lw s5, 0(s2)
	addiw s4, s1, 1376
	add s3, a2, s4
	sh2add s2, a0, s3
	sw s5, 280(a1)
	li s5, 1125
	lw s1, 0(s2)
	slli s4, s5, 8
	lui s5, 71
	add s3, a2, s4
	sw s1, 284(a1)
	sh2add s1, a0, s3
	lw s2, 0(s1)
	addiw s1, s5, 1184
	lui s5, 72
	add s4, a2, s1
	sw s2, 288(a1)
	sh2add s3, a0, s4
	addiw s4, s5, 1088
	lw s2, 0(s3)
	lui s5, 73
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 292(a1)
	lw s2, 0(s1)
	addiw s1, s5, 992
	lui s5, 74
	add s4, a2, s1
	sw s2, 296(a1)
	sh2add s3, a0, s4
	addiw s4, s5, 896
	lw s2, 0(s3)
	lui s5, 75
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 300(a1)
	lw s2, 0(s1)
	addiw s1, s5, 800
	lui s5, 76
	add s4, a2, s1
	sw s2, 304(a1)
	addiw s1, s5, 704
	sh2add s3, a0, s4
	lui s5, 77
	add s4, a2, s1
	lw s2, 0(s3)
	sh2add s3, a0, s4
	addiw s4, s5, 608
	sw s2, 308(a1)
	li s5, 625
	lw s2, 0(s3)
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 312(a1)
	lw s2, 0(s1)
	slli s1, s5, 9
	lui s5, 79
	add s4, a2, s1
	sw s2, 316(a1)
	sh2add s3, a0, s4
	addiw s4, s5, 416
	lw s2, 0(s3)
	lui s5, 80
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 320(a1)
	lw s2, 0(s1)
	addiw s1, s5, 320
	lui s5, 82
	add s4, a2, s1
	sw s2, 324(a1)
	lui s1, 81
	sh2add s3, a0, s4
	addiw s4, s1, 224
	lw s2, 0(s3)
	add s3, a2, s4
	addiw s4, s5, 128
	sw s2, 328(a1)
	lui s5, 83
	sh2add s2, a0, s3
	add s3, a2, s4
	lw s1, 0(s2)
	addiw s4, s5, 32
	sh2add s2, a0, s3
	lui s5, 84
	add s3, a2, s4
	sw s1, 332(a1)
	addiw s4, s5, -64
	lw s1, 0(s2)
	lui s5, 88
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 336(a1)
	lw s1, 0(s2)
	sh2add s2, a0, s3
	lui s3, 85
	sw s1, 340(a1)
	lw s1, 0(s2)
	addiw s2, s3, -160
	sw s1, 344(a1)
	add s1, a2, s2
	li s2, 1375
	sh2add s4, a0, s1
	slli s1, s2, 8
	lw s3, 0(s4)
	add s4, a2, s1
	lui s1, 87
	sw s3, 348(a1)
	sh2add s3, a0, s4
	addiw s4, s1, -352
	lw s2, 0(s3)
	add s3, a2, s4
	addiw s4, s5, -448
	sw s2, 352(a1)
	lui s5, 89
	sh2add s2, a0, s3
	add s3, a2, s4
	lw s1, 0(s2)
	addiw s4, s5, -544
	sh2add s2, a0, s3
	lui s5, 90
	sw s1, 356(a1)
	lw s1, 0(s2)
	add s2, a2, s4
	addiw s4, s5, -640
	sh2add s3, a0, s2
	sw s1, 360(a1)
	lui s5, 91
	lw s1, 0(s3)
	add s3, a2, s4
	addiw s4, s5, -736
	sh2add s2, a0, s3
	sw s1, 364(a1)
	lui s5, 92
	add s3, a2, s4
	lw s1, 0(s2)
	addiw s4, s5, -832
	sh2add s2, a0, s3
	lui s5, 93
	add s3, a2, s4
	sw s1, 368(a1)
	addiw s4, s5, -928
	lw s1, 0(s2)
	li s5, 375
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 372(a1)
	slli s4, s5, 10
	lw s1, 0(s2)
	lui s5, 95
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 376(a1)
	addiw s4, s5, -1120
	lw s1, 0(s2)
	lui s5, 96
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 380(a1)
	addiw s4, s5, -1216
	lw s1, 0(s2)
	lui s5, 97
	sw s1, 384(a1)
	sh2add s1, a0, s3
	add s3, a2, s4
	lw s2, 0(s1)
	addiw s4, s5, -1312
	lui s5, 98
	sw s2, 388(a1)
	sh2add s2, a0, s3
	add s3, a2, s4
	lw s1, 0(s2)
	sh2add s2, a0, s3
	sw s1, 392(a1)
	lw s1, 0(s2)
	addiw s2, s5, -1408
	lui s5, 99
	add s4, a2, s2
	sw s1, 396(a1)
	sh2add s3, a0, s4
	addiw s4, s5, -1504
	lw s1, 0(s3)
	lui s5, 100
	add s3, a2, s4
	sh2add s2, a0, s3
	sw s1, 400(a1)
	addiw s3, s5, -1600
	lw s1, 0(s2)
	add s4, a2, s3
	sh2add s2, a0, s4
	lui s4, 101
	sw s1, 404(a1)
	addiw s3, s4, -1696
	lw s1, 0(s2)
	add s2, a2, s3
	sw s1, 408(a1)
	sh2add s1, a0, s2
	addiw a0, a0, 1
	lw a2, 0(s1)
	sw a2, 412(a1)
	ble s0, a0, label11
	add a7, a7, a3
	mv s1, zero
	mv a1, a7
.p2align 2
label5:
	mul s4, s1, a3
	li s7, 625
	addiw s1, s1, 64
	add a2, a4, s4
	sh2add s2, a0, a2
	add s4, a2, a3
	add s6, a2, t5
	sh2add s5, a0, s4
	lw s3, 0(s2)
	add s2, a2, a5
	sw s3, 0(a1)
	lw s3, 0(s5)
	sh2add s5, a0, s2
	sw s3, 4(a1)
	add s3, a2, t0
	lw s4, 0(s5)
	sh2add s5, a0, s3
	add s3, a2, t1
	sw s4, 8(a1)
	sh2add s4, a0, s3
	lw s2, 0(s5)
	sw s2, 12(a1)
	add s2, a2, t2
	lw s5, 0(s4)
	sh2add s3, a0, s2
	sw s5, 16(a1)
	add s5, a2, t3
	lw s4, 0(s3)
	sh2add s3, a0, s5
	sw s4, 20(a1)
	add s4, a2, t4
	lw s2, 0(s3)
	sh2add s5, a0, s4
	sw s2, 24(a1)
	sh2add s2, a0, s6
	lw s3, 0(s5)
	li s6, 1375
	sw s3, 28(a1)
	add s3, a2, t6
	lw s4, 0(s2)
	sh2add s5, a0, s3
	add s2, a2, a6
	sh2add s3, a0, s2
	sw s4, 32(a1)
	lw s4, 0(s5)
	sw s4, 36(a1)
	lw s4, 0(s3)
	slli s3, s6, 5
	li s6, 375
	add s2, a2, s3
	sw s4, 40(a1)
	sh2add s5, a0, s2
	slli s2, s6, 7
	lw s4, 0(s5)
	add s5, a2, s2
	sh2add s3, a0, s5
	sw s4, 44(a1)
	li s5, 1625
	lw s4, 0(s3)
	slli s3, s5, 5
	sw s4, 48(a1)
	add s4, a2, s3
	sh2add s2, a0, s4
	li s4, 875
	lw s5, 0(s2)
	slli s6, s4, 6
	add s3, a2, s6
	lui s6, 17
	sh2add s2, a0, s3
	sw s5, 52(a1)
	li s3, 1875
	lw s4, 0(s2)
	slli s2, s3, 5
	add s5, a2, s2
	sw s4, 56(a1)
	sh2add s4, a0, s5
	li s5, 125
	lw s3, 0(s4)
	slli s2, s5, 9
	add s4, a2, s2
	addiw s2, s6, -1632
	sw s3, 60(a1)
	li s6, 1125
	sh2add s3, a0, s4
	lw s5, 0(s3)
	sw s5, 64(a1)
	add s5, a2, s2
	sh2add s4, a0, s5
	lw s3, 0(s4)
	slli s4, s6, 6
	add s5, a2, s4
	sw s3, 68(a1)
	sh2add s2, a0, s5
	lui s5, 19
	lw s3, 0(s2)
	addiw s4, s5, -1824
	slli s5, s7, 7
	lui s7, 30
	sw s3, 72(a1)
	add s3, a2, s4
	add s4, a2, s5
	sh2add s2, a0, s3
	sh2add s3, a0, s4
	lw s6, 0(s2)
	sw s6, 76(a1)
	lui s6, 21
	lw s2, 0(s3)
	addiw s4, s6, -2016
	lui s6, 24
	add s3, a2, s4
	sh2add s5, a0, s3
	sw s2, 80(a1)
	li s3, 1375
	lw s2, 0(s5)
	slli s5, s3, 6
	sw s2, 84(a1)
	add s2, a2, s5
	sh2add s4, a0, s2
	lui s2, 22
	lw s3, 0(s4)
	addiw s4, s2, 1888
	add s5, a2, s4
	sw s3, 88(a1)
	li s4, 375
	sh2add s3, a0, s5
	lw s2, 0(s3)
	slli s3, s4, 8
	sw s2, 92(a1)
	add s2, a2, s3
	addiw s3, s6, 1696
	sh2add s5, a0, s2
	li s6, 1625
	lw s4, 0(s5)
	sw s4, 96(a1)
	add s4, a2, s3
	slli s3, s6, 6
	sh2add s2, a0, s4
	li s6, 875
	add s4, a2, s3
	lw s5, 0(s2)
	sw s5, 100(a1)
	sh2add s5, a0, s4
	lui s4, 26
	lw s2, 0(s5)
	addiw s5, s4, 1504
	sw s2, 104(a1)
	add s2, a2, s5
	slli s5, s6, 7
	sh2add s3, a0, s2
	li s6, 1875
	lw s4, 0(s3)
	sw s4, 108(a1)
	add s4, a2, s5
	lui s5, 28
	sh2add s2, a0, s4
	lw s3, 0(s2)
	addiw s2, s5, 1312
	sw s3, 112(a1)
	add s3, a2, s2
	sh2add s4, a0, s3
	lw s5, 0(s4)
	slli s4, s6, 6
	add s2, a2, s4
	sw s5, 116(a1)
	sh2add s3, a0, s2
	addiw s5, s7, 1120
	lw s6, 0(s3)
	lui s7, 33
	add s2, a2, s5
	li s5, 125
	sh2add s4, a0, s2
	sw s6, 120(a1)
	slli s2, s5, 10
	lui s6, 32
	lw s3, 0(s4)
	sw s3, 124(a1)
	add s3, a2, s2
	sh2add s4, a0, s3
	addiw s3, s6, 928
	lw s5, 0(s4)
	addiw s6, s7, 832
	add s4, a2, s3
	sh2add s2, a0, s4
	sw s5, 128(a1)
	add s4, a2, s6
	lw s5, 0(s2)
	lui s6, 38
	sh2add s3, a0, s4
	sw s5, 132(a1)
	lui s5, 34
	lw s2, 0(s3)
	addiw s4, s5, 736
	add s3, a2, s4
	sw s2, 136(a1)
	sh2add s2, a0, s3
	li s3, 1125
	lw s5, 0(s2)
	slli s2, s3, 7
	add s4, a2, s2
	sw s5, 140(a1)
	sh2add s5, a0, s4
	lui s4, 36
	lw s3, 0(s5)
	addiw s5, s4, 544
	sw s3, 144(a1)
	add s3, a2, s5
	lui s5, 37
	sh2add s2, a0, s3
	lw s4, 0(s2)
	addiw s2, s5, 448
	add s3, a2, s2
	sw s4, 148(a1)
	sh2add s4, a0, s3
	addiw s3, s6, 352
	lw s5, 0(s4)
	li s6, 625
	sw s5, 152(a1)
	add s5, a2, s3
	sh2add s2, a0, s5
	slli s5, s6, 8
	lw s4, 0(s2)
	lui s6, 40
	add s2, a2, s5
	sh2add s3, a0, s2
	sw s4, 156(a1)
	lw s4, 0(s3)
	addiw s3, s6, 160
	lui s6, 41
	add s2, a2, s3
	sw s4, 160(a1)
	sh2add s5, a0, s2
	addiw s2, s6, 64
	lw s4, 0(s5)
	lui s6, 42
	add s3, a2, s2
	addiw s2, s6, -32
	sh2add s5, a0, s3
	sw s4, 164(a1)
	li s6, 1375
	add s3, a2, s2
	lw s4, 0(s5)
	sh2add s5, a0, s3
	sw s4, 168(a1)
	lw s4, 0(s5)
	slli s5, s6, 7
	add s3, a2, s5
	sw s4, 172(a1)
	sh2add s2, a0, s3
	lui s3, 44
	lw s6, 0(s2)
	addiw s4, s3, -224
	add s2, a2, s4
	sh2add s5, a0, s2
	sw s6, 176(a1)
	lui s2, 45
	li s6, 375
	addiw s4, s2, -320
	lw s3, 0(s5)
	add s5, a2, s4
	sw s3, 180(a1)
	sh2add s3, a0, s5
	lui s5, 46
	lw s2, 0(s3)
	addiw s3, s5, -416
	sw s2, 184(a1)
	add s2, a2, s3
	sh2add s4, a0, s2
	slli s2, s6, 9
	lw s5, 0(s4)
	lui s6, 49
	sw s5, 188(a1)
	add s5, a2, s2
	sh2add s3, a0, s5
	lui s5, 48
	lw s4, 0(s3)
	addiw s2, s5, -608
	add s3, a2, s2
	sw s4, 192(a1)
	sh2add s4, a0, s3
	addiw s3, s6, -704
	lw s5, 0(s4)
	add s2, a2, s3
	lui s3, 50
	sh2add s4, a0, s2
	sw s5, 196(a1)
	addiw s5, s3, -800
	lw s6, 0(s4)
	add s4, a2, s5
	li s5, 1625
	sh2add s2, a0, s4
	sw s6, 200(a1)
	lui s6, 52
	lw s3, 0(s2)
	slli s2, s5, 7
	add s4, a2, s2
	sw s3, 204(a1)
	sh2add s3, a0, s4
	addiw s4, s6, -992
	lw s5, 0(s3)
	lui s6, 54
	add s2, a2, s4
	lui s4, 53
	sw s5, 208(a1)
	sh2add s5, a0, s2
	lw s3, 0(s5)
	addiw s5, s4, -1088
	add s2, a2, s5
	sw s3, 212(a1)
	addiw s5, s6, -1184
	sh2add s3, a0, s2
	lui s6, 57
	add s2, a2, s5
	lw s4, 0(s3)
	sw s4, 216(a1)
	sh2add s4, a0, s2
	li s2, 875
	lw s3, 0(s4)
	slli s4, s2, 8
	sw s3, 220(a1)
	add s3, a2, s4
	sh2add s5, a0, s3
	lui s3, 56
	lw s2, 0(s5)
	addiw s5, s3, -1376
	add s4, a2, s5
	sw s2, 224(a1)
	addiw s5, s6, -1472
	sh2add s2, a0, s4
	li s6, 1875
	lw s3, 0(s2)
	sw s3, 228(a1)
	add s3, a2, s5
	sh2add s4, a0, s3
	lui s3, 58
	lw s2, 0(s4)
	addiw s5, s3, -1568
	sw s2, 232(a1)
	add s2, a2, s5
	sh2add s4, a0, s2
	slli s2, s6, 7
	lw s3, 0(s4)
	lui s6, 60
	add s4, a2, s2
	sh2add s5, a0, s4
	sw s3, 236(a1)
	addiw s4, s6, -1760
	lw s3, 0(s5)
	lui s6, 61
	add s5, a2, s4
	addiw s4, s6, -1856
	sh2add s2, a0, s5
	sw s3, 240(a1)
	add s5, a2, s4
	lw s3, 0(s2)
	lui s4, 62
	sh2add s2, a0, s5
	sw s3, 244(a1)
	lw s3, 0(s2)
	addiw s2, s4, -1952
	add s5, a2, s2
	sw s3, 248(a1)
	li s2, 960
	sh2add s3, a0, s5
	lw s4, 0(s3)
	sw s4, 252(a1)
	bge s1, s2, label9
	addi a1, a1, 256
	j label5
label11:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s4, 32(sp)
	ld s2, 40(sp)
	ld s3, 48(sp)
	ld s7, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -96
	mv a7, a1
pcrel1095:
	auipc a5, %pcrel_hi(c)
	li a4, 125
	sd s1, 0(sp)
	addi a3, a5, %pcrel_lo(pcrel1095)
	slli a2, a4, 5
	mv s1, a0
	sd s6, 8(sp)
	sh3add t5, a2, a2
	sh2add t1, a2, a2
	slli a4, a2, 1
	mul a1, a0, a2
	sd s0, 16(sp)
	sh1add a5, a2, a2
	slli t0, a4, 1
pcrel1096:
	auipc a0, %pcrel_hi(a)
	add a6, a3, a1
	sd s5, 24(sp)
	slli t2, a5, 1
	slli t4, t0, 1
	addi s0, a0, %pcrel_lo(pcrel1096)
pcrel1097:
	auipc a1, %pcrel_hi(b)
	li a0, 875
	sd s2, 32(sp)
	addi a3, a1, %pcrel_lo(pcrel1097)
	slli t3, a0, 5
	sd s4, 40(sp)
	sd s8, 48(sp)
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s9, 72(sp)
	sd s10, 80(sp)
	sd s11, 88(sp)
	mul a1, s1, a2
	mv s2, a6
	mv a0, zero
	add t6, s0, a1
	mv a1, t6
	mv s4, zero
	mv s5, zero
	j label788
.p2align 2
label792:
	li s4, 125
	lui s10, 17
	slli s8, s4, 9
	lw s4, 64(a1)
	add s6, s3, s8
	sh2add s7, a0, s6
	lw s8, 0(s7)
	mulw s9, s4, s8
	addiw s8, s10, -1632
	addw s6, s5, s9
	li s10, 1125
	add s4, s3, s8
	lw s5, 68(a1)
	sh2add s7, a0, s4
	lw s8, 0(s7)
	mulw s9, s5, s8
	slli s8, s10, 6
	addw s4, s6, s9
	lui s10, 21
	add s5, s3, s8
	lw s6, 72(a1)
	sh2add s7, a0, s5
	lw s8, 0(s7)
	lui s7, 19
	mulw s9, s6, s8
	addiw s8, s7, -1824
	addw s5, s4, s9
	lw s7, 76(a1)
	add s4, s3, s8
	sh2add s6, a0, s4
	lw s8, 0(s6)
	li s6, 625
	mulw s9, s7, s8
	slli s8, s6, 7
	addw s4, s5, s9
	lw s6, 80(a1)
	add s5, s3, s8
	sh2add s7, a0, s5
	lw s8, 0(s7)
	mulw s9, s6, s8
	lw s6, 84(a1)
	addiw s8, s10, -2016
	addw s5, s4, s9
	lui s10, 22
	add s4, s3, s8
	sh2add s7, a0, s4
	lw s9, 0(s7)
	li s7, 1375
	mulw s8, s6, s9
	slli s9, s7, 6
	addw s4, s5, s8
	lw s7, 88(a1)
	add s5, s3, s9
	sh2add s6, a0, s5
	lw s9, 0(s6)
	mulw s8, s7, s9
	addiw s7, s10, 1888
	addw s5, s4, s8
	lw s4, 92(a1)
	add s8, s3, s7
	sh2add s6, a0, s8
	addiw a0, a0, 1
	lw s3, 0(s6)
	mulw s7, s4, s3
	addw a1, s5, s7
	sw a1, 0(s2)
	li a1, 1000
	bge a0, a1, label793
	addi s2, s2, 4
	mv a1, t6
	mv s4, zero
	mv s5, zero
.p2align 2
label788:
	mul s8, s4, a2
	lw s6, 0(a1)
	addiw s4, s4, 16
	add s3, a3, s8
	sh2add s7, a0, s3
	add s9, s3, a2
	sh2add s10, a0, s9
	lw s8, 0(s7)
	lw s11, 4(a1)
	lw s7, 0(s10)
	mulw s10, s6, s8
	lw s8, 8(a1)
	mulw s9, s11, s7
	add s11, s3, a4
	addw s7, s9, s10
	sh2add s10, a0, s11
	lw s9, 0(s10)
	add s10, s3, a5
	mulw s11, s8, s9
	lw s9, 12(a1)
	sh2add s8, a0, s10
	addw s6, s7, s11
	lw s11, 0(s8)
	add s8, s3, t0
	mulw s10, s9, s11
	sh2add s9, a0, s8
	addw s7, s6, s10
	lw s6, 16(a1)
	lw s10, 0(s9)
	mulw s11, s6, s10
	add s10, s3, t1
	addw s8, s7, s11
	sh2add s9, a0, s10
	lw s7, 20(a1)
	lw s11, 0(s9)
	mulw s10, s7, s11
	add s11, s3, t3
	add s7, s3, t2
	addw s6, s8, s10
	sh2add s9, a0, s7
	lw s8, 24(a1)
	lw s10, 0(s9)
	mulw s9, s8, s10
	sh2add s8, a0, s11
	addw s7, s6, s9
	lw s9, 28(a1)
	lw s10, 0(s8)
	lw s8, 32(a1)
	mulw s11, s9, s10
	add s10, s3, t4
	addw s6, s7, s11
	sh2add s9, a0, s10
	lw s10, 0(s9)
	lw s9, 36(a1)
	mulw s11, s8, s10
	add s10, s3, t5
	addw s7, s6, s11
	sh2add s8, a0, s10
	lw s11, 0(s8)
	li s8, 625
	mulw s10, s9, s11
	lw s9, 40(a1)
	addw s6, s7, s10
	slli s10, s8, 6
	add s7, s3, s10
	sh2add s8, a0, s7
	lw s10, 0(s8)
	li s8, 1375
	mulw s11, s9, s10
	lw s9, 44(a1)
	slli s10, s8, 5
	addw s7, s6, s11
	add s6, s3, s10
	sh2add s8, a0, s6
	lw s10, 0(s8)
	li s8, 375
	mulw s11, s9, s10
	lw s9, 48(a1)
	slli s10, s8, 7
	addw s6, s7, s11
	add s7, s3, s10
	sh2add s8, a0, s7
	lw s10, 0(s8)
	li s8, 1625
	mulw s11, s9, s10
	lw s9, 52(a1)
	slli s10, s8, 5
	addw s7, s6, s11
	add s6, s3, s10
	sh2add s8, a0, s6
	lw s10, 0(s8)
	li s8, 875
	mulw s11, s9, s10
	lw s9, 56(a1)
	slli s10, s8, 6
	addw s6, s7, s11
	add s7, s3, s10
	sh2add s8, a0, s7
	lw s10, 0(s8)
	li s8, 1875
	mulw s11, s9, s10
	slli s10, s8, 5
	addw s7, s6, s11
	lw s8, 60(a1)
	add s9, s3, s10
	sh2add s6, a0, s9
	lw s10, 0(s6)
	li s6, 992
	mulw s9, s8, s10
	addw s11, s7, s9
	addw s5, s5, s11
	bge s4, s6, label792
	addi a1, a1, 64
	j label788
.p2align 2
label793:
	addiw s1, s1, 1
	ble a7, s1, label795
	add a6, a6, a2
	mul a1, s1, a2
	mv a0, zero
	mv s4, zero
	mv s5, zero
	mv s2, a6
	add t6, s0, a1
	mv a1, t6
	j label788
label795:
	ld s1, 0(sp)
	ld s6, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s8, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s9, 72(sp)
	ld s10, 80(sp)
	ld s11, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t0, a0
	mv a2, a1
	addiw a4, a0, 3
pcrel1201:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_2)
	ld a3, %pcrel_lo(pcrel1201)(a5)
	addi a1, a5, %pcrel_lo(pcrel1201)
	lw a0, 8(a1)
	ble a2, a4, label1099
	addiw t1, t0, 15
	addiw a4, a2, -3
	addiw a5, a2, -18
	bge t1, a4, label1150
	sh2add a1, t0, a3
	j label1109
.p2align 2
label1112:
	addi a1, a1, 64
.p2align 2
label1109:
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
	bgt a5, t0, label1112
	mv a1, t0
label1113:
	ble a4, a1, label1099
	sh2add a5, a1, a3
label1117:
	sw a0, 0(a5)
	addiw a1, a1, 4
	sw a0, 4(a5)
	sw a0, 8(a5)
	sw a0, 12(a5)
	ble a4, a1, label1187
	addi a5, a5, 16
	j label1117
label1187:
	mv t0, a1
label1099:
	ble a2, t0, label1106
	sh2add a1, t0, a3
	j label1102
label1105:
	addi a1, a1, 4
label1102:
	addiw t0, t0, 1
	sw a0, 0(a1)
	bgt a2, t0, label1105
label1106:
	ret
label1150:
	mv a1, t0
	mv t0, zero
	j label1113
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
	addiw a5, a0, 3
pcrel1356:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a0, %pcrel_lo(pcrel1356)
	ld a3, 8(a2)
	ble a1, a5, label1244
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label1251
	sh2add a0, t0, a3
	mv t1, zero
	j label1219
.p2align 2
label1223:
	addi a0, a0, 64
.p2align 2
label1219:
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
	bgt a5, t0, label1223
	mv a5, t0
	mv t2, t1
label1204:
	ble a4, a5, label1255
	sh2add a0, a5, a3
	mv t0, t2
	j label1213
label1217:
	addi a0, a0, 16
label1213:
	lw t1, 0(a0)
	addiw a5, a5, 4
	lw t4, 4(a0)
	addw t3, t0, t1
	lw t5, 8(a0)
	addw t2, t3, t4
	lw t3, 12(a0)
	addw t1, t2, t5
	addw t0, t1, t3
	bgt a4, a5, label1217
	mv a0, t0
	mv a4, t0
	mv t0, a5
label1224:
	ble a1, t0, label1333
	sh2add a0, t0, a3
	mv a3, a4
	j label1231
label1235:
	addi a0, a0, 4
label1231:
	lw a5, 0(a0)
	addiw t0, t0, 1
	addw a3, a3, a5
	bgt a1, t0, label1235
label1228:
	amoadd.w.aqrl a1, a3, (a2)
	ret
label1255:
	mv a0, t1
	mv a4, t1
	j label1224
label1251:
	mv a5, t0
	mv t2, zero
	mv t1, zero
	mv t0, zero
	j label1204
label1333:
	mv a3, a0
	j label1228
label1244:
	mv a4, zero
	mv a0, zero
	j label1224
