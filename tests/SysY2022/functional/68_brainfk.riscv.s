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
	li s3, 91
	li s4, 43
	li s1, 62
pcrel201:
	auipc a1, %pcrel_hi(program)
	li s2, 60
	mv s7, a0
	addi s0, a1, %pcrel_lo(pcrel201)
	ble a0, zero, label40
	mv s8, s0
	mv s9, zero
.p2align 2
label3:
	jal getch
	addiw s9, s9, 1
	sw a0, 0(s8)
	ble s7, s9, label46
	addi s8, s8, 4
	j label3
label46:
	sh2add a0, s7, s0
pcrel202:
	auipc a1, %pcrel_hi(tape)
	mv s8, zero
	mv s9, zero
	sw zero, 0(a0)
	addi s7, a1, %pcrel_lo(pcrel202)
label9:
	sh2add a1, s9, s0
	lw a0, 0(a1)
	beq a0, zero, label35
.p2align 2
label12:
	bne a0, s1, label62
	addiw s8, s8, 1
.p2align 2
label14:
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label12
label35:
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
label62:
	beq a0, s2, label18
	bne a0, s4, label183
	sh2add a0, s8, s7
	addiw s9, s9, 1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label12
	j label35
.p2align 2
label183:
	bne a0, s5, label186
	sh2add a0, s8, s7
	addiw s9, s9, 1
	lw a1, 0(a0)
	addi a2, a1, -1
	sh2add a1, s9, s0
	sw a2, 0(a0)
	lw a0, 0(a1)
	bne a0, zero, label12
	j label35
.p2align 2
label186:
	bne a0, s6, label189
	sh2add a1, s8, s7
	lw a0, 0(a1)
	jal putch
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label12
	j label35
label189:
	li a1, 44
	beq a0, a1, label32
	li a1, 93
	bne a0, a1, label14
	sh2add a1, s8, s7
	lw a0, 0(a1)
	beq a0, zero, label14
	li a0, 1
	ble a0, zero, label14
.p2align 2
label29:
	addiw s9, s9, -1
	sh2add a2, s9, s0
	lw a1, 0(a2)
	beq a1, s3, label31
	xori a3, a1, 93
	sltiu a2, a3, 1
	addw a0, a0, a2
	bgt a0, zero, label29
	j label14
.p2align 2
label31:
	addiw a0, a0, -1
	bgt a0, zero, label29
	j label14
.p2align 2
label18:
	addiw s8, s8, -1
	addiw s9, s9, 1
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, zero, label12
	j label35
label32:
	jal getch
	sh2add a1, s8, s7
	sw a0, 0(a1)
	j label14
label40:
	mv a0, s0
pcrel203:
	auipc a1, %pcrel_hi(tape)
	mv s8, zero
	mv s9, zero
	sw zero, 0(s0)
	addi s7, a1, %pcrel_lo(pcrel203)
	j label9
