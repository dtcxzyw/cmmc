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
	addi sp, sp, -112
pcrel2135:
	auipc a1, %pcrel_hi(a)
pcrel2136:
	auipc a0, %pcrel_hi(c)
	sd ra, 0(sp)
	addi a5, a0, %pcrel_lo(pcrel2136)
	sd s10, 8(sp)
pcrel2137:
	auipc a0, %pcrel_hi(b)
	addi s10, a1, %pcrel_lo(pcrel2135)
	sd s9, 16(sp)
	addi s9, a0, %pcrel_lo(pcrel2137)
	sd s11, 24(sp)
	li a0, 125
	mv s11, zero
	sd s0, 32(sp)
	slli s0, a0, 5
	sd s5, 40(sp)
	li a0, 375
	sd s1, 48(sp)
	slli s1, s0, 1
	sd s6, 56(sp)
	sd s2, 64(sp)
	slli s2, a0, 5
	sd s3, 72(sp)
	slli s5, s2, 1
	li a0, 625
	slli s3, s1, 1
	sd s4, 80(sp)
	slli s4, a0, 5
	sd s7, 88(sp)
	li a0, 875
	slli s7, s3, 1
	slli s6, a0, 5
	sd s8, 96(sp)
	li a0, 1125
	sd a5, 104(sp)
	slli s8, a0, 5
label2:
	li a0, 1000
	bge s11, a0, label8
	mul a1, s11, s0
	add a0, s10, a1
	jal getarray
	li a1, 1000
	beq a0, a1, label5
label6:
	ld ra, 0(sp)
	ld s10, 8(sp)
	ld s9, 16(sp)
	ld s11, 24(sp)
	ld s0, 32(sp)
	ld s5, 40(sp)
	ld s1, 48(sp)
	ld s6, 56(sp)
	ld s2, 64(sp)
	ld s3, 72(sp)
	ld s4, 80(sp)
	ld s7, 88(sp)
	ld s8, 96(sp)
	addi sp, sp, 112
	ret
label5:
	addiw s11, s11, 1
	j label2
label8:
	li a0, 23
	jal _sysy_starttime
	mv a0, zero
label9:
	li a1, 1000
	bge a0, a1, label67
	mul a1, a0, s0
	mv a4, zero
	add a3, s9, a1
