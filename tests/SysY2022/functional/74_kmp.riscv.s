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
	addi sp, sp, -40
pcrel139:
	auipc a0, %pcrel_hi(dst)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel139)
	sd s3, 16(sp)
	mv s3, s1
	sd s0, 24(sp)
	li s0, -1
	sd s2, 32(sp)
label2:
	jal getch
	li a1, 10
	sw a0, 0(s3)
	bne a0, a1, label35
pcrel140:
	auipc a0, %pcrel_hi(src)
	sw zero, 0(s3)
	addi s2, a0, %pcrel_lo(pcrel140)
	mv s3, s2
	j label5
label42:
	addi s3, s3, 4
label5:
	jal getch
	li a1, 10
	sw a0, 0(s3)
	bne a0, a1, label42
	sw zero, 0(s3)
pcrel141:
	auipc a3, %pcrel_hi(next)
	addi a2, s1, -4
	mv a5, s0
	sw s0, %pcrel_lo(pcrel141)(a3)
	addi a0, a3, %pcrel_lo(pcrel141)
	mv a3, s1
	mv a4, a0
	addi a1, a0, -4
	lw t0, 0(s1)
	bne t0, zero, label25
	j label14
.p2align 2
label28:
	addi t0, a4, 4
	addiw a5, a5, 1
	addi a3, a3, 4
	addi a2, a2, 4
	addi a1, a1, 4
	sw a5, 4(a4)
	mv a4, t0
	lw t0, 0(a3)
	beq t0, zero, label14
.p2align 2
label25:
	beq a5, s0, label28
	lw t1, 0(a2)
	beq t0, t1, label28
	lw a5, 0(a1)
	sh2add a1, a5, a0
	lw t0, 0(a3)
	sh2add a2, a5, s1
	bne t0, zero, label25
label14:
	mv a2, zero
	mv a1, zero
	j label15
label125:
	mv a2, a4
label126:
	addw a1, a1, a3
	sh2add s2, a3, s2
label15:
	lw a3, 0(s2)
	beq a3, zero, label56
	sh2add a4, a2, s1
	lw a5, 0(a4)
	beq a3, a5, label23
	sh2add a5, a2, a0
	mv a2, zero
	lw a4, 0(a5)
	xori t0, a4, -1
	sltiu a3, t0, 1
	bne a3, zero, label126
	j label125
label23:
	lw a3, 4(a4)
	addiw a2, a2, 1
	addiw a1, a1, 1
	bne a3, zero, label24
	mv a0, a1
label19:
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s3, 16(sp)
	ld s0, 24(sp)
	ld s2, 32(sp)
	addi sp, sp, 40
	ret
label56:
	mv a0, s0
	j label19
label35:
	addi s3, s3, 4
	j label2
label24:
	addi s2, s2, 4
	j label15
