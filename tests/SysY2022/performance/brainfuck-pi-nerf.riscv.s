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
label3:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(label3)
pcrel407:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel407)
	li a1, 35
	beq a0, a1, label111
	mv s2, zero
	j label5
label111:
	mv s2, zero
	j label11
label5:
	sh2add a1, s2, s0
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
	addiw s2, s2, 1
	li a1, 35
	beq a0, a1, label11
	j label5
label11:
	jal getch
	li a1, 105
	beq a0, a1, label165
	mv s3, zero
	li a0, 116
	jal _sysy_starttime
pcrel408:
	auipc a0, %pcrel_hi(return_a)
	addi a0, a0, %pcrel_lo(pcrel408)
	mv a2, zero
	j label15
label165:
	jal getint
	mv s3, a0
	jal getch
	mv s4, zero
	j label60
label15:
	sh2add a1, a2, a0
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
	addi a2, a2, 16
	li a1, 512
	bge a2, a1, label17
	j label15
label60:
	ble s3, s4, label13
	jal getch
	sh2add a1, s4, s1
	sw a0, 0(a1)
	addiw s4, s4, 1
	j label60
label17:
	auipc a1, %pcrel_hi(tape)
	addi a1, a1, %pcrel_lo(label17)
	mv s4, zero
	mv a4, zero
	mv a2, zero
	mv a3, zero
	mv a5, zero
label18:
	ble s2, a5, label55
	sh2add t0, a5, s0
	lw t0, 0(t0)
	li t1, 62
	bne t0, t1, label26
	addiw a3, a3, 1
	addiw a5, a5, 1
	j label18
label26:
	li t1, 60
	bne t0, t1, label28
	j label206
label238:
	addiw a5, a5, 1
	j label18
label55:
	li a0, 118
	jal _sysy_stoptime
pcrel409:
	auipc a0, %pcrel_hi(output)
	addi s0, a0, %pcrel_lo(pcrel409)
	ble s4, zero, label58
	mv s1, zero
label56:
	sh2add a0, s1, s0
	lw a0, 0(a0)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label58
	j label56
label28:
	li t1, 43
	bne t0, t1, label29
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t1, t1, 1
	sw t1, 0(t0)
	addiw a5, a5, 1
	j label18
label29:
	li t1, 45
	bne t0, t1, label31
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t1, t1, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	j label18
label31:
	li t1, 91
	bne t0, t1, label38
	sh2add t0, a3, a1
	lw t0, 0(t0)
	beq t0, zero, label231
	sh2add t0, a2, a0
	sw a5, 0(t0)
	addiw a2, a2, 1
	addiw a5, a5, 1
	j label18
label231:
	li t0, 1
label34:
	ble t0, zero, label238
	addiw a5, a5, 1
	sh2add t1, a5, s0
	lw t2, 0(t1)
	xori t1, t2, 93
	sltiu t3, t1, 1
	addiw t1, t0, -1
	bne t3, zero, label397
	mv t1, t0
label397:
	addiw t0, t1, 1
	xori t2, t2, 91
	sltiu t2, t2, 1
	bne t2, zero, label34
	mv t0, t1
	j label34
label206:
	addiw a3, a3, -1
	addiw a5, a5, 1
	j label18
label38:
	li t1, 93
	bne t0, t1, label39
	sh2add t0, a3, a1
	lw t0, 0(t0)
	bne t0, zero, label46
	j label286
label58:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label13:
	li a0, 116
	jal _sysy_starttime
pcrel410:
	auipc a0, %pcrel_hi(return_a)
	addi a0, a0, %pcrel_lo(pcrel410)
	mv a2, zero
	j label15
label39:
	li t1, 46
	bne t0, t1, label41
	sh2add t0, a3, a1
	lw t0, 0(t0)
pcrel411:
	auipc t1, %pcrel_hi(output)
	addi t1, t1, %pcrel_lo(pcrel411)
	sh2add t1, s4, t1
	sw t0, 0(t1)
	addiw s4, s4, 1
	addiw a5, a5, 1
	j label18
label41:
	li t1, 44
	bne t0, t1, label238
	bgt s3, a4, label43
	j label271
label286:
	addiw a2, a2, -1
	addiw a5, a5, 1
	j label18
label46:
	addiw a5, a2, -1
	sh2add a5, a5, a0
	lw a5, 0(a5)
	addiw a5, a5, 1
	j label18
label271:
	sh2add t0, a3, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	j label18
label43:
	sh2add t0, a4, s1
	lw t0, 0(t0)
	sh2add t1, a3, a1
	sw t0, 0(t1)
	addiw a4, a4, 1
	addiw a5, a5, 1
	j label18