.p2align 2
label45:
	mul a2, a4, s0
	li t2, 625
	add a1, s10, a2
	sh2add a2, a4, a3
	sh2add t0, a0, a1
	addiw a4, a4, 64
	lw a5, 0(t0)
	sw a5, 0(a2)
	add a5, a1, s0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	add t1, a1, s1
	sh2add a5, a0, t1
	sw t0, 4(a2)
	add t1, a1, s2
	lw t0, 0(a5)
	sh2add a5, a0, t1
	sw t0, 8(a2)
	lw t0, 0(a5)
	add a5, a1, s3
	sh2add t1, a0, a5
	sw t0, 12(a2)
	lw t0, 0(t1)
	add t1, a1, s4
	sw t0, 16(a2)
	sh2add t0, a0, t1
	add t1, a1, s5
	lw a5, 0(t0)
	sh2add t0, a0, t1
	add t1, a1, s6
	sw a5, 20(a2)
	lw a5, 0(t0)
	sw a5, 24(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	add a5, a1, s7
	sw t0, 28(a2)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	add t0, a1, s8
	sh2add a5, a0, t0
	sw t1, 32(a2)
	slli t0, t2, 6
	lw t1, 0(a5)
	li t2, 1875
	add a5, a1, t0
	sw t1, 36(a2)
	sh2add t1, a0, a5
	li a5, 1375
	lw t0, 0(t1)
	slli t1, a5, 5
	sw t0, 40(a2)
	add t0, a1, t1
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 375
	sw t1, 44(a2)
	slli t1, a5, 7
	add t0, a1, t1
	sh2add a5, a0, t0
	lw t1, 0(a5)
	li a5, 1625
	sw t1, 48(a2)
	slli t1, a5, 5
	add t0, a1, t1
	sh2add a5, a0, t0
	li t0, 875
	lw t1, 0(a5)
	sw t1, 52(a2)
	slli t1, t0, 6
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	slli t0, t2, 5
	li t2, 125
	add a5, a1, t0
	sw t1, 56(a2)
	sh2add t1, a0, a5
	slli a5, t2, 9
	lw t0, 0(t1)
	li t2, 1125
	add t1, a1, a5
	sw t0, 60(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	lui t0, 17
	addiw t1, t0, -1632
	sw a5, 64(a2)
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	slli t0, t2, 6
	li t2, 625
	add a5, a1, t0
	sw t1, 68(a2)
	sh2add t1, a0, a5
	lw t0, 0(t1)
	lui t1, 19
	addiw a5, t1, -1824
	sw t0, 72(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	slli t0, t2, 7
	lw a5, 0(t1)
	li t2, 1375
	add t1, a1, t0
	sw a5, 76(a2)
	sh2add a5, a0, t1
	lui t1, 21
	lw t0, 0(a5)
	addiw a5, t1, -2016
	sw t0, 80(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	slli t1, t2, 6
	li t2, 125
	add t0, a1, t1
	sw a5, 84(a2)
	sh2add a5, a0, t0
	lui t0, 22
	lw t1, 0(a5)
	addiw a5, t0, 1888
	sw t1, 88(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	li t1, 375
	lw a5, 0(t0)
	sw a5, 92(a2)
	slli a5, t1, 8
	add t0, a1, a5
	sh2add t1, a0, t0
	lui t0, 24
	lw a5, 0(t1)
	sw a5, 96(a2)
	addiw a5, t0, 1696
	add t1, a1, a5
	sh2add t0, a0, t1
	li t1, 1625
	lw a5, 0(t0)
	sw a5, 100(a2)
	slli a5, t1, 6
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	lui t1, 26
	addiw t0, t1, 1504
	sw a5, 104(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	li a5, 875
	lw t0, 0(t1)
	sw t0, 108(a2)
	slli t0, a5, 7
	add t1, a1, t0
	sh2add a5, a0, t1
	lui t1, 28
	lw t0, 0(a5)
	addiw a5, t1, 1312
	sw t0, 112(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 1875
	slli t0, t1, 6
	sw a5, 116(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	lui t1, 30
	addiw a5, t1, 1120
	sw t0, 120(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	slli t1, t2, 10
	lui t2, 32
	add t0, a1, t1
	sw a5, 124(a2)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	addiw a5, t2, 928
	lui t2, 33
	add t0, a1, a5
	sw t1, 128(a2)
	sh2add t1, a0, t0
	addiw t0, t2, 832
	lw a5, 0(t1)
	lui t2, 38
	add t1, a1, t0
	sw a5, 132(a2)
	sh2add a5, a0, t1
	lui t1, 34
	lw t0, 0(a5)
	addiw a5, t1, 736
	sw t0, 136(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	li t1, 1125
	slli t0, t1, 7
	sw a5, 140(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	lui t1, 36
	addiw a5, t1, 544
	sw t0, 144(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	lui t1, 37
	addiw t0, t1, 448
	sw a5, 148(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	addiw t1, t2, 352
	lui t2, 41
	add a5, a1, t1
	sw t0, 152(a2)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	li t0, 625
	slli a5, t0, 8
	sw t1, 156(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	lui t1, 40
	lw a5, 0(t0)
	sw a5, 160(a2)
	addiw a5, t1, 160
	add t0, a1, a5
	sh2add t1, a0, t0
	addiw t0, t2, 64
	lw a5, 0(t1)
	lui t2, 48
	add t1, a1, t0
	sw a5, 164(a2)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	lui a5, 42
	addiw t1, a5, -32
	sw t0, 168(a2)
	add t0, a1, t1
	sh2add a5, a0, t0
	li t0, 1375
	lw t1, 0(a5)
	sw t1, 172(a2)
	slli t1, t0, 7
	add a5, a1, t1
	sh2add t0, a0, a5
	lw t1, 0(t0)
	lui t0, 44
	addiw a5, t0, -224
	sw t1, 176(a2)
	add t1, a1, a5
	sh2add t0, a0, t1
	lui t1, 45
	lw a5, 0(t0)
	sw a5, 180(a2)
	addiw a5, t1, -320
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	lui t1, 46
	addiw t0, t1, -416
	sw a5, 184(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 375
	sw t0, 188(a2)
	slli t0, t1, 9
	add a5, a1, t0
	sh2add t1, a0, a5
	addiw a5, t2, -608
	lw t0, 0(t1)
	lui t2, 53
	add t1, a1, a5
	sw t0, 192(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	lui t0, 49
	sw a5, 196(a2)
	addiw a5, t0, -704
	add t1, a1, a5
	sh2add t0, a0, t1
	lw a5, 0(t0)
	lui t0, 50
	sw a5, 200(a2)
	addiw a5, t0, -800
	add t1, a1, a5
	sh2add t0, a0, t1
	li t1, 1625
	lw a5, 0(t0)
	sw a5, 204(a2)
	slli a5, t1, 7
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	lui t1, 52
	addiw t0, t1, -992
	sw a5, 208(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	addiw a5, t2, -1088
	lw t0, 0(t1)
	lui t2, 54
	add t1, a1, a5
	sw t0, 212(a2)
	sh2add t0, a0, t1
	lw a5, 0(t0)
	addiw t0, t2, -1184
	lui t2, 56
	add t1, a1, t0
	sw a5, 216(a2)
	sh2add a5, a0, t1
	li t1, 875
	lw t0, 0(a5)
	slli a5, t1, 8
	sw t0, 220(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	addiw t0, t2, -1376
	lw a5, 0(t1)
	lui t2, 62
	add t1, a1, t0
	sw a5, 224(a2)
	sh2add a5, a0, t1
	lui t1, 57
	lw t0, 0(a5)
	addiw a5, t1, -1472
	sw t0, 228(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw a5, 0(t1)
	lui t1, 58
	sw a5, 232(a2)
	addiw a5, t1, -1568
	add t0, a1, a5
	sh2add t1, a0, t0
	li t0, 1875
	lw a5, 0(t1)
	sw a5, 236(a2)
	slli a5, t0, 7
	add t1, a1, a5
	sh2add t0, a0, t1
	lui t1, 60
	lw a5, 0(t0)
	sw a5, 240(a2)
	addiw a5, t1, -1760
	add t0, a1, a5
	sh2add t1, a0, t0
	lui t0, 61
	lw a5, 0(t1)
	sw a5, 244(a2)
	addiw a5, t0, -1856
	add t1, a1, a5
	sh2add t0, a0, t1
	addiw t1, t2, -1952
	lw a5, 0(t0)
	add t0, a1, t1
	sw a5, 248(a2)
	sh2add a5, a0, t0
	lw a1, 0(a5)
	sw a1, 252(a2)
	li a1, 960
	blt a4, a1, label45
	mul a2, a4, s0
	add a1, s10, a2
	sh2add a2, a4, a3
	sh2add t0, a0, a1
	lw a5, 0(t0)
	sw a5, 0(a2)
	add a5, a1, s0
	sh2add a3, a0, a5
	add a5, a1, s1
	lw a4, 0(a3)
	sw a4, 4(a2)
	sh2add a4, a0, a5
	add a5, a1, s2
	lw a3, 0(a4)
	sh2add a4, a0, a5
	sw a3, 8(a2)
	lw a3, 0(a4)
	add a4, a1, s3
	sh2add a5, a0, a4
	sw a3, 12(a2)
	add a4, a1, s4
	lw a3, 0(a5)
	add a5, a1, s5
	sw a3, 16(a2)
	sh2add a3, a0, a4
	sh2add a4, a0, a5
	lw t0, 0(a3)
	sw t0, 20(a2)
	li t0, 875
	lw a3, 0(a4)
	add a4, a1, s6
	sh2add a5, a0, a4
	sw a3, 24(a2)
	add a4, a1, s7
	lw a3, 0(a5)
	sw a3, 28(a2)
	sh2add a3, a0, a4
	add a4, a1, s8
	lw a5, 0(a3)
	sh2add a3, a0, a4
	li a4, 625
	sw a5, 32(a2)
	lw a5, 0(a3)
	slli a3, a4, 6
	sw a5, 36(a2)
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1375
	sw a3, 40(a2)
	slli a3, a4, 5
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 375
	sw a3, 44(a2)
	slli a3, a4, 7
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1625
	sw a3, 48(a2)
	slli a3, a4, 5
	add a5, a1, a3
	sh2add a4, a0, a5
	slli a5, t0, 6
	lw a3, 0(a4)
	add a4, a1, a5
	sw a3, 52(a2)
	sh2add a3, a0, a4
	li a4, 1875
	lw a5, 0(a3)
	slli a3, a4, 5
	sw a5, 56(a2)
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 125
	sw a3, 60(a2)
	slli a3, a4, 9
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 17
	sw a3, 64(a2)
	addiw a3, a4, -1632
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1125
	sw a3, 68(a2)
	slli a3, a4, 6
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 19
	sw a3, 72(a2)
	addiw a3, a4, -1824
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 625
	sw a3, 76(a2)
	slli a3, a4, 7
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 21
	sw a3, 80(a2)
	addiw a3, a4, -2016
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1375
	sw a3, 84(a2)
	slli a3, a4, 6
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 22
	sw a3, 88(a2)
	addiw a3, a4, 1888
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 375
	sw a3, 92(a2)
	slli a3, a4, 8
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 24
	sw a3, 96(a2)
	addiw a3, a4, 1696
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1625
	sw a3, 100(a2)
	slli a3, a4, 6
	add a5, a1, a3
	sh2add a4, a0, a5
	lui a5, 26
	lw a3, 0(a4)
	addiw a4, a5, 1504
	sw a3, 104(a2)
	add a3, a1, a4
	sh2add a5, a0, a3
	slli a3, t0, 7
	lw a4, 0(a5)
	lui t0, 32
	add a5, a1, a3
	sw a4, 108(a2)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 28
	sw a3, 112(a2)
	addiw a3, a4, 1312
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1875
	sw a3, 116(a2)
	slli a3, a4, 6
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 30
	sw a3, 120(a2)
	addiw a3, a4, 1120
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 125
	sw a3, 124(a2)
	slli a3, a4, 10
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	addiw a4, t0, 928
	lui t0, 33
	add a5, a1, a4
	sw a3, 128(a2)
	sh2add a3, a0, a5
	lw a4, 0(a3)
	addiw a3, t0, 832
	lui t0, 37
	add a5, a1, a3
	sw a4, 132(a2)
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 34
	sw a3, 136(a2)
	addiw a3, a4, 736
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	li a4, 1125
	sw a3, 140(a2)
	slli a3, a4, 7
	add a5, a1, a3
	sh2add a4, a0, a5
	lw a3, 0(a4)
	lui a4, 36
	sw a3, 144(a2)
	addiw a3, a4, 544
	add a5, a1, a3
	sh2add a4, a0, a5
	addiw a5, t0, 448
	lw a3, 0(a4)
	add a4, a1, a5
	sw a3, 148(a2)
	sh2add a3, a0, a4
	lui a4, 38
	lw a5, 0(a3)
	addiw a3, a4, 352
	add a1, a1, a3
	sw a5, 152(a2)
	sh2add a4, a0, a1
	addiw a0, a0, 1
	lw a3, 0(a4)
	sw a3, 156(a2)
	j label9
label67:
	mv a2, zero
label11:
	mul a0, a2, s0
	ld a5, 104(sp)
	li a4, 1000
	add a1, s10, a0
	add a3, a5, a0
	bge a2, a4, label75
	mv a0, zero
	blt zero, a4, label80
label79:
	addiw a2, a2, 1
	j label11
.p2align 2
label80:
	mv a4, zero
	mv a5, zero
.p2align 2
label16:
	mul t0, a4, s0
	add t1, s9, t0
	sh2add t3, a0, t1
	add t6, t1, s0
	sh2add t0, a4, a1
	sh2add t4, a0, t6
	addiw a4, a4, 16
	lw t2, 0(t0)
	lw t3, 0(t3)
	lw t5, 4(t0)
	lw t6, 0(t4)
	mulw t3, t2, t3
	mulw t4, t5, t6
	li t6, 1625
	add t5, t1, s1
	addw t2, t4, t3
	lw t4, 8(t0)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 12(t0)
	add t5, t1, s2
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 16(t0)
	add t5, t1, s3
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 20(t0)
	add t5, t1, s4
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	lw t4, 24(t0)
	add t5, t1, s5
	addw t2, t2, t3
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, s6
	addw t2, t2, t3
	sh2add t4, a0, t5
	lw t3, 28(t0)
	lw t5, 0(t4)
	mulw t4, t3, t5
	add t5, t1, s7
	addw t2, t2, t4
	sh2add t3, a0, t5
	lw t4, 32(t0)
	lw t5, 0(t3)
	mulw t3, t4, t5
	add t5, t1, s8
	addw t2, t2, t3
	lw t4, 36(t0)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	li t4, 625
	addw t2, t2, t3
	slli t3, t4, 6
	add t5, t1, t3
	lw t3, 40(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	li t3, 1375
	addw t2, t2, t4
	slli t4, t3, 5
	add t5, t1, t4
	lw t4, 44(t0)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	mulw t3, t4, t5
	li t4, 375
	addw t2, t2, t3
	slli t3, t4, 7
	add t5, t1, t3
	lw t3, 48(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	slli t3, t6, 5
	addw t2, t2, t4
	add t5, t1, t3
	lw t3, 52(t0)
	sh2add t4, a0, t5
	lw t5, 0(t4)
	mulw t4, t3, t5
	li t3, 875
	addw t2, t2, t4
	slli t4, t3, 6
	add t5, t1, t4
	lw t4, 56(t0)
	sh2add t3, a0, t5
	lw t5, 0(t3)
	lw t0, 60(t0)
	mulw t3, t4, t5
	li t5, 1875
	addw t2, t2, t3
	slli t4, t5, 5
	add t3, t1, t4
	sh2add t1, a0, t3
	lw t3, 0(t1)
	mulw t1, t0, t3
	addw t0, t2, t1
	addw a5, a5, t0
	li t0, 992
	blt a4, t0, label16
	mul t1, a4, s0
	sh2add a4, a4, a1
	add t0, s9, t1
	add t5, t0, s0
	sh2add t2, a0, t0
	lw t1, 0(a4)
	sh2add t3, a0, t5
	lw t2, 0(t2)
	lw t4, 4(a4)
	lw t5, 0(t3)
	mulw t1, t1, t2
	addw t2, a5, t1
	mulw t3, t4, t5
	addw a5, t3, t2
	lw t2, 8(a4)
	add t3, t0, s1
	sh2add t1, a0, t3
	lw t3, 0(t1)
	mulw t1, t2, t3
	add t3, t0, s2
	addw a5, a5, t1
	sh2add t2, a0, t3
	lw t1, 12(a4)
	lw t3, 0(t2)
	mulw t2, t1, t3
	add t3, t0, s3
	addw a5, a5, t2
	sh2add t1, a0, t3
	lw t2, 16(a4)
	lw t3, 0(t1)
	mulw t1, t2, t3
	add t3, t0, s4
	addw a5, a5, t1
	sh2add t2, a0, t3
	lw t1, 20(a4)
	lw t3, 0(t2)
	mulw t2, t1, t3
	lw t1, 24(a4)
	add t3, t0, s5
	addw a5, a5, t2
	sh2add t2, a0, t3
	lw t3, 0(t2)
	lw a4, 28(a4)
	mulw t2, t1, t3
	add t1, t0, s6
	addw a5, a5, t2
	sh2add t0, a0, t1
	lw t1, 0(t0)
	mulw t0, a4, t1
	addw a4, a5, t0
	sh2add a5, a0, a3
	addiw a0, a0, 1
	sw a4, 0(a5)
	li a4, 1000
	blt a0, a4, label80
	j label79
label75:
	mv a0, zero
label20:
	mul a2, a0, s0
	ld a5, 104(sp)
	add a1, a5, a2
	li a2, 1000
	blt a0, a2, label291
	j label290
label40:
	sh2add a3, a3, a1
	lw a5, 0(a3)
	lw t1, 4(a3)
	min a4, a2, a5
	lw t0, 8(a3)
	min a2, a4, t1
	lw a5, 12(a3)
	min a4, a2, t0
	lw t0, 16(a3)
	min a2, a4, a5
	lw a5, 20(a3)
	min a4, a2, t0
	lw t0, 24(a3)
	min a2, a4, a5
	lw a5, 28(a3)
	min a4, a2, t0
	lw t0, 32(a3)
	min a2, a4, a5
	lw a5, 36(a3)
	min a4, a2, t0
	lw t0, 40(a3)
	min a2, a4, a5
	min a4, a2, t0
	lw a2, 44(a3)
	min a5, a4, a2
	lw a4, 48(a3)
	min a2, a5, a4
	lw a5, 52(a3)
	lw t0, 56(a3)
	min a4, a2, a5
	lw a5, 60(a3)
	min a2, a4, t0
	lw t0, 64(a3)
	min a4, a2, a5
	min a2, a4, t0
	lw a4, 68(a3)
	min a5, a2, a4
	lw a2, 72(a3)
	min a4, a5, a2
	lw a5, 76(a3)
	lw t0, 80(a3)
	min a2, a4, a5
	lw a5, 84(a3)
	min a4, a2, t0
	lw t0, 88(a3)
	min a2, a4, a5
	lw a5, 92(a3)
	min a4, a2, t0
	lw t0, 96(a3)
	min a2, a4, a5
	lw a5, 100(a3)
	min a4, a2, t0
	lw t0, 104(a3)
	min a2, a4, a5
	lw a5, 108(a3)
	min a4, a2, t0
	lw t0, 112(a3)
	min a2, a4, a5
	min a4, a2, t0
	lw a2, 116(a3)
	min a5, a4, a2
	lw a4, 120(a3)
	min a2, a5, a4
	lw a5, 124(a3)
	min a4, a2, a5
	lw a2, 128(a3)
	min a5, a4, a2
	lw a4, 132(a3)
	lw t0, 136(a3)
	min a2, a5, a4
	lw a5, 140(a3)
	min a4, a2, t0
	lw t0, 144(a3)
	min a2, a4, a5
	lw a5, 148(a3)
	min a4, a2, t0
	lw t0, 152(a3)
	min a2, a4, a5
	lw a3, 156(a3)
	mv a5, zero
	min a4, a2, t0
	min a2, a4, a3
.p2align 2
label41:
	sh2add a3, a5, a1
	slli t0, a2, 32
	addiw a5, a5, 64
	add.uw a4, a2, t0
	sd a4, 0(a3)
	sd a4, 8(a3)
	sd a4, 16(a3)
	sd a4, 24(a3)
	sd a4, 32(a3)
	sd a4, 40(a3)
	sd a4, 48(a3)
	sd a4, 56(a3)
	sd a4, 64(a3)
	sd a4, 72(a3)
	sd a4, 80(a3)
	sd a4, 88(a3)
	sd a4, 96(a3)
	sd a4, 104(a3)
	sd a4, 112(a3)
	sd a4, 120(a3)
	sd a4, 128(a3)
	sd a4, 136(a3)
	sd a4, 144(a3)
	sd a4, 152(a3)
	sd a4, 160(a3)
	sd a4, 168(a3)
	sd a4, 176(a3)
	sd a4, 184(a3)
	sd a4, 192(a3)
	sd a4, 200(a3)
	sd a4, 208(a3)
	sd a4, 216(a3)
	sd a4, 224(a3)
	sd a4, 232(a3)
	sd a4, 240(a3)
	sd a4, 248(a3)
	li a3, 960
	blt a5, a3, label41
	sh2add a1, a5, a1
	addiw a0, a0, 1
	sw a2, 0(a1)
	sw a2, 4(a1)
	sw a2, 8(a1)
	sw a2, 12(a1)
	sw a2, 16(a1)
	sw a2, 20(a1)
	sw a2, 24(a1)
	sw a2, 28(a1)
	sw a2, 32(a1)
	sw a2, 36(a1)
	sw a2, 40(a1)
	sw a2, 44(a1)
	sw a2, 48(a1)
	sw a2, 52(a1)
	sw a2, 56(a1)
	sw a2, 60(a1)
	sw a2, 64(a1)
	sw a2, 68(a1)
	sw a2, 72(a1)
	sw a2, 76(a1)
	sw a2, 80(a1)
	sw a2, 84(a1)
	sw a2, 88(a1)
	sw a2, 92(a1)
	sw a2, 96(a1)
	sw a2, 100(a1)
	sw a2, 104(a1)
	sw a2, 108(a1)
	sw a2, 112(a1)
	sw a2, 116(a1)
	sw a2, 120(a1)
	sw a2, 124(a1)
	sw a2, 128(a1)
	sw a2, 132(a1)
	sw a2, 136(a1)
	sw a2, 140(a1)
	sw a2, 144(a1)
	sw a2, 148(a1)
	sw a2, 152(a1)
	sw a2, 156(a1)
	j label20
label291:
	mv a3, zero
	lui a2, 524288
	addiw a4, a2, -1
.p2align 2
label37:
	sh2add a2, a3, a1
	addiw a3, a3, 64
	lw a5, 0(a2)
	lw t0, 4(a2)
	min a4, a4, a5
	lw t1, 8(a2)
	min a5, a4, t0
	lw t0, 12(a2)
	min a4, a5, t1
	lw t1, 16(a2)
	min a5, a4, t0
	lw t0, 20(a2)
	min a4, a5, t1
	lw t1, 24(a2)
	min a5, a4, t0
	lw t0, 28(a2)
	min a4, a5, t1
	lw t1, 32(a2)
	min a5, a4, t0
	lw t0, 36(a2)
	min a4, a5, t1
	lw t1, 40(a2)
	min a5, a4, t0
	lw t0, 44(a2)
	min a4, a5, t1
	lw t1, 48(a2)
	min a5, a4, t0
	lw t0, 52(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 56(a2)
	min t0, a5, a4
	lw a5, 60(a2)
	min a4, t0, a5
	lw t0, 64(a2)
	lw t1, 68(a2)
	min a5, a4, t0
	lw t0, 72(a2)
	min a4, a5, t1
	lw t1, 76(a2)
	min a5, a4, t0
	lw t0, 80(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 84(a2)
	min t0, a5, a4
	lw a5, 88(a2)
	min a4, t0, a5
	lw t0, 92(a2)
	lw t1, 96(a2)
	min a5, a4, t0
	lw t0, 100(a2)
	min a4, a5, t1
	lw t1, 104(a2)
	min a5, a4, t0
	lw t0, 108(a2)
	min a4, a5, t1
	lw t1, 112(a2)
	min a5, a4, t0
	lw t0, 116(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 120(a2)
	min t0, a5, a4
	lw a5, 124(a2)
	min a4, t0, a5
	lw t0, 128(a2)
	lw t1, 132(a2)
	min a5, a4, t0
	lw t0, 136(a2)
	min a4, a5, t1
	lw t1, 140(a2)
	min a5, a4, t0
	lw t0, 144(a2)
	min a4, a5, t1
	min a5, a4, t0
	lw a4, 148(a2)
	min t0, a5, a4
	lw a5, 152(a2)
	min a4, t0, a5
	lw t0, 156(a2)
	min a5, a4, t0
	lw a4, 160(a2)
	min t0, a5, a4
	lw a5, 164(a2)
	lw t1, 168(a2)
	min a4, t0, a5
	lw t0, 172(a2)
	min a5, a4, t1
	min a4, a5, t0
	lw a5, 176(a2)
	min t0, a4, a5
	lw a4, 180(a2)
	min a5, t0, a4
	lw t0, 184(a2)
	lw t1, 188(a2)
	min a4, a5, t0
	lw t0, 192(a2)
	min a5, a4, t1
	lw t1, 196(a2)
	min a4, a5, t0
	min a5, a4, t1
	lw a4, 200(a2)
	min t0, a5, a4
	lw a5, 204(a2)
	lw t1, 208(a2)
	min a4, t0, a5
	min t0, a4, t1
	lw a4, 212(a2)
	min a5, t0, a4
	lw t0, 216(a2)
	lw t1, 220(a2)
	min a4, a5, t0
	lw t0, 224(a2)
	min a5, a4, t1
	lw t1, 228(a2)
	min a4, a5, t0
	lw t2, 232(a2)
	min a5, a4, t1
	lw t0, 236(a2)
	min a4, a5, t2
	lw t1, 240(a2)
	min a5, a4, t0
	lw t0, 244(a2)
	min a4, a5, t1
	lw t1, 248(a2)
	min a5, a4, t0
	min a4, a5, t1
	lw a5, 252(a2)
	min a2, a4, a5
	li a4, 960
	bge a3, a4, label40
	mv a4, a2
	j label37
label290:
	mv a0, zero
label22:
	li a1, 1000
	bge a0, a1, label294
	mul a2, a0, s0
	ld a5, 104(sp)
	add a1, a5, a2
	mv a2, zero
.p2align 2
label34:
	mul a3, a2, s0
	ld a5, 104(sp)
	add a4, a5, a3
	sh2add a3, a0, a4
	add t1, a4, s0
	lw t0, 0(a3)
	sh2add a3, a2, a1
	subw a5, zero, t0
	addiw a2, a2, 16
	sw a5, 0(a3)
	sh2add a5, a0, t1
	lw t0, 0(a5)
	add a5, a4, s1
	subw t1, zero, t0
	sh2add t0, a0, a5
	add a5, a4, s2
	sw t1, 4(a3)
	lw t1, 0(t0)
	sh2add t0, a0, a5
	subw t2, zero, t1
	sw t2, 8(a3)
	add t2, a4, s5
	lw t1, 0(t0)
	add t0, a4, s3
	subw a5, zero, t1
	sw a5, 12(a3)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	add a5, a4, s4
	subw t0, zero, t1
	sw t0, 16(a3)
	sh2add t0, a0, a5
	lw t1, 0(t0)
	sh2add t0, a0, t2
	subw a5, zero, t1
	add t2, a4, s7
	sw a5, 20(a3)
	lw t1, 0(t0)
	add t0, a4, s6
	subw a5, zero, t1
	sw a5, 24(a3)
	sh2add a5, a0, t0
	lw t1, 0(a5)
	subw t0, zero, t1
	sh2add t1, a0, t2
	sw t0, 28(a3)
	lw a5, 0(t1)
	subw t0, zero, a5
	add a5, a4, s8
	sh2add t1, a0, a5
	sw t0, 32(a3)
	lw t0, 0(t1)
	li t1, 625
	subw a5, zero, t0
	slli t0, t1, 6
	sw a5, 36(a3)
	add a5, a4, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 1375
	subw a5, zero, t0
	slli t0, t1, 5
	sw a5, 40(a3)
	add a5, a4, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	li t1, 375
	subw a5, zero, t0
	slli t0, t1, 7
	add t2, a4, t0
	sw a5, 44(a3)
	sh2add a5, a0, t2
	lw t1, 0(a5)
	subw t0, zero, t1
	li t1, 1625
	sw t0, 48(a3)
	slli t0, t1, 5
	add a5, a4, t0
	sh2add t1, a0, a5
	lw t0, 0(t1)
	subw a5, zero, t0
	li t0, 875
	sw a5, 52(a3)
	slli a5, t0, 6
	add t1, a4, a5
	sh2add t0, a0, t1
	lw t2, 0(t0)
	li t0, 1875
	subw a5, zero, t2
	slli t1, t0, 5
	sw a5, 56(a3)
	add a5, a4, t1
	sh2add t0, a0, a5
	lw a4, 0(t0)
	subw a5, zero, a4
	sw a5, 60(a3)
	li a3, 992
	blt a2, a3, label34
	mul a4, a2, s0
	ld a5, 104(sp)
	sh2add a1, a2, a1
	add a3, a5, a4
	add a2, a3, s0
	sh2add t0, a0, a3
	lw a5, 0(t0)
	add t0, a3, s3
	subw a4, zero, a5
	sw a4, 0(a1)
	sh2add a4, a0, a2
	lw a5, 0(a4)
	add a4, a3, s1
	subw a2, zero, a5
	sw a2, 4(a1)
	sh2add a2, a0, a4
	lw a5, 0(a2)
	add a2, a3, s2
	subw a4, zero, a5
	sh2add a5, a0, a2
	sw a4, 8(a1)
	lw a4, 0(a5)
	sh2add a5, a0, t0
	subw a2, zero, a4
	sw a2, 12(a1)
	lw a4, 0(a5)
	subw a2, zero, a4
	add a4, a3, s4
	sw a2, 16(a1)
	sh2add a2, a0, a4
	lw a5, 0(a2)
	add a2, a3, s5
	subw a4, zero, a5
	add a3, a3, s6
	sh2add a5, a0, a2
	sw a4, 20(a1)
	lw a4, 0(a5)
	subw a2, zero, a4
	sw a2, 24(a1)
	sh2add a2, a0, a3
	addiw a0, a0, 1
	lw a4, 0(a2)
	subw a3, zero, a4
	sw a3, 28(a1)
	j label22
label294:
	mv s1, zero
	mv a1, zero
label24:
	li a0, 1000
	bge a1, a0, label27
	mul a3, a1, s0
	ld a5, 104(sp)
	mv a4, s1
	add a2, a5, a3
	mv a3, zero
	j label29
label32:
	sh2add a2, a3, a2
	addiw a1, a1, 1
	lw a3, 0(a2)
	lw a5, 4(a2)
	addw a0, a0, a3
	lw a4, 8(a2)
	addw a3, a0, a5
	lw a5, 12(a2)
	addw a0, a3, a4
	lw a4, 16(a2)
	addw a3, a0, a5
	lw a5, 20(a2)
	addw a0, a3, a4
	lw a4, 24(a2)
	addw a3, a0, a5
	lw a5, 28(a2)
	addw a0, a3, a4
	lw a4, 32(a2)
	addw a3, a0, a5
	lw a5, 36(a2)
	addw a0, a3, a4
	lw a4, 40(a2)
	addw a3, a0, a5
	lw a5, 44(a2)
	addw a0, a3, a4
	lw a4, 48(a2)
	addw a3, a0, a5
	lw a5, 52(a2)
	addw a0, a3, a4
	lw a4, 56(a2)
	addw a3, a0, a5
	lw a5, 60(a2)
	addw a0, a3, a4
	lw a4, 64(a2)
	addw a3, a0, a5
	lw t0, 68(a2)
	addw a0, a3, a4
	lw a5, 72(a2)
	addw a3, a0, t0
	lw a4, 76(a2)
	addw a0, a3, a5
	lw a5, 80(a2)
	addw a3, a0, a4
	lw a4, 84(a2)
	addw a0, a3, a5
	addw a3, a0, a4
	lw a0, 88(a2)
	addw a4, a3, a0
	lw a3, 92(a2)
	lw a5, 96(a2)
	addw a0, a4, a3
	lw a4, 100(a2)
	addw a3, a0, a5
	addw a0, a3, a4
	lw a3, 104(a2)
	addw a4, a0, a3
	lw a0, 108(a2)
	lw a5, 112(a2)
	addw a3, a4, a0
	lw a4, 116(a2)
	addw a0, a3, a5
	lw a5, 120(a2)
	addw a3, a0, a4
	lw a4, 124(a2)
	addw a0, a3, a5
	addw a3, a0, a4
	lw a0, 128(a2)
	lw a5, 132(a2)
	addw a4, a3, a0
	lw a3, 136(a2)
	addw a0, a4, a5
	addw a4, a0, a3
	lw a0, 140(a2)
	addw a3, a4, a0
	lw a4, 144(a2)
	lw a5, 148(a2)
	addw a0, a3, a4
	lw a4, 152(a2)
	addw a3, a0, a5
	lw a2, 156(a2)
	addw a0, a3, a4
	addw s1, a0, a2
	j label24
.p2align 2
label29:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	lw a5, 0(a0)
	lw t1, 4(a0)
	addw a4, a4, a5
	lw t0, 8(a0)
	addw a5, a4, t1
	lw t1, 12(a0)
	addw a4, a5, t0
	lw t2, 16(a0)
	addw a5, a4, t1
	lw t0, 20(a0)
	addw a4, a5, t2
	lw t1, 24(a0)
	addw a5, a4, t0
	lw t0, 28(a0)
	addw a4, a5, t1
	lw t1, 32(a0)
	addw a5, a4, t0
	lw t0, 36(a0)
	addw a4, a5, t1
	lw t1, 40(a0)
	addw a5, a4, t0
	lw t2, 44(a0)
	addw a4, a5, t1
	lw t0, 48(a0)
	addw a5, a4, t2
	lw t1, 52(a0)
	addw a4, a5, t0
	addw a5, a4, t1
	lw a4, 56(a0)
	addw t0, a5, a4
	lw a5, 60(a0)
	addw a4, t0, a5
	lw t0, 64(a0)
	lw t1, 68(a0)
	addw a5, a4, t0
	lw t0, 72(a0)
	addw a4, a5, t1
	lw t1, 76(a0)
	addw a5, a4, t0
	lw t0, 80(a0)
	addw a4, a5, t1
	lw t1, 84(a0)
	addw a5, a4, t0
	lw t0, 88(a0)
	addw a4, a5, t1
	lw t1, 92(a0)
	addw a5, a4, t0
	lw t0, 96(a0)
	addw a4, a5, t1
	lw t1, 100(a0)
	addw a5, a4, t0
	addw a4, a5, t1
	lw a5, 104(a0)
	addw t0, a4, a5
	lw a4, 108(a0)
	lw t1, 112(a0)
	addw a5, t0, a4
	lw t0, 116(a0)
	addw a4, a5, t1
	addw a5, a4, t0
	lw a4, 120(a0)
	addw t0, a5, a4
	lw a5, 124(a0)
	lw t1, 128(a0)
	addw a4, t0, a5
	lw t0, 132(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 136(a0)
	addw t0, a4, a5
	lw a4, 140(a0)
	lw t1, 144(a0)
	addw a5, t0, a4
	lw t0, 148(a0)
	addw a4, a5, t1
	lw t1, 152(a0)
	addw a5, a4, t0
	lw t0, 156(a0)
	addw a4, a5, t1
	lw t1, 160(a0)
	addw a5, a4, t0
	lw t0, 164(a0)
	addw a4, a5, t1
	lw t1, 168(a0)
	addw a5, a4, t0
	lw t0, 172(a0)
	addw a4, a5, t1
	lw t1, 176(a0)
	addw a5, a4, t0
	lw t0, 180(a0)
	addw a4, a5, t1
	lw t1, 184(a0)
	addw a5, a4, t0
	lw t2, 188(a0)
	addw a4, a5, t1
	lw t0, 192(a0)
	addw a5, a4, t2
	lw t1, 196(a0)
	addw a4, a5, t0
	lw t0, 200(a0)
	addw a5, a4, t1
	lw t1, 204(a0)
	addw a4, a5, t0
	lw t0, 208(a0)
	addw a5, a4, t1
	lw t1, 212(a0)
	addw a4, a5, t0
	lw t0, 216(a0)
	addw a5, a4, t1
	addw a4, a5, t0
	lw a5, 220(a0)
	addw t0, a4, a5
	lw a4, 224(a0)
	lw t1, 228(a0)
	addw a5, t0, a4
	lw t0, 232(a0)
	addw a4, a5, t1
	lw t2, 236(a0)
	addw a5, a4, t0
	lw t1, 240(a0)
	addw a4, a5, t2
	lw t0, 244(a0)
	addw a5, a4, t1
	lw t1, 248(a0)
	addw a4, a5, t0
	addw a5, a4, t1
	lw a4, 252(a0)
	addw a0, a5, a4
	li a4, 960
	bge a3, a4, label32
	mv a4, a0
	j label29
label27:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label6
