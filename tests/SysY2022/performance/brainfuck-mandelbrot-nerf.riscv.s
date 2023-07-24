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
	sd s3, 24(sp)
	sd s2, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
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
pcrel323:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(pcrel323)
pcrel324:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel324)
	li a1, 35
	beq a0, a1, label310
	mv s2, zero
	mv a1, s0
	sw a0, 0(s0)
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
	addiw s3, s2, 1
	li a1, 35
	beq a0, a1, label9
	mv s2, s3
	sh2add a1, s3, s0
	sw a0, 0(a1)
	j label7
label9:
	jal getch
	li a1, 105
	beq a0, a1, label57
	mv s2, zero
label11:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel325:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel325)
	j label13
label57:
	jal getint
	mv s2, a0
	jal getch
	ble s2, zero, label11
	mv s4, zero
label58:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	bgt s2, s4, label58
	j label11
label13:
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
	blt a2, a1, label13
pcrel326:
	auipc a3, %pcrel_hi(tape)
	mv s4, zero
	addi a1, a3, %pcrel_lo(pcrel326)
	mv a3, zero
	mv a2, zero
	mv a4, zero
	mv a5, zero
	bgt s3, zero, label26
label22:
	li a0, 118
	jal _sysy_stoptime
pcrel327:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel327)
	ble s4, zero, label25
	mv s1, zero
label23:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	bgt s4, s1, label23
label25:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s2, 16(sp)
	ld s3, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
label16:
	ble s3, a5, label22
label26:
	sh2add t1, a5, s0
	li t2, 62
	lw t0, 0(t1)
	beq t0, t2, label56
	li t1, 60
	beq t0, t1, label28
	li t1, 43
	beq t0, t1, label164
	li t1, 45
	beq t0, t1, label48
	li t1, 91
	beq t0, t1, label42
	li t1, 93
	beq t0, t1, label39
	li t1, 46
	bne t0, t1, label35
	sh2add t1, a4, a1
pcrel328:
	auipc t3, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t1, t3, %pcrel_lo(pcrel328)
	sh2add t2, s4, t1
	addiw s4, s4, 1
	sw t0, 0(t2)
	addiw a5, a5, 1
	j label16
label35:
	li t1, 44
	beq t0, t1, label36
	addiw a5, a5, 1
	j label16
label42:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	bne t1, zero, label47
	li t0, 1
	j label43
label47:
	sh2add t1, a3, a0
	addiw a3, a3, 1
	sw a5, 0(t1)
	addiw a5, a5, 1
	j label16
label48:
	sh2add t0, a4, a1
	lw t2, 0(t0)
	addi t1, t2, -1
	sw t1, 0(t0)
	addiw a5, a5, 1
	j label16
label56:
	addiw a4, a4, 1
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
label43:
	bgt t0, zero, label46
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
label46:
	addiw a5, a5, 1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	xori t3, t1, 93
	xori t1, t1, 91
	sltiu t2, t3, 1
	subw t0, t0, t2
	sltiu t2, t1, 1
	addw t0, t0, t2
	j label43
label36:
	ble s2, a2, label38
	sh2add t2, a2, s1
	sh2add t1, a4, a1
	addiw a2, a2, 1
	lw t0, 0(t2)
	sw t0, 0(t1)
	j label50
label38:
	sh2add t0, a4, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	j label16
label310:
	mv s3, zero
	j label9
label28:
	addiw a4, a4, -1
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
label164:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	addi t2, t1, 1
	sw t2, 0(t0)
label50:
	addiw a5, a5, 1
	bgt s3, a5, label26
	j label22
label39:
	sh2add t0, a4, a1
	lw t1, 0(t0)
	beq t1, zero, label40
	addiw t1, a3, -1
	sh2add t0, t1, a0
	lw a5, 0(t0)
	j label50
label40:
	addiw a3, a3, -1
	addiw a5, a5, 1
	j label16
