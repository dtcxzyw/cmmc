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
pcrel2150:
	auipc a0, %pcrel_hi(a)
pcrel2151:
	auipc a2, %pcrel_hi(b)
	sd ra, 0(sp)
	sd s9, 8(sp)
	addi s9, a0, %pcrel_lo(pcrel2150)
	sd s8, 16(sp)
pcrel2152:
	auipc a0, %pcrel_hi(c)
	addi s8, a2, %pcrel_lo(pcrel2151)
	addi a1, a0, %pcrel_lo(pcrel2152)
	sd s10, 24(sp)
	li a0, 125
	mv s10, s9
	slli a6, a0, 5
	sd s11, 32(sp)
	li a0, 875
	mv s11, zero
	sd s0, 40(sp)
	slli s0, a6, 1
	sd s5, 48(sp)
	slli s5, a0, 5
	sd s1, 56(sp)
	sh1add s1, a6, a6
	sd s6, 64(sp)
	sd s2, 72(sp)
	slli s2, s0, 1
	sd s3, 80(sp)
	slli s6, s2, 1
	sh2add s3, a6, a6
	sd s4, 88(sp)
	slli s4, s1, 1
	sd s7, 96(sp)
	sh3add s7, a6, a6
	sd a1, 112(sp)
	sd a6, 104(sp)
label2:
	li a0, 1000
	blt s11, a0, label73
	j label7
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
label73:
	mv a0, s10
	jal getarray
	li a1, 1000
	bne a0, a1, label5
	addiw s11, s11, 1
	ld a6, 104(sp)
	add s10, s10, a6
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
label72:
	ld a6, 104(sp)
	li t3, 125
	mul a2, a4, a6
	add a3, s9, a2
	sh2add t0, a0, a3
	sh2add a2, a4, a1
	add a1, a1, a6
	lw a5, 0(t0)
	add t0, a3, a6
	sh2add a4, a0, t0
	sw a5, 0(a2)
	add t0, a3, s0
	lw a5, 0(a4)
	sh2add a4, a0, t0
	add t0, a3, s1
	sw a5, 4(a2)
	sh2add a5, a0, t0
	lw t1, 0(a4)
	add t0, a3, s2
	sw t1, 8(a2)
	lw a4, 0(a5)
	sh2add a5, a0, t0
	add t0, a3, s3
	sw a4, 12(a2)
	lw a4, 0(a5)
	sh2add a5, a0, t0
	add t0, a3, s4
	sw a4, 16(a2)
	lw a4, 0(a5)
	sh2add a5, a0, t0
	sw a4, 20(a2)
	add a4, a3, s5
	lw t1, 0(a5)
	sh2add t0, a0, a4
	add a4, a3, s6
	sw t1, 24(a2)
	add t1, a3, s7
	lw a5, 0(t0)
	sh2add t0, a0, a4
	sw a5, 28(a2)
	sh2add a5, a0, t1
	lw t2, 0(t0)
	sw t2, 32(a2)
	li t2, 625
	lw a4, 0(a5)
	slli t1, t2, 6
	li t2, 1375
	add t0, a3, t1
	slli t1, t2, 5
	sh2add a5, a0, t0
	sw a4, 36(a2)
	li t2, 375
	add t0, a3, t1
	lw a4, 0(a5)
	sh2add a5, a0, t0
	slli t0, t2, 7
	sw a4, 40(a2)
	li t2, 1625
	add t1, a3, t0
	lw a4, 0(a5)
	sh2add a5, a0, t1
	slli t1, t2, 5
	sw a4, 44(a2)
	li t2, 875
	add t0, a3, t1
	lw a4, 0(a5)
	slli t1, t2, 6
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 48(a2)
	li t1, 1875
	lw a4, 0(a5)
	sh2add a5, a0, t0
	slli t0, t1, 5
	sw a4, 52(a2)
	slli t1, t3, 9
	lw a4, 0(a5)
	add a5, a3, t0
	add t0, a3, t1
	sw a4, 56(a2)
	sh2add a4, a0, a5
	sh2add a5, a0, t0
	lw t2, 0(a4)
	sw t2, 60(a2)
	lui t2, 17
	lw a4, 0(a5)
	addiw t1, t2, -1632
	li t2, 1125
	add t0, a3, t1
	slli t1, t2, 6
	sh2add a5, a0, t0
	sw a4, 64(a2)
	lui t2, 19
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, -1824
	li t2, 625
	sw a4, 68(a2)
	sh2add a4, a0, t0
	add t0, a3, t1
	lw a5, 0(a4)
	slli t1, t2, 7
	lui t2, 21
	sw a5, 72(a2)
	sh2add a5, a0, t0
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, -2016
	sh2add a5, a0, t0
	li t2, 1375
	add t0, a3, t1
	sw a4, 76(a2)
	slli t1, t2, 6
	lw a4, 0(a5)
	lui t2, 22
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 80(a2)
	addiw t1, t2, 1888
	lw a4, 0(a5)
	li t2, 375
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 84(a2)
	slli t1, t2, 8
	lw a4, 0(a5)
	lui t2, 24
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 88(a2)
	addiw t1, t2, 1696
	lw a4, 0(a5)
	li t2, 1625
	sh2add a5, a0, t0
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
	li t2, 1875
	sw a4, 100(a2)
	sh2add a4, a0, t0
	add t0, a3, t1
	lw a5, 0(a4)
	sh2add a4, a0, t0
	li t0, 875
	sw a5, 104(a2)
	lw a5, 0(a4)
	slli a4, t0, 7
	sw a5, 108(a2)
	add a5, a3, a4
	lui a4, 28
	sh2add t1, a0, a5
	lw t0, 0(t1)
	addiw t1, a4, 1312
	sw t0, 112(a2)
	add t0, a3, t1
	slli t1, t2, 6
	sh2add a5, a0, t0
	lui t2, 30
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, 1120
	sh2add a5, a0, t0
	li t2, 125
	add t0, a3, t1
	sw a4, 116(a2)
	slli t1, t2, 10
	lw a4, 0(a5)
	lui t2, 32
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 120(a2)
	addiw t1, t2, 928
	lw a4, 0(a5)
	lui t2, 33
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 124(a2)
	addiw t1, t2, 832
	lw a4, 0(a5)
	lui t2, 34
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 128(a2)
	addiw t1, t2, 736
	lw a4, 0(a5)
	li t2, 1125
	sw a4, 132(a2)
	sh2add a4, a0, t0
	add t0, a3, t1
	lw a5, 0(a4)
	slli t1, t2, 7
	lui t2, 36
	sw a5, 136(a2)
	sh2add a5, a0, t0
	add t0, a3, t1
	lw a4, 0(a5)
	addiw t1, t2, 544
	sh2add a5, a0, t0
	lui t2, 37
	add t0, a3, t1
	sw a4, 140(a2)
	addiw t1, t2, 448
	lw a4, 0(a5)
	sh2add a5, a0, t0
	add t0, a3, t1
	sw a4, 144(a2)
	lui t1, 38
	lw a4, 0(a5)
	sw a4, 148(a2)
	sh2add a4, a0, t0
	addiw t0, t1, 352
	lw a5, 0(a4)
	add a4, a3, t0
	sw a5, 152(a2)
	sh2add a5, a0, a4
	addiw a0, a0, 1
	lw t1, 0(a5)
	sw t1, 156(a2)
	j label8
