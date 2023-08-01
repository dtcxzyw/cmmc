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
.p2align 2
.globl main
main:
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
	or a1, a2, a3
	li a2, 93
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label2
pcrel392:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel392)
pcrel393:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(pcrel393)
	li a1, 35
	beq a0, a1, label76
	mv s2, zero
.p2align 2
label4:
	sh2add a1, s2, s0
	sw a0, 0(a1)
.p2align 2
label7:
	jal getch
	li a4, 1
	li a3, 360287970357415681
	addiw a1, a0, -35
	sll a2, a4, a1
	and a4, a2, a3
	slti a3, a1, 0
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 93
	slt a3, a2, a0
	or a1, a1, a3
	bne a1, zero, label7
	addiw s2, s2, 1
	li a1, 35
	bne a0, a1, label4
	mv s3, s2
label9:
	jal getch
	li a1, 105
	beq a0, a1, label55
	mv s2, zero
label11:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel394:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel394)
.p2align 2
label13:
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
	blt a2, a1, label13
pcrel395:
	auipc a3, %pcrel_hi(tape)
	mv s4, zero
	mv a2, zero
	addi a1, a3, %pcrel_lo(pcrel395)
	mv a3, zero
	mv a4, zero
	mv a5, zero
label16:
	bgt s3, a5, label26
	j label22
label224:
	li t0, 1
.p2align 2
label34:
	addiw a5, a5, 1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	xori t3, t1, 93
	sltiu t2, t3, 1
	xori t3, t1, 91
	subw t0, t0, t2
	sltiu t1, t3, 1
	addw t0, t0, t1
	bgt t0, zero, label34
label241:
	addiw a5, a5, 1
	j label16
label22:
	li a0, 118
	jal _sysy_stoptime
pcrel396:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel396)
	ble s4, zero, label25
	mv s1, zero
.p2align 2
label23:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s4, s1, label23
label25:
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
label26:
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	beq t0, t1, label54
	li t1, 60
	beq t0, t1, label28
	j label204
.p2align 2
label54:
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
.p2align 2
label204:
	li t1, 43
	bne t0, t1, label372
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
.p2align 2
label48:
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
.p2align 2
label372:
	li t1, 45
	bne t0, t1, label375
	sh2add t0, a4, a1
	lw t2, 0(t0)
	addi t1, t2, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
label375:
	li t1, 91
	beq t0, t1, label32
	li t1, 93
	beq t0, t1, label38
	li t1, 46
	beq t0, t1, label41
	li t1, 44
	bne t0, t1, label241
	bgt s2, a2, label276
	sh2add t0, a4, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	j label16
label32:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	beq t1, zero, label224
	sh2add t0, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	j label16
label38:
	sh2add t2, a4, a1
	addiw t0, a3, -1
	lw t1, 0(t2)
	beq t1, zero, label254
	sh2add t0, t0, a0
	lw a5, 0(t0)
	j label48
label55:
	jal getint
	mv s2, a0
	jal getch
	ble s2, zero, label11
	mv s4, zero
.p2align 2
label56:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	bgt s2, s4, label56
	j label11
.p2align 2
label28:
	addiw a4, a4, -1
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
label276:
	sh2add t1, a2, s1
	sh2add t2, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	j label48
label41:
	sh2add t1, a4, a1
pcrel397:
	auipc t2, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t1, t2, %pcrel_lo(pcrel397)
	sh2add t3, s4, t1
	addiw s4, s4, 1
	sw t0, 0(t3)
	addiw a5, a5, 1
	j label16
label254:
	mv a3, t0
	addiw a5, a5, 1
	j label16
label76:
	mv s3, zero
	j label9
