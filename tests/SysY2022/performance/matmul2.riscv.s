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
	addi sp, sp, -120
pcrel2149:
	auipc a0, %pcrel_hi(a)
pcrel2150:
	auipc a2, %pcrel_hi(b)
	sd ra, 0(sp)
	sd s9, 8(sp)
	addi s9, a0, %pcrel_lo(pcrel2149)
	sd s8, 16(sp)
pcrel2151:
	auipc a0, %pcrel_hi(c)
	addi s8, a2, %pcrel_lo(pcrel2150)
	addi a1, a0, %pcrel_lo(pcrel2151)
	sd s10, 24(sp)
	li a0, 125
	mv s10, s9
	slli t6, a0, 5
	sd s11, 32(sp)
	li a0, 875
	mv s11, zero
	sd s0, 40(sp)
	slli s0, t6, 1
	sd s5, 48(sp)
	slli s5, a0, 5
	sd s1, 56(sp)
	sh1add s1, t6, t6
	sd s6, 64(sp)
	sd s2, 72(sp)
	slli s2, s0, 1
	sd s3, 80(sp)
	slli s6, s2, 1
	sh2add s3, t6, t6
	sd s4, 88(sp)
	slli s4, s1, 1
	sd s7, 96(sp)
	sh3add s7, t6, t6
	sd a1, 112(sp)
	sd t6, 104(sp)
label2:
	li a0, 1000
	bge s11, a0, label7
	mv a0, s10
	jal getarray
	li a1, 1000
	bne a0, a1, label5
	addiw s11, s11, 1
	ld t6, 104(sp)
	add s10, s10, t6
	j label2
label7:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
	mv a1, s8
label8:
	li a2, 1000
	bge a0, a2, label11
	mv a2, s9
	mv a4, zero
	j label68
label71:
	ld t6, 104(sp)
	li t2, 625
	mul a2, a4, t6
	add a3, s9, a2
	add t1, a3, t6
	sh2add t0, a0, a3
	sh2add a2, a4, a1
	add a1, a1, t6
	add a4, a3, s0
	lw a5, 0(t0)
	sh2add t0, a0, t1
	sh2add t1, a0, a4
	sw a5, 0(a2)
	add a4, a3, s1
	lw a5, 0(t0)
	sw a5, 4(a2)
	sh2add a5, a0, a4
	lw t0, 0(t1)
	add a4, a3, s2
	sw t0, 8(a2)
	lw t0, 0(a5)
	sh2add a5, a0, a4
	add a4, a3, s3
	sw t0, 12(a2)
	lw t0, 0(a5)
	sh2add a5, a0, a4
	add a4, a3, s4
	sw t0, 16(a2)
	sh2add t0, a0, a4
	lw t1, 0(a5)
	add a4, a3, s5
	sw t1, 20(a2)
	lw a5, 0(t0)
	sh2add t0, a0, a4
	add a4, a3, s6
	sw a5, 24(a2)
	sh2add t1, a0, a4
	lw a5, 0(t0)
	add t0, a3, s7
	sh2add a4, a0, t0
	sw a5, 28(a2)
	lw a5, 0(t1)
	slli t1, t2, 6
	li t2, 1375
	add t0, a3, t1
	sw a5, 32(a2)
	slli t1, t2, 5
	lw a5, 0(a4)
	li t2, 375
	sw a5, 36(a2)
	sh2add a5, a0, t0
	add t0, a3, t1
	lw a4, 0(a5)
	slli t1, t2, 7
	sh2add a5, a0, t0
	li t2, 1625
	add t0, a3, t1
	sw a4, 40(a2)
	slli t1, t2, 5
	lw a4, 0(a5)
	li t2, 875
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 44(a2)
	slli t1, t2, 6
	lw a4, 0(a5)
	li t2, 1875
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 48(a2)
	slli t1, t2, 5
	lw a4, 0(a5)
	li t2, 125
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 52(a2)
	lw a4, 0(a5)
	sw a4, 56(a2)
	sh2add a4, a0, t0
	lw a5, 0(a4)
	slli a4, t2, 9
	li t2, 1125
	add t1, a3, a4
	sw a5, 60(a2)
	lui a4, 17
	sh2add t0, a0, t1
	addiw t1, a4, -1632
	lw a5, 0(t0)
	add t0, a3, t1
	slli t1, t2, 6
	sw a5, 64(a2)
	lui t2, 19
	sh2add a5, a0, t0
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, -1824
	sh2add a5, a0, t0
	li t2, 625
	add t0, a3, t1
	sw a4, 68(a2)
	slli t1, t2, 7
	lw a4, 0(a5)
	lui t2, 21
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 72(a2)
	addiw t1, t2, -2016
	lw a4, 0(a5)
	li t2, 1375
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 76(a2)
	slli t1, t2, 6
	lw a4, 0(a5)
	lui t2, 22
	sh2add a5, a0, t0
	sw a4, 80(a2)
	lw a4, 0(a5)
	add a5, a3, t1
	addiw t1, t2, 1888
	sh2add t0, a0, a5
	sw a4, 84(a2)
	li t2, 375
	lw a4, 0(t0)
	add t0, a3, t1
	slli t1, t2, 8
	sh2add a5, a0, t0
	sw a4, 88(a2)
	lui t2, 24
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, 1696
	sh2add a5, a0, t0
	li t2, 1625
	add t0, a3, t1
	sw a4, 92(a2)
	slli t1, t2, 6
	lw a4, 0(a5)
	lui t2, 26
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 96(a2)
	addiw t1, t2, 1504
	lw a4, 0(a5)
	li t2, 875
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 100(a2)
	slli t1, t2, 7
	lw a4, 0(a5)
	lui t2, 28
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 104(a2)
	addiw t1, t2, 1312
	lw a4, 0(a5)
	li t2, 1875
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 108(a2)
	slli t1, t2, 6
	lw a4, 0(a5)
	lui t2, 30
	sh2add a5, a0, t0
	sw a4, 112(a2)
	lw a4, 0(a5)
	add a5, a3, t1
	addiw t1, t2, 1120
	sh2add t0, a0, a5
	sw a4, 116(a2)
	li t2, 125
	lw a4, 0(t0)
	add t0, a3, t1
	slli t1, t2, 10
	sh2add a5, a0, t0
	sw a4, 120(a2)
	lui t2, 32
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, 928
	sh2add a5, a0, t0
	lui t2, 33
	add t0, a3, t1
	sw a4, 124(a2)
	addiw t1, t2, 832
	lw a4, 0(a5)
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 128(a2)
	lw a4, 0(a5)
	sh2add a5, a0, t0
	lui t0, 34
	sw a4, 132(a2)
	lw a4, 0(a5)
	addiw a5, t0, 736
	sw a4, 136(a2)
	add a4, a3, a5
	sh2add t1, a0, a4
	li a4, 1125
	lw t0, 0(t1)
	slli t1, a4, 7
	sw t0, 140(a2)
	add t0, a3, t1
	sh2add a5, a0, t0
	lui t0, 36
	lw a4, 0(a5)
	addiw t1, t0, 544
	add a5, a3, t1
	lui t1, 37
	sw a4, 144(a2)
	sh2add a4, a0, a5
	addiw a5, t1, 448
	lw t0, 0(a4)
	add a4, a3, a5
	sw t0, 148(a2)
	sh2add t0, a0, a4
	lui a4, 38
	lw t1, 0(t0)
	addiw t0, a4, 352
	sw t1, 152(a2)
	add t1, a3, t0
	sh2add a5, a0, t1
	addiw a0, a0, 1
	lw a4, 0(a5)
	sw a4, 156(a2)
	j label8
