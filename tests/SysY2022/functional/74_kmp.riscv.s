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
.p2align 2
	addi sp, sp, -40
pcrel153:
	auipc a0, %pcrel_hi(dst)
	sd s0, 32(sp)
	addi s0, a0, %pcrel_lo(pcrel153)
	sd s1, 24(sp)
pcrel154:
	auipc a0, %pcrel_hi(next)
	sd s2, 16(sp)
	addi s1, a0, %pcrel_lo(pcrel154)
	mv s2, zero
	sd s3, 8(sp)
	sd ra, 0(sp)
label2:
	jal getch
	li a1, 10
	sh2add a2, s2, s0
	sw a0, 0(a2)
	bne a0, a1, label33
	sh2add a1, s2, s0
pcrel155:
	auipc a0, %pcrel_hi(src)
	mv s3, zero
	addi s2, a0, %pcrel_lo(pcrel155)
	sw zero, 0(a1)
label5:
	jal getch
	li a2, 10
	sh2add a1, s3, s2
	sw a0, 0(a1)
	beq a0, a2, label45
	addiw s3, s3, 1
	j label5
label45:
	sh2add a1, s3, s2
	li a0, -1
	sw zero, 0(a1)
	mv a1, zero
	sw a0, 0(s1)
	mv a3, s0
	lw a2, 0(s0)
	bne a2, zero, label20
	mv a0, zero
	mv a3, s2
	lw a2, 0(s2)
	bne a2, zero, label17
label138:
	li a0, -1
	j label15
label12:
	sh2add a3, a1, s2
	lw a2, 0(a3)
	beq a2, zero, label138
label17:
	sh2add a3, a0, s0
	lw a4, 0(a3)
	beq a2, a4, label19
	sh2add a0, a0, s1
	lw a2, 0(a0)
	mv a0, zero
	xori a4, a2, -1
	sltiu a3, a4, 1
	bne a3, zero, label132
	mv a0, a2
label132:
	addw a1, a1, a3
	j label12
.p2align 2
label20:
	li a3, -1
	beq a0, a3, label23
	sh2add a4, a0, s0
	lw a3, 0(a4)
	beq a2, a3, label23
	sh2add a2, a0, s1
	lw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	bne a2, zero, label20
	mv a0, zero
	mv a1, zero
	mv a3, s2
	lw a2, 0(s2)
	bne a2, zero, label17
	j label138
.p2align 2
label23:
	addiw a1, a1, 1
	addiw a0, a0, 1
	sh2add a2, a1, s1
	sw a0, 0(a2)
	sh2add a3, a1, s0
	lw a2, 0(a3)
	bne a2, zero, label20
	mv a0, zero
	mv a1, zero
	mv a3, s2
	lw a2, 0(s2)
	bne a2, zero, label17
	j label138
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
label19:
	addiw a0, a0, 1
	addiw a1, a1, 1
	sh2add a3, a0, s0
	lw a2, 0(a3)
	bne a2, zero, label12
	mv a0, a1
	j label15
label33:
	addiw s2, s2, 1
	j label2
