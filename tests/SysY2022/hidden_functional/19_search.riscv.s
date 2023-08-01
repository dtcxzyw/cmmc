.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	3600
.text
.p2align 2
search:
	addi sp, sp, -152
	sd ra, 0(sp)
	sd s0, 8(sp)
	mv s0, a0
	sd s5, 16(sp)
pcrel293:
	auipc a0, %pcrel_hi(a)
	sd s1, 24(sp)
	mv s1, a1
	sd s6, 32(sp)
	sd s2, 40(sp)
	addi s2, a0, %pcrel_lo(pcrel293)
	sd s4, 48(sp)
	li a0, 10
	sd s3, 56(sp)
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
	sd a2, 144(sp)
	sd a3, 136(sp)
	sd a6, 128(sp)
	sd a4, 120(sp)
	sd a5, 112(sp)
	sd a7, 104(sp)
	bgt a2, a0, label54
	lui s4, 262144
	mv a0, zero
label2:
	ld a3, 136(sp)
	li a1, 4
	sh3add a3, a0, a3
	bge a0, a1, label5
	mv a2, zero
	mv s3, s1
	mv a1, s0
	slli a5, s0, 4
	sub a4, a5, s0
	li a5, 1
	sh3add s5, a4, s2
	sh2add t0, s1, s5
	lw a4, 0(t0)
	bne a4, a5, label37
	j label10
label11:
	addiw s6, a0, 1
	li a0, 2
	bge a2, a0, label12
label81:
	mv a0, s6
	j label2
label12:
	beq a1, zero, label81
	ld a5, 112(sp)
	lw a0, 0(a5)
	addiw a4, a0, 1
	xor a2, a1, a4
	sltiu a4, s3, 1
	sltiu a0, a2, 1
	or a2, a0, a4
	bne a2, zero, label81
	ld a4, 120(sp)
	lw a0, 0(a4)
	addiw a2, a0, 1
	beq s3, a2, label81
	sh2add a2, s3, s5
	sw zero, 0(a2)
	lw a4, 0(a3)
	lw a0, 4(a3)
	subw s7, a1, a4
	ld a2, 144(sp)
	subw s8, s3, a0
	li a1, 10
	addiw a0, a2, 1
	ble a0, a1, label110
	lui a0, 262144
label16:
	addiw a1, a0, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a0, s6
	j label2
label10:
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label36
	j label11
label37:
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label38
	lw a4, 0(a3)
	addiw a2, a2, 1
	lw a5, 4(a3)
	addw a1, a1, a4
	addw s3, s3, a5
	slli a5, a1, 4
	sub a4, a5, a1
	li a5, 1
	sh3add s5, a4, s2
	sh2add t0, s3, s5
	lw a4, 0(t0)
	bne a4, a5, label37
	j label10
label38:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq s3, a4, label10
	lw a4, 0(a3)
	addiw a2, a2, 1
	lw a5, 4(a3)
	addw a1, a1, a4
	addw s3, s3, a5
	slli a5, a1, 4
	sub a4, a5, a1
	li a5, 1
	sh3add s5, a4, s2
	sh2add t0, s3, s5
	lw a4, 0(t0)
	bne a4, a5, label37
	j label10
label54:
	lui a0, 262144
label40:
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s2, 40(sp)
	ld s4, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 152
	ret
label36:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq s3, a4, label197
	j label11
label5:
	li a2, 10
	lui a0, 262144
	bgt s4, a2, label40
	mv a0, s4
	j label40
label110:
	lui s9, 262144
	mv s10, zero
label18:
	ld a3, 136(sp)
	li a0, 4
	sh3add t0, s10, a3
	bge s10, a0, label21
	mv a2, zero
	mv a0, s8
	mv a1, s7
	j label22
label27:
	addiw s10, s10, 1
	li a4, 2
	blt a2, a4, label18
	beq a1, zero, label18
	ld a5, 112(sp)
	lw a2, 0(a5)
	addiw a4, a2, 1
	xor a5, a1, a4
	sltiu a4, a0, 1
	sltiu a2, a5, 1
	or a5, a2, a4
	bne a5, zero, label18
	ld a4, 120(sp)
	lw a2, 0(a4)
	addiw a5, a2, 1
	beq a0, a5, label18
	sh2add s11, a0, a3
	sw zero, 0(s11)
	lw a2, 0(t0)
	lw a3, 4(t0)
	subw a1, a1, a2
	subw t0, a0, a3
	ld a2, 144(sp)
	ld a7, 104(sp)
	addiw a2, a2, 2
	ld a5, 112(sp)
	ld a6, 128(sp)
	ld a3, 136(sp)
	mv a0, a1
	mv a1, t0
	jal search
	addiw a1, a0, 1
	li a0, 1
	min s9, s9, a1
	sw a0, 0(s11)
	j label18
label22:
	slli a4, a1, 4
	sub a5, a4, a1
	sh3add a3, a5, s2
	li a5, 1
	sh2add t1, a0, a3
	lw a4, 0(t1)
	beq a4, a5, label26
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label35
label34:
	lw a4, 0(t0)
	addiw a2, a2, 1
	lw a3, 4(t0)
	addw a1, a1, a4
	addw a0, a0, a3
	j label22