.p2align 2
label68:
	sh2add t0, a0, a2
	add t1, a2, s0
	li t3, 1625
	lui t4, 37
	sh2add a3, a4, a1
	lw a5, 0(t0)
	addiw a4, a4, 64
	sw a5, 0(a3)
	ld t6, 104(sp)
	add t0, a2, t6
	sh2add a5, a0, t0
	lw t2, 0(a5)
	sh2add a5, a0, t1
	add t1, a2, s1
	sw t2, 4(a3)
	sh2add t2, a0, t1
	lw t0, 0(a5)
	add t1, a2, s3
	add a5, a2, s2
	sw t0, 8(a3)
	lw t0, 0(t2)
	sh2add t2, a0, a5
	sh2add a5, a0, t1
	sw t0, 12(a3)
	add t1, a2, s4
	lw t0, 0(t2)
	sw t0, 16(a3)
	lw t0, 0(a5)
	sh2add a5, a0, t1
	sw t0, 20(a3)
	add t0, a2, s5
	lw t2, 0(a5)
	sh2add t1, a0, t0
	add t0, a2, s6
	sw t2, 24(a3)
	add t2, a2, s7
	lw a5, 0(t1)
	sh2add t1, a0, t0
	sh2add t0, a0, t2
	sw a5, 28(a3)
	lw a5, 0(t1)
	li t1, 625
	sw a5, 32(a3)
	lw a5, 0(t0)
	slli t0, t1, 6
	add t2, a2, t0
	sw a5, 36(a3)
	li t0, 1375
	sh2add a5, a0, t2
	slli t2, t0, 5
	lw t1, 0(a5)
	add a5, a2, t2
	li t2, 375
	sw t1, 40(a3)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	slli t1, t2, 7
	add a5, a2, t1
	sw t0, 44(a3)
	slli t1, t3, 5
	sh2add t0, a0, a5
	li t3, 875
	add a5, a2, t1
	lw t2, 0(t0)
	sw t2, 48(a3)
	sh2add t2, a0, a5
	slli a5, t3, 6
	lw t0, 0(t2)
	li t3, 125
	sw t0, 52(a3)
	add t0, a2, a5
	li a5, 1875
	sh2add t1, a0, t0
	slli t0, a5, 5
	lw t2, 0(t1)
	sw t2, 56(a3)
	add t2, a2, t0
	slli t0, t3, 9
	sh2add t1, a0, t2
	li t3, 1125
	add t2, a2, t0
	lw a5, 0(t1)
	lui t0, 17
	sw a5, 60(a3)
	sh2add a5, a0, t2
	lw t1, 0(a5)
	addiw a5, t0, -1632
	add t2, a2, a5
	sw t1, 64(a3)
	slli a5, t3, 6
	sh2add t1, a0, t2
	lui t3, 21
	add t2, a2, a5
	lw t0, 0(t1)
	lui a5, 19
	sw t0, 68(a3)
	sh2add t0, a0, t2
	addiw t2, a5, -1824
	lw t1, 0(t0)
	sw t1, 72(a3)
	add t1, a2, t2
	sh2add t0, a0, t1
	li t1, 625
	lw a5, 0(t0)
	slli t2, t1, 7
	sw a5, 76(a3)
	add a5, a2, t2
	sh2add t0, a0, a5
	addiw a5, t3, -2016
	lw t1, 0(t0)
	lui t3, 26
	sw t1, 80(a3)
	add t1, a2, a5
	sh2add t2, a0, t1
	li t1, 1375
	lw t0, 0(t2)
	slli a5, t1, 6
	add t2, a2, a5
	lui a5, 22
	sw t0, 84(a3)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	addiw t0, a5, 1888
	add t2, a2, t0
	sw t1, 88(a3)
	sh2add t1, a0, t2
	li t2, 375
	lw a5, 0(t1)
	slli t0, t2, 8
	add t1, a2, t0
	lui t0, 24
	sw a5, 92(a3)
	sh2add a5, a0, t1
	lw t2, 0(a5)
	addiw a5, t0, 1696
	sw t2, 96(a3)
	add t2, a2, a5
	sh2add t1, a0, t2
	li t2, 1625
	lw t0, 0(t1)
	slli t1, t2, 6
	sw t0, 100(a3)
	add t0, a2, t1
	addiw t1, t3, 1504
	sh2add a5, a0, t0
	li t3, 125
	lw t2, 0(a5)
	add a5, a2, t1
	li t1, 875
	sh2add t0, a0, a5
	sw t2, 104(a3)
	lw t2, 0(t0)
	slli t0, t1, 7
	add a5, a2, t0
	sw t2, 108(a3)
	sh2add t2, a0, a5
	lui a5, 28
	lw t1, 0(t2)
	addiw t0, a5, 1312
	sw t1, 112(a3)
	add t1, a2, t0
	li t0, 1875
	sh2add t2, a0, t1
	slli t1, t0, 6
	lw a5, 0(t2)
	add t2, a2, t1
	lui t1, 30
	sw a5, 116(a3)
	sh2add a5, a0, t2
	addiw t2, t1, 1120
	lw t0, 0(a5)
	sw t0, 120(a3)
	add t0, a2, t2
	sh2add a5, a0, t0
	slli t0, t3, 10
	lw t1, 0(a5)
	lui t3, 33
	add t2, a2, t0
	sh2add a5, a0, t2
	sw t1, 124(a3)
	lui t2, 32
	lw t1, 0(a5)
	addiw t0, t2, 928
	sw t1, 128(a3)
	add t1, a2, t0
	sh2add a5, a0, t1
	addiw t1, t3, 832
	lw t2, 0(a5)
	lui t3, 34
	add t0, a2, t1
	sh2add a5, a0, t0
	sw t2, 132(a3)
	lw t2, 0(a5)
	addiw a5, t3, 736
	li t3, 1125
	add t0, a2, a5
	sw t2, 136(a3)
	slli a5, t3, 7
	sh2add t1, a0, t0
	addiw t3, t4, 448
	lw t2, 0(t1)
	sw t2, 140(a3)
	add t2, a2, a5
	sh2add t0, a0, t2
	lui t2, 36
	lw t1, 0(t0)
	addiw a5, t2, 544
	add t0, a2, a5
	add a5, a2, t3
	sw t1, 144(a3)
	li t3, 625
	sh2add t1, a0, t0
	sh2add t0, a0, a5
	lw t2, 0(t1)
	sw t2, 148(a3)
	lui t2, 38
	lw t1, 0(t0)
	addiw t0, t2, 352
	add a5, a2, t0
	sw t1, 152(a3)
	slli t0, t3, 8
	sh2add t1, a0, a5
	lui t3, 40
	add a5, a2, t0
	lw t2, 0(t1)
	addiw t0, t3, 160
	sh2add t1, a0, a5
	lui t3, 42
	sw t2, 156(a3)
	lw t2, 0(t1)
	add t1, a2, t0
	sh2add a5, a0, t1
	sw t2, 160(a3)
	lui t1, 41
	lw t2, 0(a5)
	addiw a5, t1, 64
	add t0, a2, a5
	sw t2, 164(a3)
	addiw a5, t3, -32
	sh2add t2, a0, t0
	li t3, 1375
	add t0, a2, a5
	lw t1, 0(t2)
	slli a5, t3, 7
	lui t3, 45
	sw t1, 168(a3)
	sh2add t1, a0, t0
	add t0, a2, a5
	lw t2, 0(t1)
	lui a5, 44
	sw t2, 172(a3)
	sh2add t2, a0, t0
	addiw t0, a5, -224
	lw t1, 0(t2)
	sw t1, 176(a3)
	add t1, a2, t0
	addiw t0, t3, -320
	sh2add t2, a0, t1
	lui t3, 46
	lw a5, 0(t2)
	sw a5, 180(a3)
	add a5, a2, t0
	sh2add t1, a0, a5
	addiw a5, t3, -416
	lw t2, 0(t1)
	lui t3, 48
	sw t2, 184(a3)
	add t2, a2, a5
	sh2add t0, a0, t2
	li t2, 375
	lw t1, 0(t0)
	slli a5, t2, 9
	sw t1, 188(a3)
	add t1, a2, a5
	sh2add t0, a0, t1
	addiw t1, t3, -608
	lw t2, 0(t0)
	li t3, 1625
	add a5, a2, t1
	lui t1, 49
	sw t2, 192(a3)
	sh2add t2, a0, a5
	lw t0, 0(t2)
	addiw t2, t1, -704
	add a5, a2, t2
	sw t0, 196(a3)
	sh2add t0, a0, a5
	lui a5, 50
	lw t1, 0(t0)
	addiw t0, a5, -800
	add t2, a2, t0
	sw t1, 200(a3)
	sh2add t1, a0, t2
	slli t2, t3, 7
	lw a5, 0(t1)
	lui t3, 52
	sw a5, 204(a3)
	add a5, a2, t2
	addiw t2, t3, -992
	sh2add t0, a0, a5
	lui t3, 54
	add a5, a2, t2
	lw t1, 0(t0)
	sh2add t0, a0, a5
	lui a5, 53
	sw t1, 208(a3)
	addiw t2, a5, -1088
	lw t1, 0(t0)
	add t0, a2, t2
	addiw t2, t3, -1184
	sw t1, 212(a3)
	li t3, 875
	sh2add t1, a0, t0
	lw a5, 0(t1)
	add t1, a2, t2
	slli t2, t3, 8
	sh2add t0, a0, t1
	sw a5, 216(a3)
	lui t3, 56
	add t1, a2, t2
	lw a5, 0(t0)
	addiw t2, t3, -1376
	lui t3, 57
	sw a5, 220(a3)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	sw t0, 224(a3)
	add t0, a2, t2
	addiw t2, t3, -1472
	sh2add t1, a0, t0
	lui t3, 60
	lw a5, 0(t1)
	add t1, a2, t2
	lui t2, 58
	sh2add t0, a0, t1
	sw a5, 228(a3)
	lw a5, 0(t0)
	addiw t0, t2, -1568
	sw a5, 232(a3)
	add a5, a2, t0
	sh2add t1, a0, a5
	li a5, 1875
	lw t2, 0(t1)
	slli t0, a5, 7
	add t1, a2, t0
	sw t2, 236(a3)
	sh2add t2, a0, t1
	lw a5, 0(t2)
	addiw t2, t3, -1760
	lui t3, 61
	add t1, a2, t2
	sw a5, 240(a3)
	sh2add t0, a0, t1
	addiw t1, t3, -1856
	lw a5, 0(t0)
	add t0, a2, t1
	sh2add t2, a0, t0
	sw a5, 244(a3)
	lui t0, 62
	lw a5, 0(t2)
	addiw t2, t0, -1952
	sw a5, 248(a3)
	add a5, a2, t2
	sh2add t1, a0, a5
	li a5, 960
	lw t0, 0(t1)
	sw t0, 252(a3)
	bge a4, a5, label71
	li a5, 125
	slli a3, a5, 11
	add a2, a2, a3
	j label68