.p2align 2
label68:
	sh2add t0, a0, a2
	add t1, a2, s0
	lui t4, 42
	sh2add a3, a4, a1
	lw a5, 0(t0)
	addiw a4, a4, 64
	sw a5, 0(a3)
	ld a6, 104(sp)
	add t0, a2, a6
	sh2add a5, a0, t0
	lw t2, 0(a5)
	sh2add a5, a0, t1
	add t1, a2, s1
	sw t2, 4(a3)
	lw t0, 0(a5)
	sh2add a5, a0, t1
	sw t0, 8(a3)
	add t0, a2, s2
	lw t3, 0(a5)
	sh2add t2, a0, t0
	add a5, a2, s3
	sh2add t0, a0, a5
	sw t3, 12(a3)
	add a5, a2, s4
	li t3, 625
	lw t1, 0(t2)
	add t2, a2, s7
	sw t1, 16(a3)
	lw t1, 0(t0)
	sh2add t0, a0, a5
	add a5, a2, s5
	sw t1, 20(a3)
	lw t1, 0(t0)
	sh2add t0, a0, a5
	add a5, a2, s6
	sw t1, 24(a3)
	lw t1, 0(t0)
	sh2add t0, a0, a5
	sh2add a5, a0, t2
	sw t1, 28(a3)
	lw t1, 0(t0)
	sw t1, 32(a3)
	lw t0, 0(a5)
	slli a5, t3, 6
	li t3, 375
	add t1, a2, a5
	sw t0, 36(a3)
	li a5, 1375
	sh2add t2, a0, t1
	lw t0, 0(t2)
	slli t2, a5, 5
	sw t0, 40(a3)
	add t0, a2, t2
	slli t2, t3, 7
	sh2add t1, a0, t0
	li t3, 125
	lw a5, 0(t1)
	sw a5, 44(a3)
	add a5, a2, t2
	li t2, 1625
	sh2add t0, a0, a5
	lw t1, 0(t0)
	slli t0, t2, 5
	add a5, a2, t0
	sw t1, 48(a3)
	li t0, 875
	sh2add t1, a0, a5
	lw t2, 0(t1)
	slli t1, t0, 6
	sw t2, 52(a3)
	add t2, a2, t1
	li t1, 1875
	sh2add a5, a0, t2
	lw t0, 0(a5)
	slli a5, t1, 5
	add t2, a2, a5
	sw t0, 56(a3)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	slli t0, t3, 9
	lui t3, 17
	add a5, a2, t0
	sw t1, 60(a3)
	addiw t0, t3, -1632
	sh2add t2, a0, a5
	lui t3, 19
	lw t1, 0(t2)
	add t2, a2, t0
	li t0, 1125
	sh2add a5, a0, t2
	sw t1, 64(a3)
	lw t1, 0(a5)
	slli a5, t0, 6
	add t2, a2, a5
	sw t1, 68(a3)
	addiw a5, t3, -1824
	sh2add t1, a0, t2
	li t3, 625
	add t2, a2, a5
	lw t0, 0(t1)
	slli a5, t3, 7
	lui t3, 21
	sw t0, 72(a3)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	sw t1, 76(a3)
	add t1, a2, a5
	addiw a5, t3, -2016
	sh2add t2, a0, t1
	li t3, 1375
	add t1, a2, a5
	lw t0, 0(t2)
	slli a5, t3, 6
	sh2add t2, a0, t1
	li t3, 375
	add t1, a2, a5
	sw t0, 80(a3)
	lw t0, 0(t2)
	sw t0, 84(a3)
	sh2add t0, a0, t1
	lui t1, 22
	lw t2, 0(t0)
	addiw t0, t1, 1888
	sw t2, 88(a3)
	add t2, a2, t0
	slli t0, t3, 8
	sh2add a5, a0, t2
	lui t3, 24
	add t2, a2, t0
	lw t1, 0(a5)
	addiw t0, t3, 1696
	sh2add a5, a0, t2
	li t3, 1625
	sw t1, 92(a3)
	lw t1, 0(a5)
	sw t1, 96(a3)
	add t1, a2, t0
	slli t0, t3, 6
	sh2add t2, a0, t1
	li t3, 1875
	add t1, a2, t0
	lw a5, 0(t2)
	lui t0, 26
	sh2add t2, a0, t1
	addiw t1, t0, 1504
	sw a5, 100(a3)
	lw a5, 0(t2)
	sw a5, 104(a3)
	add a5, a2, t1
	sh2add t2, a0, a5
	li a5, 875
	lw t0, 0(t2)
	slli t2, a5, 7
	add t1, a2, t2
	sw t0, 108(a3)
	sh2add t0, a0, t1
	lui t1, 28
	lw a5, 0(t0)
	addiw t0, t1, 1312
	add t2, a2, t0
	sw a5, 112(a3)
	sh2add a5, a0, t2
	lw t1, 0(a5)
	slli a5, t3, 6
	lui t3, 30
	add t0, a2, a5
	sw t1, 116(a3)
	sh2add t2, a0, t0
	addiw t0, t3, 1120
	lw t1, 0(t2)
	li t3, 125
	add t2, a2, t0
	slli t0, t3, 10
	sh2add a5, a0, t2
	sw t1, 120(a3)
	lui t3, 32
	add t2, a2, t0
	lw t1, 0(a5)
	addiw t0, t3, 928
	lui t3, 34
	sw t1, 124(a3)
	sh2add t1, a0, t2
	lw a5, 0(t1)
	sw a5, 128(a3)
	add a5, a2, t0
	sh2add t2, a0, a5
	lui a5, 33
	lw t1, 0(t2)
	addiw t2, a5, 832
	add t0, a2, t2
	sw t1, 132(a3)
	sh2add t1, a0, t0
	addiw t0, t3, 736
	lw a5, 0(t1)
	lui t3, 36
	add t2, a2, t0
	sw a5, 136(a3)
	sh2add a5, a0, t2
	li t2, 1125
	lw t1, 0(a5)
	slli a5, t2, 7
	add t0, a2, a5
	sw t1, 140(a3)
	addiw a5, t3, 544
	sh2add t1, a0, t0
	lui t3, 40
	lw t2, 0(t1)
	sw t2, 144(a3)
	add t2, a2, a5
	sh2add t0, a0, t2
	lui t2, 37
	lw t1, 0(t0)
	addiw a5, t2, 448
	add t0, a2, a5
	sw t1, 148(a3)
	sh2add t1, a0, t0
	lui t0, 38
	lw t2, 0(t1)
	addiw a5, t0, 352
	sw t2, 152(a3)
	add t2, a2, a5
	sh2add t1, a0, t2
	li t2, 625
	lw t0, 0(t1)
	slli t1, t2, 8
	add a5, a2, t1
	sw t0, 156(a3)
	addiw t1, t3, 160
	sh2add t0, a0, a5
	lui t3, 41
	add a5, a2, t1
	lw t2, 0(t0)
	addiw t1, t3, 64
	addiw t3, t4, -32
	sw t2, 160(a3)
	sh2add t2, a0, a5
	lw t0, 0(t2)
	sw t0, 164(a3)
	add t0, a2, t1
	sh2add a5, a0, t0
	add t0, a2, t3
	lw t2, 0(a5)
	li t3, 1375
	sh2add t1, a0, t0
	slli t0, t3, 7
	sw t2, 168(a3)
	lui t3, 50
	add t2, a2, t0
	lw a5, 0(t1)
	lui t0, 44
	sw a5, 172(a3)
	sh2add a5, a0, t2
	lw t1, 0(a5)
	addiw a5, t0, -224
	sw t1, 176(a3)
	add t1, a2, a5
	sh2add t2, a0, t1
	lui t1, 45
	lw t0, 0(t2)
	addiw a5, t1, -320
	add t2, a2, a5
	lui a5, 46
	sw t0, 180(a3)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	addiw t0, a5, -416
	sw t1, 184(a3)
	add t1, a2, t0
	sh2add t2, a0, t1
	li t1, 375
	lw a5, 0(t2)
	slli t0, t1, 9
	sw a5, 188(a3)
	add a5, a2, t0
	sh2add t2, a0, a5
	lui a5, 48
	lw t1, 0(t2)
	addiw t0, a5, -608
	sw t1, 192(a3)
	add t1, a2, t0
	lui t0, 49
	sh2add t2, a0, t1
	addiw t1, t0, -704
	lw a5, 0(t2)
	add t2, a2, t1
	addiw t1, t3, -800
	sw a5, 196(a3)
	li t3, 1625
	sh2add a5, a0, t2
	lw t0, 0(a5)
	sw t0, 200(a3)
	add t0, a2, t1
	slli t1, t3, 7
	sh2add t2, a0, t0
	lui t3, 52
	add t0, a2, t1
	lw a5, 0(t2)
	addiw t1, t3, -992
	li t3, 875
	sw a5, 204(a3)
	sh2add a5, a0, t0
	lw t2, 0(a5)
	sw t2, 208(a3)
	add t2, a2, t1
	lui t1, 53
	sh2add t0, a0, t2
	lw a5, 0(t0)
	addiw t0, t1, -1088
	add t2, a2, t0
	sw a5, 212(a3)
	lui t0, 54
	sh2add a5, a0, t2
	lw t1, 0(a5)
	addiw a5, t0, -1184
	add t2, a2, a5
	sw t1, 216(a3)
	sh2add t1, a0, t2
	lw t0, 0(t1)
	slli t1, t3, 8
	lui t3, 57
	add a5, a2, t1
	sw t0, 220(a3)
	sh2add t2, a0, a5
	lui a5, 56
	lw t0, 0(t2)
	addiw t2, a5, -1376
	add t1, a2, t2
	sw t0, 224(a3)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	addiw t0, t3, -1472
	li t3, 1875
	add t1, a2, t0
	sw a5, 228(a3)
	lui t0, 58
	sh2add t2, a0, t1
	lw a5, 0(t2)
	addiw t2, t0, -1568
	add t1, a2, t2
	sw a5, 232(a3)
	slli t2, t3, 7
	sh2add a5, a0, t1
	lui t3, 60
	lw t0, 0(a5)
	add a5, a2, t2
	sh2add t1, a0, a5
	sw t0, 236(a3)
	addiw a5, t3, -1760
	lw t0, 0(t1)
	sw t0, 240(a3)
	add t0, a2, a5
	sh2add t2, a0, t0
	lui t0, 61
	lw t1, 0(t2)
	addiw t2, t0, -1856
	add a5, a2, t2
	sw t1, 244(a3)
	lui t2, 62
	sh2add t1, a0, a5
	addiw a5, t2, -1952
	lw t0, 0(t1)
	add t1, a2, a5
	li a5, 960
	sw t0, 248(a3)
	sh2add t0, a0, t1
	lw t2, 0(t0)
	sw t2, 252(a3)
	bge a4, a5, label72
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
	blt zero, a1, label21
