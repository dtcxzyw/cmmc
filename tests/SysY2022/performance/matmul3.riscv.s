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
.text
.p2align 2
.globl main
main:
	# stack usage: CalleeArg[0] Local[0] RegSpill[16] CalleeSaved[104]
	addi sp, sp, -120
pcrel2194:
	auipc a0, %pcrel_hi(a)
pcrel2195:
	auipc a1, %pcrel_hi(b)
	sd ra, 0(sp)
	sd s9, 8(sp)
	addi s9, a0, %pcrel_lo(pcrel2194)
	sd s8, 16(sp)
pcrel2196:
	auipc a0, %pcrel_hi(c)
	addi s8, a1, %pcrel_lo(pcrel2195)
	addi a3, a0, %pcrel_lo(pcrel2196)
	sd s10, 24(sp)
	li a0, 125
	mv s10, s9
	slli t4, a0, 5
	sd s11, 32(sp)
	li a0, 875
	mv s11, zero
	sd s0, 40(sp)
	slli s0, t4, 1
	sd s5, 48(sp)
	slli s5, a0, 5
	sd s1, 56(sp)
	sh1add s1, t4, t4
	sd s6, 64(sp)
	sd s2, 72(sp)
	slli s2, s0, 1
	sd s3, 80(sp)
	slli s6, s2, 1
	sh2add s3, t4, t4
	sd s4, 88(sp)
	slli s4, s1, 1
	sd s7, 96(sp)
	sh3add s7, t4, t4
	sd a3, 112(sp)
	sd t4, 104(sp)
label2:
	li a0, 1000
	bge s11, a0, label7
	mv a0, s10
	jal getarray
	li a1, 1000
	bne a0, a1, label73
	addiw s11, s11, 1
	ld t4, 104(sp)
	add s10, s10, t4
	j label2
label7:
	li a0, 23
	jal _sysy_starttime
	mv a1, zero
	mv a3, s8
	j label8
label72:
	li t2, 125
	lui t3, 90
	slli t1, t2, 11
	lui t2, 63
	add t0, a2, t1
	addiw t1, t2, 1952
	sh2add a5, a1, t0
	lui t2, 64
	add t0, a2, t1
	lw a4, 0(a5)
	addiw t1, t2, 1856
	sh2add a5, a1, t0
	lui t2, 65
	add t0, a2, t1
	sw a4, 256(a0)
	addiw t1, t2, 1760
	lw a4, 0(a5)
	lui t2, 66
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 260(a0)
	addiw t1, t2, 1664
	lw a4, 0(a5)
	lui t2, 67
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 264(a0)
	addiw t1, t2, 1568
	lw a4, 0(a5)
	lui t2, 68
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 268(a0)
	addiw t1, t2, 1472
	lw a4, 0(a5)
	lui t2, 69
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 272(a0)
	addiw t1, t2, 1376
	lw a4, 0(a5)
	li t2, 1125
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 276(a0)
	slli t1, t2, 8
	lw a4, 0(a5)
	lui t2, 71
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 280(a0)
	addiw t1, t2, 1184
	lw a4, 0(a5)
	lui t2, 72
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 284(a0)
	addiw t1, t2, 1088
	lw a4, 0(a5)
	lui t2, 73
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 288(a0)
	addiw t1, t2, 992
	lw a4, 0(a5)
	lui t2, 74
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 292(a0)
	addiw t1, t2, 896
	lw a4, 0(a5)
	lui t2, 75
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 296(a0)
	addiw t1, t2, 800
	lw a4, 0(a5)
	lui t2, 76
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 300(a0)
	addiw t1, t2, 704
	lw a4, 0(a5)
	lui t2, 77
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 304(a0)
	addiw t1, t2, 608
	lw a4, 0(a5)
	li t2, 625
	sw a4, 308(a0)
	sh2add a4, a1, t0
	add t0, a2, t1
	lw a5, 0(a4)
	slli t1, t2, 9
	lui t2, 79
	sw a5, 312(a0)
	sh2add a5, a1, t0
	add t0, a2, t1
	lw a4, 0(a5)
	addiw t1, t2, 416
	sh2add a5, a1, t0
	lui t2, 80
	add t0, a2, t1
	sw a4, 316(a0)
	addiw t1, t2, 320
	lw a4, 0(a5)
	lui t2, 81
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 320(a0)
	addiw t1, t2, 224
	lw a4, 0(a5)
	lui t2, 82
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 324(a0)
	addiw t1, t2, 128
	lw a4, 0(a5)
	lui t2, 83
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 328(a0)
	addiw t1, t2, 32
	lw a4, 0(a5)
	lui t2, 84
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 332(a0)
	addiw t1, t2, -64
	lw a4, 0(a5)
	lui t2, 85
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 336(a0)
	addiw t1, t2, -160
	lw a4, 0(a5)
	li t2, 1375
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 340(a0)
	slli t1, t2, 8
	lw a4, 0(a5)
	lui t2, 87
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 344(a0)
	addiw t1, t2, -352
	lw a4, 0(a5)
	lui t2, 88
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 348(a0)
	addiw t1, t2, -448
	lw a4, 0(a5)
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 352(a0)
	lui t1, 89
	lw a4, 0(a5)
	sh2add a5, a1, t0
	addiw t0, t1, -544
	sw a4, 356(a0)
	addiw t1, t3, -640
	lw a4, 0(a5)
	add a5, a2, t0
	add t0, a2, t1
	sw a4, 360(a0)
	sh2add a4, a1, a5
	sh2add a5, a1, t0
	lw t2, 0(a4)
	sw t2, 364(a0)
	lui t2, 91
	lw a4, 0(a5)
	addiw t1, t2, -736
	lui t2, 92
	add t0, a2, t1
	addiw t1, t2, -832
	sh2add a5, a1, t0
	sw a4, 368(a0)
	lui t2, 93
	add t0, a2, t1
	lw a4, 0(a5)
	addiw t1, t2, -928
	sh2add a5, a1, t0
	li t2, 375
	add t0, a2, t1
	sw a4, 372(a0)
	slli t1, t2, 10
	lw a4, 0(a5)
	lui t2, 95
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 376(a0)
	addiw t1, t2, -1120
	lw a4, 0(a5)
	lui t2, 96
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 380(a0)
	addiw t1, t2, -1216
	lw a4, 0(a5)
	lui t2, 97
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 384(a0)
	addiw t1, t2, -1312
	lw a4, 0(a5)
	lui t2, 98
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 388(a0)
	addiw t1, t2, -1408
	lw a4, 0(a5)
	lui t2, 99
	sh2add a5, a1, t0
	add t0, a2, t1
	sw a4, 392(a0)
	lw a4, 0(a5)
	sw a4, 396(a0)
	sh2add a4, a1, t0
	lw a5, 0(a4)
	addiw a4, t2, -1504
	add t1, a2, a4
	sw a5, 400(a0)
	lui a4, 100
	sh2add t0, a1, t1
	addiw t1, a4, -1600
	lw a5, 0(t0)
	add t0, a2, t1
	sw a5, 404(a0)
	sh2add a5, a1, t0
	lui t0, 101
	lw a4, 0(a5)
	addiw t1, t0, -1696
	add a5, a2, t1
	sw a4, 408(a0)
	sh2add a4, a1, a5
	addiw a1, a1, 1
	lw t0, 0(a4)
	sw t0, 412(a0)
	ld t4, 104(sp)
	add a3, a3, t4