label11:
	ld a1, 112(sp)
	mv a2, s9
	mv a4, zero
	mv a3, a1
label12:
	li a0, 1000
	bge a4, a0, label90
	mv a5, a3
	mv a0, zero
	li a1, 1000
	blt zero, a1, label20
label94:
	addiw a4, a4, 1
	ld t6, 104(sp)
	add a3, a3, t6
	add a2, a2, t6
	j label12
.p2align 2
label20:
	mv a1, s8
	mv t0, zero
	mv t1, zero
.p2align 2
label21:
	sh2add t5, a0, a1
	sh2add t2, t0, a2
	lw t3, 0(t2)
	addiw t0, t0, 16
	lw t4, 0(t5)
	ld t6, 104(sp)
	lw a6, 4(t2)
	add a7, a1, t6
	mulw s9, t3, t4
	sh2add t5, a0, a7
	lw a7, 0(t5)
	mulw t6, a6, a7
	add a7, a1, s0
	addw t5, t6, s9
	sh2add t4, a0, a7
	lw t6, 8(t2)
	lw a6, 0(t4)
	add t4, a1, s1
	mulw a7, t6, a6
	sh2add t6, a0, t4
	addw t3, t5, a7
	add a7, a1, s2
	lw t5, 12(t2)
	lw a6, 0(t6)
	sh2add t6, a0, a7
	add a7, a1, s3
	mulw s9, t5, a6
	lw t5, 16(t2)
	addw t4, t3, s9
	lw a6, 0(t6)
	sh2add t6, a0, a7
	mulw s9, t5, a6
	lw t5, 20(t2)
	addw t3, t4, s9
	lw a7, 0(t6)
	mulw a6, t5, a7
	lw t5, 24(t2)
	add a7, a1, s4
	addw t4, t3, a6
	sh2add t6, a0, a7
	lw a7, 0(t6)
	lw t6, 28(t2)
	mulw a6, t5, a7
	add a7, a1, s5
	addw t3, t4, a6
	sh2add t5, a0, a7
	lw a6, 0(t5)
	add t5, a1, s6
	mulw a7, t6, a6
	sh2add t6, a0, t5
	addw t4, t3, a7
	lw t3, 32(t2)
	lw a7, 0(t6)
	mulw a6, t3, a7
	add t3, a1, s7
	addw t5, t4, a6
	sh2add t6, a0, t3
	lw t4, 36(t2)
	lw a7, 0(t6)
	li t6, 625
	mulw a6, t4, a7
	slli t4, t6, 6
	addw t3, t5, a6
	lw t6, 40(t2)
	add a6, a1, t4
	sh2add t5, a0, a6
	lw a7, 0(t5)
	li t5, 1375
	mulw a6, t6, a7
	lw t6, 44(t2)
	slli a7, t5, 5
	addw t4, t3, a6
	add t3, a1, a7
	sh2add t5, a0, t3
	lw a6, 0(t5)
	li t5, 375
	mulw a7, t6, a6
	slli a6, t5, 7
	addw t3, t4, a7
	lw t5, 48(t2)
	add t4, a1, a6
	sh2add t6, a0, t4
	lw a6, 0(t6)
	li t6, 1625
	mulw a7, t5, a6
	slli a6, t6, 5
	addw t4, t3, a7
	lw t6, 52(t2)
	add t3, a1, a6
	sh2add t5, a0, t3
	lw a6, 0(t5)
	li t5, 875
	mulw a7, t6, a6
	slli a6, t5, 6
	addw t3, t4, a7
	lw t5, 56(t2)
	add t4, a1, a6
	sh2add t6, a0, t4
	lw a7, 0(t6)
	mulw a6, t5, a7
	li t5, 1875
	addw t4, t3, a6
	slli t6, t5, 5
	lw t3, 60(t2)
	add a6, a1, t6
	sh2add t5, a0, a6
	lw t6, 0(t5)
	mulw a6, t3, t6
	li t3, 992
	addw t2, t4, a6
	addw t1, t1, t2
	blt t0, t3, label26
	ld t6, 104(sp)
	sh2add a1, t0, a2
	mul t3, t0, t6
	add t2, s8, t3
	add a7, t2, t6
	sh2add t5, a0, t2
	lw t3, 0(a1)
	sh2add t0, a0, a7
	lw t4, 0(t5)
	lw a6, 4(a1)
	lw a7, 0(t0)
	mulw t6, t3, t4
	lw t3, 8(a1)
	mulw t5, a6, a7
	add a6, t2, s0
	addw a7, t1, t6
	sh2add t4, a0, a6
	addw t0, t5, a7
	add a6, t2, s1
	lw t5, 0(t4)
	sh2add t4, a0, a6
	add a6, t2, s2
	mulw t6, t3, t5
	addw t1, t0, t6
	lw t0, 12(a1)
	lw t5, 0(t4)
	sh2add t4, a0, a6
	add a6, t2, s3
	mulw t6, t0, t5
	addw t3, t1, t6
	lw t1, 16(a1)
	lw t6, 0(t4)
	sh2add t4, a0, a6
	mulw t5, t1, t6
	add t6, t2, s4
	addw t0, t3, t5
	lw t3, 20(a1)
	lw a7, 0(t4)
	lw t4, 24(a1)
	mulw t5, t3, a7
	sh2add t3, a0, t6
	addw t1, t0, t5
	add t6, t2, s5
	lw a6, 0(t3)
	sh2add t3, a0, t6
	addiw a0, a0, 1
	mulw t5, t4, a6
	addw t0, t1, t5
	lw t1, 28(a1)
	lw t4, 0(t3)
	mulw t2, t1, t4
	addw a1, t0, t2
	sw a1, 0(a5)
	li a1, 1000
	addi a5, a5, 4
	blt a0, a1, label20
	j label94
