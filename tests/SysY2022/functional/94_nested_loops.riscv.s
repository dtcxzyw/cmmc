.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
arr1:
	.zero	57600
.align 4
arr2:
	.zero	107520
.text
.globl main
main:
	addi sp, sp, -192
	sd s0, 88(sp)
	sd s5, 96(sp)
	sd s1, 104(sp)
	sd s6, 112(sp)
	sd s2, 120(sp)
	sd s3, 128(sp)
	sd s4, 136(sp)
	sd s7, 144(sp)
	sd s8, 152(sp)
	sd s9, 160(sp)
	sd s10, 176(sp)
	sd s11, 0(sp)
	sd ra, 8(sp)
	jal getint
	addiw s0, a0, 1
	sd a0, 16(sp)
	jal getint
	sd a0, 24(sp)
	addw s0, s0, a0
	mv a1, a0
	ld a0, 16(sp)
	addiw a2, a0, 2
	ld a1, 24(sp)
	addw s1, a1, a2
	addw s6, a0, a1
	addiw a2, a0, 3
	addw s2, a1, a2
	addiw a2, a0, 4
	addw s3, a1, a2
	addiw a2, a0, 5
	addw s4, a1, a2
	addiw a2, a0, 6
	addw s5, a1, a2
	jal getint
	sd a0, 56(sp)
	mv a1, a0
	jal getint
	sd a0, 64(sp)
	mv a4, a0
	jal getint
	sd a0, 80(sp)
	mv t1, a0
	jal getint
	sd a0, 184(sp)
	mv t4, a0
	jal getint
	sd a0, 168(sp)
	mv a6, a0
	jal getint
	sd a0, 72(sp)
	mv s7, a0
	jal getint
	mv a4, zero
	mv s7, a0
	sd a0, 48(sp)
pcrel555:
	auipc a0, %pcrel_hi(arr1)
	addi a2, a0, %pcrel_lo(pcrel555)
	sd a2, 40(sp)
	ld a0, 16(sp)
	li a3, 5760
	ld a1, 24(sp)
	slt a0, zero, a0
	slt a2, zero, a1
	mv a1, zero
	and a0, a0, a2
	ld a2, 40(sp)
	mv t0, a2
	beq a0, zero, label17
	mv t1, zero
	mv a2, zero
	li a0, 2880
	li a0, 2
	mv a5, t0
	bge zero, a0, label16
	mv t2, zero
	mv a0, zero
	li a1, 960
	li t4, 3
	mv t3, zero
	mv a3, t0
	bge zero, t4, label8
	mv a1, zero
	li t3, 4
	bge zero, t3, label15
	j label11
label17:
	auipc a0, %pcrel_hi(arr2)
	mv a5, zero
	addi a2, a0, %pcrel_lo(label17)
	sd a2, 32(sp)
	li a1, 10752
	mv a0, zero
	mv t0, a2
	li a0, 10
	bge zero, a0, label167
	mv t1, zero
	mv a1, zero
	li a0, 5376
	mv a2, zero
	li a0, 2
	mv a4, t0
	bge zero, a0, label56
	mv t2, zero
	li a0, 1792
	li a2, 3
	mv t3, zero
	mv a3, t0
	bge zero, a2, label65
	mv a0, zero
	li a2, 2
	bge zero, a2, label61
	j label62
label167:
	mv s4, zero
	mv a0, zero
label20:
	li a1, 5760
	ld a2, 40(sp)
	mul a3, a0, a1
	add a1, a2, a3
	ld a2, 32(sp)
	li a3, 10752
	mul a4, a0, a3
	add a3, a2, a4
	li a4, 10
	bge a0, a4, label23
	mv a2, zero
	li t0, 2880
	li t1, 5376
	mv a5, zero
	mv t0, zero
	mv a4, a1
	li t1, 100
	mv a5, a3
	bge zero, t1, label28
	li t3, 960
	li t4, 1792
	mv t2, zero
	mv t3, zero
	mv t1, a1
	li t4, 1000
	mv t2, a3
	bge zero, t4, label33
	li t5, 240
	li a6, 896
	mv t6, zero
	mv t4, a1
	li a6, 10000
	mv t5, a3
	bge zero, a6, label52
	li a7, 48
	li s1, 100000
	mv s0, zero
	li a7, 224
	mv a6, a1
	mv a7, a3
	bge zero, s1, label41
	mv s1, a1
	li s5, 28
	mv s3, zero
	li s5, 1000000
	mv s2, a3
	bge zero, s5, label50
	j label546