label8:
	li a0, 1000
	bge a1, a0, label11
	mv a0, a3
	mv a4, zero
.p2align 2
label68:
	ld t4, 104(sp)
	li t3, 625
	mul a5, a4, t4
	addiw a4, a4, 64
	add a2, s9, a5
	sh2add t0, a1, a2
	add a5, a2, t4
	lui t4, 30
	lw t1, 0(t0)
	sh2add t0, a1, a5
	add a5, a2, s0
	sw t1, 0(a0)
	lw t1, 0(t0)
	sh2add t0, a1, a5
	add a5, a2, s1
	sw t1, 4(a0)
	sh2add t2, a1, a5
	lw t1, 0(t0)
	sw t1, 8(a0)
	add t1, a2, s2
	lw t0, 0(t2)
	sh2add a5, a1, t1
	add t2, a2, s3
	sh2add t1, a1, t2
	sw t0, 12(a0)
	lw t0, 0(a5)
	add a5, a2, s4
	sw t0, 16(a0)
	lw t0, 0(t1)
	sh2add t1, a1, a5
	add a5, a2, s5
	sw t0, 20(a0)
	lw t0, 0(t1)
	sh2add t1, a1, a5
	add a5, a2, s6
	sw t0, 24(a0)
	sh2add t0, a1, a5
	lw t2, 0(t1)
	add t1, a2, s7
	sh2add a5, a1, t1
	sw t2, 28(a0)
	lw t2, 0(t0)
	slli t0, t3, 6
	li t3, 1375
	sw t2, 32(a0)
	lw t2, 0(a5)
	sw t2, 36(a0)
	add t2, a2, t0
	slli t0, t3, 5
	sh2add t1, a1, t2
	li t3, 375
	add t2, a2, t0
	lw a5, 0(t1)
	sw a5, 40(a0)
	sh2add a5, a1, t2
	lw t1, 0(a5)
	slli a5, t3, 7
	li t3, 1625
	add t0, a2, a5
	sw t1, 44(a0)
	slli a5, t3, 5
	sh2add t2, a1, t0
	li t3, 875
	lw t1, 0(t2)
	sw t1, 48(a0)
	add t1, a2, a5
	sh2add t0, a1, t1
	slli t1, t3, 6
	lw t2, 0(t0)
	li t3, 125
	add a5, a2, t1
	li t1, 1875
	sw t2, 52(a0)
	sh2add t2, a1, a5
	lw t0, 0(t2)
	slli t2, t1, 5
	add a5, a2, t2
	sw t0, 56(a0)
	slli t2, t3, 9
	sh2add t0, a1, a5
	lui t3, 19
	add a5, a2, t2
	lw t1, 0(t0)
	sh2add t0, a1, a5
	lui a5, 17
	sw t1, 60(a0)
	lw t1, 0(t0)
	addiw t0, a5, -1632
	add t2, a2, t0
	sw t1, 64(a0)
	sh2add t1, a1, t2
	li t2, 1125
	lw a5, 0(t1)
	slli t0, t2, 6
	sw a5, 68(a0)
	add a5, a2, t0
	sh2add t1, a1, a5
	addiw a5, t3, -1824
	lw t2, 0(t1)
	lui t3, 24
	sw t2, 72(a0)
	add t2, a2, a5
	li a5, 625
	sh2add t0, a1, t2
	lw t1, 0(t0)
	slli t0, a5, 7
	add t2, a2, t0
	sw t1, 76(a0)
	lui t0, 21
	sh2add t1, a1, t2
	addiw t2, t0, -2016
	lw a5, 0(t1)
	add t1, a2, t2
	li t2, 1375
	sw a5, 80(a0)
	sh2add a5, a1, t1
	lw t0, 0(a5)
	slli a5, t2, 6
	sw t0, 84(a0)
	add t0, a2, a5
	lui a5, 22
	sh2add t1, a1, t0
	lw t2, 0(t1)
	addiw t1, a5, 1888
	sw t2, 88(a0)
	add t2, a2, t1
	sh2add t0, a1, t2
	li t2, 375
	lw a5, 0(t0)
	slli t1, t2, 8
	sw a5, 92(a0)
	add a5, a2, t1
	addiw t1, t3, 1696
	sh2add t0, a1, a5
	li t3, 1625
	lw t2, 0(t0)
	sw t2, 96(a0)
	add t2, a2, t1
	sh2add a5, a1, t2
	slli t2, t3, 6
	lw t0, 0(a5)
	li t3, 1875
	add a5, a2, t2
	sh2add t1, a1, a5
	sw t0, 100(a0)
	lui a5, 26
	lw t0, 0(t1)
	addiw t1, a5, 1504
	add t2, a2, t1
	sw t0, 104(a0)
	sh2add t0, a1, t2
	li t2, 875
	lw a5, 0(t0)
	slli t0, t2, 7
	add t1, a2, t0
	sw a5, 108(a0)
	lui t0, 28
	sh2add a5, a1, t1
	addiw t1, t0, 1312
	lw t2, 0(a5)
	add a5, a2, t1
	slli t1, t3, 6
	sw t2, 112(a0)
	addiw t3, t4, 1120
	sh2add t2, a1, a5
	add a5, a2, t1
	lw t0, 0(t2)
	sw t0, 116(a0)
	sh2add t0, a1, a5
	add a5, a2, t3
	lw t2, 0(t0)
	sh2add t1, a1, a5
	sw t2, 120(a0)
	li t2, 125
	lw t0, 0(t1)
	slli t1, t2, 10
	sw t0, 124(a0)
	add t0, a2, t1
	lui t1, 32
	sh2add a5, a1, t0
	addiw t2, t1, 928
	lw t3, 0(a5)
	add t0, a2, t2
	sh2add a5, a1, t0
	sw t3, 128(a0)
	lui t3, 33
	lw t1, 0(a5)
	addiw t2, t3, 832
	li t3, 1125
	add t0, a2, t2
	sh2add a5, a1, t0
	sw t1, 132(a0)
	lui t0, 34
	lw t1, 0(a5)
	addiw t2, t0, 736
	add a5, a2, t2
	slli t2, t3, 7
	sw t1, 136(a0)
	sh2add t1, a1, a5
	add a5, a2, t2
	lw t0, 0(t1)
	lui t2, 36
	sw t0, 140(a0)
	sh2add t0, a1, a5
	addiw a5, t2, 544
	lw t1, 0(t0)
	sw t1, 144(a0)
	add t1, a2, a5
	lui a5, 37
	sh2add t0, a1, t1
	addiw t3, a5, 448
	lw t2, 0(t0)
	add t0, a2, t3
	li t3, 625
	sh2add t1, a1, t0
	sw t2, 148(a0)
	lui t0, 38
	lw a5, 0(t1)
	addiw t2, t0, 352
	sw a5, 152(a0)
	add a5, a2, t2
	sh2add t1, a1, a5
	slli a5, t3, 8
	lw t0, 0(t1)
	lui t3, 41
	sw t0, 156(a0)
	add t0, a2, a5
	lui a5, 40
	sh2add t2, a1, t0
	lw t1, 0(t2)
	addiw t2, a5, 160
	add t0, a2, t2
	sw t1, 160(a0)
	addiw t2, t3, 64
	sh2add t1, a1, t0
	add t0, a2, t2
	lw a5, 0(t1)
	lui t2, 42
	sh2add t1, a1, t0
	addiw t0, t2, -32
	sw a5, 164(a0)
	lw a5, 0(t1)
	add t1, a2, t0
	li t0, 1375
	sw a5, 168(a0)
	slli t3, t0, 7
	sh2add a5, a1, t1
	lw t2, 0(a5)
	add a5, a2, t3
	lui t3, 45
	sh2add t1, a1, a5
	sw t2, 172(a0)
	lui a5, 44
	lw t0, 0(t1)
	addiw t2, a5, -224
	sw t0, 176(a0)
	add t0, a2, t2
	sh2add t1, a1, t0
	addiw t0, t3, -320
	lw a5, 0(t1)
	li t3, 375
	add t2, a2, t0
	lui t0, 46
	sh2add t1, a1, t2
	sw a5, 180(a0)
	addiw t2, t0, -416
	lw a5, 0(t1)
	sw a5, 184(a0)
	add a5, a2, t2
	slli t2, t3, 9
	sh2add t1, a1, a5
	lui t3, 50
	add a5, a2, t2
	lw t0, 0(t1)
	lui t2, 48
	sw t0, 188(a0)
	sh2add t0, a1, a5
	addiw a5, t2, -608
	lw t1, 0(t0)
	sw t1, 192(a0)
	add t1, a2, a5
	sh2add t0, a1, t1
	lui t1, 49
	lw t2, 0(t0)
	addiw a5, t1, -704
	add t0, a2, a5
	addiw a5, t3, -800
	sw t2, 196(a0)
	li t3, 1625
	sh2add t2, a1, t0
	lw t1, 0(t2)
	sw t1, 200(a0)
	add t1, a2, a5
	sh2add t0, a1, t1
	lw t2, 0(t0)
	slli t0, t3, 7
	li t3, 875
	add a5, a2, t0
	sw t2, 204(a0)
	lui t0, 52
	sh2add t1, a1, a5
	addiw a5, t0, -992
	lw t2, 0(t1)
	sw t2, 208(a0)
	add t2, a2, a5
	sh2add t1, a1, t2
	lui t2, 53
	lw t0, 0(t1)
	addiw a5, t2, -1088
	add t1, a2, a5
	sw t0, 212(a0)
	sh2add t0, a1, t1
	lui t1, 54
	lw t2, 0(t0)
	addiw t0, t1, -1184
	sw t2, 216(a0)
	add t2, a2, t0
	sh2add a5, a1, t2
	lw t1, 0(a5)
	slli a5, t3, 8
	lui t3, 57
	add t0, a2, a5
	sw t1, 220(a0)
	lui a5, 56
	sh2add t2, a1, t0
	lw t1, 0(t2)
	addiw t2, a5, -1376
	sw t1, 224(a0)
	add t1, a2, t2
	sh2add t0, a1, t1
	addiw t1, t3, -1472
	lw a5, 0(t0)
	lui t3, 58
	sw a5, 228(a0)
	add a5, a2, t1
	sh2add t2, a1, a5
	addiw a5, t3, -1568
	lw t0, 0(t2)
	add t1, a2, a5
	li a5, 1875
	slli t2, a5, 7
	sw t0, 232(a0)
	sh2add t0, a1, t1
	add t1, a2, t2
	lw t3, 0(t0)
	sh2add t0, a1, t1
	sw t3, 236(a0)
	lui t3, 60
	lw a5, 0(t0)
	addiw t1, t3, -1760
	lui t3, 61
	add t0, a2, t1
	sh2add t2, a1, t0
	sw a5, 240(a0)
	addiw t0, t3, -1856
	lw a5, 0(t2)
	add t1, a2, t0
	lui t0, 62
	sh2add t2, a1, t1
	addiw t1, t0, -1952
	sw a5, 244(a0)
	lw a5, 0(t2)
	sw a5, 248(a0)
	add a5, a2, t1
	sh2add t2, a1, a5
	li a5, 960
	lw t0, 0(t2)
	sw t0, 252(a0)
	bge a4, a5, label72
	addi a0, a0, 256
	j label68
