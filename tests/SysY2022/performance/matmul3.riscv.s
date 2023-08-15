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
pcrel1997:
	auipc a1, %pcrel_hi(a)
pcrel1998:
	auipc a2, %pcrel_hi(cmmc_parallel_body_2)
	addi a0, a1, %pcrel_lo(pcrel1997)
	sd ra, 0(sp)
pcrel1999:
	auipc a1, %pcrel_hi(c)
	sd s9, 8(sp)
pcrel2000:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s10, 16(sp)
	addi s10, s9, %pcrel_lo(pcrel2000)
	sd s7, 24(sp)
	addi s7, a1, %pcrel_lo(pcrel1999)
	sd s8, 32(sp)
	li a1, 125
	addi s8, a2, %pcrel_lo(pcrel1998)
	slli a5, a1, 5
	sd s11, 40(sp)
	mv s11, zero
	sd s0, 48(sp)
	slli s0, a5, 1
	sd s5, 56(sp)
	sd s1, 64(sp)
	sh1add s1, a5, a5
	sd s6, 72(sp)
	sd s2, 80(sp)
	slli s2, s0, 1
	sd s3, 88(sp)
	slli s6, s2, 1
	sh2add s3, a5, a5
	sd s4, 96(sp)
	slli s4, s1, 1
	sd s7, 112(sp)
	sd a5, 104(sp)
	mv s7, a0
	li a0, 875
	slli s5, a0, 5
label1355:
	li a0, 1000
	bge s11, a0, label1360
	mv a0, s7
	jal getarray
	li a1, 1000
	bne a0, a1, label1388
	addiw s11, s11, 1
	ld a5, 104(sp)
	add s7, s7, a5
	j label1355
.p2align 2
label1386:
	ld a5, 104(sp)
	add s7, s7, a5
.p2align 2
label1381:
	auipc s3, %pcrel_hi(cmmc_parallel_body_payload_3)
	mv a0, zero
	li a1, 1000
	sw s4, %pcrel_lo(label1381)(s3)
	sw s4, 4(s1)
	sd s7, 8(s1)
	mv a2, s0
	jal cmmcParallelFor
	li a0, 1000
	addiw s2, s2, 1
	lw s4, %pcrel_lo(label1381)(s3)
	blt s2, a0, label1386
	li a0, 92
	jal _sysy_stoptime
	mv a0, s4
	jal putint
	mv a0, zero
label1388:
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s10, 16(sp)
	ld s7, 24(sp)
	ld s8, 32(sp)
	ld s11, 40(sp)
	ld s0, 48(sp)
	ld s5, 56(sp)
	ld s1, 64(sp)
	ld s6, 72(sp)
	ld s2, 80(sp)
	ld s3, 88(sp)
	ld s4, 96(sp)
	addi sp, sp, 120
	ret
label1360:
	li a0, 23
	jal _sysy_starttime
	li a1, 1000
	mv a0, zero
pcrel2001:
	auipc a3, %pcrel_hi(cmmc_parallel_body_0)
	addi a2, a3, %pcrel_lo(pcrel2001)
	jal cmmcParallelFor
	li a1, 1000
	mv a0, zero
pcrel2002:
	auipc a3, %pcrel_hi(cmmc_parallel_body_1)
	addi a2, a3, %pcrel_lo(pcrel2002)
	jal cmmcParallelFor
	mv s11, zero
	ld s7, 112(sp)
	mv a0, s7
	mv a1, zero
	lui a3, 524288
	addiw a2, a3, -1
	j label1364
.p2align 2
label1387:
	addi a0, a0, 256
