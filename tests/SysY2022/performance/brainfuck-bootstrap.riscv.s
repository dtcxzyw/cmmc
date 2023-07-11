.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
program:
	.zero	262144
.align 4
tape:
	.zero	262144
.align 4
input:
	.zero	262144
.align 4
output:
	.zero	262144
.align 4
return_a:
	.zero	2048
.text
.globl main
main:
	addi sp, sp, -48
	sd s0, 40(sp)
	sd s1, 32(sp)
	sd s2, 24(sp)
	sd s3, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
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
	beq a1, zero, label2
label61:
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
	beq a1, zero, label2
	j label61
label2:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(label2)
pcrel545:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel545)
	li a1, 35
	beq a0, a1, label81
	j label80
label81:
	mv s2, zero
	j label10
label80:
	mv s2, zero
label4:
	sh2add a1, s2, s0
	sw a0, 0(a1)
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
	beq a1, zero, label8
label7:
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
	beq a1, zero, label8
	j label7
label8:
	addiw s2, s2, 1
	li a1, 35
	beq a0, a1, label10
	j label4
label10:
	jal getch
	li a1, 105
	beq a0, a1, label58
	mv s3, zero
	j label12
label58:
	jal getint
	mv s3, a0
	jal getch
	ble s3, zero, label12
	mv s4, zero
label59:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label12
	j label59
label12:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel546:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel546)
label14:
	sh2add a1, a2, a0
	sw zero, 0(a1)
	addi a2, a2, 16
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	sw zero, 16(a1)
	sw zero, 20(a1)
	sw zero, 24(a1)
	sw zero, 28(a1)
	sw zero, 32(a1)
	sw zero, 36(a1)
	sw zero, 40(a1)
	sw zero, 44(a1)
	sw zero, 48(a1)
	sw zero, 52(a1)
	sw zero, 56(a1)
	sw zero, 60(a1)
	li a1, 512
	bge a2, a1, label16
	j label14
label16:
	auipc a2, %pcrel_hi(tape)
	mv s4, zero
	mv a4, zero
	addi a1, a2, %pcrel_lo(label16)
	mv a2, zero
	mv a3, zero
	mv a5, zero
	ble s2, zero, label54
	mv t2, s0
	li t1, 62
	lw t0, 0(s0)
	bne t0, t1, label25
	li a3, 1
	li a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label478
label54:
	li a0, 118
	jal _sysy_stoptime
pcrel547:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel547)
	ble s4, zero, label55
	mv s1, zero
label56:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label55
	j label56
label25:
	li t1, 60
	bne t0, t1, label27
	addiw a3, a3, -1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label508
label32:
	li t1, 46
	bne t0, t1, label34
	sh2add t2, a3, a1
pcrel548:
	auipc t1, %pcrel_hi(output)
	lw t0, 0(t2)
	addi t2, t1, %pcrel_lo(pcrel548)
	sh2add t3, s4, t2
	addiw s4, s4, 1
	sw t0, 0(t3)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label508
label34:
	li t1, 44
	bne t0, t1, label48
	bgt s3, a2, label36
	sh2add t0, a3, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	j label477
label36:
	sh2add t2, a2, s1
	sh2add t1, a3, a1
	addiw a2, a2, 1
	lw t0, 0(t2)
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label478
label508:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
label477:
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	j label508
label48:
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label446
label478:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	j label477
label446:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	j label477
label27:
	li t1, 43
	bne t0, t1, label28
	sh2add t1, a3, a1
	lw t0, 0(t1)
	addiw t2, t0, 1
	sw t2, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label508
label28:
	li t1, 45
	bne t0, t1, label30
	sh2add t0, a3, a1
	lw t2, 0(t0)
	addiw t1, t2, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label508
label30:
	li t1, 91
	bne t0, t1, label31
	sh2add t1, a3, a1
	lw t0, 0(t1)
	beq t0, zero, label229
	sh2add t1, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	j label477
label229:
	li t0, 1
	ble t0, zero, label48
	addiw a5, a5, 1
	addiw t3, t0, -1
	li t4, 93
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label48
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label48
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
	j label445
label343:
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t2, t1
	ble t0, zero, label48
	addiw a5, a5, 1
	addiw t3, t0, -1
	li t4, 93
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label48
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
label445:
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label48
label476:
	addiw a5, a5, 1
	addiw t3, t0, -1
	li t4, 93
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label48
	j label476
label31:
	li t1, 93
	bne t0, t1, label32
	sh2add t0, a3, a1
	lw t1, 0(t0)
	bne t1, zero, label39
	addiw a4, a4, -1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	j label477
label39:
	addiw t0, a4, -1
	sh2add t1, t0, a0
	lw a5, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label54
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label25
	j label478
label55:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
