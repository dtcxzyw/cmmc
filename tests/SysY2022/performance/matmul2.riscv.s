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
pcrel2133:
	auipc a1, %pcrel_hi(a)
pcrel2134:
	auipc a0, %pcrel_hi(c)
	li a2, 875
	sd ra, 0(sp)
	addi a5, a0, %pcrel_lo(pcrel2134)
	sd s10, 8(sp)
	li a0, 125
	addi s10, a1, %pcrel_lo(pcrel2133)
	sd s9, 16(sp)
pcrel2135:
	auipc a1, %pcrel_hi(b)
	sd s11, 24(sp)
	addi s9, a1, %pcrel_lo(pcrel2135)
	mv s11, zero
	li a1, 375
	sd s0, 32(sp)
	slli s0, a0, 5
	sd s5, 40(sp)
	li a0, 625
	sd s1, 48(sp)
	slli s1, s0, 1
	sd s6, 56(sp)
	slli s6, a2, 5
	sd s2, 64(sp)
	slli s2, a1, 5
	sd s3, 72(sp)
	li a1, 1125
	slli s5, s2, 1
	slli s3, s1, 1
	sd s4, 80(sp)
	slli s4, a0, 5
	sd s7, 88(sp)
	slli s7, s3, 1
	sd s8, 96(sp)
	slli s8, a1, 5
	sd a5, 104(sp)
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
	mul a2, a0, s0
	mv a4, zero
	add a3, s9, a2