.p2align 2
label1364:
	lw a5, 0(a0)
	addiw a1, a1, 64
	lw t0, 4(a0)
	min a3, a2, a5
	lw t1, 8(a0)
	min a4, a3, t0
	lw t0, 12(a0)
	min a2, a4, t1
	lw a4, 16(a0)
	min a5, a2, t0
	lw t0, 20(a0)
	min a3, a5, a4
	lw a5, 24(a0)
	min a2, a3, t0
	lw t0, 28(a0)
	min a4, a2, a5
	lw a2, 32(a0)
	min a3, a4, t0
	lw t0, 36(a0)
	min a5, a3, a2
	lw t1, 40(a0)
	min a4, a5, t0
	lw a5, 44(a0)
	min a2, a4, t1
	lw t0, 48(a0)
	min a3, a2, a5
	lw a5, 52(a0)
	min a4, a3, t0
	lw t1, 56(a0)
	min a2, a4, a5
	lw a4, 60(a0)
	min t0, a2, t1
	lw a2, 64(a0)
	min a3, t0, a4
	lw t0, 68(a0)
	min a5, a3, a2
	lw t1, 72(a0)
	min a4, a5, t0
	lw t0, 76(a0)
	min a2, a4, t1
	lw a5, 80(a0)
	min a3, a2, t0
	lw t1, 84(a0)
	min a4, a3, a5
	lw t0, 88(a0)
	min a2, a4, t1
	lw t1, 92(a0)
	min a5, a2, t0
	lw a4, 96(a0)
	min a3, a5, t1
	lw t1, 100(a0)
	min t0, a3, a4
	lw a5, 104(a0)
	min a2, t0, t1
	lw t0, 108(a0)
	min a4, a2, a5
	lw a5, 112(a0)
	min a3, a4, t0
	lw t1, 116(a0)
	min a2, a3, a5
	lw t0, 120(a0)
	min a4, a2, t1
	lw a5, 124(a0)
	min a3, a4, t0
	lw t1, 128(a0)
	min a2, a3, a5
	lw t0, 132(a0)
	min a4, a2, t1
	lw a2, 136(a0)
	min a5, a4, t0
	lw t0, 140(a0)
	min a3, a5, a2
	lw t1, 144(a0)
	min a4, a3, t0
	lw t0, 148(a0)
	min a2, a4, t1
	lw a4, 152(a0)
	min a5, a2, t0
	lw t1, 156(a0)
	min a3, a5, a4
	lw t0, 160(a0)
	min a2, a3, t1
	lw a3, 164(a0)
	min a5, a2, t0
	lw t0, 168(a0)
	min a4, a5, a3
	lw a5, 172(a0)
	min a2, a4, t0
	lw t1, 176(a0)
	min a3, a2, a5
	lw t0, 180(a0)
	min a4, a3, t1
	lw a3, 184(a0)
	min a5, a4, t0
	lw t0, 188(a0)
	min a2, a5, a3
	lw t1, 192(a0)
	min a4, a2, t0
	lw t0, 196(a0)
	min a3, a4, t1
	lw a4, 200(a0)
	min a5, a3, t0
	lw t0, 204(a0)
	min a2, a5, a4
	lw a5, 208(a0)
	min a3, a2, t0
	lw t0, 212(a0)
	min a4, a3, a5
	lw a5, 216(a0)
	min a2, a4, t0
	lw t0, 220(a0)
	min a3, a2, a5
	lw t1, 224(a0)
	min a4, a3, t0
	lw t0, 228(a0)
	min a5, a4, t1
	lw t1, 232(a0)
	min a2, a5, t0
	lw a5, 236(a0)
	min a3, a2, t1
	lw t0, 240(a0)
	min a4, a3, a5
	lw a5, 244(a0)
	min a2, a4, t0
	lw t0, 248(a0)
	min a3, a2, a5
	lw a5, 252(a0)
	min a4, a3, t0
	li a3, 960
	min a2, a4, a5
	blt a1, a3, label1387
	lw a4, 256(a0)
	lw a5, 260(a0)
	min a3, a2, a4
	lw t0, 264(a0)
	min a1, a3, a5
	lw a3, 268(a0)
	min a4, a1, t0
	lw t0, 272(a0)
	min a2, a4, a3
	lw a4, 276(a0)
	min a5, a2, t0
	lw t0, 280(a0)
	min a1, a5, a4
	lw a4, 284(a0)
	min a3, a1, t0
	lw a5, 288(a0)
	min a2, a3, a4
	lw a3, 292(a0)
	min a1, a2, a5
	lw a5, 296(a0)
	min a4, a1, a3
	lw t0, 300(a0)
	min a2, a4, a5
	lw a4, 304(a0)
	min a3, a2, t0
	lw a5, 308(a0)
	min a1, a3, a4
	lw t1, 312(a0)
	min a2, a1, a5
	lw t0, 316(a0)
	min a4, a2, t1
	lw a5, 320(a0)
	min a3, a4, t0
	lw a4, 324(a0)
	min a1, a3, a5
	lw a5, 328(a0)
	min a2, a1, a4
	lw t0, 332(a0)
	min a3, a2, a5
	lw a2, 336(a0)
	min a4, a3, t0
	lw a5, 340(a0)
	min a1, a4, a2
	lw a4, 344(a0)
	min a3, a1, a5
	lw a5, 348(a0)
	min a2, a3, a4
	lw a4, 352(a0)
	min a1, a2, a5
	lw a5, 356(a0)
	min a3, a1, a4
	lw t0, 360(a0)
	min a2, a3, a5
	lw a5, 364(a0)
	min a4, a2, t0
	lw t0, 368(a0)
	min a1, a4, a5
	lw a4, 372(a0)
	min a3, a1, t0
	lw a5, 376(a0)
	min a2, a3, a4
	lw t0, 380(a0)
	min a1, a2, a5
	lw a5, 384(a0)
	min a4, a1, t0
	lw a1, 388(a0)
	min a3, a4, a5
	lw a5, 392(a0)
	min a2, a3, a1
	lw a3, 396(a0)
	min a4, a2, a5
	lw a5, 400(a0)
	min a1, a4, a3
	lw a4, 404(a0)
	min a2, a1, a5
	lw a5, 408(a0)
	min a3, a2, a4
	lw a4, 412(a0)
	min a1, a3, a5
	mv a0, zero
	min a2, a1, a4
pcrel2003:
	auipc s9, %pcrel_hi(cmmc_parallel_body_payload_2)
	sd s7, %pcrel_lo(pcrel2003)(s9)
	li a1, 1000
	sw a2, 8(s10)
	mv a2, s8
	jal cmmcParallelFor
	li a0, 1000
	addiw s11, s11, 1
	bge s11, a0, label1730
	ld a5, 104(sp)
	mv a1, zero
	lui a3, 524288
	add s7, s7, a5
	addiw a2, a3, -1
	mv a0, s7
	j label1364
label1730:
	ld s7, 112(sp)
	mv a0, zero
	mv a4, zero
	mv a1, s7
	mv a2, s7
	j label1374
.p2align 2
label1377:
	addi a1, a1, 64
