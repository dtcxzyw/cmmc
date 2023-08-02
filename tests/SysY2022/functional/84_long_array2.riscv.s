.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
a:
	.zero	16384
.align 8
c:
	.zero	16384
.text
.p2align 2
.globl main
main:
	addi sp, sp, -16
pcrel266:
	auipc a0, %pcrel_hi(c)
	li a3, 2
	li a5, 63
	sd ra, 0(sp)
	slli a1, a3, 32
	sd s0, 8(sp)
	mv a3, zero
	addi a2, a1, 1
	addi s0, a0, %pcrel_lo(pcrel266)
	li a1, 3
	sd a2, %pcrel_lo(pcrel266)(a0)
	li a2, 4
	sd zero, 8(s0)
	slli a0, a2, 32
	addi a2, s0, 24
	addi a4, a0, 3
	sd a4, 16(s0)
	slli a4, a5, 6
.p2align 2
label2:
	sh2add a0, a3, a2
	addi a5, a3, 64
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	bge a5, a4, label4
	mv a3, a5
	j label2
label4:
	sh2add a4, a5, a2
	addi a0, a3, 112
	sw zero, 0(a4)
	sw zero, 4(a4)
	sw zero, 8(a4)
	sw zero, 12(a4)
	sw zero, 16(a4)
	sw zero, 20(a4)
	sw zero, 24(a4)
	sw zero, 28(a4)
	sw zero, 32(a4)
	sw zero, 36(a4)
	sw zero, 40(a4)
	sw zero, 44(a4)
	sw zero, 48(a4)
	sw zero, 52(a4)
	sw zero, 56(a4)
	sw zero, 60(a4)
	sw zero, 64(a4)
	sw zero, 68(a4)
	sw zero, 72(a4)
	sw zero, 76(a4)
	sw zero, 80(a4)
	sw zero, 84(a4)
	sw zero, 88(a4)
	sw zero, 92(a4)
	sw zero, 96(a4)
	sw zero, 100(a4)
	sw zero, 104(a4)
	sw zero, 108(a4)
	sw zero, 112(a4)
	sw zero, 116(a4)
	sw zero, 120(a4)
	sw zero, 124(a4)
	sw zero, 128(a4)
	sw zero, 132(a4)
	sw zero, 136(a4)
	sw zero, 140(a4)
	sw zero, 144(a4)
	sw zero, 148(a4)
	sw zero, 152(a4)
	sw zero, 156(a4)
	sw zero, 160(a4)
	sw zero, 164(a4)
	sw zero, 168(a4)
	sw zero, 172(a4)
	sw zero, 176(a4)
	sw zero, 180(a4)
	sw zero, 184(a4)
	sw zero, 188(a4)
.p2align 2
label5:
	sh2add a3, a0, a2
	li a4, 2043
	addi a0, a0, 4
	sw zero, 0(a3)
	sw zero, 4(a3)
	sw zero, 8(a3)
	sw zero, 12(a3)
	slli a3, a4, 1
	blt a0, a3, label5
.p2align 2
label7:
	sh2add a3, a0, a2
	li a4, 2045
	addi a0, a0, 1
	sw zero, 0(a3)
	slli a3, a4, 1
	blt a0, a3, label7
pcrel267:
	auipc a2, %pcrel_hi(a)
	li a4, 125
	addi a0, a2, %pcrel_lo(pcrel267)
	slli a3, a4, 5
	slli a2, a3, 2
	sw a3, 20(a0)
	addi a4, a2, 380
	add a5, a0, a2
	add a3, a0, a4
	sw a1, 0(a5)
	li a5, 7
	sw a5, 0(a3)
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	lw a0, 32(s0)
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