label20:
	addiw a4, a4, 1
	ld a6, 104(sp)
	add a3, a3, a6
	add a2, a2, a6
	j label12
.p2align 2
label21:
	mv a1, s8
	mv t0, zero
	mv t1, zero
.p2align 2
label22:
	sh2add t5, a0, a1
	sh2add t2, t0, a2
	addiw t0, t0, 16
	lw t3, 0(t2)
	lw t4, 0(t5)
	ld a6, 104(sp)
	lw t6, 4(t2)
	add a7, a1, a6
	sh2add t5, a0, a7
	mulw a7, t3, t4
	add t3, a1, s0
	lw s9, 0(t5)
	lw t4, 8(t2)
	mulw a6, t6, s9
	sh2add t6, a0, t3
	addw t5, a6, a7
	add a6, a1, s1
	lw a7, 0(t6)
	sh2add t6, a0, a6
	mulw s9, t4, a7
	addw t3, t5, s9
	lw t5, 12(t2)
	lw a7, 0(t6)
	mulw a6, t5, a7
	add a7, a1, s2
	addw t4, t3, a6
	sh2add t6, a0, a7
	lw t3, 16(t2)
	lw a6, 0(t6)
	mulw a7, t3, a6
	add t3, a1, s3
	addw t5, t4, a7
	sh2add t6, a0, t3
	add a7, a1, s4
	lw t4, 20(t2)
	lw a6, 0(t6)
	sh2add t6, a0, a7
	mulw s9, t4, a6
	addw t3, t5, s9
	lw t5, 24(t2)
	lw a7, 0(t6)
	mulw a6, t5, a7
	lw t5, 28(t2)
	add a7, a1, s5
	addw t4, t3, a6
	sh2add t6, a0, a7
	lw a7, 0(t6)
	mulw a6, t5, a7
	add a7, a1, s6
	addw t3, t4, a6
	sh2add t6, a0, a7
	lw t4, 32(t2)
	lw a6, 0(t6)
	mulw a7, t4, a6
	add a6, a1, s7
	addw t5, t3, a7
	sh2add t6, a0, a6
	lw t3, 36(t2)
	lw a7, 0(t6)
	li t6, 625
	mulw a6, t3, a7
	slli a7, t6, 6
	addw t4, t5, a6
	add t3, a1, a7
	lw t5, 40(t2)
	sh2add t6, a0, t3
	lw a6, 0(t6)
	mulw a7, t5, a6
	li t5, 1375
	addw t3, t4, a7
	slli a6, t5, 5
	lw t5, 44(t2)
	add t4, a1, a6
	sh2add t6, a0, t4
	lw a6, 0(t6)
	mulw a7, t5, a6
	li t5, 375
	addw t4, t3, a7
	slli a6, t5, 7
	lw t5, 48(t2)
	add t3, a1, a6
	sh2add t6, a0, t3
	lw a6, 0(t6)
	li t6, 1625
	mulw a7, t5, a6
	slli a6, t6, 5
	addw t3, t4, a7
	lw t6, 52(t2)
	add t4, a1, a6
	sh2add t5, a0, t4
	lw a7, 0(t5)
	li t5, 875
	mulw a6, t6, a7
	slli a7, t5, 6
	addw t4, t3, a6
	lw t5, 56(t2)
	add t3, a1, a7
	sh2add t6, a0, t3
	lw a6, 0(t6)
	mulw a7, t5, a6
	li t5, 1875
	addw t3, t4, a7
	slli t6, t5, 5
	lw t4, 60(t2)
	add a7, a1, t6
	sh2add t5, a0, a7
	lw a6, 0(t5)
	mulw t6, t4, a6
	addw t2, t3, t6
	li t3, 992
	addw t1, t1, t2
	blt t0, t3, label27
	ld a6, 104(sp)
	sh2add t2, t0, a2
	mul t3, t0, a6
	add a1, s8, t3
	add t0, a1, a6
	sh2add t5, a0, a1
	lw t3, 0(t2)
	sh2add t6, a0, t0
	lw t4, 0(t5)
	lw t5, 4(t2)
	lw a7, 0(t6)
	mulw a6, t3, t4
	lw t3, 8(t2)
	add t4, a1, s0
	addw t6, t1, a6
	mulw t0, t5, a7
	sh2add t1, a0, t4
	addw t5, t0, t6
	lw t6, 0(t1)
	add t1, a1, s1
	mulw t4, t3, t6
	sh2add t3, a0, t1
	addw t0, t5, t4
	add t5, a1, s2
	lw t4, 12(t2)
	lw a6, 0(t3)
	sh2add t3, a0, t5
	add t5, a1, s3
	mulw t6, t4, a6
	lw t4, 16(t2)
	addw t1, t0, t6
	lw t6, 0(t3)
	lw t3, 20(t2)
	mulw a6, t4, t6
	sh2add t4, a0, t5
	addw t0, t1, a6
	add t5, a1, s4
	lw a6, 0(t4)
	sh2add t4, a0, t5
	mulw t6, t3, a6
	lw t3, 24(t2)
	addw t1, t0, t6
	lw t6, 0(t4)
	add t4, a1, s5
	mulw t5, t3, t6
	sh2add t3, a0, t4
	addw t0, t1, t5
	addiw a0, a0, 1
	lw t1, 28(t2)
	lw a1, 0(t3)
	mulw t4, t1, a1
	li a1, 1000
	addw t2, t0, t4
	sw t2, 0(a5)
	addi a5, a5, 4
	blt a0, a1, label21
	j label20