.p2align 2
label1374:
	ld a5, 104(sp)
	ld s7, 112(sp)
	mul t0, a4, a5
	addiw a4, a4, 16
	add a3, s7, t0
	sh2add t2, a0, a3
	add t0, a3, a5
	lw t1, 0(t2)
	subw t3, zero, t1
	sh2add t1, a0, t0
	add t0, a3, s0
	sw t3, 0(a1)
	lw t2, 0(t1)
	sh2add t1, a0, t0
	subw a5, zero, t2
	add t0, a3, s1
	sw a5, 4(a1)
	lw t2, 0(t1)
	subw a5, zero, t2
	sh2add t2, a0, t0
	add t0, a3, s2
	sw a5, 8(a1)
	lw t1, 0(t2)
	sh2add t2, a0, t0
	subw a5, zero, t1
	sw a5, 12(a1)
	lw a5, 0(t2)
	add t2, a3, s3
	subw t1, zero, a5
	sh2add t0, a0, t2
	sw t1, 16(a1)
	add t1, a3, s4
	lw t3, 0(t0)
	sh2add t0, a0, t1
	subw a5, zero, t3
	add t3, a3, s5
	sh2add t1, a0, t3
	sw a5, 20(a1)
	li t3, 1125
	lw a5, 0(t0)
	subw t2, zero, a5
	sw t2, 24(a1)
	lw a5, 0(t1)
	add t1, a3, s6
	subw t0, zero, a5
	sh2add a5, a0, t1
	slli t1, t3, 5
	sw t0, 28(a1)
	li t3, 1375
	lw t0, 0(a5)
	subw t2, zero, t0
	add t0, a3, t1
	sh2add a5, a0, t0
	sw t2, 32(a1)
	lw t2, 0(a5)
	li a5, 625
	subw t1, zero, t2
	slli t0, a5, 6
	add t2, a3, t0
	sw t1, 36(a1)
	sh2add t1, a0, t2
	lw a5, 0(t1)
	subw t0, zero, a5
	slli a5, t3, 5
	add t2, a3, a5
	sw t0, 40(a1)
	sh2add t1, a0, t2
	li t2, 375
	lw t0, 0(t1)
	subw a5, zero, t0
	slli t0, t2, 7
	add t1, a3, t0
	sw a5, 44(a1)
	sh2add a5, a0, t1
	lw t2, 0(a5)
	li a5, 1625
	subw t0, zero, t2
	slli t3, a5, 5
	add t2, a3, t3
	sw t0, 48(a1)
	li t3, 875
	sh2add t1, a0, t2
	lw a5, 0(t1)
	subw t0, zero, a5
	slli a5, t3, 6
	li t3, 1875
	add t1, a3, a5
	sw t0, 52(a1)
	sh2add t2, a0, t1
	lw t0, 0(t2)
	subw a5, zero, t0
	slli t0, t3, 5
	add t1, a3, t0
	sw a5, 56(a1)
	sh2add t2, a0, t1
	lw a5, 0(t2)
	subw t0, zero, a5
	li a5, 992
	sw t0, 60(a1)
	blt a4, a5, label1377
	li t2, 125
	li t3, 1125
	slli a5, t2, 9
	lui t2, 17
	add t1, a3, a5
	sh2add t0, a0, t1
	lw a4, 0(t0)
	subw a5, zero, a4
	addiw a4, t2, -1632
	slli t2, t3, 6
	add t1, a3, a4
	sw a5, 64(a1)
	sh2add t0, a0, t1
	add t1, a3, t2
	lw a5, 0(t0)
	sh2add t0, a0, t1
	subw a4, zero, a5
	sw a4, 68(a1)
	lw a5, 0(t0)
	lui t0, 19
	subw a4, zero, a5
	addiw a5, t0, -1824
	add t2, a3, a5
	sw a4, 72(a1)
	sh2add t1, a0, t2
	li t2, 625
	lw t0, 0(t1)
	slli a5, t2, 7
	subw a4, zero, t0
	add t1, a3, a5
	sh2add t0, a0, t1
	sw a4, 76(a1)
	lw a4, 0(t0)
	lui t0, 21
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
	lui t1, 22
	lw a5, 0(t0)
	addiw t0, t1, 1888
	subw a4, zero, a5
	sw a4, 88(a1)
	add a4, a3, t0
	sh2add a5, a0, a4
	li a4, 1000
	addiw a0, a0, 1
	lw t1, 0(a5)
	subw a3, zero, t1
	sw a3, 92(a1)
	bge a0, a4, label1886
	ld a5, 104(sp)
	mv a4, zero
	add a2, a2, a5
	mv a1, a2
	j label1374
label1886:
	auipc a1, %pcrel_hi(cmmc_parallel_body_payload_3)
pcrel2004:
	auipc a0, %pcrel_hi(cmmc_parallel_body_3)
	ld s7, 112(sp)
	mv s2, zero
	mv s4, zero
	addi s1, a1, %pcrel_lo(label1886)
	addi s0, a0, %pcrel_lo(pcrel2004)
	j label1381
.p2align 2
cmmc_parallel_body_0:
	addi sp, sp, -64
pcrel778:
	auipc a5, %pcrel_hi(b)
	li a4, 125
	addi a2, a5, %pcrel_lo(pcrel778)
	sd s0, 0(sp)
	slli a3, a4, 5
