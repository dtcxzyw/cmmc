.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
tape:
	.zero	262144
.align 4
program:
	.zero	131072
.text
.globl main
main:
	addi sp, sp, -40
	sd s0, 32(sp)
	sd s1, 24(sp)
	sd s2, 16(sp)
	sd s3, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
	bgt a0, zero, label37
	mv a0, zero
pcrel200:
	auipc a2, %pcrel_hi(program)
	mv s2, zero
	addi a1, a2, %pcrel_lo(pcrel200)
	mv a2, a1
	mv s0, a1
pcrel201:
	auipc a0, %pcrel_hi(tape)
	sw zero, 0(a1)
	addi s1, a0, %pcrel_lo(pcrel201)
	mv s3, zero
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label37:
	auipc a1, %pcrel_hi(program)
	mv s2, zero
	addi s1, a1, %pcrel_lo(label37)
label32:
	jal getch
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	bgt s0, s2, label32
	mv a0, s0
pcrel202:
	auipc a2, %pcrel_hi(program)
	mv s2, zero
	addi a1, a2, %pcrel_lo(pcrel202)
	sh2add a2, s0, a1
	mv s0, a1
pcrel203:
	auipc a0, %pcrel_hi(tape)
	sw zero, 0(a2)
	addi s1, a0, %pcrel_lo(pcrel203)
	mv s3, zero
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label27:
	jal getch
	sh2add a1, s2, s1
	sw a0, 0(a1)
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
label30:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label20:
	sh2add a0, s2, s1
	lw a1, 0(a0)
	bne a1, zero, label92
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label92:
	li a0, 1
	bgt a0, zero, label24
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label24:
	addiw s3, s3, -1
	li a2, 91
	sh2add a3, s3, s0
	lw a1, 0(a3)
	beq a1, a2, label25
	xori a2, a1, 93
	sltiu a1, a2, 1
	addw a0, a0, a1
	bgt a0, zero, label24
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label25:
	addiw a0, a0, -1
	bgt a0, zero, label24
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	beq a0, zero, label30
label7:
	li a1, 62
	beq a0, a1, label8
	li a1, 60
	beq a0, a1, label13
	li a1, 43
	beq a0, a1, label15
	li a1, 45
	beq a0, a1, label29
	li a1, 46
	beq a0, a1, label28
	li a1, 44
	beq a0, a1, label27
	li a1, 93
	beq a0, a1, label20
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label15:
	sh2add a0, s2, s1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label8:
	addiw s2, s2, 1
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label13:
	addiw s2, s2, -1
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label28:
	sh2add a1, s2, s1
	lw a0, 0(a1)
	jal putch
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
label29:
	sh2add a0, s2, s1
	lw a2, 0(a0)
	addi a1, a2, -1
	sw a1, 0(a0)
	addiw s3, s3, 1
	sh2add a1, s3, s0
	lw a0, 0(a1)
	bne a0, zero, label7
	j label30
