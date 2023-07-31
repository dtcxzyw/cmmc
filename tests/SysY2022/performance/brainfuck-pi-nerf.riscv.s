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
	addi sp, sp, -48
	sd ra, 0(sp)
	sd s1, 8(sp)
	sd s0, 16(sp)
	sd s3, 24(sp)
	sd s2, 32(sp)
	sd s4, 40(sp)
.p2align 2
label2:
	jal getch
	li a3, 360287970357415681
	li a4, 1
	addiw a1, a0, -35
	sll a2, a4, a1
	and a4, a2, a3
	slti a3, a1, 0
	sltiu a2, a4, 1
	li a4, 93
	or a1, a2, a3
	slt a2, a4, a0
	or a1, a1, a2
	bne a1, zero, label2
pcrel390:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel390)
pcrel391:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(pcrel391)
	li a1, 35
	beq a0, a1, label76
	mv s2, zero
	mv a1, s0
	sw a0, 0(s0)
.p2align 2
label56:
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
	bne a1, zero, label56
	addiw s3, s2, 1
	li a1, 35
	beq a0, a1, label4
	mv s2, s3
	sh2add a1, s3, s0
	sw a0, 0(a1)
	j label56
.p2align 2
label76:
	mv s3, zero
label4:
	jal getch
	li a1, 105
	beq a0, a1, label50
	mv s2, zero
label6:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel392:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel392)
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
pcrel393:
	auipc a3, %pcrel_hi(tape)
	mv s4, zero
	addi a1, a3, %pcrel_lo(pcrel393)
	mv a3, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
.p2align 2
label11:
	ble s3, a5, label17
.p2align 2
label21:
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	beq t0, t1, label49
	j label22
.p2align 2
label184:
	li t1, 43
	beq t0, t1, label42
	li t1, 45
	bne t0, t1, label26
	sh2add t0, a4, a1
	lw t2, 0(t0)
	addi t1, t2, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	j label11
.p2align 2
label49:
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s3, a5, label21
label17:
	li a0, 118
	jal _sysy_stoptime
pcrel394:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel394)
	ble s4, zero, label18
	mv s1, zero
.p2align 2
label19:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s4, s1, label19
label18:
	mv a0, zero
	ld ra, 0(sp)
	ld s1, 8(sp)
	ld s0, 16(sp)
	ld s3, 24(sp)
	ld s2, 32(sp)
	ld s4, 40(sp)
	addi sp, sp, 48
	ret
.p2align 2
label22:
	li t1, 60
	bne t0, t1, label184
	addiw a4, a4, -1
	addiw a5, a5, 1
	bgt s3, a5, label21
	j label17
label42:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
	addiw a5, a5, 1
	bgt s3, a5, label21
	j label17
label26:
	li t1, 91
	beq t0, t1, label27
	li t1, 93
	beq t0, t1, label33
	li t1, 46
	beq t0, t1, label36
	li t1, 44
	bne t0, t1, label252
	bgt s2, a3, label39
	sh2add t0, a4, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	j label11
label50:
	jal getint
	mv s2, a0
	jal getch
	ble s2, zero, label6
	mv s4, zero
.p2align 2
label51:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	bgt s2, s4, label51
	j label6
label33:
	sh2add t2, a4, a1
	addiw t0, a2, -1
	lw t1, 0(t2)
	beq t1, zero, label234
	sh2add t0, t0, a0
	lw a5, 0(t0)
	addiw a5, a5, 1
	bgt s3, a5, label21
	j label17
label27:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	beq t1, zero, label204
	sh2add t0, a2, a0
	addiw a2, a2, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	j label11
label204:
	li t0, 1
.p2align 2
label29:
	addiw a5, a5, 1
	sh2add t3, a5, s0
	lw t1, 0(t3)
	xori t2, t1, 93
	xori t1, t1, 91
	sltiu t3, t2, 1
	sltiu t2, t1, 1
	subw t0, t0, t3
	addw t0, t0, t2
	bgt t0, zero, label29
	addiw a5, a5, 1
	bgt s3, a5, label21
	j label17
label39:
	sh2add t2, a3, s1
	sh2add t1, a4, a1
	addiw a3, a3, 1
	lw t0, 0(t2)
	sw t0, 0(t1)
	addiw a5, a5, 1
	j label11
label252:
	addiw a5, a5, 1
	j label11
label234:
	mv a2, t0
	addiw a5, a5, 1
	j label11
label36:
	sh2add t1, a4, a1
pcrel395:
	auipc t3, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t2, t3, %pcrel_lo(pcrel395)
	sh2add t1, s4, t2
	addiw s4, s4, 1
	sw t0, 0(t1)
	addiw a5, a5, 1
	j label11
