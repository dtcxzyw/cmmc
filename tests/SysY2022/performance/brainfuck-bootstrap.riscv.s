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
	slti a4, a1, 0
	and a5, a2, a3
	li a3, 93
	sltiu a2, a5, 1
	or a1, a2, a4
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label3
	j label2
label350:
	mv s2, zero
	j label5
label3:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(label3)
pcrel539:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel539)
	li a1, 35
	beq a0, a1, label94
	j label350
label94:
	mv s2, zero
	j label11
label5:
	sh2add a1, s2, s0
	sw a0, 0(a1)
	jal getch
	li a5, 360287970357415681
	li a3, 1
	addiw a1, a0, -35
	sll a2, a3, a1
	slti a3, a1, 0
	and a4, a2, a5
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 93
	slt a3, a2, a0
	or a1, a1, a3
	beq a1, zero, label9
	j label8
label9:
	addiw s2, s2, 1
	li a1, 35
	beq a0, a1, label11
	j label5
label8:
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
	beq a1, zero, label9
	j label8
label2:
	jal getch
	li a5, 360287970357415681
	li a3, 1
	addiw a1, a0, -35
	sll a2, a3, a1
	slti a3, a1, 0
	and a4, a2, a5
	sltiu a2, a4, 1
	or a1, a2, a3
	li a2, 93
	slt a3, a2, a0
	or a1, a1, a3
	beq a1, zero, label3
	j label2
label11:
	jal getch
	li a1, 105
	beq a0, a1, label13
	mv s3, zero
label16:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel540:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel540)
label18:
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
	bge a2, a1, label20
	j label18
label20:
	auipc a2, %pcrel_hi(tape)
	mv s4, zero
	mv a4, zero
	addi a1, a2, %pcrel_lo(label20)
	mv a2, zero
	mv a3, zero
	mv a5, zero
	ble s2, zero, label58
	mv t2, s0
	li t1, 62
	lw t0, 0(s0)
	bne t0, t1, label28
	li a3, 1
	li a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label475
label58:
	li a0, 118
	jal _sysy_stoptime
pcrel541:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel541)
	ble s4, zero, label59
	mv s1, zero
	j label60
label475:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	j label473
label39:
	sh2add t1, a4, s1
	sh2add t2, a3, a1
	addiw a4, a4, 1
	lw t0, 0(t1)
	sw t0, 0(t2)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label475
label473:
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	j label503
label60:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label59
	j label60
label28:
	li t1, 60
	bne t0, t1, label30
	addiw a3, a3, -1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label503
label30:
	li t1, 43
	bne t0, t1, label31
	sh2add t1, a3, a1
	lw t2, 0(t1)
	addiw t0, t2, 1
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label503
label255:
	li t0, 1
	ble t0, zero, label51
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
	ble t0, zero, label51
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
	ble t0, zero, label51
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
	j label442
label443:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	j label473
label51:
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label443
label343:
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t2, t1
	ble t0, zero, label51
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
	ble t0, zero, label51
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label343
label442:
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label51
label472:
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
	ble t0, zero, label51
	j label472
label31:
	li t1, 45
	bne t0, t1, label33
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t2, t1, -1
	sw t2, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label503
label33:
	li t1, 91
	bne t0, t1, label34
	sh2add t1, a3, a1
	lw t0, 0(t1)
	beq t0, zero, label255
	sh2add t1, a2, a0
	addiw a2, a2, 1
	sw a5, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	j label473
label503:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	j label473
label34:
	li t1, 93
	bne t0, t1, label35
	sh2add t1, a3, a1
	lw t0, 0(t1)
	bne t0, zero, label42
	addiw a2, a2, -1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	j label473
label35:
	li t1, 46
	bne t0, t1, label36
	sh2add t1, a3, a1
pcrel542:
	auipc t2, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t3, t2, %pcrel_lo(pcrel542)
	sh2add t1, s4, t3
	addiw s4, s4, 1
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label503
label36:
	li t1, 44
	bne t0, t1, label51
	bgt s3, a4, label39
	sh2add t0, a3, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	j label473
label42:
	addiw t0, a2, -1
	sh2add t1, t0, a0
	lw a5, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label58
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label28
	j label475
label59:
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
	jal getint
	mv s3, a0
	jal getch
	ble s3, zero, label16
	mv s4, zero
label14:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label16
	j label14
