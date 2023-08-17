.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
next:
	.zero	16384
.p2align 3
src:
	.zero	16384
.p2align 3
dst:
	.zero	16384
.text
.p2align 2
.globl main
main:
	addi sp, sp, -56
pcrel143:
	auipc a0, %pcrel_hi(dst)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel143)
	sd s5, 16(sp)
pcrel144:
	auipc s5, %pcrel_hi(next)
	sd s0, 24(sp)
	li s0, -1
	sd s2, 32(sp)
	addi s2, s5, %pcrel_lo(pcrel144)
	sd s4, 40(sp)
	mv s4, s1
	sd s3, 48(sp)
label2:
	jal getch
	li a1, 10
	sw a0, 0(s4)
	bne a0, a1, label37
pcrel145:
	auipc a0, %pcrel_hi(src)
	sw zero, 0(s4)
	addi s3, a0, %pcrel_lo(pcrel145)
	mv s4, s3
	j label5
label44:
	addi s4, s4, 4
label5:
	jal getch
	li a1, 10
	sw a0, 0(s4)
	bne a0, a1, label44
	sw zero, 0(s4)
	addi a0, s2, -4
	addi a1, s1, -4
	mv a3, s2
	mv a2, s1
	mv a4, s0
pcrel146:
	auipc s5, %pcrel_hi(next)
	sw s0, %pcrel_lo(pcrel146)(s5)
	lw a5, 0(s1)
	bne a5, zero, label25
	j label14
.p2align 2
label28:
	addi a5, a3, 4
	addiw a4, a4, 1
	addi a2, a2, 4
	addi a1, a1, 4
	addi a0, a0, 4
	sw a4, 4(a3)
	mv a3, a5
	lw a5, 0(a2)
	beq a5, zero, label14
.p2align 2
label25:
	beq a4, s0, label28
	lw t0, 0(a1)
	beq a5, t0, label28
	lw a4, 0(a0)
	lw a5, 0(a2)
	sh2add a0, a4, s2
	sh2add a1, a4, s1
	bne a5, zero, label25
label14:
	mv a1, zero
	mv a0, zero
	j label15
label125:
	mv a1, a3
label126:
	addw a0, a0, a2
	sh2add s3, a2, s3
label15:
	lw a2, 0(s3)
	beq a2, zero, label56
	sh2add a3, a1, s1
	lw a4, 0(a3)
	beq a2, a4, label23
	sh2add a4, a1, s2
	mv a1, zero
	lw a3, 0(a4)
	xori a5, a3, -1
	sltiu a2, a5, 1
	bne a2, zero, label126
	j label125
label23:
	lw a2, 4(a3)
	addiw a1, a1, 1
	addiw a0, a0, 1
	bne a2, zero, label24
label19:
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s5, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
label37:
	addi s4, s4, 4
	j label2
label24:
	addi s3, s3, 4
	j label15
label56:
	mv a0, s0
	j label19