.p2align 2
label27:
	li t3, 125
	slli t2, t3, 9
	add a1, a1, t2
	j label22
label90:
	ld a1, 112(sp)
	mv a0, a1
	mv a1, zero
label29:
	li a2, 1000
	blt a1, a2, label55
	j label32
label65:
	sh2add a2, a5, a0
	addiw a1, a1, 1
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
	ld a6, 104(sp)
	add a0, a0, a6
	j label29
label32:
	ld a1, 112(sp)
	mv a0, zero
	mv a2, a1
label33:
	li a1, 1000
	bge a0, a1, label307
	ld a1, 112(sp)
	mv a3, zero
	j label37
label41:
	ld a6, 104(sp)
	ld a1, 112(sp)
	mul a5, a3, a6
	add a4, a1, a5
	sh2add a1, a3, a2
	sh2add t1, a0, a4
	add a2, a2, a6
	lw t0, 0(t1)
	add t1, a4, a6
	subw a5, zero, t0
	sh2add t0, a0, t1
	add t1, a4, s0
	sw a5, 0(a1)
	lw a5, 0(t0)
	subw a3, zero, a5
	sh2add a5, a0, t1
	add t1, a4, s1
	sw a3, 4(a1)
	lw a3, 0(a5)
	sh2add a5, a0, t1
	subw t0, zero, a3
	add t1, a4, s2
	sw t0, 8(a1)
	lw a3, 0(a5)
	sh2add a5, a0, t1
	subw t0, zero, a3
	add t1, a4, s3
	sw t0, 12(a1)
	lw t0, 0(a5)
	subw a3, zero, t0
	sh2add t0, a0, t1
	add t1, a4, s4
	sw a3, 16(a1)
	lw a3, 0(t0)
	sh2add t0, a0, t1
	subw a5, zero, a3
	add t1, a4, s5
	sw a5, 20(a1)
	lw a5, 0(t0)
	sh2add t0, a0, t1
	subw a3, zero, a5
	addiw a0, a0, 1
	sw a3, 24(a1)
	lw a5, 0(t0)
	subw a3, zero, a5
	sw a3, 28(a1)
	j label33
