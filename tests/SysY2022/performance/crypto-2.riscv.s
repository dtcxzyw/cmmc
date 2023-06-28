.data
.align 4
buffer:
	.4byte	0
	.zero	131068
.section .rodata
.bss
.text
.globl main
main:
	addi sp, sp, -624
	sd s0, 192(sp)
	sd s5, 120(sp)
	sd s1, 168(sp)
	sd s6, 144(sp)
	sd s3, 128(sp)
	sd s4, 96(sp)
	sd s2, 88(sp)
	sd s8, 80(sp)
	sd s7, 0(sp)
	sd s9, 8(sp)
	sd s10, 16(sp)
	sd s11, 240(sp)
	sd ra, 24(sp)
	addi t4, sp, 248
	sd t4, 136(sp)
	addi a1, sp, 216
	sd a1, 104(sp)
	jal getint
	mv s0, a0
	jal getint
	mv s1, a0
	li a0, 161
	jal _sysy_starttime
	sw zero, 216(sp)
	ld a1, 104(sp)
	sw zero, 4(a1)
	ld a1, 104(sp)
	sw zero, 8(a1)
	ld a1, 104(sp)
	sw zero, 12(a1)
	ld a1, 104(sp)
	sw zero, 16(a1)
pcrel1229:
	auipc a0, %pcrel_hi(buffer)
	addi a7, a0, %pcrel_lo(pcrel1229)
	sd a7, 152(sp)
	mv a1, s0
	mv a0, s1
	sd s1, 176(sp)
	ble s1, zero, label48
label62:
	mv a0, zero
