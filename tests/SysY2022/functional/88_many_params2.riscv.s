.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
b:
	.zero	12508
.align 8
a:
	.zero	16348
.text
.p2align 2
.globl main
main:
	addi sp, sp, -104
pcrel506:
	auipc a0, %pcrel_hi(a)
	mv a2, zero
	li a3, 4032
	sd ra, 0(sp)
	sd s5, 8(sp)
	addi s5, a0, %pcrel_lo(pcrel506)
	sd s0, 16(sp)
	addi a0, a3, -960
	li s0, 10
	sd s1, 24(sp)
	li s1, 128875
	sd s6, 32(sp)
	sd s4, 40(sp)
	li s4, 6
	sd s2, 48(sp)
	addi s2, a3, -308
	sd s3, 56(sp)
	li s3, -1932965947
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	sd s11, 96(sp)
.p2align 2
label2:
	sh2add a1, a2, s5
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	addi a1, a2, 64
	bge a1, a3, label4
	mv a2, a1
	j label2
label4:
	sh2add a1, a1, s5
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
	sw zero, 64(a1)
	sw zero, 68(a1)
	sw zero, 72(a1)
	sw zero, 76(a1)
	sw zero, 80(a1)
	sw zero, 84(a1)
	sw zero, 88(a1)
	sw zero, 92(a1)
	sw zero, 96(a1)
	sw zero, 100(a1)
	sw zero, 104(a1)
	sw zero, 108(a1)
	sw zero, 112(a1)
	sw zero, 116(a1)
	sw zero, 120(a1)
	sw zero, 124(a1)
	sw zero, 128(a1)
	sw zero, 132(a1)
	sw zero, 136(a1)
	sw zero, 140(a1)
	sw zero, 144(a1)
	sw zero, 148(a1)
	sw zero, 152(a1)
	sw zero, 156(a1)
	sw zero, 160(a1)
	sw zero, 164(a1)
	sw zero, 168(a1)
	sw zero, 172(a1)
	sw zero, 176(a1)
	sw zero, 180(a1)
	sw zero, 184(a1)
	sw zero, 188(a1)
	addi a1, a2, 112
.p2align 2
label5:
	sh2add a2, a1, s5
	addi a1, a1, 4
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	li a2, 4083
	blt a1, a2, label5
.p2align 2
label7:
	sh2add a2, a1, s5
	addi a1, a1, 1
	sw zero, 0(a2)
	li a2, 4087
	blt a1, a2, label7
pcrel507:
	auipc a4, %pcrel_hi(b)
	mv a3, zero
	addi a2, a4, %pcrel_lo(pcrel507)
.p2align 2
label10:
	sh2add a1, a3, a2
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	addi a1, a3, 64
	bge a1, a0, label12
	mv a3, a1
	j label10
label12:
	sh2add a0, a1, a2
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	sw zero, 64(a0)
	sw zero, 68(a0)
	sw zero, 72(a0)
	sw zero, 76(a0)
	sw zero, 80(a0)
	sw zero, 84(a0)
	sw zero, 88(a0)
	sw zero, 92(a0)
	sw zero, 96(a0)
	sw zero, 100(a0)
	sw zero, 104(a0)
	sw zero, 108(a0)
	sw zero, 112(a0)
	sw zero, 116(a0)
	sw zero, 120(a0)
	sw zero, 124(a0)
	sw zero, 128(a0)
	sw zero, 132(a0)
	sw zero, 136(a0)
	sw zero, 140(a0)
	sw zero, 144(a0)
	sw zero, 148(a0)
	sw zero, 152(a0)
	sw zero, 156(a0)
	sw zero, 160(a0)
	sw zero, 164(a0)
	sw zero, 168(a0)
	sw zero, 172(a0)
	sw zero, 176(a0)
	sw zero, 180(a0)
	sw zero, 184(a0)
	sw zero, 188(a0)
	addi a0, a3, 112
.p2align 2
label13:
	sh2add a1, a0, a2
	addi a0, a0, 4
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	li a1, 3123
	blt a0, a1, label13
.p2align 2
label15:
	sh2add a1, a0, a2
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 3127
	blt a0, a1, label15
	li a3, 4584
	li a0, 9
	addi s7, a2, 1416
	mv s11, zero
	add a1, s5, a3
	mv s6, s7
	li a3, 1
	sw a0, 0(a1)
	li a1, 2
	sw a3, 1420(a2)
	li a3, 3
	sw a1, 1424(a2)
	li a1, 8040
	sw a3, 1428(a2)
	sw a0, 1452(a2)
	add a0, a2, a1
	lw s8, 1416(a2)
	li a1, 12108
	lw s9, 0(a0)
	add a0, a2, a1
	lw s10, 0(a0)
.p2align 2
label18:
	sh2add a1, s11, s6
	lw a0, 0(a1)
	jal putint
	addiw s11, s11, 1
	blt s11, s0, label18
	mv a0, s0
	jal putch
	li a2, 4584
	add a1, s5, a2
	lw a0, 0(a1)
	jal putint
	mv a0, s0
	jal putch
	bge s10, s0, label28
	addiw a0, s10, 4
	bge a0, s0, label22
	mv a0, s9
	mv a1, s10
	j label25
label22:
	sh2add a0, s10, s7
	mulw a1, s9, s1
	addiw s10, s10, 1
	addiw s9, s9, 7
	mul a3, a1, s3
	srli a4, a3, 32
	add a2, a4, a1
	srliw a4, a2, 31
	sraiw a3, a2, 11
	add a2, a4, a3
	mulw a3, a2, s2
	subw a1, a1, a3
	sw a1, 0(a0)
	blt s10, s0, label22
	j label28
.p2align 2
label25:
	sh2add a2, a1, s7
	mulw a3, a0, s1
	addiw a1, a1, 4
	mul a5, a3, s3
	srli t0, a5, 32
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add t1, t0, a5
	mulw a4, t1, s2
	subw a3, a3, a4
	addiw a4, a0, 7
	sw a3, 0(a2)
	mulw a3, a4, s1
	mul a5, a3, s3
	srli t0, a5, 32
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add t1, t0, a5
	mulw a4, t1, s2
	subw a3, a3, a4
	addiw a4, a0, 14
	sw a3, 4(a2)
	mulw a3, a4, s1
	mul a5, a3, s3
	srli t0, a5, 32
	add a4, t0, a3
	srliw t1, a4, 31
	sraiw a5, a4, 11
	add t0, t1, a5
	mulw a4, t0, s2
	subw a3, a3, a4
	addiw a4, a0, 21
	addiw a0, a0, 28
	sw a3, 8(a2)
	mulw a3, a4, s1
	mul a5, a3, s3
	srli t0, a5, 32
	add a4, t0, a3
	srliw t0, a4, 31
	sraiw a5, a4, 11
	add a4, t0, a5
	mulw a5, a4, s2
	subw a3, a3, a5
	sw a3, 12(a2)
	blt a1, s4, label25
	mv s10, a1
	mv s9, a0
	j label22
label28:
	addiw a2, s8, 3
	sh1add a0, a2, a2
	mv s1, a0
	blt a0, zero, label31
.p2align 2
label29:
	sh2add a1, s1, s6
	lw a0, 0(a1)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, -1
	bge s1, zero, label29
label31:
	mv a0, s0
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s5, 8(sp)
	ld s0, 16(sp)
	ld s1, 24(sp)
	ld s6, 32(sp)
	ld s4, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	ld s11, 96(sp)
	addi sp, sp, 104
	ret