pcrel779:
	auipc a5, %pcrel_hi(a)
	mv s0, a1
	sd s5, 8(sp)
	sh3add t6, a3, a3
	sh2add t2, a3, a3
	addi a4, a5, %pcrel_lo(pcrel779)
	mul a1, a0, a3
	sd s1, 16(sp)
	sh1add t0, a3, a3
	slli a5, a3, 1
	add a7, a2, a1
	slli t3, t0, 1
	slli t1, a5, 1
	li a2, 625
	li a1, 875
	slli t5, t1, 1
	slli a6, a2, 6
	slli t4, a1, 5
	sd s6, 24(sp)
	sd s3, 32(sp)
	sd s2, 40(sp)
	sd s4, 48(sp)
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
	lui s5, 68
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 268(a1)
	addiw s4, s5, 1472
	lw s1, 0(s2)
	lui s5, 69
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 272(a1)
	lw s1, 0(s2)
	sw s1, 276(a1)
	sh2add s1, a0, s3
	lw s2, 0(s1)
	addiw s1, s5, 1376
	li s5, 1125
	add s4, a2, s1
	sw s2, 280(a1)
	slli s1, s5, 8
	sh2add s3, a0, s4
	lui s5, 71
	add s4, a2, s1
	lw s2, 0(s3)
	sh2add s3, a0, s4
	addiw s4, s5, 1184
	sw s2, 284(a1)
	lui s5, 72
	lw s2, 0(s3)
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 288(a1)
	lw s2, 0(s1)
	addiw s1, s5, 1088
	lui s5, 73
	add s4, a2, s1
	sw s2, 292(a1)
	sh2add s3, a0, s4
	addiw s4, s5, 992
	lw s2, 0(s3)
	lui s5, 74
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 296(a1)
	lw s2, 0(s1)
	addiw s1, s5, 896
	lui s5, 75
	add s4, a2, s1
	sw s2, 300(a1)
	addiw s1, s5, 800
	sh2add s3, a0, s4
	lui s5, 76
	add s4, a2, s1
	lw s2, 0(s3)
	sh2add s3, a0, s4
	addiw s4, s5, 704
	sw s2, 304(a1)
	lui s5, 77
	lw s2, 0(s3)
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 308(a1)
	lw s2, 0(s1)
	addiw s1, s5, 608
	li s5, 625
	add s4, a2, s1
	sw s2, 312(a1)
	sh2add s3, a0, s4
	slli s4, s5, 9
	lw s2, 0(s3)
	lui s5, 79
	add s3, a2, s4
	sh2add s1, a0, s3
	sw s2, 316(a1)
	lw s2, 0(s1)
	addiw s1, s5, 416
	lui s5, 80
	add s4, a2, s1
	sw s2, 320(a1)
	addiw s1, s5, 320
	sh2add s3, a0, s4
	lui s5, 82
	add s4, a2, s1
	lw s2, 0(s3)
	lui s1, 81
	sh2add s3, a0, s4
	addiw s4, s1, 224
	sw s2, 324(a1)
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
	lui s5, 85
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 336(a1)
	addiw s4, s5, -160
	lw s1, 0(s2)
	li s5, 1375
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 340(a1)
	slli s4, s5, 8
	lw s1, 0(s2)
	lui s5, 87
	sw s1, 344(a1)
	sh2add s1, a0, s3
	add s3, a2, s4
	lw s2, 0(s1)
	addiw s4, s5, -352
	lui s5, 88
	sw s2, 348(a1)
	sh2add s2, a0, s3
	add s3, a2, s4
	lw s1, 0(s2)
	addiw s4, s5, -448
	sh2add s2, a0, s3
	lui s5, 89
	add s3, a2, s4
	sw s1, 352(a1)
	addiw s4, s5, -544
	lw s1, 0(s2)
	lui s5, 90
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 356(a1)
	addiw s4, s5, -640
	lw s1, 0(s2)
	lui s5, 91
	sw s1, 360(a1)
	sh2add s1, a0, s3
	add s3, a2, s4
	lw s2, 0(s1)
	addiw s4, s5, -736
	lui s5, 92
	sw s2, 364(a1)
	sh2add s2, a0, s3
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
	lw s1, 0(s2)
	sh2add s2, a0, s3
	sw s1, 376(a1)
	lw s1, 0(s2)
	slli s2, s5, 10
	lui s5, 95
	add s4, a2, s2
	sw s1, 380(a1)
	sh2add s3, a0, s4
	addiw s4, s5, -1120
	lw s1, 0(s3)
	lui s5, 96
	add s3, a2, s4
	addiw s4, s5, -1216
	sh2add s2, a0, s3
	sw s1, 384(a1)
	lui s5, 97
	add s3, a2, s4
	lw s1, 0(s2)
	addiw s4, s5, -1312
	sh2add s2, a0, s3
	add s3, a2, s4
	sw s1, 388(a1)
	lui s4, 98
	lw s1, 0(s2)
	sh2add s2, a0, s3
	sw s1, 392(a1)
	lw s1, 0(s2)
	addiw s2, s4, -1408
	sw s1, 396(a1)
	add s1, a2, s2
	sh2add s3, a0, s1
	lui s1, 99
	lw s4, 0(s3)
	addiw s3, s1, -1504
	sw s4, 400(a1)
	add s4, a2, s3
	lui s3, 100
	sh2add s2, a0, s4
	addiw s4, s3, -1600
	lw s1, 0(s2)
	add s2, a2, s4
	lui s4, 101
	sw s1, 404(a1)
	sh2add s1, a0, s2
	addiw s2, s4, -1696
	lw s3, 0(s1)
	add s1, a2, s2
	sw s3, 408(a1)
	sh2add s3, a0, s1
	addiw a0, a0, 1
	lw a2, 0(s3)
	sw a2, 412(a1)
	ble s0, a0, label11
	add a7, a7, a3
	mv s1, zero
	mv a1, a7