label26:
	ld a6, 128(sp)
	lw a4, 0(a6)
	beq a1, a4, label32
	j label27
label35:
	ld a7, 104(sp)
	lw a4, 0(a7)
	beq a0, a4, label26
	j label34
label32:
	ld a7, 104(sp)
	lw a4, 0(a7)
	bne a0, a4, label27
	li a0, 1
	addiw a1, a0, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a0, s6
	j label2
label21:
	li a2, 10
	lui a0, 262144
	bgt s9, a2, label16
	mv a0, s9
	addiw a1, s9, 1
	sh2add a0, s3, s5
	min s4, s4, a1
	li a1, 1
	sw a1, 0(a0)
	mv a0, s6
	j label2
label197:
	li a0, 1
	j label40
.p2align 2
.globl main
main:
	addi sp, sp, -144
	li a0, 1
	li a1, -1
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, sp, 96
	sd s6, 16(sp)
	mv s6, zero
	sd s2, 24(sp)
	addi s2, sp, 104
	sd s3, 32(sp)
	addi s3, sp, 100
	sd s4, 40(sp)
	addi s4, sp, 108
	sd s5, 48(sp)
	addi s5, sp, 112
	sd s0, 56(sp)
	sd s10, 64(sp)
	sd s7, 72(sp)
	sd s9, 80(sp)
	sd s8, 88(sp)
	sw a0, 112(sp)
	sw zero, 116(sp)
	sw a1, 120(sp)
	sw zero, 124(sp)
	sw zero, 128(sp)
	sw a0, 132(sp)
pcrel485:
	auipc a0, %pcrel_hi(a)
	sw zero, 136(sp)
	addi s0, a0, %pcrel_lo(pcrel485)
	sw a1, 140(sp)
	sw zero, 104(sp)
	sw zero, 96(sp)
	mv s10, zero
.p2align 2
label295:
	jal getint
	sw a0, 108(sp)
	mv s7, a0
	jal getint
	sw a0, 100(sp)
	bne s7, zero, label340
	j label316
.p2align 2
label383:
	li s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	j label387
.p2align 2
label471:
	addiw s6, s6, 1
	lw a0, 100(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label383
.p2align 2
label315:
	mv a0, s10
	li a2, 1
	mv a1, s9
	mv a3, s5
	mv a4, s4
	mv a5, s3
	mv a6, s2
	mv a7, s1
	jal search
	mv a1, a0
	li a2, 11
	blt a0, a2, label457
	li a1, -1
.p2align 2
label457:
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	mv s6, s9
	j label295
.p2align 2
label308:
	jal getint
	li a1, 2
	sh2add a2, s8, s7
	sw a0, 0(a2)
	bne a0, a1, label394
	mv s9, s8
	mv s10, s6
	addiw s8, s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	j label471
.p2align 2
label313:
	sw s6, 104(sp)
	sw s8, 96(sp)
	addiw s8, s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	addiw s6, s6, 1
	lw a0, 100(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label383
	j label315
.p2align 2
label394:
	li a1, 3
	beq a0, a1, label313
	addiw s8, s8, 1
	lw a0, 108(sp)
	ble s8, a0, label308
	addiw s6, s6, 1
	lw a0, 100(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label383
	j label315
.p2align 2
label340:
	mv a2, zero
.p2align 2
label298:
	slli a1, a2, 4
	sub a3, a1, a2
	addiw a2, a2, 1
	li a1, 1
	sh3add a0, a3, s0
	sw a1, 0(a0)
	sw a1, 4(a0)
	sw a1, 8(a0)
	sw a1, 12(a0)
	sw a1, 16(a0)
	sw a1, 20(a0)
	sw a1, 24(a0)
	sw a1, 28(a0)
	sw a1, 32(a0)
	sw a1, 36(a0)
	sw a1, 40(a0)
	sw a1, 44(a0)
	sw a1, 48(a0)
	sw a1, 52(a0)
	sw a1, 56(a0)
	sw a1, 60(a0)
	sw a1, 64(a0)
	sw a1, 68(a0)
	sw a1, 72(a0)
	sw a1, 76(a0)
	sw a1, 80(a0)
	sw a1, 84(a0)
	sw a1, 88(a0)
	sw a1, 92(a0)
	sw a1, 96(a0)
	sw a1, 100(a0)
	sw a1, 104(a0)
	sw a1, 108(a0)
	sw a1, 112(a0)
	sw a1, 116(a0)
	li a0, 30
	blt a2, a0, label298
	mv s9, s6
	li s6, 1
	lw a0, 100(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label383
	j label315
label316:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s6, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s4, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	ld s10, 64(sp)
	ld s7, 72(sp)
	ld s9, 80(sp)
	ld s8, 88(sp)
	addi sp, sp, 144
	ret
.p2align 2
label387:
	addiw s6, s6, 1
	lw a0, 100(sp)
	slli a2, s6, 4
	sub a1, a2, s6
	sh3add s7, a1, s0
	ble s6, a0, label383
	j label315
