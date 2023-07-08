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
label406:
	mv s2, zero
	j label5
label3:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(label3)
pcrel589:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel589)
	li a1, 35
	beq a0, a1, label110
	j label406
label110:
	mv s2, zero
	j label11
label5:
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
	beq a1, zero, label8
label10:
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
	beq a1, zero, label8
	j label10
label8:
	addiw s2, s2, 1
	li a1, 35
	beq a0, a1, label11
	j label5
label11:
	jal getch
	li a1, 105
	beq a0, a1, label59
	mv s3, zero
label13:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel590:
	auipc a0, %pcrel_hi(return_a)
	addi a0, a0, %pcrel_lo(pcrel590)
	j label15
label59:
	jal getint
	mv s3, a0
	jal getch
	ble s3, zero, label13
	mv s4, zero
	j label60
label15:
	sh2add a1, a2, a0
	addi a2, a2, 16
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
	li a1, 512
	bge a2, a1, label17
	j label15
label17:
	auipc a1, %pcrel_hi(tape)
	mv s4, zero
	mv a4, zero
	addi a1, a1, %pcrel_lo(label17)
	mv a2, zero
	mv a3, zero
	mv a5, zero
	ble s2, zero, label24
	sh2add t0, zero, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, zero, 1
	addiw a5, zero, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label527
label24:
	li a0, 118
	jal _sysy_stoptime
pcrel591:
	auipc a0, %pcrel_hi(output)
	addi s0, a0, %pcrel_lo(pcrel591)
	ble s4, zero, label25
	mv s1, zero
	j label26
label29:
	li t1, 60
	bne t0, t1, label30
	addiw a3, a3, -1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label554
label34:
	li t1, 93
	bne t0, t1, label35
	sh2add t0, a3, a1
	lw t0, 0(t0)
	bne t0, zero, label42
	addiw a4, a4, -1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	j label525
label286:
	li t0, 1
	ble t0, zero, label52
	addiw a5, a5, 1
	addiw t2, t0, -1
	li t3, 93
	sh2add t1, a5, s0
	lw t1, 0(t1)
	beq t1, t3, label399
	mv t2, t0
	xori t0, t1, 91
	sltiu t0, t0, 1
	addw t0, t2, t0
	ble t0, zero, label52
	addiw a5, a5, 1
	addiw t2, t0, -1
	sh2add t1, a5, s0
	lw t1, 0(t1)
	beq t1, t3, label399
	mv t2, t0
	xori t0, t1, 91
	sltiu t0, t0, 1
	addw t0, t2, t0
	ble t0, zero, label52
	addiw a5, a5, 1
	addiw t2, t0, -1
	sh2add t1, a5, s0
	lw t1, 0(t1)
	beq t1, t3, label399
	j label494
label399:
	xori t0, t1, 91
	sltiu t0, t0, 1
	addw t0, t2, t0
	ble t0, zero, label52
	addiw a5, a5, 1
	addiw t2, t0, -1
	li t3, 93
	sh2add t1, a5, s0
	lw t1, 0(t1)
	beq t1, t3, label399
	mv t2, t0
	xori t0, t1, 91
	sltiu t0, t0, 1
	addw t0, t2, t0
	ble t0, zero, label52
	addiw a5, a5, 1
	addiw t2, t0, -1
	sh2add t1, a5, s0
	lw t1, 0(t1)
	beq t1, t3, label399
label494:
	mv t2, t0
	xori t0, t1, 91
	sltiu t0, t0, 1
	addw t0, t2, t0
	ble t0, zero, label52
	j label523
label496:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
label525:
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	j label554
label26:
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label25
	j label26
label52:
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label496
label523:
	addiw a5, a5, 1
	addiw t2, t0, -1
	li t3, 93
	sh2add t1, a5, s0
	lw t1, 0(t1)
	beq t1, t3, label399
	mv t2, t0
	xori t0, t1, 91
	sltiu t0, t0, 1
	addw t0, t2, t0
	ble t0, zero, label52
	j label523
label35:
	li t1, 46
	bne t0, t1, label36
	sh2add t0, a3, a1
pcrel592:
	auipc t1, %pcrel_hi(output)
	lw t0, 0(t0)
	addi t1, t1, %pcrel_lo(pcrel592)
	sh2add t1, s4, t1
	addiw s4, s4, 1
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label554
label36:
	li t1, 44
	bne t0, t1, label52
	bgt s3, a2, label39
	sh2add t0, a3, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	j label525
label554:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	j label525
label527:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	j label525
label39:
	sh2add t0, a2, s1
	sh2add t1, a3, a1
	addiw a2, a2, 1
	lw t0, 0(t0)
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label527
label30:
	li t1, 43
	bne t0, t1, label31
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t1, t1, 1
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label554
label31:
	li t1, 45
	bne t0, t1, label33
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t1, t1, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label554
label33:
	li t1, 91
	bne t0, t1, label34
	sh2add t0, a3, a1
	lw t0, 0(t0)
	beq t0, zero, label286
	sh2add t0, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	j label525
label42:
	addiw a5, a4, -1
	sh2add a5, a5, a0
	lw a5, 0(a5)
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	li t1, 62
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label24
	sh2add t0, a5, s0
	lw t0, 0(t0)
	bne t0, t1, label29
	j label527
label60:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label13
	j label60
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