.p2align 2
label26:
	li t3, 125
	slli t2, t3, 9
	add a1, a1, t2
	j label21
label5:
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
label48:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	mv a0, zero
	j label5
label90:
	ld a1, 112(sp)
	mv a0, zero
label29:
	li a2, 1000
	bge a0, a2, label32
	mv a2, a1
	mv a3, zero
	lui a5, 524288
	addiw a4, a5, -1
	j label56
label65:
	sh2add a2, a5, a1
	addiw a0, a0, 1
	sw a3, 0(a2)
	sw a3, 4(a2)
	sw a3, 8(a2)
	sw a3, 12(a2)
	sw a3, 16(a2)
	sw a3, 20(a2)
	sw a3, 24(a2)
	sw a3, 28(a2)
	sw a3, 32(a2)
	sw a3, 36(a2)
	sw a3, 40(a2)
	sw a3, 44(a2)
	sw a3, 48(a2)
	sw a3, 52(a2)
	sw a3, 56(a2)
	sw a3, 60(a2)
	sw a3, 64(a2)
	sw a3, 68(a2)
	sw a3, 72(a2)
	sw a3, 76(a2)
	sw a3, 80(a2)
	sw a3, 84(a2)
	sw a3, 88(a2)
	sw a3, 92(a2)
	sw a3, 96(a2)
	sw a3, 100(a2)
	sw a3, 104(a2)
	sw a3, 108(a2)
	sw a3, 112(a2)
	sw a3, 116(a2)
	sw a3, 120(a2)
	sw a3, 124(a2)
	sw a3, 128(a2)
	sw a3, 132(a2)
	sw a3, 136(a2)
	sw a3, 140(a2)
	sw a3, 144(a2)
	sw a3, 148(a2)
	sw a3, 152(a2)
	sw a3, 156(a2)
	ld t6, 104(sp)
	add a1, a1, t6
	j label29
