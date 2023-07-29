.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 8
program:
	.zero	262144
.align 8
tape:
	.zero	262144
.align 8
input:
	.zero	262144
.align 8
output:
	.zero	262144
.align 8
return_a:
	.zero	2048
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
.p2align 2
label2:
	jal getch
	li a4, 360287970357415681
	li a3, 1
	addiw a1, a0, -35
	sll a2, a3, a1
	and a3, a2, a4
	slti a4, a1, 0
	sltiu a2, a3, 1
	or a1, a2, a4
	li a2, 93
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label2
pcrel390:
	auipc a1, %pcrel_hi(input)
	addi s0, a1, %pcrel_lo(pcrel390)
	li a1, 35
	bne a0, a1, label54
	mv s1, zero
	j label4
label54:
	auipc a1, %pcrel_hi(program)
	mv s2, zero
	addi s1, a1, %pcrel_lo(label54)
	j label55
label4:
	jal getch
	li a1, 105
	beq a0, a1, label51
	mv s2, zero
label6:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel391:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel391)
	j label8
label51:
	jal getint
	mv s2, a0
	jal getch
	ble s2, zero, label6
	mv s3, zero
.p2align 2
label52:
	jal getch
	sh2add a1, s3, s0
	addiw s3, s3, 1
	sw a0, 0(a1)
	bgt s2, s3, label52
	j label6
.p2align 2
label55:
	sh2add a1, s2, s1
	sw a0, 0(a1)
.p2align 2
label58:
	jal getch
	li a3, 360287970357415681
	li a4, 1
	addiw a1, a0, -35
	sll a2, a4, a1
	and a4, a2, a3
	slti a3, a1, 0
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 93
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label58
	addiw s2, s2, 1
	li a1, 35
	bne a0, a1, label55
	mv s1, s2
	j label4
.p2align 2
label8:
	sh2add a1, a2, a0
	addi a2, a2, 64
	sd zero, 0(a1)
	sd zero, 8(a1)
	sd zero, 16(a1)
	sd zero, 24(a1)
	sd zero, 32(a1)
	sd zero, 40(a1)
	sd zero, 48(a1)
	sd zero, 56(a1)
	sd zero, 64(a1)
	sd zero, 72(a1)
	sd zero, 80(a1)
	sd zero, 88(a1)
	sd zero, 96(a1)
	sd zero, 104(a1)
	sd zero, 112(a1)
	sd zero, 120(a1)
	sd zero, 128(a1)
	sd zero, 136(a1)
	sd zero, 144(a1)
	sd zero, 152(a1)
	sd zero, 160(a1)
	sd zero, 168(a1)
	sd zero, 176(a1)
	sd zero, 184(a1)
	sd zero, 192(a1)
	sd zero, 200(a1)
	sd zero, 208(a1)
	sd zero, 216(a1)
	sd zero, 224(a1)
	sd zero, 232(a1)
	sd zero, 240(a1)
	sd zero, 248(a1)
	li a1, 512
	blt a2, a1, label8
pcrel392:
	auipc a3, %pcrel_hi(program)
	mv s3, zero
	mv a4, zero
	addi a1, a3, %pcrel_lo(pcrel392)
pcrel393:
	auipc a3, %pcrel_hi(tape)
	addi a2, a3, %pcrel_lo(pcrel393)
	mv a3, zero
	mv a5, zero
	mv t0, zero
.p2align 2
label11:
	ble s1, t0, label17
.p2align 2
label21:
	sh2add t2, t0, a1
	li t3, 62
	lw t1, 0(t2)
	beq t1, t3, label50
	li t2, 60
	beq t1, t2, label23
	li t2, 43
	beq t1, t2, label192
	j label25
.p2align 2
label50:
	addiw a5, a5, 1
	addiw t0, t0, 1
	bgt s1, t0, label21
label17:
	li a0, 118
	jal _sysy_stoptime
pcrel394:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel394)
	ble s3, zero, label18
	mv s1, zero
	j label19
label18:
	mv a0, zero
	ld ra, 0(sp)
	ld s3, 8(sp)
	ld s2, 16(sp)
	ld s1, 24(sp)
	ld s0, 32(sp)
	addi sp, sp, 40
	ret
.p2align 2
label19:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s3, s1, label19
	j label18
.p2align 2
label23:
	addiw a5, a5, -1
	addiw t0, t0, 1
	bgt s1, t0, label21
	j label17
label192:
	sh2add t1, a5, a2
	lw t2, 0(t1)
	addi t3, t2, 1
	sw t3, 0(t1)
.p2align 2
label44:
	addiw t0, t0, 1
	bgt s1, t0, label21
	j label17
label25:
	li t2, 45
	bne t1, t2, label27
	sh2add t1, a5, a2
	lw t3, 0(t1)
	addi t2, t3, -1
	sw t2, 0(t1)
	addiw t0, t0, 1
	j label11
label27:
	li t2, 91
	beq t1, t2, label28
	li t2, 93
	beq t1, t2, label40
	li t2, 46
	beq t1, t2, label39
	li t2, 44
	beq t1, t2, label36
	addiw t0, t0, 1
	j label11
label39:
	sh2add t2, a5, a2
pcrel395:
	auipc t4, %pcrel_hi(output)
	lw t1, 0(t2)
	addi t2, t4, %pcrel_lo(pcrel395)
	sh2add t3, s3, t2
	addiw s3, s3, 1
	sw t1, 0(t3)
	addiw t0, t0, 1
	j label11
label40:
	sh2add t1, a5, a2
	lw t2, 0(t1)
	beq t2, zero, label41
	addiw t1, a3, -1
	sh2add t2, t1, a0
	lw t0, 0(t2)
	j label44
label41:
	addiw a3, a3, -1
	addiw t0, t0, 1
	j label11
label36:
	ble s2, a4, label37
	sh2add t2, a4, s0
	sh2add t3, a5, a2
	addiw a4, a4, 1
	lw t1, 0(t2)
	sw t1, 0(t3)
	j label44
label37:
	sh2add t1, a5, a2
	sw zero, 0(t1)
	addiw t0, t0, 1
	j label11
label28:
	sh2add t1, a5, a2
	lw t2, 0(t1)
	bne t2, zero, label29
	li t1, 1
.p2align 2
label30:
	addiw t0, t0, 1
	sh2add t3, t0, a1
	lw t2, 0(t3)
	xori t4, t2, 93
	xori t2, t2, 91
	sltiu t3, t4, 1
	subw t1, t1, t3
	sltiu t3, t2, 1
	addw t1, t1, t3
	bgt t1, zero, label30
	addiw t0, t0, 1
	bgt s1, t0, label21
	j label17
label29:
	sh2add t1, a3, a0
	addiw a3, a3, 1
	sw t0, 0(t1)
	addiw t0, t0, 1
	j label11
