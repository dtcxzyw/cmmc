.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
tape:
	.zero	262144
.align 8
program:
	.zero	131072
.text
.p2align 2
.globl main
main:
	addi sp, sp, -88
	sd ra, 0(sp)
	sd s7, 8(sp)
	sd s0, 16(sp)
	sd s5, 24(sp)
	sd s1, 32(sp)
	sd s6, 40(sp)
	sd s2, 48(sp)
	sd s3, 56(sp)
	sd s4, 64(sp)
	sd s8, 72(sp)
	sd s9, 80(sp)
	jal getint
	li s6, 46
	li s5, 45
	li s4, 43
	li s2, 60
	li s1, 62
	li s3, 91
	mv s7, a0
pcrel200:
	auipc a0, %pcrel_hi(program)
	addi s0, a0, %pcrel_lo(pcrel200)
	ble s7, zero, label37
	mv s8, zero
	j label31
label4:
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label31:
	jal getch
	sh2add a1, s8, s0
	addiw s8, s8, 1
	sw a0, 0(a1)
	bgt s7, s8, label31
	sh2add a0, s7, s0
pcrel201:
	auipc a1, %pcrel_hi(tape)
	mv s8, zero
	addi s7, a1, %pcrel_lo(pcrel201)
	sw zero, 0(a0)
	mv s9, zero
	j label4
.p2align 2
label7:
	bne a0, s1, label52
	addiw s8, s8, 1
.p2align 2
label9:
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label7
label30:
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s0, 16(sp)
	ld s5, 24(sp)
	ld s1, 32(sp)
	ld s6, 40(sp)
	ld s2, 48(sp)
	ld s3, 56(sp)
	ld s4, 64(sp)
	ld s8, 72(sp)
	ld s9, 80(sp)
	addi sp, sp, 88
	ret
.p2align 2
label52:
	bne a0, s2, label172
	addiw s8, s8, -1
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label172:
	bne a0, s4, label182
	sh2add a0, s8, s7
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
.p2align 2
label182:
	beq a0, s5, label29
	beq a0, s6, label28
	li a1, 44
	bne a0, a1, label19
	jal getch
	sh2add a1, s8, s7
	sw a0, 0(a1)
	j label9
label19:
	li a1, 93
	bne a0, a1, label9
	sh2add a0, s8, s7
	lw a1, 0(a0)
	beq a1, zero, label9
	li a0, 1
	ble a0, zero, label9
.p2align 2
label24:
	addiw s9, s9, -1
	sh2add a2, s9, s0
	lw a1, 0(a2)
	beq a1, s3, label26
	xori a1, a1, 93
	sltiu a2, a1, 1
	addw a0, a0, a2
	bgt a0, zero, label24
	j label9
.p2align 2
label26:
	addiw a0, a0, -1
	bgt a0, zero, label24
	j label9
.p2align 2
label29:
	sh2add a0, s8, s7
	lw a1, 0(a0)
	addi a2, a1, -1
	sw a2, 0(a0)
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label28:
	sh2add a1, s8, s7
	lw a0, 0(a1)
	jal putch
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label37:
	mv s7, zero
	mv a0, s0
pcrel202:
	auipc a1, %pcrel_hi(tape)
	mv s8, zero
	addi s7, a1, %pcrel_lo(pcrel202)
	sw zero, 0(s0)
	mv s9, zero
	j label4
