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
.globl main
main:
.p2align 2
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	bgt a0, zero, label2
	mv a0, zero
pcrel170:
	auipc a2, %pcrel_hi(program)
	mv s2, zero
	addi a1, a2, %pcrel_lo(pcrel170)
	mv a2, a1
	mv s0, a1
pcrel171:
	auipc a0, %pcrel_hi(tape)
	sw zero, 0(a1)
	addi s1, a0, %pcrel_lo(pcrel171)
	mv s3, zero
	lw a0, 0(a1)
	beq a0, zero, label33
.p2align 2
label10:
	li a1, 62
	beq a0, a1, label11
	li a1, 60
	beq a0, a1, label16
	li a1, 43
	beq a0, a1, label18
	j label19
.p2align 2
label11:
	addiw s2, s2, 1
.p2align 2
label12:
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label10
label33:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label16:
	addiw s2, s2, -1
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label10
	j label33
label19:
	li a1, 45
	beq a0, a1, label83
	li a1, 46
	beq a0, a1, label31
	li a1, 44
	beq a0, a1, label30
	li a1, 93
	bne a0, a1, label12
	sh2add a1, s2, s1
	lw a0, 0(a1)
	beq a0, zero, label12
	li a0, 1
label24:
	ble a0, zero, label12
	addiw s3, s3, -1
	li a2, 91
	sh2add a3, s3, s0
	lw a1, 0(a3)
	beq a1, a2, label114
	xori a2, a1, 93
	sltiu a1, a2, 1
	addw a0, a0, a1
	j label24
label18:
	sh2add a0, s2, s1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	j label12
label114:
	addiw a0, a0, -1
	j label24
label83:
	sh2add a0, s2, s1
	lw a1, 0(a0)
	addi a2, a1, -1
	sw a2, 0(a0)
	j label12
label31:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putch
	j label12
label2:
	auipc a0, %pcrel_hi(program)
	mv s2, zero
	addi s1, a0, %pcrel_lo(label2)
.p2align 2
label3:
	jal getch
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label3
	mv a0, s0
pcrel172:
	auipc a2, %pcrel_hi(program)
	mv s2, zero
	addi a1, a2, %pcrel_lo(pcrel172)
	sh2add a2, s0, a1
	mv s0, a1
pcrel173:
	auipc a0, %pcrel_hi(tape)
	sw zero, 0(a2)
	addi s1, a0, %pcrel_lo(pcrel173)
	mv s3, zero
	lw a0, 0(a1)
	bne a0, zero, label10
	j label33
label30:
	jal getch
	sh2add a1, s2, s1
	sw a0, 0(a1)
	j label12
