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
pcrel143:
	auipc a0, %pcrel_hi(dst)
	sd ra, 0(sp)
	sd s1, 8(sp)
	addi s1, a0, %pcrel_lo(pcrel143)
	sd s2, 16(sp)
	mv s2, s1
	sd s0, 24(sp)
	li s0, -1
	sd s3, 32(sp)
label2:
	jal getch
	li a1, 10
	sw a0, 0(s2)
	bne a0, a1, label4
	sw zero, 0(s2)
pcrel144:
	auipc a0, %pcrel_hi(src)
	addi s2, a0, %pcrel_lo(pcrel144)
	mv s3, s2
	j label6
label43:
	addi s3, s3, 4
label6:
	jal getch
	li a1, 10
	sw a0, 0(s3)
	bne a0, a1, label43
	sw zero, 0(s3)
pcrel145:
	auipc a3, %pcrel_hi(next)
	addi a2, s1, -4
	mv a4, s0
	mv a5, zero
	addi a0, a3, %pcrel_lo(pcrel145)
	sw s0, %pcrel_lo(pcrel145)(a3)
	addi a1, a0, -4
	mv a3, s1
	lw t0, 0(s1)
	bne t0, zero, label26
	j label15
.p2align 2
label29:
	addiw a5, a5, 1
	addiw a4, a4, 1
	addi a3, a3, 4
	addi a2, a2, 4
	addi a1, a1, 4
	sh2add t0, a5, a0
	sw a4, 0(t0)
	lw t0, 0(a3)
	beq t0, zero, label15
.p2align 2
label26:
	beq a4, s0, label29
	lw t1, 0(a2)
	beq t0, t1, label29
	lw a4, 0(a1)
	lw t0, 0(a3)
	sh2add a1, a4, a0
	sh2add a2, a4, s1
	bne t0, zero, label26
	j label15
label4:
	addi s2, s2, 4
	j label2
label15:
	mv a2, zero
	mv a1, zero
	j label16
label129:
	mv a2, a4
label130:
	addw a1, a1, a3
	sh2add s2, a3, s2
label16:
	lw a3, 0(s2)
	beq a3, zero, label57
	sh2add a4, a2, s1
	lw a5, 0(a4)
	beq a3, a5, label24
	sh2add a5, a2, a0
	mv a2, zero
	lw a4, 0(a5)
	xori t0, a4, -1
	sltiu a3, t0, 1
	bne a3, zero, label130
	j label129
label24:
	addiw a2, a2, 1
	addiw a1, a1, 1
	sh2add a4, a2, s1
	lw a3, 0(a4)
	bne a3, zero, label25
	mv a0, a1
label20:
	jal putint
	li a0, 10
	jal putch
	ld ra, 0(sp)
	mv a0, zero
	ld s1, 8(sp)
	ld s2, 16(sp)
	ld s0, 24(sp)
	ld s3, 32(sp)
	addi sp, sp, 40
	ret
label57:
	mv a0, s0
	j label20
label25:
	addi s2, s2, 4
	j label16