label11:
	ld a3, 112(sp)
	mv a2, s9
	mv a4, zero
	j label12
label59:
	addiw a4, a4, 1
	ld t4, 104(sp)
	add a3, a3, t4
	add a2, a2, t4
label12:
	li a0, 1000
	bge a4, a0, label16
	mv a5, a3
	mv a0, zero
	li a1, 1000
	blt zero, a1, label60
	j label59
.p2align 2
label65:
	li t4, 125
	lui a6, 17
	slli t3, t4, 9
	lw t4, 64(a1)
	add t5, t0, t3
	sh2add t1, a0, t5
	lw t6, 0(t1)
	mulw t5, t4, t6
	addiw t6, a6, -1632
	addw t3, t2, t5
	li a6, 1125
	add t1, t0, t6
	lw t2, 68(a1)
	sh2add t4, a0, t1
	lw t6, 0(t4)
	mulw t5, t2, t6
	slli t6, a6, 6
	addw t1, t3, t5
	li a6, 1375
	add t2, t0, t6
	lw t3, 72(a1)
	sh2add t4, a0, t2
	lw t6, 0(t4)
	lui t4, 19
	mulw t5, t3, t6
	addiw t6, t4, -1824
	addw t2, t1, t5
	lw t4, 76(a1)
	add t1, t0, t6
	sh2add t3, a0, t1
	lw t5, 0(t3)
	li t3, 625
	mulw t6, t4, t5
	slli t5, t3, 7
	addw t1, t2, t6
	lw t3, 80(a1)
	add t2, t0, t5
	sh2add t4, a0, t2
	lw t6, 0(t4)
	lui t4, 21
	mulw t5, t3, t6
	addiw t6, t4, -2016
	addw t2, t1, t5
	lw t4, 84(a1)
	add t1, t0, t6
	sh2add t3, a0, t1
	lw t5, 0(t3)
	mulw t6, t4, t5
	lw t4, 88(a1)
	slli t5, a6, 6
	addw t1, t2, t6
	add t2, t0, t5
	sh2add t3, a0, t2
	lw t5, 0(t3)
	lui t3, 22
	mulw t6, t4, t5
	addiw t5, t3, 1888
	addw t2, t1, t6
	lw t3, 92(a1)
	add t4, t0, t5
	sh2add t1, a0, t4
	addiw a0, a0, 1
	lw t0, 0(t1)
	mulw t4, t3, t0
	addw a1, t2, t4
	sw a1, 0(a5)
	li a1, 1000
	addi a5, a5, 4
	bge a0, a1, label59