.p2align 2
label45:
	mul a2, a4, s0
	li t4, 1875
	add a1, s10, a2
	sh2add a2, a4, a3
	add t1, a1, s1
	add t3, a1, s5
	sh2add t0, a0, a1
	addiw a4, a4, 64
	lw a5, 0(t0)
	add t0, a1, s0
	sh2add t2, a0, t0
	sw a5, 0(a2)
	sh2add t0, a0, t1
	lw a5, 0(t2)
	sw a5, 4(a2)
	add a5, a1, s2
	lw t2, 0(t0)
	sh2add t1, a0, a5
	add a5, a1, s3
	sw t2, 8(a2)
	sh2add t2, a0, a5
	lw t0, 0(t1)
	add t1, a1, s4
	sw t0, 12(a2)
	lw t0, 0(t2)
	sh2add t2, a0, t1
	sh2add t1, a0, t3
	sw t0, 16(a2)
	li t3, 1375
	lw a5, 0(t2)
	add t2, a1, s6
	sw a5, 20(a2)
	sh2add a5, a0, t2
	lw t0, 0(t1)
	add t1, a1, s7
	sw t0, 24(a2)
	lw t0, 0(a5)
	sh2add a5, a0, t1
	sw t0, 28(a2)
	add t0, a1, s8
	lw t2, 0(a5)
	sh2add a5, a0, t0
	li t0, 625
	sw t2, 32(a2)
	slli t2, t0, 6
	lw t1, 0(a5)
	add a5, a1, t2
	slli t2, t3, 5
	sw t1, 36(a2)
	li t3, 375
	sh2add t1, a0, a5
	lw t0, 0(t1)
	sw t0, 40(a2)
	add t0, a1, t2
	slli t2, t3, 7
	sh2add a5, a0, t0
	add t0, a1, t2
	lw t1, 0(a5)
	li t2, 1625
	sh2add a5, a0, t0
	slli t3, t2, 5
	add t0, a1, t3
	sw t1, 44(a2)
	li t3, 875
	lw t1, 0(a5)
	sh2add a5, a0, t0
	sw t1, 48(a2)
	slli t1, t3, 6
	lw t2, 0(a5)
	add a5, a1, t1
	sh2add t0, a0, a5
	sw t2, 52(a2)
	slli t2, t4, 5
	lw t3, 0(t0)
	li t4, 125
	add a5, a1, t2
	sh2add t1, a0, a5
	sw t3, 56(a2)
	li a5, 125
	li t3, 1125
	lw t0, 0(t1)
	slli t1, a5, 9
	add t2, a1, t1
	sw t0, 60(a2)
	lui t1, 17
	sh2add t0, a0, t2
	addiw t2, t1, -1632
	lw a5, 0(t0)
	sw a5, 64(a2)
	add a5, a1, t2
	slli t2, t3, 6
	sh2add t0, a0, a5
	lui t3, 19
	add a5, a1, t2
	lw t1, 0(t0)
	sw t1, 68(a2)
	sh2add t1, a0, a5
	addiw a5, t3, -1824
	lw t0, 0(t1)
	li t3, 1375
	sw t0, 72(a2)
	add t0, a1, a5
	sh2add t2, a0, t0
	li t0, 625
	lw t1, 0(t2)
	slli t2, t0, 7
	sw t1, 76(a2)
	add t1, a1, t2
	lui t2, 21
	sh2add a5, a0, t1
	lw t0, 0(a5)
	addiw a5, t2, -2016
	sw t0, 80(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	lw t2, 0(t1)
	slli t1, t3, 6
	lui t3, 24
	add t0, a1, t1
	sw t2, 84(a2)
	sh2add a5, a0, t0
	lui t0, 22
	lw t2, 0(a5)
	addiw a5, t0, 1888
	sw t2, 88(a2)
	add t2, a1, a5
	sh2add t1, a0, t2
	li t2, 375
	lw t0, 0(t1)
	slli a5, t2, 8
	sw t0, 92(a2)
	add t0, a1, a5
	addiw a5, t3, 1696
	sh2add t1, a0, t0
	li t3, 875
	lw t2, 0(t1)
	sw t2, 96(a2)
	add t2, a1, a5
	li a5, 1625
	sh2add t0, a0, t2
	slli t2, a5, 6
	lw t1, 0(t0)
	add t0, a1, t2
	sw t1, 100(a2)
	sh2add t1, a0, t0
	lui t0, 26
	lw a5, 0(t1)
	addiw t1, t0, 1504
	sw a5, 104(a2)
	add a5, a1, t1
	slli t1, t3, 7
	sh2add t2, a0, a5
	lui t3, 28
	lw t0, 0(t2)
	sw t0, 108(a2)
	add t0, a1, t1
	sh2add a5, a0, t0
	addiw t0, t3, 1312
	lw t2, 0(a5)
	li t3, 1875
	add t1, a1, t0
	slli t0, t3, 6
	sw t2, 112(a2)
	lui t3, 30
	sh2add t2, a0, t1
	lw a5, 0(t2)
	sw a5, 116(a2)
	add a5, a1, t0
	sh2add t1, a0, a5
	addiw a5, t3, 1120
	lw t2, 0(t1)
	slli t3, t4, 10
	add t0, a1, a5
	lui t4, 38
	sh2add t1, a0, t0
	sw t2, 120(a2)
	add t0, a1, t3
	lw t2, 0(t1)
	sh2add a5, a0, t0
	sw t2, 124(a2)
	lui t2, 32
	lw t1, 0(a5)
	addiw a5, t2, 928
	add t0, a1, a5
	sw t1, 128(a2)
	sh2add t1, a0, t0
	lui t0, 33
	lw t3, 0(t1)
	addiw t2, t0, 832
	add t1, a1, t2
	lui t2, 34
	sh2add a5, a0, t1
	sw t3, 132(a2)
	lw t0, 0(a5)
	addiw a5, t2, 736
	sw t0, 136(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	li t0, 1125
	lw t2, 0(t1)
	slli t3, t0, 7
	add a5, a1, t3
	lui t3, 37
	sh2add t1, a0, a5
	sw t2, 140(a2)
	lui t2, 36
	lw t0, 0(t1)
	addiw a5, t2, 544
	sw t0, 144(a2)
	add t0, a1, a5
	sh2add t1, a0, t0
	addiw t0, t3, 448
	lw t2, 0(t1)
	addiw t3, t4, 352
	add a5, a1, t0
	sh2add t1, a0, a5
	sw t2, 148(a2)
	add a5, a1, t3
	lw t2, 0(t1)
	lui t3, 40
	sh2add t0, a0, a5
	li a5, 625
	sw t2, 152(a2)
	lw t1, 0(t0)
	slli t0, a5, 8
	add t2, a1, t0
	sw t1, 156(a2)
	sh2add t1, a0, t2
	lw a5, 0(t1)
	addiw t1, t3, 160
	add t0, a1, t1
	sw a5, 160(a2)
	lui t1, 41
	sh2add t2, a0, t0
	addiw t0, t1, 64
	lw a5, 0(t2)
	add t2, a1, t0
	sw a5, 164(a2)
	sh2add a5, a0, t2
	lui t2, 42
	lw t1, 0(a5)
	addiw t3, t2, -32
	add t0, a1, t3
	li t3, 1375
	sh2add a5, a0, t0
	sw t1, 168(a2)
	slli t1, t3, 7
	lw t2, 0(a5)
	lui t3, 45
	add a5, a1, t1
	lui t1, 44
	sh2add t0, a0, a5
	sw t2, 172(a2)
	addiw a5, t1, -224
	lw t2, 0(t0)
	sw t2, 176(a2)
	add t2, a1, a5
	addiw a5, t3, -320
	sh2add t0, a0, t2
	lui t3, 46
	lw t1, 0(t0)
	add t0, a1, a5
	sh2add t2, a0, t0
	sw t1, 180(a2)
	addiw t0, t3, -416
	lw t1, 0(t2)
	lui t3, 52
	add a5, a1, t0
	li t0, 375
	sw t1, 184(a2)
	sh2add t1, a0, a5
	lw t2, 0(t1)
	slli t1, t0, 9
	add a5, a1, t1
	sw t2, 188(a2)
	lui t1, 48
	sh2add t2, a0, a5
	addiw a5, t1, -608
	lw t0, 0(t2)
	add t2, a1, a5
	lui a5, 49
	sw t0, 192(a2)
	sh2add t0, a0, t2
	addiw t2, a5, -704
	lw t1, 0(t0)
	sw t1, 196(a2)
	add t1, a1, t2
	sh2add t0, a0, t1
	lui t1, 50
	lw a5, 0(t0)
	addiw t0, t1, -800
	add t2, a1, t0
	sw a5, 200(a2)
	li t0, 1625
	sh2add a5, a0, t2
	lw t1, 0(a5)
	slli a5, t0, 7
	sw t1, 204(a2)
	add t1, a1, a5
	sh2add t2, a0, t1
	addiw t1, t3, -992
	lw t0, 0(t2)
	lui t3, 54
	add a5, a1, t1
	lui t1, 53
	sh2add t2, a0, a5
	sw t0, 208(a2)
	addiw a5, t1, -1088
	lw t0, 0(t2)
	add t2, a1, a5
	sw t0, 212(a2)
	sh2add t0, a0, t2
	lw t1, 0(t0)
	addiw t0, t3, -1184
	lui t3, 58
	add t2, a1, t0
	sw t1, 216(a2)
	sh2add a5, a0, t2
	li t2, 875
	lw t1, 0(a5)
	slli a5, t2, 8
	add t0, a1, a5
	sw t1, 220(a2)
	sh2add t1, a0, t0
	lui t0, 56
	lw t2, 0(t1)
	addiw t1, t0, -1376
	sw t2, 224(a2)
	add t2, a1, t1
	sh2add a5, a0, t2
	lui t2, 57
	lw t0, 0(a5)
	addiw a5, t2, -1472
	sw t0, 228(a2)
	add t0, a1, a5
	addiw a5, t3, -1568
	sh2add t1, a0, t0
	add t0, a1, a5
	lw t2, 0(t1)
	sh2add t1, a0, t0
	li t0, 1875
	sw t2, 232(a2)
	slli t2, t0, 7
	lw t3, 0(t1)
	add t1, a1, t2
	sh2add a5, a0, t1
	sw t3, 236(a2)
	lui t3, 60
	lw t0, 0(a5)
	addiw a5, t3, -1760
	lui t3, 61
	add t1, a1, a5
	sw t0, 240(a2)
	addiw a5, t3, -1856
	sh2add t2, a0, t1
	add t1, a1, a5
	lw t0, 0(t2)
	lui a5, 62
	addiw t2, a5, -1952
	sw t0, 244(a2)
	sh2add t0, a0, t1
	add t1, a1, t2
	lw t3, 0(t0)
	li a1, 960
	sh2add t0, a0, t1
	sw t3, 248(a2)
	lw a5, 0(t0)
	sw a5, 252(a2)
	blt a4, a1, label45
	mul a2, a4, s0
	li t1, 625
	li t2, 1875
	add a1, s10, a2
	sh2add a2, a4, a3
	sh2add t0, a0, a1
	lw a5, 0(t0)
	add t0, a1, s0
	sh2add a3, a0, t0
	sw a5, 0(a2)
	add t0, a1, s1
	lw a4, 0(a3)
	sh2add a5, a0, t0
	sw a4, 4(a2)
	add a4, a1, s2
	lw a3, 0(a5)
	sh2add a5, a0, a4
	add a4, a1, s3
	sw a3, 8(a2)
	sh2add t0, a0, a4
	lw a3, 0(a5)
	add a5, a1, s4
	sh2add a4, a0, a5
	sw a3, 12(a2)
	lw a3, 0(t0)
	sw a3, 16(a2)
	add a3, a1, s5
	lw t0, 0(a4)
	sh2add a5, a0, a3
	add a3, a1, s6
	sw t0, 20(a2)
	sh2add t0, a0, a3
	lw a4, 0(a5)
	add a5, a1, s7
	sh2add a3, a0, a5
	sw a4, 24(a2)
	lw a4, 0(t0)
	sw a4, 28(a2)
	add a4, a1, s8
	lw t0, 0(a3)
	sh2add a3, a0, a4
	sw t0, 32(a2)
	slli t0, t1, 6
	lw a5, 0(a3)
	li t1, 1375
	sw a5, 36(a2)
	add a5, a1, t0
	slli t0, t1, 5
	sh2add a4, a0, a5
	li t1, 375
	add a5, a1, t0
	lw a3, 0(a4)
	slli t0, t1, 7
	sh2add a4, a0, a5
	li t1, 1625
	add a5, a1, t0
	sw a3, 40(a2)
	slli t0, t1, 5
	lw a3, 0(a4)
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 44(a2)
	li t0, 875
	lw a3, 0(a4)
	sh2add a4, a0, a5
	slli a5, t0, 6
	sw a3, 48(a2)
	slli t0, t2, 5
	lw a3, 0(a4)
	add a4, a1, a5
	add a5, a1, t0
	sw a3, 52(a2)
	sh2add a3, a0, a4
	sh2add a4, a0, a5
	lw t1, 0(a3)
	sw t1, 56(a2)
	li t1, 125
	lw a3, 0(a4)
	slli t0, t1, 9
	lui t1, 17
	add a5, a1, t0
	addiw t0, t1, -1632
	sh2add a4, a0, a5
	sw a3, 60(a2)
	li t1, 1125
	add a5, a1, t0
	lw a3, 0(a4)
	slli t0, t1, 6
	sh2add a4, a0, a5
	lui t1, 19
	add a5, a1, t0
	sw a3, 64(a2)
	addiw t0, t1, -1824
	lw a3, 0(a4)
	li t1, 625
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 68(a2)
	slli t0, t1, 7
	lw a3, 0(a4)
	lui t1, 21
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 72(a2)
	addiw t0, t1, -2016
	lw a3, 0(a4)
	li t1, 1375
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 76(a2)
	slli t0, t1, 6
	lw a3, 0(a4)
	lui t1, 22
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 80(a2)
	addiw t0, t1, 1888
	lw a3, 0(a4)
	li t1, 375
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 84(a2)
	slli t0, t1, 8
	lw a3, 0(a4)
	lui t1, 24
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 88(a2)
	addiw t0, t1, 1696
	lw a3, 0(a4)
	li t1, 1625
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 92(a2)
	slli t0, t1, 6
	lw a3, 0(a4)
	lui t1, 28
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 96(a2)
	lw a3, 0(a4)
	sh2add a4, a0, a5
	lui a5, 26
	sw a3, 100(a2)
	lw a3, 0(a4)
	addiw a4, a5, 1504
	sw a3, 104(a2)
	add a3, a1, a4
	sh2add t0, a0, a3
	li a3, 875
	lw a5, 0(t0)
	slli t0, a3, 7
	sw a5, 108(a2)
	add a5, a1, t0
	addiw t0, t1, 1312
	sh2add a4, a0, a5
	li t1, 1875
	add a5, a1, t0
	lw a3, 0(a4)
	slli t0, t1, 6
	sh2add a4, a0, a5
	lui t1, 30
	add a5, a1, t0
	sw a3, 112(a2)
	addiw t0, t1, 1120
	lw a3, 0(a4)
	li t1, 125
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 116(a2)
	slli t0, t1, 10
	lw a3, 0(a4)
	lui t1, 32
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 120(a2)
	addiw t0, t1, 928
	lw a3, 0(a4)
	lui t1, 33
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 124(a2)
	addiw t0, t1, 832
	lw a3, 0(a4)
	lui t1, 34
	sw a3, 128(a2)
	sh2add a3, a0, a5
	add a5, a1, t0
	lw a4, 0(a3)
	addiw t0, t1, 736
	li t1, 1125
	sw a4, 132(a2)
	sh2add a4, a0, a5
	add a5, a1, t0
	lw a3, 0(a4)
	slli t0, t1, 7
	sh2add a4, a0, a5
	lui t1, 36
	add a5, a1, t0
	sw a3, 136(a2)
	addiw t0, t1, 544
	lw a3, 0(a4)
	sh2add a4, a0, a5
	add a5, a1, t0
	sw a3, 140(a2)
	lui t0, 37
	lw a3, 0(a4)
	sh2add a4, a0, a5
	addiw a5, t0, 448
	sw a3, 144(a2)
	lw a3, 0(a4)
	add a4, a1, a5
	lui a5, 38
	sw a3, 148(a2)
	sh2add a3, a0, a4
	addiw a4, a5, 352
	lw t0, 0(a3)
	add a3, a1, a4
	sw t0, 152(a2)
	sh2add t0, a0, a3
	addiw a0, a0, 1
	lw a5, 0(t0)
	sw a5, 156(a2)
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
	li a5, 1000
	blt zero, a5, label80
label79:
	addiw a2, a2, 1
	j label11
.p2align 2
label80:
	mv a4, zero
	mv a5, zero
.p2align 2
label16:
	mul t2, a4, s0
	sh2add t0, a4, a1
	add t1, s9, t2
	addiw a4, a4, 16
	sh2add t4, a0, t1
	lw t2, 0(t0)
	add t5, t1, s0
	sh2add t6, a0, t5
	lw t3, 0(t4)
	lw a6, 4(t0)
	lw t4, 0(t6)
	mulw a7, t2, t3
	mulw t5, a6, t4
	add a6, t1, s1
	addw t4, t5, a7
	sh2add t3, a0, a6
	lw t5, 8(t0)
	lw t6, 0(t3)
	add t3, t1, s2
	mulw a6, t5, t6
	sh2add t5, a0, t3
	addw t2, t4, a6
	add a6, t1, s3
	lw t4, 12(t0)
	lw a7, 0(t5)
	lw t5, 16(t0)
	mulw t6, t4, a7
	add a7, t1, s4
	sh2add t4, a0, a6
	addw t3, t2, t6
	lw a6, 0(t4)
	sh2add t4, a0, a7
	mulw t6, t5, a6
	lw t5, 20(t0)
	addw t2, t3, t6
	lw a6, 0(t4)
	add t6, t1, s5
	sh2add t4, a0, t6
	add t6, t1, s6
	mulw a7, t5, a6
	lw t5, 24(t0)
	addw t3, t2, a7
	lw a7, 0(t4)
	lw t4, 28(t0)
	mulw a6, t5, a7
	add a7, t1, s7
	sh2add t5, a0, t6
	addw t2, t3, a6
	lw a6, 0(t5)
	sh2add t5, a0, a7
	li a7, 625
	mulw t6, t4, a6
	addw t3, t2, t6
	lw t2, 32(t0)
	lw a6, 0(t5)
	mulw t6, t2, a6
	add a6, t1, s8
	addw t4, t3, t6
	sh2add t5, a0, a6
	lw t3, 36(t0)
	lw t6, 0(t5)
	mulw a6, t3, t6
	lw t3, 40(t0)
	slli t6, a7, 6
	addw t2, t4, a6
	li a7, 375
	add t4, t1, t6
	sh2add t5, a0, t4
	lw t6, 0(t5)
	li t5, 1375
	mulw a6, t3, t6
	slli t6, t5, 5
	addw t4, t2, a6
	lw t5, 44(t0)
	add t3, t1, t6
	sh2add t2, a0, t3
	lw t6, 0(t2)
	mulw a6, t5, t6
	slli t6, a7, 7
	addw t3, t4, a6
	li a7, 1625
	add t2, t1, t6
	lw t4, 48(t0)
	sh2add t5, a0, t2
	lw t6, 0(t5)
	mulw a6, t4, t6
	lw t4, 52(t0)
	slli t6, a7, 5
	addw t2, t3, a6
	li a7, 1875
	add t3, t1, t6
	sh2add t5, a0, t3
	lw t6, 0(t5)
	li t5, 875
	mulw a6, t4, t6
	slli t6, t5, 6
	addw t3, t2, a6
	lw t5, 56(t0)
	add t2, t1, t6
	sh2add t4, a0, t2
	lw t6, 0(t4)
	mulw a6, t5, t6
	slli t6, a7, 5
	addw t2, t3, a6
	add t5, t1, t6
	lw t3, 60(t0)
	sh2add t4, a0, t5
	lw t1, 0(t4)
	mulw t5, t3, t1
	li t1, 992
	addw t0, t2, t5
	addw a5, a5, t0
	blt a4, t1, label16
	mul t2, a4, s0
	sh2add t1, a4, a1
	add t0, s9, t2
	add t6, t0, s0
	sh2add t4, a0, t0
	lw t2, 0(t1)
	sh2add a4, a0, t6
	lw t3, 0(t4)
	lw t5, 4(t1)
	lw a6, 0(a4)
	mulw t6, t2, t3
	lw t3, 8(t1)
	addw a7, a5, t6
	mulw t4, t5, a6
	add t5, t0, s1
	addw a4, t4, a7
	sh2add t2, a0, t5
	add t4, t0, s2
	lw t6, 0(t2)
	lw t2, 12(t1)
	mulw t5, t3, t6
	sh2add t3, a0, t4
	addw a5, a4, t5
	add t4, t0, s3
	lw t5, 0(t3)
	lw t3, 16(t1)
	mulw t6, t2, t5
	sh2add t2, a0, t4
	addw a4, a5, t6
	lw t5, 0(t2)
	add t6, t0, s4
	lw t2, 20(t1)
	mulw t4, t3, t5
	sh2add t3, a0, t6
	addw a5, a4, t4
	add t6, t0, s5
	lw t4, 0(t3)
	sh2add t3, a0, t6
	mulw t5, t2, t4
	lw t2, 24(t1)
	addw a4, a5, t5
	lw a6, 0(t3)
	add t5, t0, s6
	lw t3, 28(t1)
	sh2add t1, a0, a3
	mulw t4, t2, a6
	sh2add t2, a0, t5
	addw a5, a4, t4
	addiw a0, a0, 1
	lw t4, 0(t2)
	mulw t0, t3, t4
	addw a4, a5, t0
	sw a4, 0(t1)
	li a5, 1000
	blt a0, a5, label80
	j label79
label75:
	mv a1, zero
label20:
	mul a3, a1, s0
	ld a5, 104(sp)
	li a4, 1000
	add a2, a5, a3
	bge a1, a4, label290
	mv a4, zero
	lui a3, 524288
	addiw a0, a3, -1
.p2align 2
label37:
	sh2add a3, a4, a2
	addiw a4, a4, 64
	lw t1, 0(a3)
	lw t2, 4(a3)
	min a5, a0, t1
	lw t3, 8(a3)
	min t0, a5, t2
	lw t2, 12(a3)
	min a0, t0, t3
	lw t3, 16(a3)
	min t1, a0, t2
	lw t2, 20(a3)
	min a5, t1, t3
	lw t3, 24(a3)
	min t0, a5, t2
	lw t2, 28(a3)
	min a0, t0, t3
	lw t0, 32(a3)
	min t1, a0, t2
	lw t2, 36(a3)
	min a5, t1, t0
	lw t1, 40(a3)
	min a0, a5, t2
	lw t2, 44(a3)
	min t0, a0, t1
	lw t1, 48(a3)
	min a5, t0, t2
	lw t2, 52(a3)
	min a0, a5, t1
	lw a5, 56(a3)
	min t0, a0, t2
	lw t2, 60(a3)
	min t1, t0, a5
	lw t3, 64(a3)
	min a0, t1, t2
	lw t1, 68(a3)
	min a5, a0, t3
	lw t2, 72(a3)
	min t0, a5, t1
	lw t3, 76(a3)
	min a0, t0, t2
	lw t0, 80(a3)
	min a5, a0, t3
	lw a0, 84(a3)
	min t1, a5, t0
	lw a5, 88(a3)
	min t2, t1, a0
	lw t1, 92(a3)
	min t0, t2, a5
	lw t2, 96(a3)
	min a0, t0, t1
	lw t1, 100(a3)
	min a5, a0, t2
	lw t2, 104(a3)
	min t0, a5, t1
	lw t3, 108(a3)
	min a0, t0, t2
	lw t2, 112(a3)
	min t1, a0, t3
	lw a0, 116(a3)
	min a5, t1, t2
	lw t2, 120(a3)
	min t0, a5, a0
	lw t3, 124(a3)
	min t1, t0, t2
	lw t0, 128(a3)
	min a0, t1, t3
	lw t2, 132(a3)
	min a5, a0, t0
	lw t3, 136(a3)
	min t1, a5, t2
	lw t2, 140(a3)
	min t0, t1, t3
	lw t1, 144(a3)
	min a0, t0, t2
	lw t2, 148(a3)
	min a5, a0, t1
	lw t1, 152(a3)
	min t0, a5, t2
	lw t3, 156(a3)
	min a0, t0, t1
	lw t2, 160(a3)
	min a5, a0, t3
	lw a0, 164(a3)
	min t1, a5, t2
	lw t3, 168(a3)
	min t0, t1, a0
	lw t2, 172(a3)
	min a5, t0, t3
	lw t3, 176(a3)
	min a0, a5, t2
	lw a5, 180(a3)
	min t1, a0, t3
	lw t2, 184(a3)
	min t0, t1, a5
	lw t3, 188(a3)
	min a0, t0, t2
	lw t1, 192(a3)
	min a5, a0, t3
	lw t2, 196(a3)
	min t0, a5, t1
	lw t3, 200(a3)
	min a0, t0, t2
	lw t2, 204(a3)
	min t1, a0, t3
	lw t3, 208(a3)
	min a5, t1, t2
	lw t1, 212(a3)
	min t0, a5, t3
	lw t2, 216(a3)
	min a0, t0, t1
	lw t0, 220(a3)
	min a5, a0, t2
	lw t2, 224(a3)
	min t1, a5, t0
	lw t3, 228(a3)
	min a0, t1, t2
	lw t2, 232(a3)
	min t0, a0, t3
	lw t1, 236(a3)
	min a5, t0, t2
	lw t3, 240(a3)
	min a0, a5, t1
	lw t2, 244(a3)
	min t0, a0, t3
	lw t3, 248(a3)
	min t1, t0, t2
	lw t0, 252(a3)
	min a5, t1, t3
	li a3, 960
	min a0, a5, t0
	blt a4, a3, label37
	sh2add a3, a4, a2
	lw t0, 0(a3)
	lw t2, 4(a3)
	min a5, a0, t0
	lw t1, 8(a3)
	min a4, a5, t2
	lw t0, 12(a3)
	min a0, a4, t1
	lw t1, 16(a3)
	min a5, a0, t0
	lw t0, 20(a3)
	min a4, a5, t1
	lw t2, 24(a3)
	min a0, a4, t0
	lw t1, 28(a3)
	min a5, a0, t2
	lw t2, 32(a3)
	min a4, a5, t1
	lw a5, 36(a3)
	min t0, a4, t2
	lw t1, 40(a3)
	min a0, t0, a5
	lw t0, 44(a3)
	min a4, a0, t1
	lw t1, 48(a3)
	min a5, a4, t0
	lw t0, 52(a3)
	min a0, a5, t1
	lw t2, 56(a3)
	min a4, a0, t0
	lw t1, 60(a3)
	min a5, a4, t2
	lw a4, 64(a3)
	min t0, a5, t1
	lw t1, 68(a3)
	min a0, t0, a4
	lw t2, 72(a3)
	min a5, a0, t1
	lw a0, 76(a3)
	min t0, a5, t2
	lw t1, 80(a3)
	min a4, t0, a0
	lw t0, 84(a3)
	min a5, a4, t1
	lw t2, 88(a3)
	min a0, a5, t0
	lw t1, 92(a3)
	min a4, a0, t2
	lw t2, 96(a3)
	min t0, a4, t1
	lw t1, 100(a3)
	min a5, t0, t2
	lw t0, 104(a3)
	min a0, a5, t1
	lw t1, 108(a3)
	min a4, a0, t0
	lw a0, 112(a3)
	min a5, a4, t1
	lw a4, 116(a3)
	min t0, a5, a0
	lw a5, 120(a3)
	min t1, t0, a4
	lw t0, 124(a3)
	min a0, t1, a5
	lw t2, 128(a3)
	min a4, a0, t0
	lw t1, 132(a3)
	min a5, a4, t2
	lw t2, 136(a3)
	min a0, a5, t1
	lw a5, 140(a3)
	min t0, a0, t2
	lw t1, 144(a3)
	min a4, t0, a5
	lw t0, 148(a3)
	min a0, a4, t1
	lw t1, 152(a3)
	min a5, a0, t0
	lw t0, 156(a3)
	min a4, a5, t1
	mv a5, zero
	min a0, a4, t0
.p2align 2
label41:
	sh2add a3, a5, a2
	slli t0, a0, 32
	addiw a5, a5, 64
	add.uw a4, a0, t0
	li t0, 960
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
	blt a5, t0, label41
	sh2add a3, a5, a2
	addiw a1, a1, 1
	sw a0, 0(a3)
	sw a0, 4(a3)
	sw a0, 8(a3)
	sw a0, 12(a3)
	sw a0, 16(a3)
	sw a0, 20(a3)
	sw a0, 24(a3)
	sw a0, 28(a3)
	sw a0, 32(a3)
	sw a0, 36(a3)
	sw a0, 40(a3)
	sw a0, 44(a3)
	sw a0, 48(a3)
	sw a0, 52(a3)
	sw a0, 56(a3)
	sw a0, 60(a3)
	sw a0, 64(a3)
	sw a0, 68(a3)
	sw a0, 72(a3)
	sw a0, 76(a3)
	sw a0, 80(a3)
	sw a0, 84(a3)
	sw a0, 88(a3)
	sw a0, 92(a3)
	sw a0, 96(a3)
	sw a0, 100(a3)
	sw a0, 104(a3)
	sw a0, 108(a3)
	sw a0, 112(a3)
	sw a0, 116(a3)
	sw a0, 120(a3)
	sw a0, 124(a3)
	sw a0, 128(a3)
	sw a0, 132(a3)
	sw a0, 136(a3)
	sw a0, 140(a3)
	sw a0, 144(a3)
	sw a0, 148(a3)
	sw a0, 152(a3)
	sw a0, 156(a3)
	j label20
label290:
	mv a0, zero
label22:
	li a2, 1000
	bge a0, a2, label294
	mul a3, a0, s0
	ld a5, 104(sp)
	mv a2, zero
	add a1, a5, a3
.p2align 2
label34:
	mul a3, a2, s0
	ld a5, 104(sp)
	add a4, a5, a3
	sh2add t1, a0, a4
	add t2, a4, s0
	sh2add a3, a2, a1
	addiw a2, a2, 16
	lw t0, 0(t1)
	subw a5, zero, t0
	sh2add t0, a0, t2
	sw a5, 0(a3)
	lw a5, 0(t0)
	add t0, a4, s1
	subw t1, zero, a5
	sh2add a5, a0, t0
	sw t1, 4(a3)
	add t1, a4, s2
	lw t2, 0(a5)
	sh2add t0, a0, t1
	subw t3, zero, t2
	sw t3, 8(a3)
	lw t2, 0(t0)
	add t0, a4, s3
	subw a5, zero, t2
	sh2add t1, a0, t0
	add t0, a4, s4
	sw a5, 12(a3)
	lw t2, 0(t1)
	sh2add t1, a0, t0
	subw a5, zero, t2
	add t2, a4, s5
	sw a5, 16(a3)
	lw t3, 0(t1)
	sh2add t1, a0, t2
	subw a5, zero, t3
	add t2, a4, s6
	li t3, 1375
	sw a5, 20(a3)
	lw a5, 0(t1)
	subw t0, zero, a5
	sh2add a5, a0, t2
	add t2, a4, s7
	sw t0, 24(a3)
	lw t1, 0(a5)
	subw t0, zero, t1
	sh2add t1, a0, t2
	sw t0, 28(a3)
	lw a5, 0(t1)
	add t1, a4, s8
	subw t0, zero, a5
	sh2add t2, a0, t1
	li t1, 625
	sw t0, 32(a3)
	lw t0, 0(t2)
	subw a5, zero, t0
	slli t0, t1, 6
	sw a5, 36(a3)
	add a5, a4, t0
	sh2add t2, a0, a5
	lw t1, 0(t2)
	slli t2, t3, 5
	subw t0, zero, t1
	li t3, 1625
	add a5, a4, t2
	sh2add t1, a0, a5
	sw t0, 40(a3)
	lw t0, 0(t1)
	li t1, 375
	subw t2, zero, t0
	slli t0, t1, 7
	sw t2, 44(a3)
	add t2, a4, t0
	sh2add a5, a0, t2
	slli t2, t3, 5
	lw t1, 0(a5)
	li t3, 875
	add a5, a4, t2
	subw t0, zero, t1
	sh2add t1, a0, a5
	slli a5, t3, 6
	sw t0, 48(a3)
	li t3, 1875
	lw t0, 0(t1)
	add t1, a4, a5
	subw t2, zero, t0
	sh2add t0, a0, t1
	sw t2, 52(a3)
	lw t2, 0(t0)
	subw a5, zero, t2
	slli t2, t3, 5
	add t0, a4, t2
	sw a5, 56(a3)
	sh2add t1, a0, t0
	lw a5, 0(t1)
	subw a4, zero, a5
	li a5, 992
	sw a4, 60(a3)
	blt a2, a5, label34
	mul a4, a2, s0
	ld a5, 104(sp)
	add a3, a5, a4
	sh2add a4, a2, a1
	sh2add t1, a0, a3
	lw t0, 0(t1)
	subw a5, zero, t0
	add t0, a3, s0
	sh2add a2, a0, t0
	sw a5, 0(a4)
	add t0, a3, s1
	lw a5, 0(a2)
	subw a1, zero, a5
	sh2add a5, a0, t0
	sw a1, 4(a4)
	add a1, a3, s2
	lw t1, 0(a5)
	sh2add t0, a0, a1
	subw a2, zero, t1
	sw a2, 8(a4)
	lw a2, 0(t0)
	add t0, a3, s3
	subw a5, zero, a2
	sh2add a2, a0, t0
	sw a5, 12(a4)
	lw a1, 0(a2)
	add a2, a3, s4
	subw a5, zero, a1
	sh2add a1, a0, a2
	sw a5, 16(a4)
	lw a5, 0(a1)
	add a1, a3, s5
	subw t0, zero, a5
	sh2add a5, a0, a1
	add a1, a3, s6
	sw t0, 20(a4)
	lw a2, 0(a5)
	subw t0, zero, a2
	sh2add a2, a0, a1
	addiw a0, a0, 1
	sw t0, 24(a4)
	lw a5, 0(a2)
	subw a3, zero, a5
	sw a3, 28(a4)
	j label22
label294:
	mv s1, zero
	mv a1, zero
label24:
	li a0, 1000
	bge a1, a0, label27
	mul t0, a1, s0
	ld a5, 104(sp)
	mv a3, zero
	mv a4, s1
	add a2, a5, t0
.p2align 2
label29:
	sh2add a0, a3, a2
	addiw a3, a3, 64
	lw a5, 0(a0)
	lw t2, 4(a0)
	addw t1, a4, a5
	lw a4, 8(a0)
	addw t0, t1, t2
	lw t2, 12(a0)
	addw a5, t0, a4
	lw t0, 16(a0)
	addw t1, a5, t2
	lw t2, 20(a0)
	addw a4, t1, t0
	lw t1, 24(a0)
	addw a5, a4, t2
	lw t2, 28(a0)
	addw t0, a5, t1
	lw t3, 32(a0)
	addw a4, t0, t2
	lw t0, 36(a0)
	addw a5, a4, t3
	lw t2, 40(a0)
	addw t1, a5, t0
	lw t3, 44(a0)
	addw a4, t1, t2
	lw t2, 48(a0)
	addw t0, a4, t3
	lw a4, 52(a0)
	addw a5, t0, t2
	lw t2, 56(a0)
	addw t1, a5, a4
	lw t3, 60(a0)
	addw t0, t1, t2
	lw t2, 64(a0)
	addw a4, t0, t3
	lw t3, 68(a0)
	addw a5, a4, t2
	lw t4, 72(a0)
	addw t1, a5, t3
	lw t2, 76(a0)
	addw t0, t1, t4
	lw t1, 80(a0)
	addw a4, t0, t2
	lw t2, 84(a0)
	addw a5, a4, t1
	lw t1, 88(a0)
	addw t0, a5, t2
	lw t2, 92(a0)
	addw a4, t0, t1
	lw t0, 96(a0)
	addw a5, a4, t2
	lw t2, 100(a0)
	addw t1, a5, t0
	lw t3, 104(a0)
	addw a4, t1, t2
	lw t1, 108(a0)
	addw t0, a4, t3
	lw t2, 112(a0)
	addw a5, t0, t1
	lw t1, 116(a0)
	addw a4, a5, t2
	lw t2, 120(a0)
	addw t0, a4, t1
	lw t1, 124(a0)
	addw a5, t0, t2
	lw t2, 128(a0)
	addw a4, a5, t1
	lw t1, 132(a0)
	addw t0, a4, t2
	lw t2, 136(a0)
	addw a5, t0, t1
	lw t1, 140(a0)
	addw a4, a5, t2
	lw t2, 144(a0)
	addw t0, a4, t1
	lw t1, 148(a0)
	addw a5, t0, t2
	lw t2, 152(a0)
	addw a4, a5, t1
	lw t1, 156(a0)
	addw t0, a4, t2
	lw t2, 160(a0)
	addw a5, t0, t1
	lw t1, 164(a0)
	addw a4, a5, t2
	lw t2, 168(a0)
	addw t0, a4, t1
	lw t1, 172(a0)
	addw a5, t0, t2
	lw t2, 176(a0)
	addw a4, a5, t1
	lw t1, 180(a0)
	addw t0, a4, t2
	lw t2, 184(a0)
	addw a5, t0, t1
	lw t1, 188(a0)
	addw a4, a5, t2
	lw t2, 192(a0)
	addw t0, a4, t1
	lw t3, 196(a0)
	addw a5, t0, t2
	lw t0, 200(a0)
	addw t1, a5, t3
	lw t2, 204(a0)
	addw a4, t1, t0
	lw t3, 208(a0)
	addw a5, a4, t2
	lw t2, 212(a0)
	addw t1, a5, t3
	lw t3, 216(a0)
	addw t0, t1, t2
	lw t2, 220(a0)
	addw a4, t0, t3
	lw t1, 224(a0)
	addw a5, a4, t2
	lw t2, 228(a0)
	addw t0, a5, t1
	lw t1, 232(a0)
	addw a4, t0, t2
	lw t3, 236(a0)
	addw a5, a4, t1
	lw t2, 240(a0)
	addw t0, a5, t3
	lw t1, 244(a0)
	addw a4, t0, t2
	lw t2, 248(a0)
	addw a5, a4, t1
	lw t1, 252(a0)
	addw t0, a5, t2
	li a0, 960
	addw a4, t0, t1
	blt a3, a0, label29
	sh2add a0, a3, a2
	addiw a1, a1, 1
	lw t1, 0(a0)
	lw a2, 4(a0)
	addw t0, a4, t1
	lw a4, 8(a0)
	addw a5, t0, a2
	lw t0, 12(a0)
	addw a3, a5, a4
	lw a5, 16(a0)
	addw a2, a3, t0
	lw t0, 20(a0)
	addw a4, a2, a5
	lw a5, 24(a0)
	addw a3, a4, t0
	lw t0, 28(a0)
	addw a2, a3, a5
	lw a5, 32(a0)
	addw a4, a2, t0
	lw t0, 36(a0)
	addw a3, a4, a5
	lw a5, 40(a0)
	addw a2, a3, t0
	lw t0, 44(a0)
	addw a4, a2, a5
	lw a5, 48(a0)
	addw a3, a4, t0
	lw t0, 52(a0)
	addw a2, a3, a5
	lw a5, 56(a0)
	addw a4, a2, t0
	lw t0, 60(a0)
	addw a3, a4, a5
	lw a5, 64(a0)
	addw a2, a3, t0
	lw t0, 68(a0)
	addw a4, a2, a5
	lw a5, 72(a0)
	addw a3, a4, t0
	lw t0, 76(a0)
	addw a2, a3, a5
	lw a5, 80(a0)
	addw a4, a2, t0
	lw t0, 84(a0)
	addw a3, a4, a5
	lw t1, 88(a0)
	addw a2, a3, t0
	lw t0, 92(a0)
	addw a5, a2, t1
	lw t1, 96(a0)
	addw a4, a5, t0
	lw a5, 100(a0)
	addw a3, a4, t1
	lw t1, 104(a0)
	addw a2, a3, a5
	lw t0, 108(a0)
	addw a4, a2, t1
	lw a2, 112(a0)
	addw a5, a4, t0
	lw t0, 116(a0)
	addw a3, a5, a2
	lw a5, 120(a0)
	addw a4, a3, t0
	lw t0, 124(a0)
	addw a2, a4, a5
	lw a4, 128(a0)
	addw a3, a2, t0
	lw t0, 132(a0)
	addw a5, a3, a4
	lw t1, 136(a0)
	addw a2, a5, t0
	lw t0, 140(a0)
	addw a4, a2, t1
	lw a5, 144(a0)
	addw a3, a4, t0
	lw t0, 148(a0)
	addw a2, a3, a5
	lw a5, 152(a0)
	addw a4, a2, t0
	lw a2, 156(a0)
	addw a3, a4, a5
	addw s1, a3, a2
	j label24
label27:
	li a0, 92
	jal _sysy_stoptime
	mv a0, s1
	jal putint
	mv a0, zero
	j label6