.p2align 2
label56:
	lw t1, 0(a2)
	addiw a3, a3, 64
	lw t2, 4(a2)
	min a5, a4, t1
	lw t3, 8(a2)
	min t0, a5, t2
	lw t2, 12(a2)
	min a4, t0, t3
	lw t0, 16(a2)
	min t1, a4, t2
	lw t2, 20(a2)
	min a5, t1, t0
	lw t1, 24(a2)
	min a4, a5, t2
	lw t2, 28(a2)
	min t0, a4, t1
	lw t3, 32(a2)
	min a5, t0, t2
	lw t0, 36(a2)
	min t1, a5, t3
	lw t2, 40(a2)
	min a4, t1, t0
	lw t1, 44(a2)
	min a5, a4, t2
	lw t2, 48(a2)
	min t0, a5, t1
	lw a5, 52(a2)
	min a4, t0, t2
	lw t2, 56(a2)
	min t1, a4, a5
	lw t3, 60(a2)
	min t0, t1, t2
	lw t1, 64(a2)
	min a5, t0, t3
	lw t2, 68(a2)
	min a4, a5, t1
	lw t3, 72(a2)
	min t0, a4, t2
	lw t2, 76(a2)
	min a5, t0, t3
	lw t0, 80(a2)
	min t1, a5, t2
	lw t2, 84(a2)
	min a4, t1, t0
	lw t1, 88(a2)
	min a5, a4, t2
	lw t2, 92(a2)
	min t0, a5, t1
	lw a5, 96(a2)
	min a4, t0, t2
	lw t2, 100(a2)
	min t1, a4, a5
	lw t3, 104(a2)
	min t0, t1, t2
	lw t1, 108(a2)
	min a5, t0, t3
	lw t2, 112(a2)
	min a4, a5, t1
	lw t3, 116(a2)
	min t0, a4, t2
	lw t2, 120(a2)
	min t1, t0, t3
	lw t3, 124(a2)
	min a5, t1, t2
	lw t1, 128(a2)
	min a4, a5, t3
	lw t2, 132(a2)
	min t0, a4, t1
	lw t1, 136(a2)
	min a5, t0, t2
	lw t2, 140(a2)
	min a4, a5, t1
	lw t1, 144(a2)
	min t0, a4, t2
	lw t2, 148(a2)
	min a5, t0, t1
	lw t3, 152(a2)
	min a4, a5, t2
	lw t2, 156(a2)
	min t0, a4, t3
	lw a4, 160(a2)
	min t1, t0, t2
	lw t2, 164(a2)
	min a5, t1, a4
	lw t3, 168(a2)
	min t0, a5, t2
	lw t2, 172(a2)
	min a4, t0, t3
	lw t0, 176(a2)
	min t1, a4, t2
	lw t3, 180(a2)
	min a5, t1, t0
	lw t2, 184(a2)
	min a4, a5, t3
	lw t3, 188(a2)
	min t0, a4, t2
	lw a4, 192(a2)
	min t1, t0, t3
	lw t2, 196(a2)
	min a5, t1, a4
	lw t3, 200(a2)
	min t0, a5, t2
	lw t2, 204(a2)
	min a4, t0, t3
	lw t0, 208(a2)
	min t1, a4, t2
	lw t2, 212(a2)
	min a5, t1, t0
	lw t1, 216(a2)
	min a4, a5, t2
	lw t2, 220(a2)
	min t0, a4, t1
	lw t1, 224(a2)
	min a5, t0, t2
	lw t2, 228(a2)
	min a4, a5, t1
	lw t3, 232(a2)
	min t0, a4, t2
	lw t2, 236(a2)
	min a5, t0, t3
	lw t3, 240(a2)
	min t1, a5, t2
	lw t2, 244(a2)
	min a4, t1, t3
	lw t1, 248(a2)
	min t0, a4, t2
	lw t2, 252(a2)
	min a5, t0, t1
	li t0, 960
	min a4, a5, t2
	bge a3, t0, label61
	addi a2, a2, 256
	j label56