.p2align 2
label60:
	mv a1, a2
	mv t1, zero
	mv t2, zero
.p2align 2
label61:
	ld t4, 104(sp)
	lw t3, 0(a1)
	mul t5, t1, t4
	addiw t1, t1, 16
	add t0, s8, t5
	sh2add a6, a0, t0
	add s9, t0, t4
	sh2add t6, a0, s9
	lw t5, 0(a6)
	lw a7, 4(a1)
	lw t4, 0(t6)
	mulw t6, t3, t5
	lw t5, 8(a1)
	mulw a6, a7, t4
	add a7, t0, s0
	addw t4, a6, t6
	sh2add t6, a0, a7
	lw a6, 0(t6)
	lw t6, 12(a1)
	mulw a7, t5, a6
	add a6, t0, s1
	addw t3, t4, a7
	sh2add t5, a0, a6
	lw a6, 0(t5)
	lw t5, 16(a1)
	mulw a7, t6, a6
	add a6, t0, s2
	addw t4, t3, a7
	sh2add t6, a0, a6
	add a6, t0, s3
	lw a7, 0(t6)
	sh2add t6, a0, a6
	mulw s9, t5, a7
	lw t5, 20(a1)
	addw t3, t4, s9
	lw a6, 0(t6)
	lw t6, 24(a1)
	mulw a7, t5, a6
	add a6, t0, s4
	addw t4, t3, a7
	sh2add t5, a0, a6
	lw a7, 0(t5)
	lw t5, 28(a1)
	mulw a6, t6, a7
	add a7, t0, s5
	addw t3, t4, a6
	sh2add t6, a0, a7
	lw a6, 0(t6)
	lw t6, 32(a1)
	mulw a7, t5, a6
	add a6, t0, s6
	addw t4, t3, a7
	sh2add t5, a0, a6
	add a7, t0, s7
	lw a6, 0(t5)
	sh2add t5, a0, a7
	mulw s9, t6, a6
	lw t6, 36(a1)
	addw t3, t4, s9
	lw a6, 0(t5)
	li t5, 625
	mulw a7, t6, a6
	lw t6, 40(a1)
	slli a6, t5, 6
	addw t4, t3, a7
	add t3, t0, a6
	sh2add t5, a0, t3
	lw a6, 0(t5)
	li t5, 1375
	mulw a7, t6, a6
	slli a6, t5, 5
	addw t3, t4, a7
	lw t5, 44(a1)
	add t4, t0, a6
	sh2add t6, a0, t4
	lw a6, 0(t6)
	li t6, 375
	mulw a7, t5, a6
	slli a6, t6, 7
	addw t4, t3, a7
	add t5, t0, a6
	lw t3, 48(a1)
	sh2add t6, a0, t5
	lw a7, 0(t6)
	li t6, 1625
	mulw a6, t3, a7
	slli t3, t6, 5
	addw t5, t4, a6
	add a7, t0, t3
	lw t4, 52(a1)
	sh2add t6, a0, a7
	lw a6, 0(t6)
	li t6, 875
	mulw a7, t4, a6
	slli a6, t6, 6
	addw t3, t5, a7
	lw t6, 56(a1)
	add t4, t0, a6
	sh2add t5, a0, t4
	lw a6, 0(t5)
	li t5, 1875
	mulw a7, t6, a6
	slli a6, t5, 5
	addw t4, t3, a7
	lw t5, 60(a1)
	add t6, t0, a6
	sh2add t3, a0, t6
	lw a6, 0(t3)
	li t3, 992
	mulw t6, t5, a6
	addw a7, t4, t6
	addw t2, t2, a7
	bge t1, t3, label65
	addi a1, a1, 64
	j label61