.p2align 2
label5:
	mul s3, s1, a3
	li s6, 375
	lui s7, 22
	addiw s1, s1, 64
	add a2, a4, s3
	sh2add s2, a0, a2
	add s3, a2, a3
	lw s4, 0(s2)
	sh2add s2, a0, s3
	sw s4, 0(a1)
	add s4, a2, a5
	lw s5, 0(s2)
	sh2add s2, a0, s4
	add s4, a2, t0
	sw s5, 4(a1)
	sh2add s5, a0, s4
	lw s3, 0(s2)
	sw s3, 8(a1)
	add s3, a2, t1
	lw s2, 0(s5)
	sh2add s4, a0, s3
	add s5, a2, t2
	sw s2, 12(a1)
	lw s2, 0(s4)
	sh2add s4, a0, s5
	add s5, a2, t3
	sw s2, 16(a1)
	sh2add s2, a0, s5
	lw s3, 0(s4)
	add s4, a2, t4
	sw s3, 20(a1)
	lw s3, 0(s2)
	sh2add s2, a0, s4
	sw s3, 24(a1)
	add s3, a2, t5
	lw s5, 0(s2)
	sh2add s2, a0, s3
	add s3, a2, t6
	sw s5, 28(a1)
	li s5, 1375
	lw s4, 0(s2)
	sh2add s2, a0, s3
	add s3, a2, a6
	sw s4, 32(a1)
	lw s4, 0(s2)
	sh2add s2, a0, s3
	sw s4, 36(a1)
	lw s4, 0(s2)
	slli s2, s5, 5
	sw s4, 40(a1)
	add s4, a2, s2
	sh2add s3, a0, s4
	slli s4, s6, 7
	lw s5, 0(s3)
	li s6, 1625
	sw s5, 44(a1)
	add s5, a2, s4
	slli s4, s6, 5
	sh2add s2, a0, s5
	li s6, 875
	lw s3, 0(s2)
	sw s3, 48(a1)
	add s3, a2, s4
	slli s4, s6, 6
	sh2add s5, a0, s3
	lui s6, 21
	add s3, a2, s4
	lw s2, 0(s5)
	li s4, 1875
	sh2add s5, a0, s3
	slli s3, s4, 5
	sw s2, 52(a1)
	lw s2, 0(s5)
	sw s2, 56(a1)
	add s2, a2, s3
	li s3, 125
	sh2add s5, a0, s2
	lw s4, 0(s5)
	slli s5, s3, 9
	sw s4, 60(a1)
	add s4, a2, s5
	sh2add s2, a0, s4
	lui s4, 17
	lw s3, 0(s2)
	addiw s2, s4, -1632
	add s5, a2, s2
	sw s3, 64(a1)
	li s2, 1125
	sh2add s3, a0, s5
	slli s5, s2, 6
	lw s4, 0(s3)
	add s3, a2, s5
	sw s4, 68(a1)
	sh2add s4, a0, s3
	lui s3, 19
	lw s2, 0(s4)
	addiw s5, s3, -1824
	sw s2, 72(a1)
	add s2, a2, s5
	li s5, 625
	sh2add s4, a0, s2
	slli s2, s5, 7
	lw s3, 0(s4)
	sw s3, 76(a1)
	add s3, a2, s2
	sh2add s4, a0, s3
	addiw s3, s6, -2016
	lw s5, 0(s4)
	sw s5, 80(a1)
	add s5, a2, s3
	sh2add s2, a0, s5
	li s5, 1375
	lw s4, 0(s2)
	slli s3, s5, 6
	addiw s5, s7, 1888
	li s7, 125
	sw s4, 84(a1)
	add s4, a2, s3
	sh2add s2, a0, s4
	add s4, a2, s5
	lw s6, 0(s2)
	li s5, 375
	sh2add s3, a0, s4
	sw s6, 88(a1)
	lui s6, 24
	lw s2, 0(s3)
	slli s3, s5, 8
	sw s2, 92(a1)
	add s2, a2, s3
	sh2add s4, a0, s2
	addiw s2, s6, 1696
	lw s5, 0(s4)
	li s6, 1625
	sw s5, 96(a1)
	add s5, a2, s2
	slli s2, s6, 6
	sh2add s3, a0, s5
	lui s6, 26
	add s5, a2, s2
	lw s4, 0(s3)
	addiw s2, s6, 1504
	sh2add s3, a0, s5
	li s6, 1875
	sw s4, 100(a1)
	lw s4, 0(s3)
	add s3, a2, s2
	sh2add s5, a0, s3
	sw s4, 104(a1)
	li s3, 875
	lw s4, 0(s5)
	slli s5, s3, 7
	add s2, a2, s5
	sw s4, 108(a1)
	lui s5, 28
	sh2add s4, a0, s2
	lw s3, 0(s4)
	addiw s4, s5, 1312
	sw s3, 112(a1)
	add s3, a2, s4
	sh2add s2, a0, s3
	lw s5, 0(s2)
	slli s2, s6, 6
	lui s6, 30
	add s3, a2, s2
	sw s5, 116(a1)
	sh2add s4, a0, s3
	addiw s3, s6, 1120
	lw s5, 0(s4)
	slli s6, s7, 10
	add s2, a2, s3
	sh2add s4, a0, s2
	sw s5, 120(a1)
	add s2, a2, s6
	lw s5, 0(s4)
	lui s6, 32
	sh2add s3, a0, s2
	sw s5, 124(a1)
	addiw s5, s6, 928
	lw s4, 0(s3)
	lui s6, 34
	add s3, a2, s5
	lui s5, 33
	sh2add s2, a0, s3
	sw s4, 128(a1)
	lw s4, 0(s2)
	addiw s2, s5, 832
	add s3, a2, s2
	sw s4, 132(a1)
	sh2add s4, a0, s3
	addiw s3, s6, 736
	lw s5, 0(s4)
	lui s6, 36
	add s4, a2, s3
	li s3, 1125
	sh2add s2, a0, s4
	sw s5, 136(a1)
	slli s4, s3, 7
	lw s5, 0(s2)
	sw s5, 140(a1)
	add s5, a2, s4
	sh2add s2, a0, s5
	lw s3, 0(s2)
	addiw s2, s6, 544
	lui s6, 38
	add s5, a2, s2
	sw s3, 144(a1)
	sh2add s4, a0, s5
	lui s5, 37
	lw s3, 0(s4)
	addiw s4, s5, 448
	sw s3, 148(a1)
	add s3, a2, s4
	addiw s4, s6, 352
	sh2add s2, a0, s3
	lui s6, 42
	lw s5, 0(s2)
	sw s5, 152(a1)
	add s5, a2, s4
	sh2add s3, a0, s5
	li s5, 625
	lw s2, 0(s3)
	slli s3, s5, 8
	add s4, a2, s3
	sw s2, 156(a1)
	lui s3, 40
	sh2add s2, a0, s4
	addiw s4, s3, 160
	lw s5, 0(s2)
	sw s5, 160(a1)
	add s5, a2, s4
	sh2add s2, a0, s5
	lui s5, 41
	lw s3, 0(s2)
	addiw s4, s5, 64
	sw s3, 164(a1)
	add s3, a2, s4
	addiw s4, s6, -32
	sh2add s2, a0, s3
	li s6, 1375
	add s3, a2, s4
	lw s5, 0(s2)
	sw s5, 168(a1)
	sh2add s5, a0, s3
	slli s3, s6, 7
	lw s2, 0(s5)
	lui s6, 44
	add s4, a2, s3
	sw s2, 172(a1)
	sh2add s2, a0, s4
	addiw s4, s6, -224
	lw s5, 0(s2)
	li s6, 375
	sw s5, 176(a1)
	add s5, a2, s4
	sh2add s3, a0, s5
	lui s5, 45
	lw s2, 0(s3)
	addiw s4, s5, -320
	add s3, a2, s4
	sw s2, 180(a1)
	sh2add s2, a0, s3
	lui s3, 46
	lw s5, 0(s2)
	addiw s4, s3, -416
	add s2, a2, s4
	sw s5, 184(a1)
	sh2add s5, a0, s2
	lw s3, 0(s5)
	slli s5, s6, 9
	lui s6, 49
	add s4, a2, s5
	sw s3, 188(a1)
	sh2add s2, a0, s4
	lui s4, 48
	lw s3, 0(s2)
	addiw s5, s4, -608
	add s2, a2, s5
	sw s3, 192(a1)
	sh2add s3, a0, s2
	addiw s2, s6, -704
	lw s4, 0(s3)
	sw s4, 196(a1)
	add s4, a2, s2
	sh2add s5, a0, s4
	lui s4, 50
	lw s3, 0(s5)
	addiw s2, s4, -800
	add s5, a2, s2
	sw s3, 200(a1)
	sh2add s3, a0, s5
	li s5, 1625
	lw s4, 0(s3)
	slli s3, s5, 7
	add s2, a2, s3
	sw s4, 204(a1)
	sh2add s4, a0, s2
	lui s2, 52
	lw s6, 0(s4)
	addiw s5, s2, -992
	add s4, a2, s5
	sh2add s3, a0, s4
	sw s6, 208(a1)
	lui s4, 53
	lui s6, 54
	addiw s5, s4, -1088
	lw s2, 0(s3)
	sw s2, 212(a1)
	add s2, a2, s5
	addiw s5, s6, -1184
	sh2add s3, a0, s2
	li s6, 875
	add s2, a2, s5
	lw s4, 0(s3)
	sw s4, 216(a1)
	sh2add s4, a0, s2
	slli s2, s6, 8
	lw s3, 0(s4)
	lui s6, 58
	add s5, a2, s2
	lui s2, 56
	sw s3, 220(a1)
	sh2add s3, a0, s5
	lw s4, 0(s3)
	addiw s3, s2, -1376
	sw s4, 224(a1)
	add s4, a2, s3
	sh2add s5, a0, s4
	lui s4, 57
	lw s2, 0(s5)
	addiw s3, s4, -1472
	add s5, a2, s3
	sw s2, 228(a1)
	sh2add s2, a0, s5
	addiw s5, s6, -1568
	lw s4, 0(s2)
	li s6, 1875
	add s3, a2, s5
	sw s4, 232(a1)
	sh2add s4, a0, s3
	slli s3, s6, 7
	lw s2, 0(s4)
	lui s6, 62
	add s5, a2, s3
	sw s2, 236(a1)
	sh2add s2, a0, s5
	lui s5, 60
	lw s4, 0(s2)
	addiw s2, s5, -1760
	sw s4, 240(a1)
	add s4, a2, s2
	sh2add s3, a0, s4
	lui s4, 61
	lw s5, 0(s3)
	addiw s3, s4, -1856
	add s2, a2, s3
	sw s5, 244(a1)
	addiw s3, s6, -1952
	sh2add s5, a0, s2
	add s2, a2, s3
	lw s4, 0(s5)
	sh2add s5, a0, s2
	li s2, 960
	sw s4, 248(a1)
	lw s4, 0(s5)
	sw s4, 252(a1)
	bge s1, s2, label9
	addi a1, a1, 256
	j label5