label61:
	sh2add a5, a3, a1
	lw t2, 0(a5)
	lw t1, 4(a5)
	min a2, a4, t2
	lw a4, 8(a5)
	min t0, a2, t1
	lw t1, 12(a5)
	min a3, t0, a4
	lw t2, 16(a5)
	min a2, a3, t1
	lw a3, 20(a5)
	min a4, a2, t2
	lw t2, 24(a5)
	min t0, a4, a3
	lw t1, 28(a5)
	min a2, t0, t2
	lw t2, 32(a5)
	min a3, a2, t1
	lw t0, 36(a5)
	min a4, a3, t2
	lw t1, 40(a5)
	min a2, a4, t0
	lw t0, 44(a5)
	min a3, a2, t1
	lw t1, 48(a5)
	min a4, a3, t0
	lw t0, 52(a5)
	min a2, a4, t1
	lw t1, 56(a5)
	min a3, a2, t0
	lw t0, 60(a5)
	min a4, a3, t1
	lw t1, 64(a5)
	min a2, a4, t0
	lw t0, 68(a5)
	min a3, a2, t1
	lw t1, 72(a5)
	min a4, a3, t0
	lw t0, 76(a5)
	min a2, a4, t1
	lw t1, 80(a5)
	min a3, a2, t0
	lw t0, 84(a5)
	min a4, a3, t1
	lw t2, 88(a5)
	min a2, a4, t0
	lw t1, 92(a5)
	min a3, a2, t2
	lw t2, 96(a5)
	min a4, a3, t1
	lw t1, 100(a5)
	min t0, a4, t2
	lw t2, 104(a5)
	min a2, t0, t1
	lw t0, 108(a5)
	min a3, a2, t2
	lw t1, 112(a5)
	min a4, a3, t0
	lw t0, 116(a5)
	min a2, a4, t1
	lw t1, 120(a5)
	min a3, a2, t0
	lw a2, 124(a5)
	min a4, a3, t1
	lw t2, 128(a5)
	min t0, a4, a2
	lw t1, 132(a5)
	min a3, t0, t2
	lw t2, 136(a5)
	min a2, a3, t1
	lw t0, 140(a5)
	min a4, a2, t2
	lw t2, 144(a5)
	min a3, a4, t0
	lw t1, 148(a5)
	min a2, a3, t2
	lw t2, 152(a5)
	min a4, a2, t1
	mv a2, a1
	min t0, a4, t2
	lw t1, 156(a5)
	mv a5, zero
	min a3, t0, t1
.p2align 2
label62:
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
	bge a5, t0, label65
	addi a2, a2, 256
	j label62
label32:
	ld a1, 112(sp)
	mv a0, zero
	mv a2, a1
label33:
	li a1, 1000
	bge a0, a1, label36
	ld a1, 112(sp)
	mv a3, zero