label16:
	ld a3, 112(sp)
	mv a1, zero
	mv a0, a3
	j label17
label52:
	slli a5, a3, 32
	addiw a1, a1, 1
	add.uw a4, a3, a5
	sd a4, 256(a2)
	sd a4, 264(a2)
	sd a4, 272(a2)
	sd a4, 280(a2)
	sd a4, 288(a2)
	sd a4, 296(a2)
	sd a4, 304(a2)
	sd a4, 312(a2)
	sd a4, 320(a2)
	sd a4, 328(a2)
	sd a4, 336(a2)
	sd a4, 344(a2)
	sd a4, 352(a2)
	sd a4, 360(a2)
	sd a4, 368(a2)
	sd a4, 376(a2)
	sd a4, 384(a2)
	sd a4, 392(a2)
	sd a4, 400(a2)
	sd a4, 408(a2)
	ld t4, 104(sp)
	add a0, a0, t4
label17:
	li a2, 1000
	bge a1, a2, label20
	mv a2, a0
	mv a3, zero
	lui a5, 524288
	addiw a4, a5, -1
	j label44
.p2align 2
label54:
	addi a2, a2, 256
.p2align 2
label44:
	lw t0, 0(a2)
	addiw a3, a3, 64
	lw t2, 4(a2)
	min a5, a4, t0
	lw a4, 8(a2)
	min t1, a5, t2
	lw t3, 12(a2)
	min t0, t1, a4
	lw t2, 16(a2)
	min a5, t0, t3
	lw t1, 20(a2)
	min a4, a5, t2
	lw t2, 24(a2)
	min t0, a4, t1
	lw t1, 28(a2)
	min a5, t0, t2
	lw t2, 32(a2)
	min a4, a5, t1
	lw t1, 36(a2)
	min t0, a4, t2
	lw t2, 40(a2)
	min a5, t0, t1
	lw t0, 44(a2)
	min a4, a5, t2
	lw t2, 48(a2)
	min t1, a4, t0
	lw t3, 52(a2)
	min a5, t1, t2
	lw t2, 56(a2)
	min t0, a5, t3
	lw t1, 60(a2)
	min a4, t0, t2
	lw t2, 64(a2)
	min a5, a4, t1
	lw a4, 68(a2)
	min t0, a5, t2
	lw t2, 72(a2)
	min t1, t0, a4
	lw t0, 76(a2)
	min a5, t1, t2
	lw t2, 80(a2)
	min a4, a5, t0
	lw a5, 84(a2)
	min t1, a4, t2
	lw t2, 88(a2)
	min t0, t1, a5
	lw t3, 92(a2)
	min a4, t0, t2
	lw t2, 96(a2)
	min a5, a4, t3
	lw t3, 100(a2)
	min t1, a5, t2
	lw t2, 104(a2)
	min t0, t1, t3
	lw t3, 108(a2)
	min a4, t0, t2
	lw t2, 112(a2)
	min a5, a4, t3
	lw a4, 116(a2)
	min t1, a5, t2
	lw t2, 120(a2)
	min t0, t1, a4
	lw t3, 124(a2)
	min a5, t0, t2
	lw t1, 128(a2)
	min a4, a5, t3
	lw t2, 132(a2)
	min t0, a4, t1
	lw t3, 136(a2)
	min a5, t0, t2
	lw t2, 140(a2)
	min a4, a5, t3
	lw a5, 144(a2)
	min t1, a4, t2
	lw t2, 148(a2)
	min t0, t1, a5
	lw t1, 152(a2)
	min a4, t0, t2
	lw t2, 156(a2)
	min a5, a4, t1
	lw t1, 160(a2)
	min t0, a5, t2
	lw t2, 164(a2)
	min a4, t0, t1
	lw t4, 168(a2)
	min a5, a4, t2
	lw t3, 172(a2)
	min t1, a5, t4
	lw t2, 176(a2)
	min t0, t1, t3
	lw t1, 180(a2)
	min a4, t0, t2
	lw t2, 184(a2)
	min a5, a4, t1
	lw t3, 188(a2)
	min t0, a5, t2
	lw t2, 192(a2)
	min t1, t0, t3
	lw t3, 196(a2)
	min a4, t1, t2
	lw t1, 200(a2)
	min a5, a4, t3
	lw t3, 204(a2)
	min t0, a5, t1
	lw t2, 208(a2)
	min a4, t0, t3
	lw t3, 212(a2)
	min t1, a4, t2
	lw t2, 216(a2)
	min a5, t1, t3
	lw t3, 220(a2)
	min t0, a5, t2
	lw t2, 224(a2)
	min a4, t0, t3
	lw t3, 228(a2)
	min t1, a4, t2
	lw t2, 232(a2)
	min a5, t1, t3
	lw t1, 236(a2)
	min t0, a5, t2
	lw t2, 240(a2)
	min a4, t0, t1
	lw t3, 244(a2)
	min a5, a4, t2
	lw t2, 248(a2)
	min t1, a5, t3
	lw a5, 252(a2)
	min t0, t1, t2
	li t1, 960
	min a4, t0, a5
	blt a3, t1, label54
	lw t1, 256(a2)
	lw t0, 260(a2)
	min a5, a4, t1
	lw t2, 264(a2)
	min a3, a5, t0
	lw t1, 268(a2)
	min a4, a3, t2
	lw t2, 272(a2)
	min t0, a4, t1
	lw t1, 276(a2)
	min a5, t0, t2
	lw t0, 280(a2)
	min a3, a5, t1
	lw t1, 284(a2)
	min a4, a3, t0
	lw t0, 288(a2)
	min a5, a4, t1
	lw t1, 292(a2)
	min a3, a5, t0
	lw t0, 296(a2)
	min a4, a3, t1
	lw t1, 300(a2)
	min a5, a4, t0
	lw t0, 304(a2)
	min a3, a5, t1
	lw t1, 308(a2)
	min a4, a3, t0
	lw t0, 312(a2)
	min a5, a4, t1
	lw t1, 316(a2)
	min a3, a5, t0
	lw t0, 320(a2)
	min a4, a3, t1
	lw t1, 324(a2)
	min a5, a4, t0
	lw t0, 328(a2)
	min a3, a5, t1
	lw t1, 332(a2)
	min a4, a3, t0
	lw t0, 336(a2)
	min a5, a4, t1
	lw t1, 340(a2)
	min a3, a5, t0
	lw t0, 344(a2)
	min a4, a3, t1
	lw t1, 348(a2)
	min a5, a4, t0
	lw t0, 352(a2)
	min a3, a5, t1
	lw t1, 356(a2)
	min a4, a3, t0
	lw t0, 360(a2)
	min a5, a4, t1
	lw t1, 364(a2)
	min a3, a5, t0
	lw t0, 368(a2)
	min a4, a3, t1
	lw t1, 372(a2)
	min a5, a4, t0
	lw t0, 376(a2)
	min a3, a5, t1
	lw t1, 380(a2)
	min a4, a3, t0
	lw t0, 384(a2)
	min a5, a4, t1
	lw t1, 388(a2)
	min a3, a5, t0
	lw t0, 392(a2)
	min a4, a3, t1
	lw t1, 396(a2)
	min a5, a4, t0
	lw t0, 400(a2)
	min a3, a5, t1
	lw t2, 404(a2)
	min a4, a3, t0
	lw t1, 408(a2)
	min a5, a4, t2
	lw a4, 412(a2)
	min t0, a5, t1
	mv a2, a0
	mv a5, zero
	min a3, t0, a4
