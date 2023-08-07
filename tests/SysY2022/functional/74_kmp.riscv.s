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
pcrel144:
	auipc a0, %pcrel_hi(dst)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel144)
	sd s5, 16(sp)
pcrel145:
	auipc s5, %pcrel_hi(next)
	sd s0, 24(sp)
	li s0, -1
	sd s2, 32(sp)
	addi s2, s5, %pcrel_lo(pcrel145)
	sd s3, 40(sp)
	mv s3, s1
	sd s4, 48(sp)
label2:
	jal getch
	li a1, 10
	sw a0, 0(s3)
	bne a0, a1, label4
	sw zero, 0(s3)
pcrel146:
	auipc a0, %pcrel_hi(src)
	addi s3, a0, %pcrel_lo(pcrel146)
	mv s4, s3
label6:
	jal getch
	li a1, 10
	sw a0, 0(s4)
	beq a0, a1, label8
	addi s4, s4, 4
	j label6
label8:
	sw zero, 0(s4)
	addi a1, s1, -4
	addi a0, s2, -4
	mv a2, s1
	mv a3, s0
	mv a4, zero
pcrel147:
	auipc s5, %pcrel_hi(next)
	sw s0, %pcrel_lo(pcrel147)(s5)
	lw a5, 0(s1)
	bne a5, zero, label26
label15:
	mv a1, zero
	mv a0, zero
	j label16
.p2align 2
label26:
	beq a3, s0, label29
	lw t0, 0(a1)
	bne a5, t0, label28
.p2align 2
label29:
	addiw a4, a4, 1
	addiw a3, a3, 1
	addi a2, a2, 4
	addi a1, a1, 4
	addi a0, a0, 4
	sh2add a5, a4, s2
	sw a3, 0(a5)
	lw a5, 0(a2)
	bne a5, zero, label26
	j label15
.p2align 2
label28:
	lw a3, 0(a0)
	lw a5, 0(a2)
	sh2add a0, a3, s2
	sh2add a1, a3, s1
	bne a5, zero, label26
	j label15
label16:
	lw a2, 0(s3)
	beq a2, zero, label57
	sh2add a4, a1, s1
	lw a3, 0(a4)
	beq a2, a3, label24
	sh2add a5, a1, s2
	mv a1, zero
	lw a3, 0(a5)
	xori a4, a3, -1
	sltiu a2, a4, 1
	bne a2, zero, label130
	mv a1, a3
label130:
	addw a0, a0, a2
	sh2add s3, a2, s3
	j label16
label4:
	addi s3, s3, 4
	j label2
label24:
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a3, a1, s1
	lw a2, 0(a3)
	beq a2, zero, label20
	addi s3, s3, 4
	j label16
label57:
	mv a0, s0
label20:
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s4, 48(sp)
	addi sp, sp, 56
	ret