.p2align 2
label50:
	sh2add t1, a0, a1
	sh2add a4, a3, a2
	lw t0, 0(t1)
	addiw a3, a3, 16
	subw a5, zero, t0
	sw a5, 0(a4)
	ld t6, 104(sp)
	add t2, a1, t6
	sh2add a5, a0, t2
	lw t0, 0(a5)
	add a5, a1, s0
	subw t1, zero, t0
	sh2add t2, a0, a5
	add a5, a1, s1
	sw t1, 4(a4)
	sh2add t3, a0, a5
	lw t1, 0(t2)
	subw t0, zero, t1
	sw t0, 8(a4)
	add t0, a1, s2
	lw t1, 0(t3)
	sh2add a5, a0, t0
	subw t2, zero, t1
	sw t2, 12(a4)
	lw t1, 0(a5)
	add a5, a1, s3
	subw t3, zero, t1
	sh2add t2, a0, a5
	add a5, a1, s4
	sw t3, 16(a4)
	lw t1, 0(t2)
	sh2add t2, a0, a5
	subw t0, zero, t1
	add a5, a1, s5
	sw t0, 20(a4)
	lw t1, 0(t2)
	subw t0, zero, t1
	sh2add t1, a0, a5
	sw t0, 24(a4)
	lw t0, 0(t1)
	add t1, a1, s6
	subw t2, zero, t0
	sh2add a5, a0, t1
	sw t2, 28(a4)
	lw t2, 0(a5)
	add a5, a1, s7
	subw t0, zero, t2
	sh2add t2, a0, a5
	sw t0, 32(a4)
	lw t1, 0(t2)
	li t2, 625
	subw t0, zero, t1
	slli a5, t2, 6
	add t3, a1, a5
	sw t0, 36(a4)
	sh2add t1, a0, t3
	li t3, 1375
	lw t0, 0(t1)
	slli a5, t3, 5
	subw t2, zero, t0
	add t1, a1, a5
	sw t2, 40(a4)
	sh2add t2, a0, t1
	li t1, 375
	lw t3, 0(t2)
	slli a5, t1, 7
	subw t0, zero, t3
	add t3, a1, a5
	sw t0, 44(a4)
	sh2add t0, a0, t3
	li t3, 1625
	lw t1, 0(t0)
	slli a5, t3, 5
	subw t2, zero, t1
	sw t2, 48(a4)
	add t2, a1, a5
	sh2add t0, a0, t2
	li t2, 875
	lw t1, 0(t0)
	slli t0, t2, 6
	subw a5, zero, t1
	add t1, a1, t0
	sw a5, 52(a4)
	sh2add a5, a0, t1
	li t1, 1875
	lw t2, 0(a5)
	slli t3, t1, 5
	subw t0, zero, t2
	add t2, a1, t3
	sh2add a5, a0, t2
	sw t0, 56(a4)
	lw t1, 0(a5)
	li a5, 992
	subw t0, zero, t1
	sw t0, 60(a4)
	bge a3, a5, label54
	li a5, 125
	slli a4, a5, 9
	add a1, a1, a4
	j label50
label54:
	ld t6, 104(sp)
	ld a1, 112(sp)
	mul a5, a3, t6
	add a4, a1, a5
	sh2add a1, a3, a2
	sh2add t1, a0, a4
	add a2, a2, t6
	lw t0, 0(t1)
	add t1, a4, t6
	subw a5, zero, t0
	sh2add t0, a0, t1
	sw a5, 0(a1)
	add a5, a4, s0
	lw t2, 0(t0)
	sh2add t0, a0, a5
	subw a3, zero, t2
	add t2, a4, s2
	sw a3, 4(a1)
	lw a3, 0(t0)
	add t0, a4, s1
	subw t1, zero, a3
	sh2add a3, a0, t0
	sh2add t0, a0, t2
	sw t1, 8(a1)
	lw t1, 0(a3)
	subw a5, zero, t1
	add t1, a4, s3
	sh2add t2, a0, t1
	sw a5, 12(a1)
	lw a5, 0(t0)
	subw a3, zero, a5
	sw a3, 16(a1)
	add a3, a4, s4
	lw t0, 0(t2)
	subw a5, zero, t0
	sh2add t0, a0, a3
	add a3, a4, s5
	sw a5, 20(a1)
	lw a5, 0(t0)
	sh2add t0, a0, a3
	subw t1, zero, a5
	addiw a0, a0, 1
	sw t1, 24(a1)
	lw a5, 0(t0)
	subw a4, zero, a5
	sw a4, 28(a1)
	j label33
label36:
	ld a1, 112(sp)
	mv s0, zero
	mv a2, zero
label37:
	li a0, 1000
	bge a2, a0, label48
	mv a0, a1
	mv a3, zero
	mv a4, s0
	j label42
