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
pcrel181:
	auipc a0, %pcrel_hi(c)
	li a1, 1
	mv a2, zero
	li a4, 4032
	sd ra, 0(sp)
	sd s0, 8(sp)
	sw a1, %pcrel_lo(pcrel181)(a0)
	addi s0, a0, %pcrel_lo(pcrel181)
	li a1, 3
	addi a3, s0, 24
	li a0, 2
	sw a0, 4(s0)
	li a0, 4
	sd zero, 8(s0)
	sw a1, 16(s0)
	sw a0, 20(s0)
.p2align 2
label2:
	sh2add a0, a2, a3
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
	addi a0, a2, 64
	bge a0, a4, label4
	mv a2, a0
	j label2
label4:
	sh2add a0, a0, a3
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
	addi a0, a2, 120
.p2align 2
label5:
	sh2add a2, a0, a3
	addi a0, a0, 1
	sw zero, 0(a2)
	li a2, 4090
	blt a0, a2, label5
pcrel182:
	auipc a2, %pcrel_hi(a)
	li a3, 4000
	addi a0, a2, %pcrel_lo(pcrel182)
	slli a2, a3, 2
	sw a3, 20(a0)
	add a3, a0, a2
	addi a2, a2, 380
	add a0, a0, a2
	sw a1, 0(a3)
	li a3, 7
	sw a3, 0(a0)
	mv a0, a1
	jal putint
	li a0, 10
	jal putch
	lw a0, 32(s0)
	ld ra, 0(sp)
	ld s0, 8(sp)
	addi sp, sp, 16
	ret