label11:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s3, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s7, 56(sp)
	addi sp, sp, 64
	ret
.p2align 2
cmmc_parallel_body_1:
	addi sp, sp, -96
	mv a7, a1
pcrel1092:
	auipc a3, %pcrel_hi(c)
	li a5, 125
	sd s0, 0(sp)
	addi a4, a3, %pcrel_lo(pcrel1092)
	slli a2, a5, 5
	sd s5, 8(sp)
	sh3add t5, a2, a2
	sh2add t1, a2, a2
pcrel1093:
	auipc a5, %pcrel_hi(b)
	mul a1, a0, a2
	sd s1, 16(sp)
	addi a3, a5, %pcrel_lo(pcrel1093)
	add a6, a4, a1
	mv s1, a0
	sh1add a5, a2, a2
	slli a4, a2, 1
pcrel1094:
	auipc a1, %pcrel_hi(a)
	sd s6, 24(sp)
	li a0, 875
	slli t2, a5, 1
	slli t0, a4, 1
	addi s0, a1, %pcrel_lo(pcrel1094)
	slli t3, a0, 5
	slli t4, t0, 1
	sd s2, 32(sp)
	sd s4, 40(sp)
	sd s7, 48(sp)
	sd s3, 56(sp)
	sd s8, 64(sp)
	sd s10, 72(sp)
	sd s11, 80(sp)
	sd s9, 88(sp)
	mul a1, s1, a2
	mv s2, a6
	mv a0, zero
	add t6, s0, a1
	mv a1, t6
	mv s4, zero
	mv s5, zero
	j label787
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
	lui s10, 19
	add s5, s3, s8
	lw s6, 72(a1)
	sh2add s7, a0, s5
	lw s8, 0(s7)
	mulw s9, s6, s8
	lw s6, 76(a1)
	addiw s8, s10, -1824
	addw s5, s4, s9
	li s10, 625
	add s4, s3, s8
	sh2add s7, a0, s4
	lw s9, 0(s7)
	mulw s8, s6, s9
	lw s6, 80(a1)
	slli s9, s10, 7
	addw s4, s5, s8
	lui s10, 21
	add s5, s3, s9
	sh2add s7, a0, s5
	lw s9, 0(s7)
	mulw s8, s6, s9
	lw s6, 84(a1)
	addiw s9, s10, -2016
	addw s5, s4, s8
	lui s10, 22
	add s4, s3, s9
	sh2add s7, a0, s4
	lw s8, 0(s7)
	li s7, 1375
	mulw s9, s6, s8
	slli s8, s7, 6
	addw s4, s5, s9
	lw s7, 88(a1)
	add s5, s3, s8
	sh2add s6, a0, s5
	lw s8, 0(s6)
	mulw s9, s7, s8
	addiw s8, s10, 1888
	addw s5, s4, s9
	add s7, s3, s8
	lw s4, 92(a1)
	sh2add s6, a0, s7
	addiw a0, a0, 1
	lw s8, 0(s6)
	mulw s3, s4, s8
	addw a1, s5, s3
	sw a1, 0(s2)
	li a1, 1000
	bge a0, a1, label793
	addi s2, s2, 4
	mv a1, t6
	mv s4, zero
	mv s5, zero