label47:
	sh2add a0, a3, a1
	addiw a2, a2, 1
	lw a5, 0(a0)
	lw t1, 4(a0)
	addw t0, a4, a5
	lw t2, 8(a0)
	addw a3, t0, t1
	lw t0, 12(a0)
	addw a5, a3, t2
	lw t2, 16(a0)
	addw a4, a5, t0
	lw t1, 20(a0)
	addw a3, a4, t2
	lw t0, 24(a0)
	addw a5, a3, t1
	lw t1, 28(a0)
	addw a4, a5, t0
	lw a5, 32(a0)
	addw a3, a4, t1
	lw t1, 36(a0)
	addw t0, a3, a5
	lw t2, 40(a0)
	addw a4, t0, t1
	lw t0, 44(a0)
	addw a5, a4, t2
	lw t1, 48(a0)
	addw a3, a5, t0
	lw t2, 52(a0)
	addw a4, a3, t1
	lw t1, 56(a0)
	addw t0, a4, t2
	lw a4, 60(a0)
	addw a5, t0, t1
	lw t0, 64(a0)
	addw a3, a5, a4
	lw a5, 68(a0)
	addw t1, a3, t0
	lw t2, 72(a0)
	addw a4, t1, a5
	lw t1, 76(a0)
	addw t0, a4, t2
	lw t2, 80(a0)
	addw a3, t0, t1
	lw t0, 84(a0)
	addw a5, a3, t2
	lw t1, 88(a0)
	addw a4, a5, t0
	lw t0, 92(a0)
	addw a3, a4, t1
	lw t1, 96(a0)
	addw a5, a3, t0
	lw t2, 100(a0)
	addw a4, a5, t1
	lw t1, 104(a0)
	addw t0, a4, t2
	lw t2, 108(a0)
	addw a3, t0, t1
	lw t0, 112(a0)
	addw a5, a3, t2
	lw t1, 116(a0)
	addw a4, a5, t0
	lw t0, 120(a0)
	addw a3, a4, t1
	lw t1, 124(a0)
	addw a5, a3, t0
	lw t0, 128(a0)
	addw a4, a5, t1
	lw t1, 132(a0)
	addw a3, a4, t0
	lw t0, 136(a0)
	addw a5, a3, t1
	lw t1, 140(a0)
	addw a4, a5, t0
	lw t0, 144(a0)
	addw a3, a4, t1
	lw t1, 148(a0)
	addw a5, a3, t0
	lw t0, 152(a0)
	addw a4, a5, t1
	lw a5, 156(a0)
	addw a3, a4, t0
	ld t6, 104(sp)
	addw s0, a3, a5
	add a1, a1, t6
	j label37
.p2align 2
label42:
	lw t1, 0(a0)
	addiw a3, a3, 64
	lw t2, 4(a0)
	addw a5, a4, t1
	lw t3, 8(a0)
	addw t0, a5, t2
	lw t2, 12(a0)
	addw a4, t0, t3
	lw t3, 16(a0)
	addw t1, a4, t2
	lw t2, 20(a0)
	addw a5, t1, t3
	lw t3, 24(a0)
	addw t0, a5, t2
	lw t1, 28(a0)
	addw a4, t0, t3
	lw t2, 32(a0)
	addw a5, a4, t1
	lw t3, 36(a0)
	addw t0, a5, t2
	lw t2, 40(a0)
	addw a4, t0, t3
	lw t3, 44(a0)
	addw t1, a4, t2
	lw t2, 48(a0)
	addw a5, t1, t3
	lw t1, 52(a0)
	addw t0, a5, t2
	lw t2, 56(a0)
	addw a4, t0, t1
	lw t1, 60(a0)
	addw a5, a4, t2
	lw t2, 64(a0)
	addw t0, a5, t1
	lw t3, 68(a0)
	addw a4, t0, t2
	lw t0, 72(a0)
	addw t1, a4, t3
	lw t3, 76(a0)
	addw a5, t1, t0
	lw t1, 80(a0)
	addw t2, a5, t3
	lw t3, 84(a0)
	addw a4, t2, t1
	lw t2, 88(a0)
	addw t0, a4, t3
	lw t3, 92(a0)
	addw a5, t0, t2
	lw t2, 96(a0)
	addw t1, a5, t3
	lw t3, 100(a0)
	addw a4, t1, t2
	lw t2, 104(a0)
	addw t0, a4, t3
	lw a4, 108(a0)
	addw a5, t0, t2
	lw t3, 112(a0)
	addw t1, a5, a4
	lw t2, 116(a0)
	addw t0, t1, t3
	lw t3, 120(a0)
	addw a4, t0, t2
	lw t0, 124(a0)
	addw a5, a4, t3
	lw t3, 128(a0)
	addw t1, a5, t0
	lw t2, 132(a0)
	addw a4, t1, t3
	lw t1, 136(a0)
	addw t0, a4, t2
	lw t2, 140(a0)
	addw a5, t0, t1
	lw t1, 144(a0)
	addw a4, a5, t2
	lw t2, 148(a0)
	addw t0, a4, t1
	lw t1, 152(a0)
	addw a5, t0, t2
	lw t2, 156(a0)
	addw a4, a5, t1
	lw t1, 160(a0)
	addw t0, a4, t2
	lw t2, 164(a0)
	addw a5, t0, t1
	lw t1, 168(a0)
	addw a4, a5, t2
	lw t2, 172(a0)
	addw t0, a4, t1
	lw t1, 176(a0)
	addw a5, t0, t2
	lw t2, 180(a0)
	addw a4, a5, t1
	lw t1, 184(a0)
	addw t0, a4, t2
	lw t3, 188(a0)
	addw a5, t0, t1
	lw t2, 192(a0)
	addw a4, a5, t3
	lw t3, 196(a0)
	addw t1, a4, t2
	lw t2, 200(a0)
	addw t0, t1, t3
	lw t1, 204(a0)
	addw a5, t0, t2
	lw t3, 208(a0)
	addw a4, a5, t1
	lw t2, 212(a0)
	addw t0, a4, t3
	lw t1, 216(a0)
	addw a5, t0, t2
	lw t2, 220(a0)
	addw a4, a5, t1
	lw t1, 224(a0)
	addw t0, a4, t2
	lw t3, 228(a0)
	addw a5, t0, t1
	lw t2, 232(a0)
	addw a4, a5, t3
	lw t1, 236(a0)
	addw t0, a4, t2
	lw t2, 240(a0)
	addw a5, t0, t1
	lw t1, 244(a0)
	addw a4, a5, t2
	lw t2, 248(a0)
	addw t0, a4, t1
	lw t1, 252(a0)
	addw a5, t0, t2
	li t0, 960
	addw a4, a5, t1
	bge a3, t0, label47
	addi a0, a0, 256
	j label42