label5:
	li a2, 8193
	mulw a1, a1, a2
	slli a2, a1, 1
	srli a2, a2, 47
	add a2, a1, a2
	sraiw a2, a2, 17
	addw a1, a1, a2
	li t3, 270369
	mulw a2, a1, t3
	slli a3, a2, 1
	srli a3, a3, 47
	add a3, a2, a3
	sraiw a3, a3, 17
	addw a2, a2, a3
	mulw a3, a2, t3
	slli a4, a3, 1
	srli a4, a4, 47
	add a4, a3, a4
	sraiw a4, a4, 17
	addw a3, a3, a4
	mulw a4, a3, t3
	slli a5, a4, 1
	srli a5, a5, 47
	add a5, a4, a5
	sraiw a5, a5, 17
	addw a4, a4, a5
	mulw a5, a4, t3
	slli t1, a5, 1
	srli t1, t1, 47
	add t1, a5, t1
	sraiw t1, t1, 17
	addw a5, a5, t1
	mulw t1, a5, t3
	slli t2, t1, 1
	srli t2, t2, 47
	add t2, t1, t2
	sraiw t2, t2, 17
	addw t1, t1, t2
	mulw t2, t1, t3
	slli t4, t2, 1
	srli t4, t4, 47
	add t4, t2, t4
	sraiw t4, t4, 17
	addw t2, t2, t4
	mulw t4, t2, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw t6, t4, t5
	mulw t4, t6, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw s1, t4, t5
	mulw t4, s1, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw s3, t4, t5
	mulw t4, s3, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw s4, t4, t5
	mulw t4, s4, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw s2, t4, t5
	mulw t4, s2, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw s0, t4, t5
	mulw t4, s0, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw a6, t4, t5
	mulw t4, a6, t3
	slli t5, t4, 1
	srli t5, t5, 47
	add t5, t4, t5
	sraiw t5, t5, 17
	addw t4, t4, t5
	mulw t3, t4, t3
	slli t5, t3, 1
	srli t5, t5, 47
	add t5, t3, t5
	sraiw t5, t5, 17
	addw t3, t3, t5
	li t5, 33
	mulw t3, t3, t5
	sd t3, 112(sp)
	slli t3, t3, 1
	srli a7, t3, 56
	ld t3, 112(sp)
	add t3, t3, a7
	sraiw t3, t3, 8
	li a7, 256
	mulw s5, t3, a7
	ld t3, 112(sp)
	subw t3, t3, s5
	mulw t4, t4, t5
	slli s5, t4, 1
	srli s5, s5, 56
	add s5, t4, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw t4, t4, s5
	mulw a6, a6, t5
	slli s5, a6, 1
	srli s5, s5, 56
	add s5, a6, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw a6, a6, s5
	mulw s0, s0, t5
	slli s5, s0, 1
	srli s5, s5, 56
	add s5, s0, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw s0, s0, s5
	mulw s2, s2, t5
	slli s5, s2, 1
	srli s5, s5, 56
	add s5, s2, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw s2, s2, s5
	mulw s4, s4, t5
	slli s5, s4, 1
	srli s5, s5, 56
	add s5, s4, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw s4, s4, s5
	mulw s3, s3, t5
	slli s5, s3, 1
	srli s5, s5, 56
	add s5, s3, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw s3, s3, s5
	mulw s1, s1, t5
	slli s5, s1, 1
	srli s5, s5, 56
	add s5, s1, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw s1, s1, s5
	mulw t6, t6, t5
	slli s5, t6, 1
	srli s5, s5, 56
	add s5, t6, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw t6, t6, s5
	mulw t2, t2, t5
	slli s5, t2, 1
	srli s5, s5, 56
	add s5, t2, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw t2, t2, s5
	mulw t1, t1, t5
	slli s5, t1, 1
	srli s5, s5, 56
	add s5, t1, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw t1, t1, s5
	mulw a5, a5, t5
	slli s5, a5, 1
	srli s5, s5, 56
	add s5, a5, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw a5, a5, s5
	mulw a4, a4, t5
	slli s5, a4, 1
	srli s5, s5, 56
	add s5, a4, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw a4, a4, s5
	mulw a3, a3, t5
	slli s5, a3, 1
	srli s5, s5, 56
	add s5, a3, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw a3, a3, s5
	mulw a2, a2, t5
	slli s5, a2, 1
	srli s5, s5, 56
	add s5, a2, s5
	sraiw s5, s5, 8
	mulw s5, s5, a7
	subw a2, a2, s5
	mulw a1, a1, t5
	slli t5, a1, 1
	srli t5, t5, 56
	add t5, a1, t5
	sraiw t5, t5, 8
	mulw t5, t5, a7
	subw t5, a1, t5
	slli a1, a0, 2
	ld a7, 152(sp)
	add a1, a7, a1
	sw t5, 0(a1)
	sw a2, 4(a1)
	sw a3, 8(a1)
	sw a4, 12(a1)
	sw a5, 16(a1)
	sw t1, 20(a1)
	sw t2, 24(a1)
	sw t6, 28(a1)
	sw s1, 32(a1)
	sw s3, 36(a1)
	sw s4, 40(a1)
	sw s2, 44(a1)
	sw s0, 48(a1)
	sw a6, 52(a1)
	sw t4, 56(a1)
	sw t3, 60(a1)
	addiw a0, a0, 16
	li a1, 32000
	bge a0, a1, label8
	ld t3, 112(sp)
	mv a1, t3
	j label5
label12:
	slli a1, a0, 2
	ld t4, 136(sp)
	add a1, t4, a1
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
	bge a0, a1, label202
	j label12
label202:
	mv t2, zero
	sd zero, 592(sp)
	mv t1, zero
	sd zero, 584(sp)
	mv a0, zero
	sd zero, 72(sp)
	li a1, -1009589776
	sd a1, 200(sp)
	li a2, 271733878
	sd a2, 160(sp)
	li a3, -1732584194
	sd a3, 208(sp)
	li a3, -271733879
	sd a3, 64(sp)
	li t3, 1732584193
	sd t3, 576(sp)
	ld a1, 184(sp)
	bge zero, a1, label47
	j label23
