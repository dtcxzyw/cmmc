.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.p2align 3
tape:
	.zero	262144
.p2align 3
program:
	.zero	131072
.text
.p2align 2
.globl main
main:
	addi sp, sp, -96
	sd ra, 0(sp)
	sd s7, 8(sp)
	sd s8, 16(sp)
	sd s0, 24(sp)
	sd s5, 32(sp)
	sd s1, 40(sp)
	sd s6, 48(sp)
	sd s2, 56(sp)
	sd s3, 64(sp)
	sd s4, 72(sp)
	sd s9, 80(sp)
	sd s10, 88(sp)
	jal getint
	li s4, 43
	li s5, 45
	li s3, 91
	li s2, 60
	li s1, 62
	li s6, 46
pcrel214:
	auipc s8, %pcrel_hi(program)
	mv s7, a0
	addi s0, s8, %pcrel_lo(pcrel214)
	ble a0, zero, label37
	mv s9, s0
	mv s10, zero
.p2align 2
label2:
	jal getch
	addiw s10, s10, 1
	sw a0, 0(s9)
	sh2add s9, s10, s0
	bgt s7, s10, label2
label5:
	sw zero, 0(s9)
pcrel215:
	auipc a1, %pcrel_hi(tape)
pcrel216:
	auipc s8, %pcrel_hi(program)
	lw a0, %pcrel_lo(pcrel216)(s8)
	addi s7, a1, %pcrel_lo(pcrel215)
	beq a0, zero, label32
	mv s8, zero
	mv s9, zero
	j label7
label29:
	jal getch
	sh2add a1, s8, s7
	sw a0, 0(a1)
.p2align 2
label11:
	addiw s9, s9, 1
	sh2add a0, s9, s0
	lw a1, 0(a0)
	beq a1, zero, label32
.p2align 2
label7:
	sh2add a1, s9, s0
	lw a0, 0(a1)
	bne a0, s1, label59
	addiw s8, s8, 1
	j label11
.p2align 2
label59:
	beq a0, s2, label15
	bne a0, s4, label189
	sh2add a0, s8, s7
	addiw s9, s9, 1
	lw a2, 0(a0)
	addi a1, a2, 1
	sw a1, 0(a0)
	sh2add a0, s9, s0
	lw a1, 0(a0)
	bne a1, zero, label7
	j label32
.p2align 2
label189:
	bne a0, s5, label192
	sh2add a0, s8, s7
	addiw s9, s9, 1
	lw a1, 0(a0)
	addi a2, a1, -1
	sw a2, 0(a0)
	sh2add a0, s9, s0
	lw a1, 0(a0)
	bne a1, zero, label7
	j label32
.p2align 2
label192:
	bne a0, s6, label195
	sh2add a1, s8, s7
	lw a0, 0(a1)
	jal putch
	addiw s9, s9, 1
	sh2add a0, s9, s0
	lw a1, 0(a0)
	bne a1, zero, label7
	j label32
label195:
	li a1, 44
	beq a0, a1, label29
	li a1, 93
	bne a0, a1, label11
	sh2add a0, s8, s7
	lw a1, 0(a0)
	beq a1, zero, label11
	li a0, 1
	bgt a0, zero, label26
	j label11
.p2align 2
label27:
	xori a2, a1, 93
	sltiu a3, a2, 1
	addw a0, a0, a3
	ble a0, zero, label11
.p2align 2
label26:
	addiw s9, s9, -1
	sh2add a2, s9, s0
	lw a1, 0(a2)
	bne a1, s3, label27
	addiw a0, a0, -1
	bgt a0, zero, label26
	j label11
label32:
	mv a0, zero
	ld ra, 0(sp)
	ld s7, 8(sp)
	ld s8, 16(sp)
	ld s0, 24(sp)
	ld s5, 32(sp)
	ld s1, 40(sp)
	ld s6, 48(sp)
	ld s2, 56(sp)
	ld s3, 64(sp)
	ld s4, 72(sp)
	ld s9, 80(sp)
	ld s10, 88(sp)
	addi sp, sp, 96
	ret
label37:
	mv s9, s0
	j label5
.p2align 2
label15:
	addiw s8, s8, -1
	addiw s9, s9, 1
	sh2add a0, s9, s0
	lw a1, 0(a0)
	bne a1, zero, label7
	j label32