label56:
	addiw a5, a5, 1
	li a1, 10752
	ld a2, 32(sp)
	mul a0, a5, a1
	add t0, a2, a0
	li a0, 10
	bge a5, a0, label167
	mv t1, zero
	sext.w a1, a5
	li a0, 5376
	mv a2, zero
	li a0, 2
	mv a4, t0
	bge zero, a0, label56
	mv t2, zero
	li a0, 1792
	li a2, 3
	mv t3, zero
	mv a3, t0
	bge zero, a2, label65
	mv a0, zero
	li a2, 2
	bge zero, a2, label61
	j label62
label11:
	addw t4, s6, a1
	addw t5, s0, a1
	addw t6, s1, a1
	addw a6, s2, a1
	addw a7, s3, a1
	addw s7, s4, a1
	addw s8, s5, a1
	li s9, 240
	addw t3, a0, t4
	mul s10, a1, s9
	addw t4, a0, t5
	mv s9, zero
	addw t5, a0, t6
	addw t6, a0, a6
	addw a6, a0, a7
	addw a7, a0, s7
	addw s7, a0, s8
	add s8, a3, s10
	j label12
label16:
	addiw a4, a4, 1
	ld a0, 16(sp)
	li a3, 5760
	ld a1, 24(sp)
	slt a0, a4, a0
	slt a2, a4, a1
	mul a1, a4, a3
	and a0, a0, a2
	ld a2, 40(sp)
	add t0, a2, a1
	beq a0, zero, label17
	mv t1, zero
	sext.w a2, a4
	li a0, 2880
	mv a1, zero
	li a0, 2
	mv a5, t0
	bge zero, a0, label16
	mv t2, zero
	sext.w a0, a2
	li a1, 960
	li t4, 3
	mv t3, zero
	mv a3, t0
	bge zero, t4, label8
	mv a1, zero
	li t3, 4
	bge zero, t3, label15
	j label11
label12:
	li s11, 48
	mul s10, s9, s11
	addw s11, t3, s9
	add s10, s8, s10
	sw s11, 0(s10)
	addw s11, t4, s9
	sw s11, 4(s10)
	sw s11, 8(s10)
	addw s11, t5, s9
	sw s11, 12(s10)
	sw s11, 16(s10)
	addw s11, t6, s9
	sw s11, 20(s10)
	sw s11, 24(s10)
	addw s11, a6, s9
	sw s11, 28(s10)
	sw s11, 32(s10)
	addw s11, a7, s9
	sw s11, 36(s10)
	sw s11, 40(s10)
	addw s11, s7, s9
	addiw s9, s9, 1
	sw s11, 44(s10)
	li s10, 5
	bge s9, s10, label14
	j label12
label8:
	addiw t1, t1, 1
	addw a2, a4, t1
	li a0, 2880
	mul a1, t1, a0
	li a0, 2
	add a5, t0, a1
	bge t1, a0, label16
	mv t2, zero
	sext.w a0, a2
	li a1, 960
	li t4, 3
	mv t3, zero
	mv a3, a5
	bge zero, t4, label8
	mv a1, zero
	li t3, 4
	bge zero, t3, label15
	j label11
label15:
	addiw t2, t2, 1
	addw a0, a2, t2
	li a1, 960
	li t4, 3
	mul t3, t2, a1
	add a3, a5, t3
	bge t2, t4, label8
	mv a1, zero
	li t3, 4
	bge zero, t3, label15
	j label11
label14:
	addiw a1, a1, 1
	li t3, 4
	bge a1, t3, label15
	j label11
label62:
	addiw t3, a0, 6
	addiw t4, a0, 5
	addiw t5, a0, 4
	addiw t6, a0, 3
	addiw a6, a0, 2
	addiw s0, a0, 1
	addw a7, a1, a0
	li s2, 896
	addw a2, a1, t3
	mul a0, a0, s2
	addw t3, a1, t4
	mv s2, zero
	add s1, a3, a0
	addw t4, a1, t5
	addw t5, a1, t6
	addw t6, a1, a6
	addw a6, a1, s0
	j label63