.p2align 2
label37:
	sh2add t0, a0, a1
	add t3, a1, s6
	li t4, 1375
	sh2add a4, a3, a2
	lw t1, 0(t0)
	addiw a3, a3, 16
	subw a5, zero, t1
	sw a5, 0(a4)
	ld a6, 104(sp)
	add t0, a1, a6
	sh2add t2, a0, t0
	lw t1, 0(t2)
	add t2, a1, s0
	subw a5, zero, t1
	sh2add t0, a0, t2
	add t2, a1, s1
	sw a5, 4(a4)
	lw t1, 0(t0)
	subw a5, zero, t1
	sh2add t1, a0, t2
	sw a5, 8(a4)
	lw t0, 0(t1)
	add t1, a1, s2
	subw a5, zero, t0
	sh2add t2, a0, t1
	sw a5, 12(a4)
	lw a5, 0(t2)
	add t2, a1, s3
	subw t0, zero, a5
	sh2add a5, a0, t2
	sw t0, 16(a4)
	lw t0, 0(a5)
	add a5, a1, s4
	subw t1, zero, t0
	sh2add t2, a0, a5
	add a5, a1, s5
	sw t1, 20(a4)
	lw t1, 0(t2)
	subw t0, zero, t1
	sh2add t1, a0, a5
	sh2add a5, a0, t3
	sw t0, 24(a4)
	li t3, 625
	lw t0, 0(t1)
	subw t2, zero, t0
	add t0, a1, s7
	sw t2, 28(a4)
	lw t1, 0(a5)
	sh2add a5, a0, t0
	subw t2, zero, t1
	sw t2, 32(a4)
	lw t1, 0(a5)
	slli a5, t3, 6
	subw t2, zero, t1
	add t1, a1, a5
	slli a5, t4, 5
	sh2add t0, a0, t1
	sw t2, 36(a4)
	lw t3, 0(t0)
	add t0, a1, a5
	subw t2, zero, t3
	sh2add t1, a0, t0
	li t0, 375
	sw t2, 40(a4)
	slli a5, t0, 7
	lw t3, 0(t1)
	subw t2, zero, t3
	sw t2, 44(a4)
	add t2, a1, a5
	sh2add t1, a0, t2
	li t2, 1625
	lw t0, 0(t1)
	slli a5, t2, 5
	subw t3, zero, t0
	sw t3, 48(a4)
	add t3, a1, a5
	sh2add t1, a0, t3
	li t3, 875
	lw t2, 0(t1)
	slli a5, t3, 6
	subw t0, zero, t2
	add t1, a1, a5
	sw t0, 52(a4)
	sh2add t0, a0, t1
	li t1, 1875
	lw t2, 0(t0)
	slli t0, t1, 5
	subw a5, zero, t2
	sw a5, 56(a4)
	add a5, a1, t0
	sh2add t2, a0, a5
	li a5, 992
	lw t1, 0(t2)
	subw t0, zero, t1
	sw t0, 60(a4)
	bge a3, a5, label41
	li a5, 125
	slli a4, a5, 9
	add a1, a1, a4
	j label37