.p2align 2
label49:
	slli t0, a3, 32
	addiw a5, a5, 64
	add.uw a4, a3, t0
	li t0, 960
	sd a4, 0(a2)
	sd a4, 8(a2)
	sd a4, 16(a2)
	sd a4, 24(a2)
	sd a4, 32(a2)
	sd a4, 40(a2)
	sd a4, 48(a2)
	sd a4, 56(a2)
	sd a4, 64(a2)
	sd a4, 72(a2)
	sd a4, 80(a2)
	sd a4, 88(a2)
	sd a4, 96(a2)
	sd a4, 104(a2)
	sd a4, 112(a2)
	sd a4, 120(a2)
	sd a4, 128(a2)
	sd a4, 136(a2)
	sd a4, 144(a2)
	sd a4, 152(a2)
	sd a4, 160(a2)
	sd a4, 168(a2)
	sd a4, 176(a2)
	sd a4, 184(a2)
	sd a4, 192(a2)
	sd a4, 200(a2)
	sd a4, 208(a2)
	sd a4, 216(a2)
	sd a4, 224(a2)
	sd a4, 232(a2)
	sd a4, 240(a2)
	sd a4, 248(a2)
	bge a5, t0, label52
	addi a2, a2, 256
	j label49
label20:
	ld a3, 112(sp)
	mv a0, zero
	mv a2, a3
	j label21