label65:
	addiw t1, t1, 1
	addw a1, a5, t1
	li a0, 5376
	mul a2, t1, a0
	li a0, 2
	add a4, t0, a2
	bge t1, a0, label56
	mv t2, zero
	li a0, 1792
	li a2, 3
	mv t3, zero
	mv a3, a4
	bge zero, a2, label65
	mv a0, zero
	li a2, 2
	bge zero, a2, label61
	j label62
label63:
	li a0, 224
	mul s3, s2, a0
	addiw s2, s2, 1
	add a0, s1, s3
	sw a7, 0(a0)
	sw a6, 4(a0)
	sw t6, 8(a0)
	sw t5, 12(a0)
	sw t4, 16(a0)
	sw t3, 20(a0)
	sw a2, 24(a0)
	sw a7, 28(a0)
	sw a6, 32(a0)
	sw t6, 36(a0)
	sw t5, 40(a0)
	sw t4, 44(a0)
	sw t3, 48(a0)
	sw a2, 52(a0)
	sw a7, 56(a0)
	sw a6, 60(a0)
	sw t6, 64(a0)
	sw t5, 68(a0)
	sw t4, 72(a0)
	sw t3, 76(a0)
	sw a2, 80(a0)
	sw a7, 84(a0)
	sw a6, 88(a0)
	sw t6, 92(a0)
	sw t5, 96(a0)
	sw t4, 100(a0)
	sw t3, 104(a0)
	sw a2, 108(a0)
	sw a7, 112(a0)
	sw a6, 116(a0)
	sw t6, 120(a0)
	sw t5, 124(a0)
	sw t4, 128(a0)
	sw t3, 132(a0)
	sw a2, 136(a0)
	sw a7, 140(a0)
	sw a6, 144(a0)
	sw t6, 148(a0)
	sw t5, 152(a0)
	sw t4, 156(a0)
	sw t3, 160(a0)
	sw a2, 164(a0)
	sw a7, 168(a0)
	sw a6, 172(a0)
	sw t6, 176(a0)
	sw t5, 180(a0)
	sw t4, 184(a0)
	sw t3, 188(a0)
	sw a2, 192(a0)
	sw a7, 196(a0)
	sw a6, 200(a0)
	sw t6, 204(a0)
	sw t5, 208(a0)
	sw t4, 212(a0)
	sw t3, 216(a0)
	sw a2, 220(a0)
	li a0, 4
	bge s2, a0, label355
	j label63
label355:
	mv a0, s0
	li a2, 2
	bge s0, a2, label61
	j label62
label61:
	addiw t2, t2, 1
	li a0, 1792
	li a2, 3
	mul t3, t2, a0
	add a3, a4, t3
	bge t2, a2, label65
	mv a0, zero
	li a2, 2
	bge zero, a2, label61
	j label62
label546:
	mv s3, zero
	j label46
label25:
	li t0, 2880
	li t1, 5376
	mul a5, a2, t0
	mul t0, a2, t1
	add a4, a1, a5
	li t1, 100
	add a5, a3, t0
	bge a2, t1, label28
	mv t0, zero
	li t3, 960
	li t4, 1792
	mv t2, zero
	mv t3, zero
	mv t1, a4
	li t4, 1000
	mv t2, a5
	bge zero, t4, label33
	li t5, 240
	li a6, 896
	mv t6, zero
	mv t4, a4
	li a6, 10000
	mv t5, a5
	bge zero, a6, label52
	li a7, 48
	li s1, 100000
	mv s0, zero
	li a7, 224
	mv a6, a4
	mv a7, a5
	bge zero, s1, label41
	mv s1, a4
	li s5, 28
	mv s3, zero
	li s5, 1000000
	mv s2, a5
	bge zero, s5, label50
	j label546
label30:
	li t3, 960
	li t4, 1792
	mul t2, t0, t3
	mul t3, t0, t4
	add t1, a4, t2
	li t4, 1000
	add t2, a5, t3
	bge t0, t4, label33
	mv t3, zero
	li t5, 240
	li a6, 896
	mv t6, zero
	mv t4, t1
	li a6, 10000
	mv t5, t2
	bge zero, a6, label52
	li a7, 48
	li s1, 100000
	mv s0, zero
	li a7, 224
	mv a6, t1
	mv a7, t2
	bge zero, s1, label41
	mv s1, t1
	li s5, 28
	mv s3, zero
	li s5, 1000000
	mv s2, t2
	bge zero, s5, label50
	j label546