label307:
	ld a1, 112(sp)
	mv s0, zero
	mv a2, zero
label43:
	li a0, 1000
	bge a2, a0, label54
	mv a0, a1
	mv a3, zero
	mv a4, s0
.p2align 2
label48:
	lw t2, 0(a0)
	addiw a3, a3, 64
	lw t1, 4(a0)
	addw t0, a4, t2
	lw t2, 8(a0)
	addw a5, t0, t1
	lw t0, 12(a0)
	addw a4, a5, t2
	lw t2, 16(a0)
	addw t1, a4, t0
	lw a4, 20(a0)
	addw a5, t1, t2
	lw t2, 24(a0)
	addw t0, a5, a4
	lw a5, 28(a0)
	addw t1, t0, t2
	lw t0, 32(a0)
	addw a4, t1, a5
	lw t3, 36(a0)
	addw t2, a4, t0
	lw t1, 40(a0)
	addw a5, t2, t3
	lw t2, 44(a0)
	addw t0, a5, t1
	lw t1, 48(a0)
	addw a4, t0, t2
	lw t2, 52(a0)
	addw a5, a4, t1
	lw t1, 56(a0)
	addw t0, a5, t2
	lw t2, 60(a0)
	addw a4, t0, t1
	lw t1, 64(a0)
	addw a5, a4, t2
	lw t3, 68(a0)
	addw t0, a5, t1
	lw t1, 72(a0)
	addw a4, t0, t3
	lw t0, 76(a0)
	addw t2, a4, t1
	lw a4, 80(a0)
	addw a5, t2, t0
	lw t2, 84(a0)
	addw t1, a5, a4
	lw a5, 88(a0)
	addw t0, t1, t2
	lw t2, 92(a0)
	addw a4, t0, a5
	lw t0, 96(a0)
	addw t1, a4, t2
	lw t2, 100(a0)
	addw a5, t1, t0
	lw t1, 104(a0)
	addw a4, a5, t2
	lw t2, 108(a0)
	addw t0, a4, t1
	lw t3, 112(a0)
	addw a5, t0, t2
	lw t2, 116(a0)
	addw t1, a5, t3
	lw t4, 120(a0)
	addw a4, t1, t2
	lw t3, 124(a0)
	addw t0, a4, t4
	lw t2, 128(a0)
	addw a5, t0, t3
	lw t4, 132(a0)
	addw t1, a5, t2
	lw t3, 136(a0)
	addw a4, t1, t4
	lw t2, 140(a0)
	addw t0, a4, t3
	lw t1, 144(a0)
	addw a5, t0, t2
	lw t2, 148(a0)
	addw a4, a5, t1
	lw t3, 152(a0)
	addw t0, a4, t2
	lw a4, 156(a0)
	addw t1, t0, t3
	lw t3, 160(a0)
	addw a5, t1, a4
	lw t2, 164(a0)
	addw t0, a5, t3
	lw a5, 168(a0)
	addw a4, t0, t2
	lw t2, 172(a0)
	addw t1, a4, a5
	lw a4, 176(a0)
	addw t0, t1, t2
	lw t2, 180(a0)
	addw a5, t0, a4
	lw t0, 184(a0)
	addw t1, a5, t2
	lw a5, 188(a0)
	addw a4, t1, t0
	lw t3, 192(a0)
	addw t2, a4, a5
	lw t1, 196(a0)
	addw t0, t2, t3
	lw t2, 200(a0)
	addw a5, t0, t1
	lw t0, 204(a0)
	addw a4, a5, t2
	lw t2, 208(a0)
	addw t1, a4, t0
	lw t3, 212(a0)
	addw a5, t1, t2
	lw t1, 216(a0)
	addw t0, a5, t3
	lw t2, 220(a0)
	addw a4, t0, t1
	lw t0, 224(a0)
	addw a5, a4, t2
	lw t2, 228(a0)
	addw t1, a5, t0
	lw t3, 232(a0)
	addw a4, t1, t2
	lw t1, 236(a0)
	addw t0, a4, t3
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
	bge a3, t0, label53
	addi a0, a0, 256
	j label48
