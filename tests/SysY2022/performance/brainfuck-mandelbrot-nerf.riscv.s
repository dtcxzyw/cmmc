.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.data
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
	sd s3, 49(t0)
	addi t0, sp, 2047
	sd s1, 41(t0)
	addi t0, sp, 2047
	sd s2, 33(t0)
	addi t0, sp, 2047
	sd s0, 1(t0)
	addi t0, sp, 2047
	sd s5, 25(t0)
	addi t0, sp, 2047
	sd s4, 17(t0)
	addi t0, sp, 2047
	sd ra, 9(t0)
	addi s3, sp, 0
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
	beq a1, zero, label2
label63:
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
	beq a1, zero, label2
	j label63
label2:
	auipc a1, %pcrel_hi(program)
	addi s1, a1, %pcrel_lo(label2)
pcrel804:
	auipc a1, %pcrel_hi(input)
	addi s2, a1, %pcrel_lo(pcrel804)
	li a1, 35
	beq a0, a1, label93
	mv s0, zero
	j label4
label93:
	mv s4, zero
	jal getch
	li a1, 105
	beq a0, a1, label59
	j label406
label4:
	slli a1, s0, 2
	add a1, s1, a1
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
	beq a1, zero, label8
	j label7
label8:
	addiw s0, s0, 1
	li a1, 35
	beq a0, a1, label142
	j label4
label7:
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
	beq a1, zero, label8
	j label7
label406:
	mv s5, zero
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label14
label142:
	mv s4, s0
	jal getch
	li a1, 105
	beq a0, a1, label59
	j label406
label59:
	jal getint
	mv s5, a0
	jal getch
	mv s0, zero
	bge zero, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	j label753
label14:
	slli a1, a0, 2
	add a1, s3, a1
	sw zero, 0(a1)
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
	addi a0, a0, 16
	li a1, 512
	bge a0, a1, label16
	j label14
label16:
	auipc a0, %pcrel_hi(tape)
	addi a5, a0, %pcrel_lo(label16)
	mv s0, zero
	mv a3, zero
	mv a1, zero
	mv a2, zero
	mv a0, zero
	bge zero, s4, label55
	slli a4, zero, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, zero, 1
	addiw a0, zero, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	j label678
label55:
	li a0, 118
	jal _sysy_stoptime
pcrel805:
	auipc a0, %pcrel_hi(output)
	addi s1, a0, %pcrel_lo(pcrel805)
	ble s0, zero, label56
	mv s2, zero
	slli a0, zero, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
label752:
	slli a0, s2, 2
	add a0, s1, a0
	lw a0, 0(a0)
	jal putch
	addiw s2, s2, 1
	bge s2, s0, label56
	j label752
label753:
	jal getch
	slli a1, s0, 2
	add a1, s2, a1
	sw a0, 0(a1)
	addiw s0, s0, 1
	bge s0, s5, label12
	j label753
label31:
	li t1, 60
	bne a4, t1, label33
	addiw a2, a2, -1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	j label719
label33:
	li t1, 43
	bne a4, t1, label35
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, 1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	j label719
label35:
	li t1, 45
	bne a4, t1, label37
	slli a4, a2, 2
	add a4, a5, a4
	lw t1, 0(a4)
	addiw t1, t1, -1
	sw t1, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	j label719
label37:
	li t1, 91
	bne a4, t1, label38
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	beq a4, zero, label260
	slli a4, a1, 2
	add a4, s3, a4
	sw a0, 0(a4)
	addiw a1, a1, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	j label678
label260:
	li a4, 1
	ble a4, zero, label25
	addiw t1, a0, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
label666:
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	j label707
label637:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	j label678
label719:
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	j label678
label25:
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	j label637
label678:
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	j label719
label38:
	li t1, 93
	bne a4, t1, label39
	slli a4, a2, 2
	add a4, a5, a4
	lw a4, 0(a4)
	bne a4, zero, label46
	addiw a1, a1, -1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	j label678
label39:
	li t1, 46
	bne a4, t1, label41
pcrel806:
	auipc a4, %pcrel_hi(output)
	addi a4, a4, %pcrel_lo(pcrel806)
	slli t1, s0, 2
	add a4, a4, t1
	slli t1, a2, 2
	add t1, a5, t1
	lw t1, 0(t1)
	sw t1, 0(a4)
	addiw s0, s0, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	j label719
label41:
	li t1, 44
	bne a4, t1, label25
	blt a3, s5, label44
	slli a4, a2, 2
	add a4, a5, a4
	sw zero, 0(a4)
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	j label678
label44:
	slli a4, a3, 2
	add a4, s2, a4
	lw a4, 0(a4)
	slli t1, a2, 2
	add t1, a5, t1
	sw a4, 0(t1)
	addiw a3, a3, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	j label678
label46:
	addiw a0, a1, -1
	slli a0, a0, 2
	add a0, s3, a0
	lw a0, 0(a0)
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	li t1, 62
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	addiw a2, a2, 1
	addiw a0, a0, 1
	bge a0, s4, label55
	slli a4, a0, 2
	add a4, s1, a4
	lw a4, 0(a4)
	bne a4, t1, label31
	j label678
label746:
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
label707:
	addiw t1, a0, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	j label746
label398:
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	j label666
label278:
	mv a4, a0
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	addiw t1, t1, 1
	slli a0, t1, 2
	add a0, s1, a0
	lw t2, 0(a0)
	xori a0, t2, 93
	sltiu t3, a0, 1
	addiw a0, a4, -1
	bne t3, zero, label398
	mv a0, a4
	li a4, 91
	bne t2, a4, label278
	addiw a4, a0, 1
	mv a0, t1
	ble a4, zero, label25
	j label707
label12:
	li a0, 116
	jal _sysy_starttime
	mv a0, zero
	j label14
label56:
	mv a0, zero
	addi t0, sp, 2047
	ld ra, 9(t0)
	addi t0, sp, 2047
	ld s4, 17(t0)
	addi t0, sp, 2047
	ld s5, 25(t0)
	addi t0, sp, 2047
	ld s0, 1(t0)
	addi t0, sp, 2047
	ld s2, 33(t0)
	addi t0, sp, 2047
	ld s1, 41(t0)
	addi t0, sp, 2047
	ld s3, 49(t0)
	addi t0, sp, 2047
	addi sp, t0, 57
	ret