label47:
	lw a1, 216(sp)
	ld t3, 576(sp)
	addw a0, t3, a1
	subw a1, a1, a0
	ld t3, 576(sp)
	addw a1, t3, a1
	subw a0, a1, a0
	sw a0, 216(sp)
	ld a1, 104(sp)
	lw a1, 4(a1)
	ld a3, 64(sp)
	addw a0, a3, a1
	subw a1, a1, a0
	ld a3, 64(sp)
	addw a1, a3, a1
	subw a0, a1, a0
	ld a1, 104(sp)
	sw a0, 4(a1)
	ld a1, 104(sp)
	lw a1, 8(a1)
	ld a3, 208(sp)
	addw a0, a3, a1
	subw a1, a1, a0
	ld a3, 208(sp)
	addw a1, a3, a1
	subw a0, a1, a0
	ld a1, 104(sp)
	sw a0, 8(a1)
	ld a1, 104(sp)
	lw a1, 12(a1)
	ld a2, 160(sp)
	addw a0, a2, a1
	subw a1, a1, a0
	ld a2, 160(sp)
	addw a1, a2, a1
	subw a0, a1, a0
	ld a1, 104(sp)
	sw a0, 12(a1)
	ld a1, 104(sp)
	lw a2, 16(a1)
	ld a1, 200(sp)
	addw a0, a1, a2
	subw a2, a2, a0
	ld a1, 200(sp)
	addw a1, a1, a2
	subw a0, a1, a0
	ld a1, 104(sp)
	sw a0, 16(a1)
	ld a0, 176(sp)
	addiw a0, a0, -1
	ld t3, 112(sp)
	mv a1, t3
	sd a0, 176(sp)
	ble a0, zero, label48
	j label62