label53:
	sh2add a0, a3, a1
	addiw a2, a2, 1
	lw t0, 0(a0)
	lw a3, 4(a0)
	addw t1, a4, t0
	lw a4, 8(a0)
	addw a5, t1, a3
	lw t2, 12(a0)
	addw t0, a5, a4
	lw t1, 16(a0)
	addw a3, t0, t2
	lw t0, 20(a0)
	addw a4, a3, t1
	lw t2, 24(a0)
	addw a5, a4, t0
	lw t1, 28(a0)
	addw a3, a5, t2
	lw t0, 32(a0)
	addw a4, a3, t1
	lw t2, 36(a0)
	addw a5, a4, t0
	lw t1, 40(a0)
	addw a3, a5, t2
	lw a5, 44(a0)
	addw t0, a3, t1
	lw t1, 48(a0)
	addw a4, t0, a5
	lw t0, 52(a0)
	addw a3, a4, t1
	lw t1, 56(a0)
	addw a5, a3, t0
	lw t0, 60(a0)
	addw a4, a5, t1
	lw t1, 64(a0)
	addw a3, a4, t0
	lw t0, 68(a0)
	addw a5, a3, t1
	lw t1, 72(a0)
	addw a4, a5, t0
	lw t2, 76(a0)
	addw a3, a4, t1
	lw t1, 80(a0)
	addw t0, a3, t2
	lw a3, 84(a0)
	addw a5, t0, t1
	lw t1, 88(a0)
	addw a4, a5, a3
	lw t2, 92(a0)
	addw t0, a4, t1
	lw t1, 96(a0)
	addw a3, t0, t2
	lw t0, 100(a0)
	addw a5, a3, t1
	lw t1, 104(a0)
	addw a4, a5, t0
	lw t0, 108(a0)
	addw a3, a4, t1
	lw t1, 112(a0)
	addw a5, a3, t0
	lw t0, 116(a0)
	addw a4, a5, t1
	lw t1, 120(a0)
	addw a3, a4, t0
	lw t2, 124(a0)
	addw a5, a3, t1
	lw t1, 128(a0)
	addw a4, a5, t2
	lw t2, 132(a0)
	addw t0, a4, t1
	lw t1, 136(a0)
	addw a3, t0, t2
	lw t0, 140(a0)
	addw a5, a3, t1
	lw t1, 144(a0)
	addw a4, a5, t0
	lw t0, 148(a0)
	addw a3, a4, t1
	lw t1, 152(a0)
	addw a5, a3, t0
	lw a3, 156(a0)
	addw a4, a5, t1
	ld a6, 104(sp)
	addw s0, a4, a3
	add a1, a1, a6
	j label43
label54:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s0
	jal putint
	mv a0, zero
	j label5
label55:
	mv a2, a0
	mv a3, zero
	lui a5, 524288
	addiw a4, a5, -1
