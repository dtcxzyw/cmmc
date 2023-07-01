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
.text
.globl main
main:
	addi t0, sp, -2048
	addi sp, t0, -56
	addi t0, sp, 2047
	sd s0, 49(t0)
	addi t0, sp, 2047
	sd s5, 41(t0)
	addi t0, sp, 2047
	sd s1, 1(t0)
	addi t0, sp, 2047
	sd s2, 33(t0)
	addi t0, sp, 2047
	sd s3, 25(t0)
	addi t0, sp, 2047
	sd s4, 17(t0)
	addi t0, sp, 2047
	sd ra, 9(t0)
	addi s0, sp, 0
	jal getch
	xori a1, a0, 62
	sltu a1, zero, a1
	xori a2, a0, 60
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 43
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 45
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 91
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 93
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 46
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 44
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 35
	sltu a2, zero, a2
	and a1, a1, a2
	beq a1, zero, label3
label2:
	jal getch
	xori a1, a0, 62
	sltu a1, zero, a1
	xori a2, a0, 60
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 43
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 45
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 91
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 93
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 46
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 44
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 35
	sltu a2, zero, a2
	and a1, a1, a2
	beq a1, zero, label3
	j label2
label404:
	mv s3, zero
	j label5
label3:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(label3)
pcrel772:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel772)
	li a1, 35
	beq a0, a1, label113
	j label404
label113:
	mv s3, zero
	jal getch
	li a1, 105
	beq a0, a1, label59
	j label405
label59:
	jal getint
	mv s4, a0
	jal getch
	mv s5, zero
	ble s4, zero, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	j label724
label5:
	sh2add a1, s3, s1
	sw a0, 0(a1)
	jal getch
	xori a1, a0, 62
	sltu a1, zero, a1
	xori a2, a0, 60
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 43
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 45
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 91
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 93
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 46
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 44
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 35
	sltu a2, zero, a2
	and a1, a1, a2
	beq a1, zero, label9
label8:
	jal getch
	xori a1, a0, 62
	sltu a1, zero, a1
	xori a2, a0, 60
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 43
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 45
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 91
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 93
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 46
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 44
	sltu a2, zero, a2
	and a1, a1, a2
	xori a2, a0, 35
	sltu a2, zero, a2
	and a1, a1, a2
	beq a1, zero, label9
	j label8
label9:
	addiw s3, s3, 1
	li a1, 35
	beq a0, a1, label11
	j label5
label724:
	jal getch
	sh2add a1, s5, s2
	sw a0, 0(a1)
	addiw s5, s5, 1
	ble s4, s5, label13
	j label724
label405:
	mv s4, zero
	li a0, 116
	jal _sysy_starttime
	mv a1, zero
	j label15
label11:
	jal getch
	li a1, 105
	beq a0, a1, label59
	j label405
label15:
	sh2add a0, a1, s0
	sw zero, 0(a0)
	sw zero, 4(a0)
	sw zero, 8(a0)
	sw zero, 12(a0)
	sw zero, 16(a0)
	sw zero, 20(a0)
	sw zero, 24(a0)
	sw zero, 28(a0)
	sw zero, 32(a0)
	sw zero, 36(a0)
	sw zero, 40(a0)
	sw zero, 44(a0)
	sw zero, 48(a0)
	sw zero, 52(a0)
	sw zero, 56(a0)
	sw zero, 60(a0)
	addi a1, a1, 16
	li a0, 512
	bge a1, a0, label17
	j label15
label17:
	auipc a0, %pcrel_hi(tape)
	addi a0, a0, %pcrel_lo(label17)
	mv s5, zero
	mv a3, zero
	mv a1, zero
	mv a2, zero
	mv a4, zero
	ble s3, zero, label55
	sh2add a5, zero, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, zero, 1
	addiw a4, zero, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label688
label55:
	li a0, 118
	jal _sysy_stoptime
pcrel773:
	auipc a0, %pcrel_hi(output)
	addi s0, a0, %pcrel_lo(pcrel773)
	ble s5, zero, label58
	mv s1, zero
	sh2add a0, zero, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
label723:
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s5, s1, label58
	j label723
label688:
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	j label682
label26:
	li t1, 60
	bne a5, t1, label28
	addiw a2, a2, -1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label721
label28:
	li t1, 43
	bne a5, t1, label29
	sh2add a5, a2, a0
	lw t1, 0(a5)
	addiw t1, t1, 1
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label721
label39:
	li t1, 46
	bne a5, t1, label41
	sh2add a5, a2, a0
	lw a5, 0(a5)
pcrel774:
	auipc t1, %pcrel_hi(output)
	addi t1, t1, %pcrel_lo(pcrel774)
	sh2add t1, s5, t1
	sw a5, 0(t1)
	addiw s5, s5, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label721
label41:
	li t1, 44
	bne a5, t1, label49
	bgt s4, a3, label43
	sh2add a5, a2, a0
	sw zero, 0(a5)
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	j label682
label721:
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	j label682
label49:
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	j label682
label29:
	li t1, 45
	bne a5, t1, label31
	sh2add a5, a2, a0
	lw t1, 0(a5)
	addiw t1, t1, -1
	sw t1, 0(a5)
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label721
label31:
	li t1, 91
	bne a5, t1, label38
	sh2add a5, a2, a0
	lw a5, 0(a5)
	beq a5, zero, label231
	sh2add a5, a1, s0
	sw a4, 0(a5)
	addiw a1, a1, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	j label682
label38:
	li t1, 93
	bne a5, t1, label39
	sh2add a5, a2, a0
	lw a5, 0(a5)
	bne a5, zero, label46
	addiw a1, a1, -1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
label682:
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label721
label231:
	li a5, 1
	ble a5, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	j label590
label34:
	ble a5, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	j label629
label396:
	addiw a5, t1, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
label590:
	mv a5, t1
	ble t1, zero, label49
label629:
	addiw a4, a4, 1
	sh2add t1, a4, s1
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, a5, -1
	bne t3, zero, label396
	mv t1, a5
	addiw a5, a5, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv a5, t1
	ble t1, zero, label49
	j label629
label43:
	sh2add a5, a3, s2
	lw a5, 0(a5)
	sh2add t1, a2, a0
	sw a5, 0(t1)
	addiw a3, a3, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label688
label46:
	addiw a4, a1, -1
	sh2add a4, a4, s0
	lw a4, 0(a4)
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	li t1, 62
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	sh2add a5, a4, s1
	lw a5, 0(a5)
	bne a5, t1, label26
	addiw a2, a2, 1
	addiw a4, a4, 1
	ble s3, a4, label55
	j label688
label58:
	mv a0, zero
	addi t0, sp, 2047
	ld ra, 9(t0)
	addi t0, sp, 2047
	ld s4, 17(t0)
	addi t0, sp, 2047
	ld s3, 25(t0)
	addi t0, sp, 2047
	ld s2, 33(t0)
	addi t0, sp, 2047
	ld s1, 1(t0)
	addi t0, sp, 2047
	ld s5, 41(t0)
	addi t0, sp, 2047
	ld s0, 49(t0)
	addi t0, sp, 2047
	addi sp, t0, 57
	ret
label13:
	li a0, 116
	jal _sysy_starttime
	mv a1, zero
	j label15
