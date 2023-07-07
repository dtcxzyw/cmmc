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
	xori a2, a0, 60
	xori a1, a0, 62
	sltu a2, zero, a2
	sltu a1, zero, a1
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
	xori a2, a0, 60
	sltu a1, zero, a1
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
label407:
	mv s2, zero
	j label56
label3:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(label3)
pcrel607:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel607)
	li a1, 35
	beq a0, a1, label110
	j label407
label56:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	xori a2, a0, 60
	xori a1, a0, 62
	sltu a2, zero, a2
	sltu a1, zero, a1
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
	beq a1, zero, label59
label61:
	jal getch
	xori a2, a0, 60
	xori a1, a0, 62
	sltu a2, zero, a2
	sltu a1, zero, a1
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
	beq a1, zero, label59
	j label61
label59:
	addiw s2, s2, 1
	li a1, 35
	beq a0, a1, label5
	j label56
label110:
	mv s2, zero
label5:
	jal getch
	li a1, 105
	beq a0, a1, label7
	j label114
label7:
	jal getint
	mv s3, a0
	jal getch
	ble s3, zero, label121
	mv s4, zero
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
label528:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label121
	j label528
label114:
	mv s3, zero
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel608:
	auipc a0, %pcrel_hi(return_a)
	addi a0, a0, %pcrel_lo(pcrel608)
label12:
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
	bge a2, a1, label14
	j label12
label14:
	auipc a1, %pcrel_hi(tape)
	mv s4, zero
	mv a4, zero
	addi a1, a1, %pcrel_lo(label14)
	mv a2, zero
	mv a3, zero
	mv a5, zero
	ble s2, zero, label52
	sh2add t0, zero, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, zero, 1
	addiw a5, zero, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label529
label52:
	li a0, 118
	jal _sysy_stoptime
pcrel609:
	auipc a0, %pcrel_hi(output)
	addi s0, a0, %pcrel_lo(pcrel609)
	ble s4, zero, label53
	mv s1, zero
	sh2add a0, zero, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
	j label561
label529:
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	j label523
label34:
	li t1, 46
	bne t0, t1, label35
	sh2add t0, a3, a1
pcrel610:
	auipc t1, %pcrel_hi(output)
	lw t0, 0(t0)
	addi t1, t1, %pcrel_lo(pcrel610)
	sh2add t1, s4, t1
	addiw s4, s4, 1
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label559
label35:
	li t1, 44
	bne t0, t1, label45
	bgt s3, a2, label38
	sh2add t0, a3, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	j label523
label38:
	sh2add t0, a2, s1
	sh2add t1, a3, a1
	addiw a2, a2, 1
	lw t0, 0(t0)
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label529
label559:
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	j label523
label561:
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
label562:
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label53
	j label562
label45:
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	j label523
label22:
	li t1, 60
	bne t0, t1, label24
	addiw a3, a3, -1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label559
label24:
	li t1, 43
	bne t0, t1, label25
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t1, t1, 1
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label559
label25:
	li t1, 45
	bne t0, t1, label26
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t1, t1, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label559
label523:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label559
label26:
	li t1, 91
	bne t0, t1, label33
	sh2add t0, a3, a1
	lw t0, 0(t0)
	beq t0, zero, label190
	sh2add t0, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	j label523
label33:
	li t1, 93
	bne t0, t1, label34
	sh2add t0, a3, a1
	lw t0, 0(t0)
	bne t0, zero, label42
	addiw a4, a4, -1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	j label523
label190:
	li t0, 1
label28:
	ble t0, zero, label45
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, t0, -1
	bne t3, zero, label400
	mv t1, t0
	addiw t0, t0, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label28
	mv t0, t1
	ble t1, zero, label45
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, t0, -1
	bne t3, zero, label400
	mv t1, t0
	addiw t0, t0, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label28
	j label470
label42:
	addiw a5, a4, -1
	sh2add a5, a5, a0
	lw a5, 0(a5)
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label52
	j label529
label470:
	mv t0, t1
	ble t1, zero, label45
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, t0, -1
	bne t3, zero, label400
	mv t1, t0
	addiw t0, t0, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label28
	j label470
label400:
	addiw t0, t1, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label28
	mv t0, t1
	ble t1, zero, label45
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, t0, -1
	bne t3, zero, label400
	mv t1, t0
	addiw t0, t0, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label28
	j label470
label53:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label121:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel611:
	auipc a0, %pcrel_hi(return_a)
	addi a0, a0, %pcrel_lo(pcrel611)
	j label12