label23:
	ld a0, 72(sp)
	slliw a0, a0, 2
	ld a7, 152(sp)
	add a0, a7, a0
	lw a1, 0(a0)
	lw a2, 4(a0)
	slliw a2, a2, 16
	slliw a1, a1, 24
	addw a1, a1, a2
	lw a2, 8(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 12(a0)
	addw a1, a1, a2
	sw a1, 248(sp)
	lw a1, 16(a0)
	slliw a1, a1, 24
	lw a2, 20(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 24(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 28(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 4(t4)
	lw a1, 32(a0)
	slliw a1, a1, 24
	lw a2, 36(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 40(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 44(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 8(t4)
	lw a1, 48(a0)
	slliw a1, a1, 24
	lw a2, 52(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 56(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 60(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 12(t4)
	lw a1, 64(a0)
	slliw a1, a1, 24
	lw a2, 68(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 72(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 76(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 16(t4)
	lw a1, 80(a0)
	slliw a1, a1, 24
	lw a2, 84(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 88(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 92(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 20(t4)
	lw a1, 96(a0)
	slliw a1, a1, 24
	lw a2, 100(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 104(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 108(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 24(t4)
	lw a1, 112(a0)
	slliw a1, a1, 24
	lw a2, 116(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 120(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 124(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 28(t4)
	lw a1, 128(a0)
	slliw a1, a1, 24
	lw a2, 132(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 136(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 140(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 32(t4)
	lw a1, 144(a0)
	slliw a1, a1, 24
	lw a2, 148(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 152(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 156(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 36(t4)
	lw a1, 160(a0)
	slliw a1, a1, 24
	lw a2, 164(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 168(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 172(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 40(t4)
	lw a1, 176(a0)
	slliw a1, a1, 24
	lw a2, 180(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 184(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 188(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 44(t4)
	lw a1, 192(a0)
	slliw a1, a1, 24
	lw a2, 196(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 200(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 204(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 48(t4)
	lw a1, 208(a0)
	slliw a1, a1, 24
	lw a2, 212(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 216(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 220(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 52(t4)
	lw a1, 224(a0)
	slliw a1, a1, 24
	lw a2, 228(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 232(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a2, 236(a0)
	addw a1, a1, a2
	ld t4, 136(sp)
	sw a1, 56(t4)
	lw a1, 240(a0)
	slliw a1, a1, 24
	lw a2, 244(a0)
	slliw a2, a2, 16
	addw a1, a1, a2
	lw a2, 248(a0)
	slliw a2, a2, 8
	addw a1, a1, a2
	lw a0, 252(a0)
	addw a0, a1, a0
	ld t4, 136(sp)
	sw a0, 60(t4)
	li a0, 16
	sd a0, 600(sp)
	j label24
label35:
	ld t3, 576(sp)
	addw t3, t3, a3
	ld a3, 64(sp)
	addw a4, a3, a4
	ld a3, 208(sp)
	addw a3, a3, a2
	ld a2, 160(sp)
	addw a2, a2, a1
	ld a1, 200(sp)
	addw a1, a1, a5
	ld a0, 72(sp)
	addiw a0, a0, 64
	sd t2, 592(sp)
	sd t1, 584(sp)
	sd a0, 72(sp)
	sd a1, 200(sp)
	sd a2, 160(sp)
	sd a3, 208(sp)
	mv a3, a4
	sd a4, 64(sp)
	sd t3, 576(sp)
	ld a1, 184(sp)
	bge a0, a1, label47
	j label23
label24:
	ld a0, 600(sp)
	slli a0, a0, 2
	ld t4, 136(sp)
	add s8, t4, a0
	sd s8, 608(sp)
	lw s8, -12(s8)
	sd s8, 616(sp)
	ld s8, 608(sp)
	lw a0, -32(s8)
	ld s8, 616(sp)
	addw a1, s8, a0
	ld s8, 616(sp)
	subw a2, s8, a1
	addw a2, a0, a2
	subw a2, a2, a1
	ld s8, 608(sp)
	lw a1, -56(s8)
	addw a3, a2, a1
	subw a2, a2, a3
	addw a2, a1, a2
	subw a2, a2, a3
	ld s8, 608(sp)
	lw a4, -64(s8)
	addw a3, a2, a4
	subw a2, a2, a3
	addw a2, a4, a2
	subw a4, a2, a3
	slliw a2, a4, 1
	srliw a3, a4, 31
	add a3, a4, a3
	sraiw a3, a3, 1
	li s8, 2
	sd s8, 56(sp)
	mulw a3, a3, s8
	subw a5, a4, a3
	addw s3, a2, a5
	sd s3, 568(sp)
	ld s8, 608(sp)
	sw s3, 0(s8)
	ld s8, 608(sp)
	lw s8, -8(s8)
	sd s8, 32(sp)
	ld s8, 608(sp)
	lw s4, -28(s8)
	ld s8, 32(sp)
	addw a2, s8, s4
	ld s8, 32(sp)
	subw a3, s8, a2
	addw a3, s4, a3
	subw a2, a3, a2
	ld s8, 608(sp)
	lw t1, -52(s8)
	addw a3, a2, t1
	subw a2, a2, a3
	addw a2, t1, a2
	subw a2, a2, a3
	ld s8, 608(sp)
	lw t2, -60(s8)
	addw a3, a2, t2
	subw a2, a2, a3
	addw a2, t2, a2
	subw t3, a2, a3
	slliw a2, t3, 1
	srliw a3, t3, 31
	add a3, t3, a3
	sraiw a3, a3, 1
	ld s8, 56(sp)
	mulw a3, a3, s8
	subw s0, t3, a3
	addw t6, a2, s0
	ld s8, 608(sp)
	sw t6, 4(s8)
	ld s8, 608(sp)
	lw s8, -4(s8)
	sd s8, 48(sp)
	ld s8, 608(sp)
	lw s3, -24(s8)
	sd s3, 40(sp)
	ld s8, 48(sp)
	addw a2, s8, s3
	ld s8, 48(sp)
	subw a3, s8, a2
	addw a3, s3, a3
	subw a2, a3, a2
	ld s8, 608(sp)
	lw s2, -48(s8)
	addw a3, a2, s2
	subw a2, a2, a3
	addw a2, s2, a2
	subw a3, a2, a3
	addw a2, a1, a3
	subw a3, a3, a2
	addw a1, a1, a3
	subw a1, a1, a2
	slliw s1, a1, 1
	srliw a2, a1, 31
	add a2, a1, a2
	sraiw a2, a2, 1
	ld s8, 56(sp)
	mulw a2, a2, s8
	subw a3, a1, a2
	addw a2, s1, a3
	ld s8, 608(sp)
	sw a2, 8(s8)
	ld s8, 608(sp)
	lw t2, -20(s8)
	ld s3, 568(sp)
	addw t4, s3, t2
	ld s3, 568(sp)
	subw t5, s3, t4
	addw t5, t2, t5
	subw t4, t5, t4
	ld s8, 608(sp)
	lw s3, -44(s8)
	addw t5, t4, s3
	subw t4, t4, t5
	addw t4, s3, t4
	subw t5, t4, t5
	addw t4, t1, t5
	subw t5, t5, t4
	addw t1, t1, t5
	subw t5, t1, t4
	slliw t1, t5, 1
	ld s8, 32(sp)
	addw t4, t1, s8
	srliw a6, t5, 31
	add a6, t5, a6
	sraiw a6, a6, 1
	ld s8, 56(sp)
	mulw a6, a6, s8
	subw a7, t5, a6
	addw a6, t4, a7
	addw t4, t1, a7
	subw t1, t4, a6
	ld s8, 32(sp)
	addw t1, s8, t1
	subw a6, t1, a6
	addw t1, a0, a6
	subw a6, a6, t1
	addw a6, a0, a6
	subw a6, a6, t1
	ld s8, 608(sp)
	sw t4, 12(s8)
	ld s8, 608(sp)
	lw t1, -16(s8)
	ld s8, 608(sp)
	lw s5, -40(s8)
	addw s6, s5, a6
	subw a6, a6, s6
	addw a6, s5, a6
	subw a6, a6, s6
	addw t3, t3, a6
	slliw t3, t3, 1
	addw t3, t3, s0
	srliw s0, a6, 31
	add s0, a6, s0
	sraiw s0, s0, 1
	ld s8, 56(sp)
	mulw s0, s0, s8
	subw s0, a6, s0
	addw s6, t3, s0
	slliw t3, a6, 1
	addw t3, t3, s0
	subw s7, t3, s6
	addw s7, t6, s7
	subw s7, s7, s6
	addw s6, t2, s7
	subw s7, s7, s6
	addw s7, t2, s7
	subw s7, s7, s6
	addw s6, s4, s7
	subw s7, s7, s6
	addw s7, s4, s7
	subw s6, s7, s6
	addw s7, t6, t1
	subw s8, t6, s7
	addw s8, t1, s8
	subw s8, s8, s7
	addw s7, s8, s5
	subw s8, s8, s7
	addw s5, s5, s8
	subw s7, s5, s7
	addw s5, s2, s7
	subw s7, s7, s5
	addw s2, s2, s7
	subw s7, s2, s5
	addw s2, s7, s6
	slliw s2, s2, 1
	srliw s5, s7, 31
	add s5, s7, s5
	sraiw s5, s5, 1
	ld s8, 56(sp)
	mulw s5, s5, s8
	subw s5, s7, s5
	addw s2, s2, s5
	srliw s8, s6, 31
	add s8, s6, s8
	sraiw s9, s8, 1
	ld s8, 56(sp)
	mulw s8, s9, s8
	subw s9, s6, s8
	addw s8, s2, s9
	slliw s2, s6, 1
	addw s2, s2, s9
	subw s10, s2, s8
	slliw s9, s7, 1
	addw s6, s9, s5
	addw s7, s6, s10
	subw s10, s7, s8
	ld s8, 32(sp)
	addw s7, s8, s10
	subw s10, s10, s7
	ld s8, 32(sp)
	addw s8, s8, s10
	subw s8, s8, s7
	addw s7, t1, s8
	subw s8, s8, s7
	addw s8, t1, s8
	subw s7, s8, s7
	ld s8, 48(sp)
	addw s8, s9, s8
	addw s5, s8, s5
	subw s9, s6, s5
	ld s8, 48(sp)
	addw s8, s8, s9
	subw s8, s8, s5
	addw s5, s4, s8
	subw s8, s8, s5
	addw s4, s4, s8
	subw s4, s4, s5
	ld s8, 608(sp)
	sw s6, 16(s8)
	ld s8, 608(sp)
	lw s9, -36(s8)
	addw s5, s9, s4
	subw s4, s4, s5
	addw s4, s9, s4
	subw s5, s4, s5
	addw s4, s5, s7
	slliw s4, s4, 1
	srliw s6, s5, 31
	add s6, s5, s6
	sraiw s6, s6, 1
	ld s8, 56(sp)
	mulw s6, s6, s8
	subw s6, s5, s6
	addw s4, s4, s6
	srliw s8, s7, 31
	add s8, s7, s8
	sraiw s10, s8, 1
	ld s8, 56(sp)
	mulw s8, s10, s8
	subw s10, s7, s8
	addw s8, s4, s10
	slliw s4, s7, 1
	addw s4, s4, s10
	subw s10, s4, s8
	slliw s7, s5, 1
	addw s7, s7, s6
	addw s10, s7, s10
	subw s10, s10, s8
	addw s8, t6, s10
	subw s10, s10, s8
	addw t6, t6, s10
	subw s10, t6, s8
	ld s8, 48(sp)
	addw t6, s8, s10
	subw s10, s10, t6
	ld s8, 48(sp)
	addw s8, s8, s10
	subw s10, s8, t6
	slliw t6, s10, 1
	srliw s8, s10, 31
	add s8, s10, s8
	sraiw s11, s8, 1
	ld s8, 56(sp)
	mulw s8, s11, s8
	subw s8, s10, s8
	addw t6, t6, s8
	ld s8, 616(sp)
	addw s1, s1, s8
	addw s1, s1, a3
	subw s10, a2, s1
	ld s8, 616(sp)
	addw s8, s8, s10
	subw s8, s8, s1
	addw s1, s8, s9
	subw s8, s8, s1
	addw s8, s9, s8
	subw s8, s8, s1
	addw s1, s3, s8
	subw s8, s8, s1
	addw s3, s3, s8
	subw s1, s3, s1
	addw a4, a4, s1
	slliw a4, a4, 1
	addw a5, a4, a5
	srliw a4, s1, 31
	add a4, s1, a4
	sraiw a4, a4, 1
	ld s8, 56(sp)
	mulw a4, a4, s8
	subw a4, s1, a4
	addw s8, a5, a4
	slliw a5, s1, 1
	addw a5, a5, a4
	subw s9, a5, s8
	ld s3, 568(sp)
	addw s3, s3, s9
	subw s9, s3, s8
	ld s3, 40(sp)
	addw s8, s3, s9
	subw s9, s9, s8
	ld s3, 40(sp)
	addw s3, s3, s9
	subw s8, s3, s8
	addw s3, a0, s8
	subw s8, s8, s3
	addw a0, a0, s8
	subw a0, a0, s3
	addw t5, t5, a0
	slliw t5, t5, 1
	addw t5, t5, a7
	srliw a7, a0, 31
	add a7, a0, a7
	sraiw a7, a7, 1
	ld s8, 56(sp)
	mulw a7, a7, s8
	subw s3, a0, a7
	addw a7, t5, s3
	slliw a0, a0, 1
	addw t5, a0, s3
	subw a0, t5, a7
	addw a0, t4, a0
	subw t4, a0, a7
	ld s8, 616(sp)
	addw a0, s8, t4
	subw t4, t4, a0
	ld s8, 616(sp)
	addw t4, s8, t4
	subw t4, t4, a0
	addw a0, t2, t4
	subw t4, t4, a0
	addw t2, t2, t4
	subw a0, t2, a0
	addw t2, a6, a0
	slliw t2, t2, 1
	addw t2, t2, s0
	srliw t4, a0, 31
	add t4, a0, t4
	sraiw t4, t4, 1
	ld s8, 56(sp)
	mulw t4, t4, s8
	subw a6, a0, t4
	addw t4, t2, a6
	slliw a0, a0, 1
	addw t2, a0, a6
	subw a0, t2, t4
	addw a0, t3, a0
	subw t4, a0, t4
	ld s3, 568(sp)
	addw a0, s3, t4
	subw t4, t4, a0
	ld s3, 568(sp)
	addw t4, s3, t4
	subw t4, t4, a0
	ld s8, 32(sp)
	addw a0, s8, t4
	subw t4, t4, a0
	ld s8, 32(sp)
	addw t4, s8, t4
	subw t4, t4, a0
	slliw a0, t4, 1
	srliw a6, t4, 31
	add a6, t4, a6
	sraiw a6, a6, 1
	ld s8, 56(sp)
	mulw a6, a6, s8
	subw t4, t4, a6
	addw a0, a0, t4
	ld s8, 608(sp)
	sw a5, 20(s8)
	ld s8, 608(sp)
	sw t3, 24(s8)
	ld s8, 608(sp)
	sw s7, 28(s8)
	ld s8, 608(sp)
	sw t5, 32(s8)
	ld s8, 608(sp)
	sw s2, 36(s8)
	addw a1, a1, s5
	slliw a1, a1, 1
	addw a1, a1, a3
	addw a1, a1, s6
	subw a3, s7, a1
	addw a2, a2, a3
	subw a2, a2, a1
	addw a1, t1, a2
	subw a2, a2, a1
	addw a2, t1, a2
	subw a2, a2, a1
	ld s3, 40(sp)
	addw a1, s3, a2
	subw a2, a2, a1
	ld s3, 40(sp)
	addw a2, s3, a2
	subw a1, a2, a1
	slliw a3, a1, 1
	srliw a2, a1, 31
	add a2, a1, a2
	sraiw a2, a2, 1
	ld s8, 56(sp)
	mulw a2, a2, s8
	subw a2, a1, a2
	addw a3, a3, a2
	ld s8, 608(sp)
	sw a3, 40(s8)
	ld s8, 608(sp)
	sw t2, 44(s8)
	ld s8, 608(sp)
	sw s4, 48(s8)
	addw a1, s1, a1
	slliw a1, a1, 1
	addw a1, a1, a4
	addw a1, a1, a2
	subw a2, a3, a1
	addw a2, a5, a2
	subw a2, a2, a1
	ld s8, 48(sp)
	addw a1, s8, a2
	subw a2, a2, a1
	ld s8, 48(sp)
	addw a2, s8, a2
	subw a2, a2, a1
	ld s8, 616(sp)
	addw a1, s8, a2
	subw a2, a2, a1
	ld s8, 616(sp)
	addw a2, s8, a2
	subw a2, a2, a1
	slliw a1, a2, 1
	srliw a3, a2, 31
	add a3, a2, a3
	sraiw a3, a3, 1
	ld s8, 56(sp)
	mulw a3, a3, s8
	subw a2, a2, a3
	addw a1, a1, a2
	ld s8, 608(sp)
	sw a1, 52(s8)
	ld s8, 608(sp)
	sw a0, 56(s8)
	ld s8, 608(sp)
	sw t6, 60(s8)
	ld a0, 600(sp)
	addiw a0, a0, 16
	li a1, 80
	bge a0, a1, label767
	sd a0, 600(sp)
	j label24
label767:
	ld t2, 592(sp)
	ld t1, 584(sp)
	mv a0, zero
	ld a1, 200(sp)
	mv a5, a1
	ld a2, 160(sp)
	mv a1, a2
	ld a3, 208(sp)
	mv a2, a3
	ld a3, 64(sp)
	mv a4, a3
	ld t3, 576(sp)
	mv a3, t3
	li t3, 80
	bge zero, t3, label35
	li t3, 20
	bge zero, t3, label40
	j label46
label37:
	slliw t3, a3, 5
	addw a5, a5, t3
	addw a5, a5, t2
	addw a5, a5, t1
	slli t3, a3, 1
	srli t3, t3, 59
	add t3, a3, t3
	sraiw t3, t3, 5
	li t4, 32
	mulw t3, t3, t4
	subw t3, a3, t3
	addw a5, a5, t3
	slli t3, a0, 2
	ld t4, 136(sp)
	add t3, t4, t3
	lw t3, 0(t3)
	addw t3, a5, t3
	slliw a5, a4, 30
	slli t4, a4, 1
	srli t4, t4, 34
	add t4, a4, t4
	sraiw t4, t4, 30
	li t5, 1073741824
	mulw t4, t4, t5
	subw a4, a4, t4
	addw t4, a5, a4
	addiw a0, a0, 1
	mv a5, a1
	mv a4, a3
	mv a1, a2
	mv a3, t3
	mv a2, t4
	li t3, 80
	bge a0, t3, label35
	li t3, 20
	bge a0, t3, label40
	j label46
label40:
	li t3, 40
	bge a0, t3, label41
	j label1225
label46:
	addw t1, a1, a2
	addw t1, t1, a4
	li t2, -1
	subw t2, t2, a4
	addw t1, t1, t2
	addw t3, a2, a4
	subw t3, t3, t1
	addw t2, a1, t2
	addw t2, t2, t3
	subw t3, t2, t1
	addw t2, t1, t3
	subw t3, t3, t2
	addw t1, t1, t3
	subw t1, t1, t2
	li t2, 1518500249
	j label37
label1225:
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
label41:
	li t3, 60
	bge a0, t3, label42
	slliw t2, a4, 1
	addw t1, a1, a2
	addw t2, t1, t2
	addw t3, a2, a4
	subw t3, t3, t2
	addw t4, a1, a4
	addw t3, t4, t3
	subw t4, t3, t2
	addw t3, t2, t4
	subw t4, t4, t3
	addw t2, t2, t4
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
label42:
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
label8:
	li a0, 128000
	ld a7, 152(sp)
	add a0, a7, a0
	li a1, 128
	sw a1, 0(a0)
	li a0, 32001
label9:
	addiw a1, a0, 1
	slli a2, a1, 1
	srli a2, a2, 58
	add a2, a1, a2
	sraiw a2, a2, 6
	li a3, 64
	mulw a2, a2, a3
	subw a2, a1, a2
	slliw a3, a0, 2
	ld a7, 152(sp)
	add a3, a7, a3
	sw zero, 0(a3)
	li a3, 60
	beq a2, a3, label11
	mv a0, a1
	j label9
label11:
	slliw a1, a1, 2
	ld a7, 152(sp)
	add a1, a7, a1
	sw zero, 0(a1)
	sw zero, 4(a1)
	li a2, 125
	sw a2, 8(a1)
	sw zero, 12(a1)
	addiw a1, a0, 5
	sd a1, 184(sp)
	mv a0, zero
	j label12
label48:
	li a0, 184
	jal _sysy_stoptime
	li a0, 5
	ld a1, 104(sp)
	jal putarray
	mv a0, zero
	ld ra, 24(sp)
	ld s11, 240(sp)
	ld s10, 16(sp)
	ld s9, 8(sp)
	ld s7, 0(sp)
	ld s8, 80(sp)
	ld s2, 88(sp)
	ld s4, 96(sp)
	ld s3, 128(sp)
	ld s6, 144(sp)
	ld s1, 168(sp)
	ld s5, 120(sp)
	ld s0, 192(sp)
	addi sp, sp, 624
	ret