label28:
	li a4, 125
	lui t3, 19
	slli a5, a4, 9
	add t1, a3, a5
	sh2add t0, a0, t1
	lw a4, 0(t0)
	lui t0, 17
	subw a5, zero, a4
	addiw t2, t0, -1632
	add t1, a3, t2
	sw a5, 64(a1)
	sh2add a4, a0, t1
	li t1, 1125
	lw t0, 0(a4)
	slli a4, t1, 6
	subw a5, zero, t0
	sw a5, 68(a1)
	add a5, a3, a4
	addiw a4, t3, -1824
	sh2add t0, a0, a5
	add a5, a3, a4
	lw t2, 0(t0)
	sh2add t0, a0, a5
	subw t1, zero, t2
	lui t2, 21
	sw t1, 72(a1)
	lw t1, 0(t0)
	li t0, 625
	subw a4, zero, t1
	slli a5, t0, 7
	sw a4, 76(a1)
	add a4, a3, a5
	sh2add t1, a0, a4
	addiw a4, t2, -2016
	lw t0, 0(t1)
	li t2, 1375
	add t1, a3, a4
	subw a5, zero, t0
	sh2add t0, a0, t1
	sw a5, 80(a1)
	lw a5, 0(t0)
	slli t0, t2, 6
	subw a4, zero, a5
	lui t2, 22
	add t1, a3, t0
	sh2add a5, a0, t1
	sw a4, 84(a1)
	addiw t1, t2, 1888
	lw a4, 0(a5)
	subw t0, zero, a4
	add a4, a3, t1
	sh2add a5, a0, a4
	sw t0, 88(a1)
	addiw a0, a0, 1
	lw t0, 0(a5)
	subw a3, zero, t0
	sw a3, 92(a1)
	ld t4, 104(sp)
	add a2, a2, t4
label21:
	li a1, 1000
	bge a0, a1, label105
	mv a1, a2
	mv a4, zero
.p2align 2
label25:
	ld t4, 104(sp)
	ld a3, 112(sp)
	mul a5, a4, t4
	addiw a4, a4, 16
	add a3, a3, a5
	sh2add t1, a0, a3
	add a5, a3, t4
	lw t0, 0(t1)
	subw t2, zero, t0
	sh2add t0, a0, a5
	sw t2, 0(a1)
	lw t2, 0(t0)
	add t0, a3, s0
	subw t1, zero, t2
	sh2add a5, a0, t0
	add t0, a3, s1
	sw t1, 4(a1)
	lw t1, 0(a5)
	sh2add a5, a0, t0
	subw t2, zero, t1
	add t0, a3, s2
	sw t2, 8(a1)
	lw t2, 0(a5)
	subw t1, zero, t2
	sh2add t2, a0, t0
	add t0, a3, s3
	sw t1, 12(a1)
	lw t1, 0(t2)
	subw a5, zero, t1
	sh2add t1, a0, t0
	add t0, a3, s4
	sw a5, 16(a1)
	lw t2, 0(t1)
	sh2add t1, a0, t0
	subw a5, zero, t2
	add t0, a3, s5
	sh2add t3, a0, t0
	sw a5, 20(a1)
	lw a5, 0(t1)
	subw t2, zero, a5
	sw t2, 24(a1)
	add t2, a3, s6
	lw a5, 0(t3)
	subw t1, zero, a5
	sh2add a5, a0, t2
	sw t1, 28(a1)
	lw t1, 0(a5)
	add a5, a3, s7
	subw t0, zero, t1
	sh2add t1, a0, a5
	sw t0, 32(a1)
	lw t0, 0(t1)
	li t1, 625
	subw t2, zero, t0
	slli a5, t1, 6
	sw t2, 36(a1)
	add t2, a3, a5
	sh2add t0, a0, t2
	lw t1, 0(t0)
	li t0, 1375
	subw a5, zero, t1
	slli t2, t0, 5
	add t1, a3, t2
	sw a5, 40(a1)
	sh2add t3, a0, t1
	lw t0, 0(t3)
	li t3, 375
	subw a5, zero, t0
	slli t2, t3, 7
	add t0, a3, t2
	sw a5, 44(a1)
	li t2, 1625
	sh2add t1, a0, t0
	lw t3, 0(t1)
	slli t1, t2, 5
	subw a5, zero, t3
	li t3, 875
	sw a5, 48(a1)
	add a5, a3, t1
	sh2add t0, a0, a5
	slli a5, t3, 6
	lw t2, 0(t0)
	subw t1, zero, t2
	sw t1, 52(a1)
	add t1, a3, a5
	sh2add t0, a0, t1
	lw t2, 0(t0)
	li t0, 1875
	subw a5, zero, t2
	slli t3, t0, 5
	add t2, a3, t3
	sw a5, 56(a1)
	sh2add t1, a0, t2
	lw t0, 0(t1)
	subw a5, zero, t0
	li t0, 992
	sw a5, 60(a1)
	bge a4, t0, label28
	addi a1, a1, 64
	j label25
label42:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	mv a0, zero
label73:
	ld ra, 0(sp)
	ld s9, 8(sp)
	ld s8, 16(sp)
	ld s10, 24(sp)
	ld s11, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	ld s1, 56(sp)
	ld s6, 64(sp)
	ld s2, 72(sp)
	ld s3, 80(sp)
	ld s4, 88(sp)
	ld s7, 96(sp)
	addi sp, sp, 120
	ret
label105:
	ld a3, 112(sp)
	mv s0, zero
	mv a2, zero
	mv a1, a3
	j label31
.p2align 2
label40:
	addi a0, a0, 256
