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
	ble a0, zero, label37
pcrel372:
	auipc a1, %pcrel_hi(program)
	mv s2, zero
	addi s1, a1, %pcrel_lo(pcrel372)
	j label3
label37:
	mv a0, zero
pcrel373:
	auipc a2, %pcrel_hi(program)
	mv s3, zero
	addi a1, a2, %pcrel_lo(pcrel373)
	mv a2, a1
	mv s0, a1
pcrel374:
	auipc a0, %pcrel_hi(tape)
	sw zero, 0(a1)
	addi s1, a0, %pcrel_lo(pcrel374)
	mv s2, zero
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	li s3, 1
	li s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
label318:
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
label296:
	li a1, 62
	bne a0, a1, label15
	j label321
label3:
	jal getch
	sh2add a1, s2, s1
	addiw s2, s2, 1
	sw a0, 0(a1)
	ble s0, s2, label47
	j label3
label47:
	mv a0, s0
pcrel375:
	auipc a2, %pcrel_hi(program)
	mv s3, zero
	addi a1, a2, %pcrel_lo(pcrel375)
	sh2add a2, s0, a1
	mv s0, a1
pcrel376:
	auipc a0, %pcrel_hi(tape)
	sw zero, 0(a2)
	addi s1, a0, %pcrel_lo(pcrel376)
	mv s2, zero
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	li s3, 1
	li s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	j label318
label33:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
label15:
	li a1, 60
	bne a0, a1, label17
	addiw s3, s3, -1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
label321:
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	j label296
label17:
	li a1, 43
	bne a0, a1, label19
	sh2add a0, s3, s1
	lw a1, 0(a0)
	addiw a2, a1, 1
	sw a2, 0(a0)
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	j label321
label19:
	li a1, 45
	bne a0, a1, label20
	sh2add a0, s3, s1
	lw a1, 0(a0)
	addiw a2, a1, -1
	sw a2, 0(a0)
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	j label321
label20:
	li a1, 46
	bne a0, a1, label21
	sh2add a1, s3, s1
	lw a0, 0(a1)
	jal putch
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	j label296
label21:
	li a1, 44
	bne a0, a1, label22
	jal getch
	sh2add a1, s3, s1
	sw a0, 0(a1)
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	j label296
label22:
	li a1, 93
	bne a0, a1, label12
	sh2add a0, s3, s1
	lw a1, 0(a0)
	beq a1, zero, label12
	li a0, 1
	ble a0, zero, label12
	addiw s2, s2, -1
	li a3, 91
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	addiw s2, s2, -1
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	addiw s2, s2, -1
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	addiw s2, s2, -1
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	j label308
label12:
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	li a1, 62
	bne a0, a1, label15
	addiw s3, s3, 1
	addiw s2, s2, 1
	sh2add a1, s2, s0
	lw a0, 0(a1)
	beq a0, zero, label33
	j label296
label29:
	xori a2, a1, 93
	sltiu a1, a2, 1
	addw a0, a0, a1
	ble a0, zero, label12
	addiw s2, s2, -1
	li a3, 91
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	addiw s2, s2, -1
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	addiw s2, s2, -1
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	addiw s2, s2, -1
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
label308:
	addiw s2, s2, -1
	li a3, 91
	sh2add a2, s2, s0
	lw a1, 0(a2)
	bne a1, a3, label29
	addiw a0, a0, -1
	ble a0, zero, label12
	j label308
