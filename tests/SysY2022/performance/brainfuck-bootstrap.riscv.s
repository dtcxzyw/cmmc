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
	addi sp, sp, -56
pcrel399:
	auipc a0, %pcrel_hi(return_a)
	sd ra, 0(sp)
	sd s0, 8(sp)
	addi s0, a0, %pcrel_lo(pcrel399)
	sd s5, 16(sp)
	sd s2, 24(sp)
	sd s1, 32(sp)
	sd s4, 40(sp)
	sd s3, 48(sp)
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
pcrel400:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel400)
pcrel401:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(pcrel401)
	li a1, 35
	beq a0, a1, label78
	mv s3, zero
.p2align 2
label4:
	sh2add a1, s3, s1
	sw a0, 0(a1)
.p2align 2
label7:
	jal getch
	li a4, 360287970357415681
	li a3, 1
	addiw a1, a0, -35
	sll a2, a3, a1
	and a3, a2, a4
	slti a4, a1, 0
	sltiu a2, a3, 1
	li a3, 93
	or a1, a2, a4
	slt a2, a3, a0
	or a1, a1, a2
	bne a1, zero, label7
	addiw s3, s3, 1
	li a1, 35
	bne a0, a1, label4
	mv s4, s3
label9:
	jal getch
	li a1, 105
	bne a0, a1, label104
	jal getint
	mv s3, a0
	jal getch
	ble s3, zero, label11
	mv s5, zero
.p2align 2
label56:
	jal getch
	sh2add a1, s5, s2
	addiw s5, s5, 1
	sw a0, 0(a1)
	bgt s3, s5, label56
	j label11
label104:
	mv s3, zero
label11:
	li a0, 116
	jal _sysy_starttime
	mv a1, zero
.p2align 2
label13:
	sh2add a0, a1, s0
	addi a1, a1, 64
	sd zero, 0(a0)
	sd zero, 8(a0)
	sd zero, 16(a0)
	sd zero, 24(a0)
	sd zero, 32(a0)
	sd zero, 40(a0)
	sd zero, 48(a0)
	sd zero, 56(a0)
	sd zero, 64(a0)
	sd zero, 72(a0)
	sd zero, 80(a0)
	sd zero, 88(a0)
	sd zero, 96(a0)
	sd zero, 104(a0)
	sd zero, 112(a0)
	sd zero, 120(a0)
	sd zero, 128(a0)
	sd zero, 136(a0)
	sd zero, 144(a0)
	sd zero, 152(a0)
	sd zero, 160(a0)
	sd zero, 168(a0)
	sd zero, 176(a0)
	sd zero, 184(a0)
	sd zero, 192(a0)
	sd zero, 200(a0)
	sd zero, 208(a0)
	sd zero, 216(a0)
	sd zero, 224(a0)
	sd zero, 232(a0)
	sd zero, 240(a0)
	sd zero, 248(a0)
	li a0, 512
	blt a1, a0, label13
pcrel402:
	auipc a2, %pcrel_hi(tape)
	mv s5, zero
	mv a1, zero
	addi a0, a2, %pcrel_lo(pcrel402)
	mv a2, zero
	mv a3, zero
	mv a4, zero
label16:
	bgt s4, a4, label26
label22:
	li a0, 118
	jal _sysy_stoptime
pcrel403:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel403)
	ble s5, zero, label25
	mv s1, zero
.p2align 2
label23:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s5, s1, label23
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s0, 8(sp)
	ld s5, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s4, 40(sp)
	ld s3, 48(sp)
	addi sp, sp, 56
	ret
.p2align 2
label26:
	sh2add t1, a4, s1
	li t0, 62
	lw a5, 0(t1)
	beq a5, t0, label54
	li t0, 60
	beq a5, t0, label28
	j label204
.p2align 2
label54:
	addiw a3, a3, 1
	addiw a4, a4, 1
	bgt s4, a4, label26
	j label22
.p2align 2
label204:
	li t0, 43
	beq a5, t0, label47
	li t0, 45
	bne a5, t0, label379
	sh2add a5, a3, a0
	lw t1, 0(a5)
	addi t0, t1, -1
	sw t0, 0(a5)
	addiw a4, a4, 1
	bgt s4, a4, label26
	j label22
.p2align 2
label47:
	sh2add a5, a3, a0
	lw t0, 0(a5)
	addi t1, t0, 1
	sw t1, 0(a5)
.p2align 2
label48:
	addiw a4, a4, 1
	bgt s4, a4, label26
	j label22
label379:
	li t0, 91
	bne a5, t0, label385
	sh2add a5, a3, a0
	lw t0, 0(a5)
	beq t0, zero, label224
	sh2add a5, a2, s0
	addiw a2, a2, 1
	sw a4, 0(a5)
	addiw a4, a4, 1
	bgt s4, a4, label26
	j label22
label385:
	li t0, 93
	bne a5, t0, label386
	sh2add t1, a3, a0
	addiw a5, a2, -1
	lw t0, 0(t1)
	beq t0, zero, label254
	sh2add a5, a5, s0
	lw a4, 0(a5)
	j label48
label224:
	li a5, 1
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t0, 0(t1)
	xori t2, t0, 93
	xori t0, t0, 91
	sltiu t1, t2, 1
	subw a5, a5, t1
	sltiu t1, t0, 1
	addw a5, a5, t1
	ble a5, zero, label375
.p2align 2
label34:
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t0, 0(t1)
	xori t2, t0, 93
	xori t0, t0, 91
	sltiu t1, t2, 1
	subw a5, a5, t1
	sltiu t1, t0, 1
	addw a5, a5, t1
	bgt a5, zero, label34
	addiw a4, a4, 1
	bgt s4, a4, label26
	j label22
label386:
	li t0, 46
	beq a5, t0, label41
	li t0, 44
	bne a5, t0, label375
	bgt s3, a1, label276
	sh2add a5, a3, a0
	sw zero, 0(a5)
	addiw a4, a4, 1
	j label16
label375:
	addiw a4, a4, 1
	j label16
.p2align 2
label28:
	addiw a3, a3, -1
	addiw a4, a4, 1
	bgt s4, a4, label26
	j label22
label254:
	mv a2, a5
	addiw a4, a4, 1
	j label16
label41:
	sh2add t0, a3, a0
pcrel404:
	auipc t1, %pcrel_hi(output)
	lw a5, 0(t0)
	addi t2, t1, %pcrel_lo(pcrel404)
	sh2add t0, s5, t2
	addiw s5, s5, 1
	sw a5, 0(t0)
	addiw a4, a4, 1
	j label16
label276:
	sh2add t0, a1, s2
	sh2add t1, a3, a0
	addiw a1, a1, 1
	lw a5, 0(t0)
	sw a5, 0(t1)
	j label48
label78:
	mv s4, zero
	j label9
