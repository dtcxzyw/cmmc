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
pcrel61:
	auipc a1, %pcrel_hi(c)
	li a2, 1
	addi a0, a1, %pcrel_lo(pcrel61)
	sd s0, 8(sp)
	mv s0, a0
	sd ra, 0(sp)
	sw a2, %pcrel_lo(pcrel61)(a1)
	li a2, 3
	li a1, 2
	sw a1, 4(a0)
	li a1, 4
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw a2, 16(a0)
	sw a1, 20(a0)
	mv a1, zero
	addi a0, a0, 24
.p2align 2
label2:
	sh2add a2, a1, a0
	li a3, 4090
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	addi a2, a1, 8
	addi a1, a1, 4
	blt a2, a3, label2
	sh2add a2, a1, a0
	addi a1, a1, 1
	sw zero, 0(a2)
	li a2, 4090
	bge a1, a2, label6
label4:
	sh2add a2, a1, a0
	addi a1, a1, 1
	sw zero, 0(a2)
	li a2, 4090
	blt a1, a2, label4
label6:
	auipc a2, %pcrel_hi(a)
	li a0, 4000
	addi a1, a2, %pcrel_lo(label6)
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
