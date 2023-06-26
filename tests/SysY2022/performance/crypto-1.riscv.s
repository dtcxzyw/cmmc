.data
.align 4
buffer:
	.4byte	0
	.zero	131068
.text
.globl main
main:
	addi sp, sp, -784
	sd s0, 648(sp)
	sd s5, 640(sp)
	sd s1, 632(sp)
	sd s6, 624(sp)
	sd s8, 616(sp)
	sd s7, 608(sp)
	sd s9, 600(sp)
	sd s2, 592(sp)
	sd s3, 584(sp)
	sd s4, 576(sp)
	sd s10, 568(sp)
	sd s11, 560(sp)
	sd ra, 552(sp)
	addi t6, sp, 120
	sd t6, 448(sp)
	addi a1, sp, 464
	sd a1, 504(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	sw zero, 464(sp)
	ld a1, 504(sp)
	addi a0, a1, 4
	sd a0, 528(sp)
	ld a1, 504(sp)
	sw zero, 4(a1)
	ld a1, 504(sp)
	addi a0, a1, 8
	sd a0, 520(sp)
	ld a1, 504(sp)
	sw zero, 8(a1)
	ld a1, 504(sp)
	addi a0, a1, 12
	sd a0, 496(sp)
	ld a1, 504(sp)
	sw zero, 12(a1)
	ld a1, 504(sp)
	addi a0, a1, 16
	sd a0, 512(sp)
	ld a1, 504(sp)
	sw zero, 16(a1)
pcrel1254:
	auipc a0, %pcrel_hi(buffer)
	addi a0, a0, %pcrel_lo(pcrel1254)
	mv a3, a0
	sd a0, 536(sp)
	li a1, 128000
	add a1, a0, a1
	sd a1, 544(sp)
	ld t6, 448(sp)
	addi a2, t6, 4
	sd a2, 776(sp)
	ld t6, 448(sp)
	addi a2, t6, 8
	sd a2, 680(sp)
	ld t6, 448(sp)
	addi a2, t6, 12
	sd a2, 64(sp)
	ld t6, 448(sp)
	addi a2, t6, 16
	sd a2, 768(sp)
	ld t6, 448(sp)
	addi a2, t6, 20
	sd a2, 104(sp)
	ld t6, 448(sp)
	addi a2, t6, 24
	sd a2, 32(sp)
	ld t6, 448(sp)
	addi a2, t6, 28
	sd a2, 72(sp)
	ld t6, 448(sp)
	addi a2, t6, 32
	sd a2, 96(sp)
	ld t6, 448(sp)
	addi a2, t6, 36
	sd a2, 112(sp)
	ld t6, 448(sp)
	addi a2, t6, 40
	sd a2, 56(sp)
	ld t6, 448(sp)
	addi a2, t6, 44
	sd a2, 48(sp)
	ld t6, 448(sp)
	addi a2, t6, 48
	sd a2, 40(sp)
	ld t6, 448(sp)
	addi a2, t6, 52
	sd a2, 456(sp)
	ld t6, 448(sp)
	addi a2, t6, 56
	sd a2, 88(sp)
	ld t6, 448(sp)
	addi a1, t6, 60
	sd a1, 80(sp)
	mv a2, s0
	mv a0, s1
	sd s1, 24(sp)
	ble s1, zero, label48
label78:
	mv a0, zero
label5:
	slli a1, a0, 2
	ld a3, 536(sp)
	add a1, a3, a1
	li a3, 8193
	mulw a2, a2, a3
	slli a3, a2, 1
	srli a3, a3, 47
	add a3, a2, a3
	sraiw a3, a3, 17
	addw a5, a3, a2
	li a3, 33
	mulw a4, a5, a3
	slli a2, a4, 1
	srli a2, a2, 56
	add a2, a4, a2
	sraiw t1, a2, 8
	li a2, 256
	mulw t1, t1, a2
	subw a4, a4, t1
	sw a4, 0(a1)
	li a4, 270369
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 4(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 8(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 12(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 16(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 20(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 24(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 28(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 32(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 36(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 40(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 44(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 48(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 52(a1)
	mulw a5, a5, a4
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, t1, a5
	mulw t1, a5, a3
	slli t2, t1, 1
	srli t2, t2, 56
	add t2, t1, t2
	sraiw t2, t2, 8
	mulw t2, t2, a2
	subw t1, t1, t2
	sw t1, 56(a1)
	mulw a4, a5, a4
	slli a5, a4, 1
	srli a5, a5, 47
	add a5, a4, a5
	sraiw a5, a5, 17
	addw a4, a5, a4
	mulw a3, a4, a3
	sd a3, 16(sp)
	slli a3, a3, 1
	srli a4, a3, 56
	ld a3, 16(sp)
	add a3, a3, a4
	sraiw a3, a3, 8
	mulw a2, a3, a2
	ld a3, 16(sp)
	subw a2, a3, a2
	sw a2, 60(a1)
	addiw a0, a0, 16
	li a1, 32000
	bge a0, a1, label8
	ld a3, 16(sp)
	mv a2, a3
	j label5
label12:
	slli a1, a0, 2
	ld t6, 448(sp)
	add a1, t6, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	addi a0, a0, 16
	li a1, 80
	bge a0, a1, label217
	j label12
label217:
	mv t2, zero
	sd zero, 720(sp)
	mv t1, zero
	sd zero, 712(sp)
	mv a0, zero
	sd zero, 736(sp)
	li a1, -1009589776
	sd a1, 8(sp)
	li a2, 271733878
	sd a2, 0(sp)
	li a3, -1732584194
	sd a3, 760(sp)
	li a3, -271733879
	sd a3, 744(sp)
	li t3, 1732584193
	sd t3, 728(sp)
	ld a1, 752(sp)
	bge zero, a1, label47
label23:
	ld a0, 736(sp)
	slliw a0, a0, 2
	ld a3, 536(sp)
	add a0, a3, a0
	lw a1, 0(a0)
	slliw a1, a1, 24
	lw a2, 4(a0)
	slliw a2, a2, 16
	lw a3, 8(a0)
	slliw a3, a3, 8
	lw a4, 12(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	sw a1, 120(sp)
	lw a1, 16(a0)
	slliw a1, a1, 24
	lw a2, 20(a0)
	slliw a2, a2, 16
	lw a3, 24(a0)
	slliw a3, a3, 8
	lw a4, 28(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 776(sp)
	sw a1, 0(a2)
	lw a1, 32(a0)
	slliw a1, a1, 24
	lw a2, 36(a0)
	slliw a2, a2, 16
	lw a3, 40(a0)
	slliw a3, a3, 8
	lw a4, 44(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 680(sp)
	sw a1, 0(a2)
	lw a1, 48(a0)
	slliw a1, a1, 24
	lw a2, 52(a0)
	slliw a2, a2, 16
	lw a3, 56(a0)
	slliw a3, a3, 8
	lw a4, 60(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 64(sp)
	sw a1, 0(a2)
	lw a1, 64(a0)
	slliw a1, a1, 24
	lw a2, 68(a0)
	slliw a2, a2, 16
	lw a3, 72(a0)
	slliw a3, a3, 8
	lw a4, 76(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 768(sp)
	sw a1, 0(a2)
	lw a1, 80(a0)
	slliw a1, a1, 24
	lw a2, 84(a0)
	slliw a2, a2, 16
	lw a3, 88(a0)
	slliw a3, a3, 8
	lw a4, 92(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 104(sp)
	sw a1, 0(a2)
	lw a1, 96(a0)
	slliw a1, a1, 24
	lw a2, 100(a0)
	slliw a2, a2, 16
	lw a3, 104(a0)
	slliw a3, a3, 8
	lw a4, 108(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 32(sp)
	sw a1, 0(a2)
	lw a1, 112(a0)
	slliw a1, a1, 24
	lw a2, 116(a0)
	slliw a2, a2, 16
	lw a3, 120(a0)
	slliw a3, a3, 8
	lw a4, 124(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 72(sp)
	sw a1, 0(a2)
	lw a1, 128(a0)
	slliw a1, a1, 24
	lw a2, 132(a0)
	slliw a2, a2, 16
	lw a3, 136(a0)
	slliw a3, a3, 8
	lw a4, 140(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 96(sp)
	sw a1, 0(a2)
	lw a1, 144(a0)
	slliw a1, a1, 24
	lw a2, 148(a0)
	slliw a2, a2, 16
	lw a3, 152(a0)
	slliw a3, a3, 8
	lw a4, 156(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 112(sp)
	sw a1, 0(a2)
	lw a1, 160(a0)
	slliw a1, a1, 24
	lw a2, 164(a0)
	slliw a2, a2, 16
	lw a3, 168(a0)
	slliw a3, a3, 8
	lw a4, 172(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 56(sp)
	sw a1, 0(a2)
	lw a1, 176(a0)
	slliw a1, a1, 24
	lw a2, 180(a0)
	slliw a2, a2, 16
	lw a3, 184(a0)
	slliw a3, a3, 8
	lw a4, 188(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 48(sp)
	sw a1, 0(a2)
	lw a1, 192(a0)
	slliw a1, a1, 24
	lw a2, 196(a0)
	slliw a2, a2, 16
	lw a3, 200(a0)
	slliw a3, a3, 8
	lw a4, 204(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 40(sp)
	sw a1, 0(a2)
	lw a1, 208(a0)
	slliw a1, a1, 24
	lw a2, 212(a0)
	slliw a2, a2, 16
	lw a3, 216(a0)
	slliw a3, a3, 8
	lw a4, 220(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 456(sp)
	sw a1, 0(a2)
	lw a1, 224(a0)
	slliw a1, a1, 24
	lw a2, 228(a0)
	slliw a2, a2, 16
	lw a3, 232(a0)
	slliw a3, a3, 8
	lw a4, 236(a0)
	addw a1, a4, a1
	addw a1, a1, a2
	addw a1, a1, a3
	ld a2, 88(sp)
	sw a1, 0(a2)
	lw a1, 240(a0)
	slliw a1, a1, 24
	lw a2, 244(a0)
	slliw a2, a2, 16
	lw a3, 248(a0)
	slliw a3, a3, 8
	lw a0, 252(a0)
	addw a0, a0, a1
	addw a0, a0, a2
	addw a0, a0, a3
	ld a1, 80(sp)
	sw a0, 0(a1)
	li a0, 16
	sd a0, 704(sp)
	j label24
label47:
	lw a1, 464(sp)
	ld t3, 728(sp)
	addw a0, t3, a1
	subw a1, a1, a0
	ld t3, 728(sp)
	addw a1, t3, a1
	subw a0, a1, a0
	sw a0, 464(sp)
	ld a0, 528(sp)
	lw a1, 0(a0)
	ld a3, 744(sp)
	addw a0, a3, a1
	subw a1, a1, a0
	ld a3, 744(sp)
	addw a1, a3, a1
	subw a1, a1, a0
	ld a0, 528(sp)
	sw a1, 0(a0)
	ld a0, 520(sp)
	lw a1, 0(a0)
	ld a3, 760(sp)
	addw a0, a3, a1
	subw a1, a1, a0
	ld a3, 760(sp)
	addw a1, a3, a1
	subw a1, a1, a0
	ld a0, 520(sp)
	sw a1, 0(a0)
	ld a0, 496(sp)
	lw a1, 0(a0)
	ld a2, 0(sp)
	addw a0, a2, a1
	subw a1, a1, a0
	ld a2, 0(sp)
	addw a1, a2, a1
	subw a1, a1, a0
	ld a0, 496(sp)
	sw a1, 0(a0)
	ld a0, 512(sp)
	lw a2, 0(a0)
	ld a1, 8(sp)
	addw a0, a1, a2
	subw a2, a2, a0
	ld a1, 8(sp)
	addw a1, a1, a2
	subw a1, a1, a0
	ld a0, 512(sp)
	sw a1, 0(a0)
	ld a0, 24(sp)
	addiw a0, a0, -1
	ld a3, 16(sp)
	mv a2, a3
	sd a0, 24(sp)
	ble a0, zero, label48
	j label78
label24:
	ld a0, 704(sp)
	slli a0, a0, 2
	ld t6, 448(sp)
	add s8, t6, a0
	sd s8, 696(sp)
	lw a0, -12(s8)
	lw a2, -32(s8)
	addw a1, a0, a2
	subw a3, a0, a1
	addw a3, a2, a3
	subw a1, a3, a1
	lw a5, -56(s8)
	addw a3, a1, a5
	subw a1, a1, a3
	addw a1, a5, a1
	subw a1, a1, a3
	lw a4, -64(s8)
	addw a3, a1, a4
	subw a1, a1, a3
	addw a1, a4, a1
	subw a1, a1, a3
	slliw s7, a1, 1
	sd s7, 664(sp)
	srliw a3, a1, 31
	add a3, a1, a3
	sraiw a3, a3, 1
	li s8, 2
	sd s8, 688(sp)
	mulw a3, a3, s8
	subw a1, a1, a3
	addw t1, a1, s7
	ld s8, 696(sp)
	sw t1, 0(s8)
	ld s8, 696(sp)
	lw s5, -8(s8)
	sd s5, 656(sp)
	ld s8, 696(sp)
	lw a3, -28(s8)
	addw a4, s5, a3
	subw t2, s5, a4
	addw t2, a3, t2
	subw a4, t2, a4
	ld s8, 696(sp)
	lw t2, -52(s8)
	addw t3, a4, t2
	subw a4, a4, t3
	addw a4, t2, a4
	subw a4, a4, t3
	ld s8, 696(sp)
	lw t3, -60(s8)
	addw t4, a4, t3
	subw a4, a4, t4
	addw a4, t3, a4
	subw a4, a4, t4
	slliw s8, a4, 1
	sd s8, 440(sp)
	srliw t3, a4, 31
	add t3, a4, t3
	sraiw t3, t3, 1
	ld s8, 688(sp)
	mulw t3, t3, s8
	subw s9, a4, t3
	sd s9, 488(sp)
	ld s8, 440(sp)
	addw t5, s9, s8
	ld s8, 696(sp)
	sw t5, 4(s8)
	ld s8, 696(sp)
	lw s5, -4(s8)
	sd s5, 672(sp)
	ld s8, 696(sp)
	lw a4, -24(s8)
	addw t3, s5, a4
	subw t4, s5, t3
	addw t4, a4, t4
	subw t3, t4, t3
	ld s8, 696(sp)
	lw t6, -48(s8)
	addw t4, t3, t6
	subw t3, t3, t4
	addw t3, t6, t3
	subw t4, t3, t4
	addw t3, a5, t4
	subw t4, t4, t3
	addw a5, a5, t4
	subw a5, a5, t3
	slliw t3, a5, 1
	srliw t4, a5, 31
	add t4, a5, t4
	sraiw t4, t4, 1
	ld s8, 688(sp)
	mulw t4, t4, s8
	subw a7, a5, t4
	addw a6, a7, t3
	ld s8, 696(sp)
	sw a6, 8(s8)
	ld s8, 696(sp)
	lw a5, -20(s8)
	addw t4, a1, a5
	addw t4, t4, s7
	subw t1, t1, t4
	addw t1, a5, t1
	subw t1, t1, t4
	ld s8, 696(sp)
	lw s2, -44(s8)
	addw t4, t1, s2
	subw t1, t1, t4
	addw t1, s2, t1
	subw t4, t1, t4
	addw t1, t2, t4
	subw t4, t4, t1
	addw t2, t2, t4
	subw t1, t2, t1
	slliw t4, t1, 1
	srliw t2, t1, 31
	add t2, t1, t2
	sraiw t2, t2, 1
	ld s8, 688(sp)
	mulw t2, t2, s8
	subw s1, t1, t2
	addw t2, s1, t4
	ld s8, 696(sp)
	sw t2, 12(s8)
	ld s8, 696(sp)
	lw t1, -16(s8)
	addw s0, s9, t1
	ld s8, 440(sp)
	addw s0, s0, s8
	subw t5, t5, s0
	addw t5, t1, t5
	subw s0, t5, s0
	ld s8, 696(sp)
	lw t5, -40(s8)
	addw s3, s0, t5
	subw s0, s0, s3
	addw s0, t5, s0
	subw s3, s0, s3
	addw s0, t6, s3
	subw s3, s3, s0
	addw t6, t6, s3
	subw t6, t6, s0
	slliw s0, t6, 1
	srliw s3, t6, 31
	add s3, t6, s3
	sraiw s3, s3, 1
	ld s8, 688(sp)
	mulw s3, s3, s8
	subw s4, t6, s3
	addw t6, s4, s0
	ld s8, 696(sp)
	sw t6, 16(s8)
	addw s3, a0, a7
	addw s3, s3, t3
	subw a6, a6, s3
	addw a6, a0, a6
	subw a6, a6, s3
	ld s8, 696(sp)
	lw s7, -36(s8)
	addw s3, a6, s7
	subw a6, a6, s3
	addw a6, s7, a6
	subw s3, a6, s3
	addw a6, s2, s3
	subw s3, s3, a6
	addw s2, s2, s3
	subw s2, s2, a6
	slliw a6, s2, 1
	srliw s3, s2, 31
	add s3, s2, s3
	sraiw s3, s3, 1
	ld s8, 688(sp)
	mulw s3, s3, s8
	subw s3, s2, s3
	addw s9, s3, a6
	ld s8, 696(sp)
	sw s9, 20(s8)
	ld s5, 656(sp)
	addw s2, s5, s1
	addw s2, s2, t4
	subw t2, t2, s2
	ld s5, 656(sp)
	addw t2, s5, t2
	subw s2, t2, s2
	addw t2, a2, s2
	subw s2, s2, t2
	addw s2, a2, s2
	subw s2, s2, t2
	addw t2, t5, s2
	subw s2, s2, t2
	addw t5, t5, s2
	subw t2, t5, t2
	slliw t5, t2, 1
	srliw s2, t2, 31
	add s2, t2, s2
	sraiw s2, s2, 1
	ld s8, 688(sp)
	mulw s2, s2, s8
	subw s2, t2, s2
	addw s6, s2, t5
	ld s8, 696(sp)
	sw s6, 24(s8)
	ld s5, 672(sp)
	addw t2, s5, s4
	addw t2, t2, s0
	subw t6, t6, t2
	ld s5, 672(sp)
	addw t6, s5, t6
	subw t6, t6, t2
	addw t2, a3, t6
	subw t6, t6, t2
	addw t6, a3, t6
	subw t6, t6, t2
	addw t2, s7, t6
	subw t6, t6, t2
	addw t6, s7, t6
	subw t6, t6, t2
	slliw t2, t6, 1
	srliw s5, t6, 31
	add s5, t6, s5
	sraiw s5, s5, 1
	ld s8, 688(sp)
	mulw s5, s5, s8
	subw t6, t6, s5
	addw s5, t6, t2
	ld s8, 696(sp)
	sw s5, 28(s8)
	addw s8, a1, s3
	ld s7, 664(sp)
	addw s7, s8, s7
	addw s8, s7, a6
	subw s7, s9, s8
	addw s9, a1, s7
	ld s7, 664(sp)
	addw s7, s9, s7
	subw s8, s7, s8
	addw s7, a4, s8
	subw s8, s8, s7
	addw s8, a4, s8
	subw s8, s8, s7
	addw s7, a2, s8
	subw s8, s8, s7
	addw a2, a2, s8
	subw s7, a2, s7
	slliw a2, s7, 1
	srliw s8, s7, 31
	add s8, s7, s8
	sraiw s9, s8, 1
	ld s8, 688(sp)
	mulw s8, s9, s8
	subw s10, s7, s8
	addw s7, s10, a2
	ld s8, 696(sp)
	sw s7, 32(s8)
	ld s9, 488(sp)
	addw s9, s9, s2
	ld s8, 440(sp)
	addw s8, s9, s8
	addw s11, s8, t5
	subw s6, s6, s11
	ld s9, 488(sp)
	addw s6, s9, s6
	ld s8, 440(sp)
	addw s6, s6, s8
	subw s8, s6, s11
	addw s6, a5, s8
	subw s8, s8, s6
	addw s8, a5, s8
	subw s8, s8, s6
	addw s6, a3, s8
	subw s8, s8, s6
	addw a3, a3, s8
	subw s6, a3, s6
	slliw a3, s6, 1
	srliw s8, s6, 31
	add s8, s6, s8
	sraiw s9, s8, 1
	ld s8, 688(sp)
	mulw s8, s9, s8
	subw s9, s6, s8
	addw s6, s9, a3
	ld s8, 696(sp)
	sw s6, 36(s8)
	addw s8, a7, t6
	addw s8, s8, t3
	addw s8, s8, t2
	subw s5, s5, s8
	addw a7, a7, s5
	addw t3, a7, t3
	subw a7, t3, s8
	addw t3, t1, a7
	subw a7, a7, t3
	addw a7, t1, a7
	subw a7, a7, t3
	addw t3, a4, a7
	subw a7, a7, t3
	addw a4, a4, a7
	subw t3, a4, t3
	slliw a4, t3, 1
	srliw a7, t3, 31
	add a7, t3, a7
	sraiw a7, a7, 1
	ld s8, 688(sp)
	mulw a7, a7, s8
	subw a7, t3, a7
	addw t3, a7, a4
	ld s8, 696(sp)
	sw t3, 40(s8)
	addw s5, s1, s10
	addw s5, s5, t4
	addw a2, s5, a2
	subw s5, s7, a2
	addw s1, s1, s5
	addw t4, s1, t4
	subw t4, t4, a2
	addw a2, a0, t4
	subw t4, t4, a2
	addw t4, a0, t4
	subw t4, t4, a2
	addw a2, a5, t4
	subw t4, t4, a2
	addw a5, a5, t4
	subw a2, a5, a2
	slliw a5, a2, 1
	srliw t4, a2, 31
	add t4, a2, t4
	sraiw t4, t4, 1
	ld s8, 688(sp)
	mulw t4, t4, s8
	subw s1, a2, t4
	addw t4, s1, a5
	ld s8, 696(sp)
	sw t4, 44(s8)
	addw a2, s4, s9
	addw a2, a2, s0
	addw a2, a2, a3
	subw a3, s6, a2
	addw a3, s4, a3
	addw a3, a3, s0
	subw a3, a3, a2
	ld s5, 656(sp)
	addw a2, s5, a3
	subw a3, a3, a2
	ld s5, 656(sp)
	addw a3, s5, a3
	subw a3, a3, a2
	addw a2, t1, a3
	subw a3, a3, a2
	addw a3, t1, a3
	subw a3, a3, a2
	slliw a2, a3, 1
	srliw t1, a3, 31
	add t1, a3, t1
	sraiw t1, t1, 1
	ld s8, 688(sp)
	mulw t1, t1, s8
	subw t1, a3, t1
	addw a3, t1, a2
	ld s8, 696(sp)
	sw a3, 48(s8)
	addw a7, s3, a7
	addw a7, a7, a6
	addw a4, a7, a4
	subw t3, t3, a4
	addw t3, s3, t3
	addw t3, t3, a6
	subw t3, t3, a4
	ld s5, 672(sp)
	addw a4, s5, t3
	subw t3, t3, a4
	ld s5, 672(sp)
	addw t3, s5, t3
	subw t3, t3, a4
	addw a4, a0, t3
	subw t3, t3, a4
	addw a0, a0, t3
	subw a4, a0, a4
	slliw a0, a4, 1
	srliw t3, a4, 31
	add t3, a4, t3
	sraiw t3, t3, 1
	ld s8, 688(sp)
	mulw t3, t3, s8
	subw a4, a4, t3
	addw a0, a4, a0
	ld s8, 696(sp)
	sw a0, 52(s8)
	addw a0, s2, s1
	addw a0, a0, t5
	addw a0, a0, a5
	subw a4, t4, a0
	addw a4, s2, a4
	addw a4, a4, t5
	subw a4, a4, a0
	addw a0, a1, a4
	ld s7, 664(sp)
	addw a0, a0, s7
	subw a4, a4, a0
	addw a1, a1, a4
	ld s7, 664(sp)
	addw a1, a1, s7
	subw a1, a1, a0
	ld s5, 656(sp)
	addw a0, s5, a1
	subw a1, a1, a0
	ld s5, 656(sp)
	addw a1, s5, a1
	subw a1, a1, a0
	slliw a0, a1, 1
	srliw a4, a1, 31
	add a4, a1, a4
	sraiw a4, a4, 1
	ld s8, 688(sp)
	mulw a4, a4, s8
	subw a1, a1, a4
	addw a0, a1, a0
	ld s8, 696(sp)
	sw a0, 56(s8)
	addw a0, t6, t1
	addw a0, a0, t2
	addw a0, a0, a2
	subw a1, a3, a0
	addw a1, a1, t6
	addw a1, a1, t2
	subw a1, a1, a0
	ld s9, 488(sp)
	addw a0, a1, s9
	ld s8, 440(sp)
	addw a0, a0, s8
	subw a1, a1, a0
	ld s9, 488(sp)
	addw a1, a1, s9
	ld s8, 440(sp)
	addw a1, a1, s8
	subw a1, a1, a0
	ld s5, 672(sp)
	addw a0, a1, s5
	subw a1, a1, a0
	ld s5, 672(sp)
	addw a1, a1, s5
	subw a1, a1, a0
	slliw a0, a1, 1
	srliw a2, a1, 31
	add a2, a1, a2
	sraiw a2, a2, 1
	ld s8, 688(sp)
	mulw a2, a2, s8
	subw a1, a1, a2
	addw a0, a1, a0
	ld s8, 696(sp)
	sw a0, 60(s8)
	ld a0, 704(sp)
	addiw a0, a0, 16
	li a1, 80
	bge a0, a1, label773
	sd a0, 704(sp)
	j label24
label773:
	ld t2, 720(sp)
	ld t1, 712(sp)
	mv a0, zero
	ld a1, 8(sp)
	mv a5, a1
	ld a2, 0(sp)
	mv a1, a2
	ld a3, 760(sp)
	mv a2, a3
	ld a3, 744(sp)
	mv a4, a3
	ld t3, 728(sp)
	mv a3, t3
	li t3, 80
	bge zero, t3, label35
	li t3, 20
	bge zero, t3, label41
label40:
	addw t2, a2, a4
	li t1, -1
	subw t3, t1, a4
	addw t1, a1, a2
	addw t1, t1, a4
	addw t1, t1, t3
	subw t2, t2, t1
	addw t3, a1, t3
	addw t2, t3, t2
	subw t3, t2, t1
	addw t2, t1, t3
	subw t3, t3, t2
	addw t1, t1, t3
	subw t1, t1, t2
	li t2, 1518500249
	j label37
label41:
	li t3, 40
	bge a0, t3, label43
	j label1249
label37:
	slliw t3, a3, 5
	slli t4, a3, 1
	srli t4, t4, 59
	add t4, a3, t4
	sraiw t4, t4, 5
	li t5, 32
	mulw t4, t4, t5
	subw t4, a3, t4
	slli t5, a0, 2
	ld t6, 448(sp)
	add t5, t6, t5
	lw t5, 0(t5)
	addw a5, a5, t2
	addw a5, a5, t1
	addw a5, a5, t4
	addw a5, a5, t5
	addw t3, a5, t3
	slliw a5, a4, 30
	slli t4, a4, 1
	srli t4, t4, 34
	add t4, a4, t4
	sraiw t4, t4, 30
	li t5, 1073741824
	mulw t4, t4, t5
	subw a4, a4, t4
	addw t4, a4, a5
	addiw a0, a0, 1
	mv a5, a1
	mv a4, a3
	mv a1, a2
	mv a3, t3
	mv a2, t4
	li t3, 80
	bge a0, t3, label35
	li t3, 20
	bge a0, t3, label41
	j label40
label1249:
	addw t1, a2, a4
	subw t2, a4, t1
	addw t2, a2, t2
	subw t2, t2, t1
	addw t1, a1, t2
	subw t2, t2, t1
	addw t2, a1, t2
	subw t1, t2, t1
	li t2, 1859775361
	j label37
label43:
	li t3, 60
	bge a0, t3, label44
	j label46
label44:
	li t3, 80
	bge a0, t3, label37
	addw t1, a2, a4
	subw t2, a4, t1
	addw t2, a2, t2
	subw t2, t2, t1
	addw t1, a1, t2
	subw t2, t2, t1
	addw t2, a1, t2
	subw t1, t2, t1
	li t2, -899497722
	j label37
label46:
	addw t4, a2, a4
	slliw t2, a4, 1
	addw t1, a1, a2
	addw t3, t1, t2
	subw t4, t4, t3
	addw t5, a1, a4
	addw t4, t5, t4
	subw t4, t4, t3
	addw t3, t1, t4
	addw t3, t3, t2
	subw t4, t4, t3
	addw t4, t1, t4
	addw t2, t4, t2
	subw t3, t2, t3
	addw t2, t1, t3
	subw t3, t3, t2
	addw t1, t1, t3
	subw t3, t1, t2
	addw t1, t2, t3
	subw t3, t3, t1
	addw t2, t2, t3
	subw t1, t2, t1
	li t2, -1894007588
	j label37
label35:
	ld t3, 728(sp)
	addw t3, t3, a3
	ld a3, 744(sp)
	addw a4, a3, a4
	ld a3, 760(sp)
	addw a3, a3, a2
	ld a2, 0(sp)
	addw a2, a2, a1
	ld a1, 8(sp)
	addw a1, a1, a5
	ld a0, 736(sp)
	addiw a0, a0, 64
	sd t2, 720(sp)
	sd t1, 712(sp)
	sd a0, 736(sp)
	sd a1, 8(sp)
	sd a2, 0(sp)
	sd a3, 760(sp)
	mv a3, a4
	sd a4, 744(sp)
	sd t3, 728(sp)
	ld a1, 752(sp)
	bge a0, a1, label47
	j label23
label8:
	li a0, 128
	ld a1, 544(sp)
	sw a0, 0(a1)
	li a0, 32001
label9:
	slliw a1, a0, 2
	ld a3, 536(sp)
	add a1, a3, a1
	sw zero, 0(a1)
	addiw a1, a0, 1
	slli a2, a1, 1
	srli a2, a2, 58
	add a2, a1, a2
	sraiw a2, a2, 6
	li a3, 64
	mulw a2, a2, a3
	subw a2, a1, a2
	li a3, 60
	beq a2, a3, label11
	mv a0, a1
	j label9
label11:
	slliw a1, a1, 2
	ld a3, 536(sp)
	add a1, a3, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	li a2, 125
	sw a2, 8(a1)
	sw zero, 12(a1)
	addiw a1, a0, 5
	sd a1, 752(sp)
	mv a0, zero
	j label12
label48:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	ld a1, 504(sp)
	jal putarray
	mv a0, zero
	ld ra, 552(sp)
	ld s11, 560(sp)
	ld s10, 568(sp)
	ld s4, 576(sp)
	ld s3, 584(sp)
	ld s2, 592(sp)
	ld s9, 600(sp)
	ld s7, 608(sp)
	ld s8, 616(sp)
	ld s6, 624(sp)
	ld s1, 632(sp)
	ld s5, 640(sp)
	ld s0, 648(sp)
	addi sp, sp, 784
	ret