.p2align 2
label787:
	mul s7, s4, a2
	lw s6, 0(a1)
	addiw s4, s4, 16
	add s3, a3, s7
	sh2add s8, a0, s3
	add s10, s3, a2
	sh2add s11, a0, s10
	lw s7, 0(s8)
	lw s9, 4(a1)
	lw s8, 0(s11)
	add s11, s3, a4
	mulw s10, s9, s8
	mulw s9, s6, s7
	lw s6, 8(a1)
	addw s8, s10, s9
	sh2add s9, a0, s11
	lw s10, 0(s9)
	mulw s11, s6, s10
	add s10, s3, a5
	addw s7, s8, s11
	sh2add s9, a0, s10
	lw s8, 12(a1)
	lw s10, 0(s9)
	mulw s11, s8, s10
	lw s8, 16(a1)
	add s10, s3, t0
	addw s6, s7, s11
	sh2add s9, a0, s10
	add s10, s3, t1
	lw s11, 0(s9)
	mulw s9, s8, s11
	sh2add s8, a0, s10
	addw s7, s6, s9
	lw s9, 20(a1)
	lw s10, 0(s8)
	mulw s11, s9, s10
	lw s9, 24(a1)
	add s10, s3, t2
	addw s6, s7, s11
	sh2add s8, a0, s10
	lw s11, 0(s8)
	mulw s10, s9, s11
	lw s9, 28(a1)
	add s11, s3, t3
	addw s7, s6, s10
	sh2add s8, a0, s11
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
	slli s10, s8, 5
	addw s7, s6, s11
	lw s8, 44(a1)
	add s6, s3, s10
	sh2add s9, a0, s6
	lw s11, 0(s9)
	li s9, 375
	mulw s10, s8, s11
	slli s11, s9, 7
	addw s6, s7, s10
	lw s9, 48(a1)
	add s7, s3, s11
	sh2add s8, a0, s7
	lw s11, 0(s8)
	mulw s10, s9, s11
	li s9, 1625
	addw s7, s6, s10
	slli s8, s9, 5
	lw s6, 52(a1)
	add s10, s3, s8
	sh2add s9, a0, s10
	lw s11, 0(s9)
	li s9, 875
	mulw s10, s6, s11
	slli s11, s9, 6
	addw s8, s7, s10
	add s6, s3, s11
	lw s7, 56(a1)
	sh2add s9, a0, s6
	lw s11, 0(s9)
	mulw s10, s7, s11
	li s7, 1875
	addw s6, s8, s10
	slli s9, s7, 5
	lw s8, 60(a1)
	add s10, s3, s9
	sh2add s7, a0, s10
	lw s9, 0(s7)
	mulw s10, s8, s9
	addw s11, s6, s10
	li s6, 992
	addw s5, s5, s11
	bge s4, s6, label792
	addi a1, a1, 64
	j label787
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
	j label787