label35:
	li t5, 240
	li a6, 896
	mul t6, t3, t5
	add t4, t1, t6
	mul t6, t3, a6
	li a6, 10000
	add t5, t2, t6
	bge t3, a6, label52
	mv t6, zero
	li a7, 48
	li s1, 100000
	mv s0, zero
	li a7, 224
	mv a6, t4
	mv a7, t5
	bge zero, s1, label41
	mv s1, t4
	li s5, 28
	mv s3, zero
	li s5, 1000000
	mv s2, t5
	bge zero, s5, label50
	j label546
label46:
	sh2add s6, s3, s1
	li s7, -1603384363
	lw s5, 0(s6)
	mul s8, s4, s7
	srli s9, s8, 32
	add s6, s9, s4
	li s9, 817
	srliw s8, s6, 31
	sraiw s7, s6, 9
	add s6, s8, s7
	mulw s7, s6, s9
	sh2add s6, s3, s2
	subw s8, s4, s7
	addiw s3, s3, 1
	addw s4, s5, s8
	lw s5, 0(s6)
	ld s7, 48(sp)
	addw s4, s4, s5
	bgt s7, s3, label46
	addiw s0, s0, 1
	ld s7, 72(sp)
	bgt s7, s0, label43
	addiw t6, t6, 1
	ld a6, 168(sp)
	bgt a6, t6, label38
	addiw t3, t3, 1
	ld t4, 184(sp)
	bgt t4, t3, label35
	addiw t0, t0, 1
	ld t1, 80(sp)
	bgt t1, t0, label30
	addiw a2, a2, 1
	ld a4, 64(sp)
	bgt a4, a2, label25
	addiw a0, a0, 1
	ld a1, 56(sp)
	bgt a1, a0, label20
	j label23
label50:
	addiw t6, t6, 1
	ld a6, 168(sp)
	bgt a6, t6, label38
	addiw t3, t3, 1
	ld t4, 184(sp)
	bgt t4, t3, label35
	addiw t0, t0, 1
	ld t1, 80(sp)
	bgt t1, t0, label30
	addiw a2, a2, 1
	ld a4, 64(sp)
	bgt a4, a2, label25
	addiw a0, a0, 1
	ld a1, 56(sp)
	bgt a1, a0, label20
	j label23
label52:
	addiw t0, t0, 1
	ld t1, 80(sp)
	bgt t1, t0, label30
	addiw a2, a2, 1
	ld a4, 64(sp)
	bgt a4, a2, label25
	addiw a0, a0, 1
	ld a1, 56(sp)
	bgt a1, a0, label20
	j label23
label38:
	li a7, 48
	li s1, 100000
	mul s0, t6, a7
	li a7, 224
	add a6, t4, s0
	mul s0, t6, a7
	add a7, t5, s0
	bge t6, s1, label41
	mv s0, zero
	mv s1, a6
	li s5, 28
	mv s3, zero
	li s5, 1000000
	mv s2, a7
	bge zero, s5, label50
	j label546
label43:
	sh3add s1, s0, a6
	li s5, 28
	mul s3, s0, s5
	li s5, 1000000
	add s2, a7, s3
	bge s0, s5, label50
	j label546
label23:
	mv a0, s4
	ld ra, 8(sp)
	ld s11, 0(sp)
	ld s10, 176(sp)
	ld s9, 160(sp)
	ld s8, 152(sp)
	ld s7, 144(sp)
	ld s4, 136(sp)
	ld s3, 128(sp)
	ld s2, 120(sp)
	ld s6, 112(sp)
	ld s1, 104(sp)
	ld s5, 96(sp)
	ld s0, 88(sp)
	addi sp, sp, 192
	ret
label41:
	addiw t3, t3, 1
	ld t4, 184(sp)
	bgt t4, t3, label35
	addiw t0, t0, 1
	ld t1, 80(sp)
	bgt t1, t0, label30
	addiw a2, a2, 1
	ld a4, 64(sp)
	bgt a4, a2, label25
	addiw a0, a0, 1
	ld a1, 56(sp)
	bgt a1, a0, label20
	j label23
label33:
	addiw a2, a2, 1
	ld a4, 64(sp)
	bgt a4, a2, label25
	addiw a0, a0, 1
	ld a1, 56(sp)
	bgt a1, a0, label20
	j label23
label28:
	addiw a0, a0, 1
	ld a1, 56(sp)
	bgt a1, a0, label20
	j label23
