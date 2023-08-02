.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
next:
	.zero	16384
.align 8
src:
	.zero	16384
.align 8
dst:
	.zero	16384
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
pcrel149:
	auipc a0, %pcrel_hi(dst)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel149)
	sd s4, 16(sp)
pcrel150:
	auipc s4, %pcrel_hi(next)
	sd s2, 24(sp)
	addi s2, s4, %pcrel_lo(pcrel150)
	sd s3, 32(sp)
	mv s3, zero
	sd s0, 40(sp)
	li s0, -1
	sd s5, 48(sp)
label2:
	jal getch
	li a2, 10
	sh2add a1, s3, s1
	sw a0, 0(a1)
	bne a0, a2, label4
	sh2add a0, s3, s1
pcrel151:
	auipc a1, %pcrel_hi(src)
	mv s5, zero
	addi s3, a1, %pcrel_lo(pcrel151)
	sw zero, 0(a0)
label6:
	jal getch
	li a2, 10
	sh2add a1, s5, s3
	sw a0, 0(a1)
	beq a0, a2, label9
	addiw s5, s5, 1
	j label6
label9:
	sh2add a1, s5, s3
	mv a0, s0
	sw zero, 0(a1)
	mv a1, zero
pcrel152:
	auipc s4, %pcrel_hi(next)
	sw s0, %pcrel_lo(pcrel152)(s4)
	mv a3, s1
	lw a2, 0(s1)
	bne a2, zero, label21
label55:
	mv a1, zero
	mv a0, zero
	j label13
.p2align 2
label21:
	bne a0, s0, label89
.p2align 2
label22:
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s2
	sw a0, 0(a2)
	sh2add a3, a1, s1
	lw a2, 0(a3)
	bne a2, zero, label21
	j label55
.p2align 2
label89:
	sh2add a3, a0, s1
	lw a4, 0(a3)
	beq a2, a4, label22
	sh2add a2, a0, s2
	lw a0, 0(a2)
	sh2add a3, a1, s1
	lw a2, 0(a3)
	bne a2, zero, label21
	j label55
label13:
	sh2add a3, a0, s3
	lw a2, 0(a3)
	beq a2, zero, label62
	sh2add a3, a1, s1
	lw a4, 0(a3)
	beq a2, a4, label20
	sh2add a5, a1, s2
	mv a1, zero
	lw a2, 0(a5)
	xori a4, a2, -1
	sltiu a3, a4, 1
	bne a3, zero, label134
	mv a1, a2
label134:
	addw a0, a0, a3
	j label13
label4:
	addiw s3, s3, 1
	j label2
label20:
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a3, a1, s1
	lw a2, 0(a3)
	beq a2, zero, label16
	j label13
label62:
	mv a0, s0
label16:
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s4, 16(sp)
	ld s2, 24(sp)
	ld s3, 32(sp)
	ld s0, 40(sp)
	ld s5, 48(sp)
	addi sp, sp, 56
	ret
