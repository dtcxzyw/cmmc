.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
a:
	.zero	16384
.align 4
c:
	.zero	16384
.text
.globl main
main:
.p2align 2
	addi sp, sp, -16
pcrel179:
	auipc a1, %pcrel_hi(c)
	li a2, 1
	addi a0, a1, %pcrel_lo(pcrel179)
	sd s0, 8(sp)
	mv s0, a0
	sd ra, 0(sp)
	sw a2, %pcrel_lo(pcrel179)(a1)
	li a2, 3
	li a1, 2
	sw a1, 4(a0)
	li a1, 4
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw a2, 16(a0)
	addi a2, a0, 24
	sw a1, 20(a0)
	mv a1, zero
.p2align 2
label2:
	sh2add a0, a1, a2
	li a3, 4032
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
	sw zero, 192(a0)
	sw zero, 196(a0)
	sw zero, 200(a0)
	sw zero, 204(a0)
	sw zero, 208(a0)
	sw zero, 212(a0)
	sw zero, 216(a0)
	sw zero, 220(a0)
	sw zero, 224(a0)
	sw zero, 228(a0)
	sw zero, 232(a0)
	sw zero, 236(a0)
	sw zero, 240(a0)
	sw zero, 244(a0)
	sw zero, 248(a0)
	sw zero, 252(a0)
	addi a0, a1, 64
	bge a0, a3, label4
	mv a1, a0
	j label2
label4:
	sh2add a0, a0, a2
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
	sw zero, 192(a0)
	sw zero, 196(a0)
	sw zero, 200(a0)
	sw zero, 204(a0)
	sw zero, 208(a0)
	sw zero, 212(a0)
	sw zero, 216(a0)
	sw zero, 220(a0)
	addi a0, a1, 120
label5:
	sh2add a1, a0, a2
	addi a0, a0, 1
	sw zero, 0(a1)
	li a1, 4090
	blt a0, a1, label5
pcrel180:
	auipc a2, %pcrel_hi(a)
	li a0, 4000
	addi a1, a2, %pcrel_lo(pcrel180)
	slli a2, a0, 2
	sw a0, 20(a1)
	add a3, a1, a2
	li a0, 3
	addi a2, a2, 380
	add a1, a1, a2
	sw a0, 0(a3)
	li a3, 7
	sw a3, 0(a1)
	jal putint
	li a0, 10
	jal putch
	lw a0, 32(s0)
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret