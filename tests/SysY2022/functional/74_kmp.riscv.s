.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
next:
	.zero	16384
.align 4
src:
	.zero	16384
.align 4
dst:
	.zero	16384
.text
.globl main
main:
	addi sp, sp, -40
pcrel204:
	auipc a0, %pcrel_hi(dst)
	sd s0, 32(sp)
	addi s0, a0, %pcrel_lo(pcrel204)
	sd s1, 24(sp)
pcrel205:
	auipc a0, %pcrel_hi(next)
	sd s2, 16(sp)
	addi s1, a0, %pcrel_lo(pcrel205)
	mv s2, zero
	sd s3, 8(sp)
	sd ra, 0(sp)
label2:
	jal getch
	li a2, 10
	sh2add a1, s2, s0
	sw a0, 0(a1)
	bne a0, a2, label34
	j label33
label34:
	addiw s2, s2, 1
	j label2
label33:
	sh2add a1, s2, s0
pcrel206:
	auipc a0, %pcrel_hi(src)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel206)
	sw zero, 0(a1)
label5:
	jal getch
	li a2, 10
	sh2add a1, s3, s2
	sw a0, 0(a1)
	bne a0, a2, label7
	li a0, -1
	sw zero, 0(a1)
	mv a1, zero
	sw a0, 0(s1)
	mv a3, s0
	lw a2, 0(s0)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	li a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	j label187
label7:
	addiw s3, s3, 1
	j label5
label187:
	li a3, -1
	bne a0, a3, label22
	j label180
label55:
	mv a1, zero
	mv a0, zero
label12:
	sh2add a3, a0, s2
	lw a2, 0(a3)
	beq a2, zero, label62
	sh2add a3, a1, s0
	lw a4, 0(a3)
	bne a2, a4, label18
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a3, a1, s0
	lw a2, 0(a3)
	bne a2, zero, label12
	j label15
label62:
	li a0, -1
	j label15
label180:
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	j label187
label191:
	li a3, -1
	bne a0, a3, label22
	j label180
label22:
	sh2add a4, a0, s0
	lw a3, 0(a4)
	bne a2, a3, label23
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	j label191
label23:
	sh2add a2, a0, s1
	lw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	beq a2, zero, label55
	li a3, -1
	bne a0, a3, label22
	j label180
label15:
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label18:
	sh2add a2, a1, s1
	lw a1, 0(a2)
	xori a3, a1, -1
	sltiu a2, a3, 1
	addw a0, a0, a2
	addw a1, a1, a2
	sh2add a3, a0, s2
	lw a2, 0(a3)
	beq a2, zero, label62
	sh2add a3, a1, s0
	lw a4, 0(a3)
	bne a2, a4, label18
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a3, a1, s0
	lw a2, 0(a3)
	bne a2, zero, label12
	j label15