.p2align 2
label36:
	lw t1, 0(a0)
	addiw a3, a3, 64
	lw t2, 4(a0)
	addw a5, a4, t1
	lw t3, 8(a0)
	addw t0, a5, t2
	lw t2, 12(a0)
	addw t1, t0, t3
	lw t3, 16(a0)
	addw a4, t1, t2
	lw t1, 20(a0)
	addw a5, a4, t3
	lw t3, 24(a0)
	addw t0, a5, t1
	lw t1, 28(a0)
	addw a4, t0, t3
	lw t3, 32(a0)
	addw t2, a4, t1
	lw t0, 36(a0)
	addw a5, t2, t3
	lw t2, 40(a0)
	addw t1, a5, t0
	lw t3, 44(a0)
	addw a4, t1, t2
	lw t1, 48(a0)
	addw t0, a4, t3
	lw t2, 52(a0)
	addw a5, t0, t1
	lw t3, 56(a0)
	addw a4, a5, t2
	lw a5, 60(a0)
	addw t1, a4, t3
	lw t2, 64(a0)
	addw t0, t1, a5
	lw t1, 68(a0)
	addw a4, t0, t2
	lw t2, 72(a0)
	addw a5, a4, t1
	lw t3, 76(a0)
	addw t0, a5, t2
	lw t2, 80(a0)
	addw a4, t0, t3
	lw t3, 84(a0)
	addw t1, a4, t2
	lw t0, 88(a0)
	addw a5, t1, t3
	lw t3, 92(a0)
	addw t2, a5, t0
	lw t1, 96(a0)
	addw a4, t2, t3
	lw t2, 100(a0)
	addw t0, a4, t1
	lw t1, 104(a0)
	addw a5, t0, t2
	lw t2, 108(a0)
	addw a4, a5, t1
	lw a5, 112(a0)
	addw t0, a4, t2
	lw t2, 116(a0)
	addw t1, t0, a5
	lw t3, 120(a0)
	addw a4, t1, t2
	lw t1, 124(a0)
	addw a5, a4, t3
	lw t2, 128(a0)
	addw t0, a5, t1
	lw t1, 132(a0)
	addw a4, t0, t2
	lw t2, 136(a0)
	addw a5, a4, t1
	lw t1, 140(a0)
	addw t0, a5, t2
	lw t2, 144(a0)
	addw a4, t0, t1
	lw t1, 148(a0)
	addw a5, a4, t2
	lw t2, 152(a0)
	addw t0, a5, t1
	lw t3, 156(a0)
	addw a4, t0, t2
	lw t2, 160(a0)
	addw a5, a4, t3
	lw t3, 164(a0)
	addw t1, a5, t2
	lw t2, 168(a0)
	addw t0, t1, t3
	lw t1, 172(a0)
	addw a4, t0, t2
	lw t2, 176(a0)
	addw a5, a4, t1
	lw t1, 180(a0)
	addw t0, a5, t2
	lw t2, 184(a0)
	addw a4, t0, t1
	lw t1, 188(a0)
	addw a5, a4, t2
	lw t3, 192(a0)
	addw t0, a5, t1
	lw t2, 196(a0)
	addw a4, t0, t3
	lw t0, 200(a0)
	addw t1, a4, t2
	lw t3, 204(a0)
	addw a5, t1, t0
	lw t2, 208(a0)
	addw a4, a5, t3
	lw t3, 212(a0)
	addw t0, a4, t2
	lw a4, 216(a0)
	addw t1, t0, t3
	lw t3, 220(a0)
	addw a5, t1, a4
	lw t2, 224(a0)
	addw t0, a5, t3
	lw a5, 228(a0)
	addw a4, t0, t2
	lw t2, 232(a0)
	addw t1, a4, a5
	lw t3, 236(a0)
	addw t0, t1, t2
	lw t2, 240(a0)
	addw a5, t0, t3
	lw t1, 244(a0)
	addw a4, a5, t2
	lw t2, 248(a0)
	addw t0, a4, t1
	lw t1, 252(a0)
	addw a5, t0, t2
	li t0, 960
	addw a4, a5, t1
	blt a3, t0, label40
	lw t0, 256(a0)
	addiw a2, a2, 1
	lw t1, 260(a0)
	addw a5, a4, t0
	lw t0, 264(a0)
	addw a3, a5, t1
	lw t1, 268(a0)
	addw a4, a3, t0
	lw t0, 272(a0)
	addw a5, a4, t1
	lw t1, 276(a0)
	addw a3, a5, t0
	lw t0, 280(a0)
	addw a4, a3, t1
	lw t1, 284(a0)
	addw a5, a4, t0
	lw t0, 288(a0)
	addw a3, a5, t1
	lw t1, 292(a0)
	addw a4, a3, t0
	lw t0, 296(a0)
	addw a5, a4, t1
	lw t1, 300(a0)
	addw a3, a5, t0
	lw t0, 304(a0)
	addw a4, a3, t1
	lw t1, 308(a0)
	addw a5, a4, t0
	lw t0, 312(a0)
	addw a3, a5, t1
	lw t1, 316(a0)
	addw a4, a3, t0
	lw t0, 320(a0)
	addw a5, a4, t1
	lw t1, 324(a0)
	addw a3, a5, t0
	lw t0, 328(a0)
	addw a4, a3, t1
	lw t1, 332(a0)
	addw a5, a4, t0
	lw t0, 336(a0)
	addw a3, a5, t1
	lw t1, 340(a0)
	addw a4, a3, t0
	lw t0, 344(a0)
	addw a5, a4, t1
	lw t1, 348(a0)
	addw a3, a5, t0
	lw t0, 352(a0)
	addw a4, a3, t1
	lw t1, 356(a0)
	addw a5, a4, t0
	lw t0, 360(a0)
	addw a3, a5, t1
	lw t1, 364(a0)
	addw a4, a3, t0
	lw t0, 368(a0)
	addw a5, a4, t1
	lw t1, 372(a0)
	addw a3, a5, t0
	lw t0, 376(a0)
	addw a4, a3, t1
	lw t2, 380(a0)
	addw a5, a4, t0
	lw t1, 384(a0)
	addw a3, a5, t2
	lw a5, 388(a0)
	addw t0, a3, t1
	lw t1, 392(a0)
	addw a4, t0, a5
	lw t0, 396(a0)
	addw a3, a4, t1
	lw t1, 400(a0)
	addw a5, a3, t0
	lw t2, 404(a0)
	addw a4, a5, t1
	lw a5, 408(a0)
	addw t0, a4, t2
	lw a4, 412(a0)
	addw a3, t0, a5
	ld t4, 104(sp)
	addw s0, a3, a4
	add a1, a1, t4
label31:
	li a0, 1000
	bge a2, a0, label42
	mv a0, a1
	mv a3, zero
	mv a4, s0
	j label36