label795:
	ld s0, 0(sp)
	ld s5, 8(sp)
	ld s1, 16(sp)
	ld s6, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s7, 48(sp)
	ld s3, 56(sp)
	ld s8, 64(sp)
	ld s10, 72(sp)
	ld s11, 80(sp)
	ld s9, 88(sp)
	addi sp, sp, 96
	ret
.p2align 2
cmmc_parallel_body_2:
	mv t0, a0
	mv a2, a1
	addiw a4, a0, 3
pcrel1198:
	auipc a5, %pcrel_hi(cmmc_parallel_body_payload_2)
	ld a3, %pcrel_lo(pcrel1198)(a5)
	addi a1, a5, %pcrel_lo(pcrel1198)
	lw a0, 8(a1)
	ble a2, a4, label1110
	addiw t1, t0, 15
	addiw a4, a2, -3
	addiw a5, a2, -18
	bge t1, a4, label1135
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
	ble a4, a1, label1110
	sh2add a5, a1, a3
label1106:
	sw a0, 0(a5)
	addiw a1, a1, 4
	sw a0, 4(a5)
	sw a0, 8(a5)
	sw a0, 12(a5)
	ble a4, a1, label1172
	addi a5, a5, 16
	j label1106
label1172:
	mv t0, a1
label1110:
	ble a2, t0, label1117
	sh2add a1, t0, a3
	j label1113
label1116:
	addi a1, a1, 4
label1113:
	addiw t0, t0, 1
	sw a0, 0(a1)
	bgt a2, t0, label1116
label1117:
	ret
label1135:
	mv a1, t0
	mv t0, zero
	j label1102
.p2align 2
cmmc_parallel_body_3:
	mv t0, a0
	addiw a5, a0, 3
pcrel1353:
	auipc a0, %pcrel_hi(cmmc_parallel_body_payload_3)
	addi a2, a0, %pcrel_lo(pcrel1353)
	ld a3, 8(a2)
	ble a1, a5, label1241
	addiw a0, t0, 15
	addiw a4, a1, -3
	addiw a5, a1, -18
	bge a0, a4, label1248
	sh2add a0, t0, a3
	mv t1, zero
	j label1216
.p2align 2
label1220:
	addi a0, a0, 64
.p2align 2
label1216:
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
	bgt a5, t0, label1220
	mv a5, t0
	mv t2, t1
label1201:
	ble a4, a5, label1252
	sh2add a0, a5, a3
	mv t0, t2
	j label1210
label1214:
	addi a0, a0, 16
label1210:
	lw t1, 0(a0)
	addiw a5, a5, 4
	lw t4, 4(a0)
	addw t3, t0, t1
	lw t5, 8(a0)
	addw t2, t3, t4
	lw t3, 12(a0)
	addw t1, t2, t5
	addw t0, t1, t3
	bgt a4, a5, label1214
	mv a0, t0
	mv a4, t0
	mv t0, a5
label1221:
	ble a1, t0, label1330
	sh2add a0, t0, a3
	mv a3, a4
	j label1228
label1232:
	addi a0, a0, 4
label1228:
	lw a5, 0(a0)
	addiw t0, t0, 1
	addw a3, a3, a5
	bgt a1, t0, label1232
label1225:
	amoadd.w.aqrl a1, a3, (a2)
	ret
label1252:
	mv a0, t1
	mv a4, t1
	j label1221
label1248:
	mv a5, t0
	mv t2, zero
	mv t1, zero
	mv t0, zero
	j label1201
label1330:
	mv a3, a0
	j label1225
label1241:
	mv a4, zero
	mv a0, zero
	j label1221
