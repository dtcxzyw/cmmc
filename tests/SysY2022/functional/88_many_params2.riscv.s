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
pcrel689:
	auipc a0, %pcrel_hi(a)
	mv a3, zero
	li a5, 63
	lui a4, 31
	slli a2, a5, 6
	sd ra, 0(sp)
	sd s4, 8(sp)
	addi s4, a0, %pcrel_lo(pcrel689)
	sd s0, 16(sp)
	addi a0, a2, -960
	mv a1, s4
	addiw s0, a4, 1899
	sd s5, 24(sp)
	lui a4, 576660
	sd s3, 32(sp)
	li s3, 6
	sd s1, 40(sp)
	addi s1, a0, 652
	sd s6, 48(sp)
	sd s2, 56(sp)
	addiw s2, a4, 1989
	sd s7, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	sd s11, 88(sp)
	sd s10, 96(sp)
.p2align 2
label2:
	sd zero, 0(a1)
	addi a4, a3, 64
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
	bge a4, a2, label6
	addi a1, a1, 256
	mv a3, a4
	j label2
label6:
	sh2add a1, a4, s4
	addi a2, a3, 112
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
	sh2add a1, a2, s4
.p2align 2
label7:
	sw zero, 0(a1)
	addi a2, a2, 4
	lui a4, 1
	sw zero, 4(a1)
	addiw a3, a4, -13
	sw zero, 8(a1)
	sw zero, 12(a1)
	bge a2, a3, label187
	addi a1, a1, 16
	j label7
label187:
	sh2add a1, a2, s4
.p2align 2
label12:
	sw zero, 0(a1)
	addi a2, a2, 1
	lui a4, 1
	addiw a3, a4, -9
	bge a2, a3, label195
	addi a1, a1, 4
	j label12
label195:
	auipc a4, %pcrel_hi(b)
	mv a3, zero
	addi a2, a4, %pcrel_lo(label195)
	mv a1, a2
.p2align 2
label17:
	sd zero, 0(a1)
	addi a4, a3, 64
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
	bge a4, a0, label20
	addi a1, a1, 256
	mv a3, a4
	j label17
label20:
	sh2add a0, a4, a2
	addi a1, a3, 112
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
	sh2add a0, a1, a2
.p2align 2
label21:
	sw zero, 0(a0)
	addi a1, a1, 4
	lui a4, 1
	sw zero, 4(a0)
	addiw a3, a4, -973
	sw zero, 8(a0)
	sw zero, 12(a0)
	bge a1, a3, label24
	addi a0, a0, 16
	j label21
label24:
	sh2add a0, a1, a2
.p2align 2
label25:
	sw zero, 0(a0)
	addi a1, a1, 1
	lui a4, 1
	addiw a3, a4, -969
	bge a1, a3, label28
	addi a0, a0, 4
	j label25
label28:
	li a4, 573
	li a0, 9
	addi s7, a2, 1416
	mv s10, zero
	slli a3, a4, 3
	mv s11, s7
	mv s5, s7
	li a4, 3
	add a1, s4, a3
	li a3, 1
	sw a0, 0(a1)
	slli a1, a4, 32
	sw a3, 1420(a2)
	addi a3, a1, 2
	sd a3, 1424(a2)
	li a3, 1005
	sw a0, 1452(a2)
	slli a0, a3, 3
	lw s6, 1416(a2)
	lui a3, 3
	add a1, a2, a0
	addiw a0, a3, -180
	lw s8, 0(a1)
	add a1, a2, a0
	lw s9, 0(a1)
.p2align 2
label29:
	lw a0, 0(s11)
	jal putint
	addiw a1, s10, 1
	li s10, 10
	bge a1, s10, label33
	addi s11, s11, 4
	mv s10, a1
	j label29
label33:
	li s10, 10
	mv a0, s10
	jal putch
	li a3, 573
	slli a2, a3, 3
	add a1, s4, a2
	lw a0, 0(a1)
	jal putint
	mv a0, s10
	jal putch
	bge s9, s10, label34
	addiw a1, s9, 4
	li s10, 10
	bge a1, s10, label379
	sh2add a0, s9, s7
	mv a1, s8
	mv a2, s9
.p2align 2
label43:
	mulw a3, a1, s0
	addiw a2, a2, 4
	mul t0, a3, s2
	srli t1, t0, 32
	add a4, t1, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	add t0, t2, a5
	addiw a5, a1, 7
	mulw t1, t0, s1
	subw a4, a3, t1
	mulw a3, a5, s0
	sw a4, 0(a0)
	mul t0, a3, s2
	srli t1, t0, 32
	add a4, t1, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	addiw a4, a1, 14
	add t0, t2, a5
	mulw t3, t0, s1
	subw t1, a3, t3
	mulw a3, a4, s0
	sw t1, 4(a0)
	mul t0, a3, s2
	srli t1, t0, 32
	add a4, t1, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	addiw a4, a1, 21
	add t0, t2, a5
	addiw a1, a1, 28
	mulw t1, t0, s1
	subw t3, a3, t1
	mulw a3, a4, s0
	sw t3, 8(a0)
	mul t0, a3, s2
	srli t1, t0, 32
	add a4, t1, a3
	srliw t2, a4, 31
	sraiw a5, a4, 11
	add t1, t2, a5
	mulw t0, t1, s1
	subw a4, a3, t0
	sw a4, 12(a0)
	bge a2, s3, label401
	addi a0, a0, 16
	j label43
label379:
	sh2add a0, s9, s7
	mv a2, s9
label50:
	mulw a1, s8, s0
	addiw a2, a2, 1
	li s10, 10
	addiw s8, s8, 7
	mul a5, a1, s2
	srli t1, a5, 32
	add a3, t1, a1
	srliw t0, a3, 31
	sraiw a4, a3, 11
	add a5, t0, a4
	mulw t1, a5, s1
	subw a3, a1, t1
	sw a3, 0(a0)
	bge a2, s10, label34
	addi a0, a0, 4
	j label50
label34:
	addiw a1, s6, 3
	sh1add a0, a1, a1
	mv s1, a0
	blt a0, zero, label40
	sh2add s0, a0, s5
.p2align 2
label36:
	lw a0, 0(s0)
	jal putint
	li a0, 32
	jal putch
	addiw s1, s1, -1
	blt s1, zero, label40
	addi s0, s0, -4
	j label36
label40:
	li s10, 10
	mv a0, s10
	jal putch
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s3, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s7, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	ld s11, 88(sp)
	ld s10, 96(sp)
	addi sp, sp, 104
	ret
label401:
	sh2add a0, a2, s7
	mv s8, a1
	j label50