.p2align 2
label56:
	lw t1, 0(a2)
	addiw a3, a3, 64
	lw t3, 4(a2)
	min t0, a4, t1
	lw t2, 8(a2)
	min a5, t0, t3
	lw t3, 12(a2)
	min t1, a5, t2
	lw t2, 16(a2)
	min a4, t1, t3
	lw t3, 20(a2)
	min t0, a4, t2
	lw t2, 24(a2)
	min a5, t0, t3
	lw t3, 28(a2)
	min t1, a5, t2
	lw t2, 32(a2)
	min a4, t1, t3
	lw t3, 36(a2)
	min t0, a4, t2
	lw a4, 40(a2)
	min a5, t0, t3
	lw t2, 44(a2)
	min t1, a5, a4
	lw t3, 48(a2)
	min t0, t1, t2
	lw t1, 52(a2)
	min a4, t0, t3
	lw t2, 56(a2)
	min a5, a4, t1
	lw t3, 60(a2)
	min t0, a5, t2
	lw t2, 64(a2)
	min t1, t0, t3
	lw t0, 68(a2)
	min a4, t1, t2
	lw t1, 72(a2)
	min a5, a4, t0
	lw a4, 76(a2)
	min t2, a5, t1
	lw a5, 80(a2)
	min t0, t2, a4
	lw t2, 84(a2)
	min t1, t0, a5
	lw t3, 88(a2)
	min a4, t1, t2
	lw t1, 92(a2)
	min a5, a4, t3
	lw t2, 96(a2)
	min t0, a5, t1
	lw t3, 100(a2)
	min a4, t0, t2
	lw t4, 104(a2)
	min t1, a4, t3
	lw t2, 108(a2)
	min a5, t1, t4
	lw t3, 112(a2)
	min t0, a5, t2
	lw t1, 116(a2)
	min a4, t0, t3
	lw t2, 120(a2)
	min a5, a4, t1
	lw t3, 124(a2)
	min t0, a5, t2
	lw t1, 128(a2)
	min a4, t0, t3
	lw t2, 132(a2)
	min a5, a4, t1
	lw t3, 136(a2)
	min t0, a5, t2
	lw a5, 140(a2)
	min t1, t0, t3
	lw t2, 144(a2)
	min a4, t1, a5
	lw t3, 148(a2)
	min t0, a4, t2
	lw t2, 152(a2)
	min a5, t0, t3
	lw t0, 156(a2)
	min t1, a5, t2
	lw t2, 160(a2)
	min a4, t1, t0
	lw t0, 164(a2)
	min a5, a4, t2
	lw t2, 168(a2)
	min t1, a5, t0
	lw t3, 172(a2)
	min a4, t1, t2
	lw t2, 176(a2)
	min t0, a4, t3
	lw t3, 180(a2)
	min a5, t0, t2
	lw t0, 184(a2)
	min t1, a5, t3
	lw t2, 188(a2)
	min a4, t1, t0
	lw t1, 192(a2)
	min a5, a4, t2
	lw t2, 196(a2)
	min t0, a5, t1
	lw t1, 200(a2)
	min a4, t0, t2
	lw t2, 204(a2)
	min a5, a4, t1
	lw t3, 208(a2)
	min t0, a5, t2
	lw t2, 212(a2)
	min t1, t0, t3
	lw t3, 216(a2)
	min a4, t1, t2
	lw t2, 220(a2)
	min a5, a4, t3
	lw t3, 224(a2)
	min t0, a5, t2
	lw t2, 228(a2)
	min t1, t0, t3
	lw t3, 232(a2)
	min a4, t1, t2
	lw t1, 236(a2)
	min a5, a4, t3
	lw t2, 240(a2)
	min t0, a5, t1
	lw t3, 244(a2)
	min a4, t0, t2
	lw t1, 248(a2)
	min a5, a4, t3
	lw t2, 252(a2)
	min t0, a5, t1
	li a5, 960
	min a4, t0, t2
	bge a3, a5, label61
	addi a2, a2, 256
	j label56
label61:
	sh2add a5, a3, a0
	lw t2, 0(a5)
	lw t1, 4(a5)
	min a2, a4, t2
	lw t2, 8(a5)
	min t0, a2, t1
	lw a4, 12(a5)
	min a3, t0, t2
	lw t1, 16(a5)
	min a2, a3, a4
	lw a3, 20(a5)
	min t0, a2, t1
	lw t1, 24(a5)
	min a4, t0, a3
	lw t0, 28(a5)
	min a2, a4, t1
	lw t2, 32(a5)
	min a3, a2, t0
	lw t1, 36(a5)
	min a4, a3, t2
	lw a3, 40(a5)
	min t0, a4, t1
	lw t1, 44(a5)
	min a2, t0, a3
	lw t2, 48(a5)
	min a4, a2, t1
	lw t1, 52(a5)
	min a3, a4, t2
	lw a4, 56(a5)
	min t0, a3, t1
	lw t1, 60(a5)
	min a2, t0, a4
	lw t0, 64(a5)
	min a3, a2, t1
	lw t1, 68(a5)
	min a4, a3, t0
	lw t2, 72(a5)
	min a2, a4, t1
	lw t0, 76(a5)
	min a3, a2, t2
	lw t2, 80(a5)
	min a4, a3, t0
	lw t1, 84(a5)
	min a2, a4, t2
	lw t2, 88(a5)
	min a3, a2, t1
	lw t1, 92(a5)
	min t0, a3, t2
	lw a3, 96(a5)
	min a4, t0, t1
	lw t1, 100(a5)
	min a2, a4, a3
	lw t2, 104(a5)
	min t0, a2, t1
	lw t1, 108(a5)
	min a3, t0, t2
	lw t2, 112(a5)
	min a4, a3, t1
	lw t0, 116(a5)
	min a2, a4, t2
	lw t1, 120(a5)
	min a3, a2, t0
	lw t2, 124(a5)
	min a4, a3, t1
	lw t1, 128(a5)
	min a2, a4, t2
	lw a4, 132(a5)
	min t0, a2, t1
	lw t1, 136(a5)
	min a3, t0, a4
	lw t0, 140(a5)
	min a2, a3, t1
	lw t1, 144(a5)
	min a4, a2, t0
	lw t0, 148(a5)
	min a3, a4, t1
	lw t1, 152(a5)
	min a2, a3, t0
	lw t0, 156(a5)
	min a4, a2, t1
	mv a5, zero
	mv a2, a0
	min a3, a4, t0
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
