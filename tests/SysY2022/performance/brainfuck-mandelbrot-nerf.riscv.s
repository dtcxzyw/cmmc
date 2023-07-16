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
label2:
	jal getch
	li a4, 1
	li a3, 360287970357415681
	addiw a1, a0, -35
	slti a5, a1, 0
	sll a2, a4, a1
	and a4, a2, a3
	li a3, 93
	sltiu a2, a4, 1
	or a1, a2, a5
	slt a2, a3, a0
	or a1, a1, a2
	beq a1, zero, label3
	j label2
label3:
	auipc a1, %pcrel_hi(program)
	addi s0, a1, %pcrel_lo(label3)
pcrel509:
	auipc a1, %pcrel_hi(input)
	addi s1, a1, %pcrel_lo(pcrel509)
	li a1, 35
	beq a0, a1, label79
	mv s2, zero
	mv a1, s0
	sw a0, 0(s0)
	j label58
label79:
	mv s2, zero
	j label4
label55:
	sh2add a1, s2, s0
	sw a0, 0(a1)
label58:
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
	beq a1, zero, label59
	j label58
label59:
	addiw s2, s2, 1
	li a1, 35
	beq a0, a1, label4
	j label55
label4:
	jal getch
	li a1, 105
	beq a0, a1, label52
	mv s3, zero
	j label6
label52:
	jal getint
	mv s3, a0
	jal getch
	ble s3, zero, label6
	mv s4, zero
label53:
	jal getch
	sh2add a1, s4, s1
	addiw s4, s4, 1
	sw a0, 0(a1)
	ble s3, s4, label6
	j label53
label6:
	li a0, 116
	jal _sysy_starttime
	mv a2, zero
pcrel510:
	auipc a1, %pcrel_hi(return_a)
	addi a0, a1, %pcrel_lo(pcrel510)
label8:
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
	bge a2, a1, label10
	j label8
label10:
	auipc a2, %pcrel_hi(tape)
	mv s4, zero
	mv a4, zero
	addi a1, a2, %pcrel_lo(label10)
	mv a2, zero
	mv a3, zero
	mv a5, zero
	ble s2, zero, label17
	mv t2, s0
	li t1, 62
	lw t0, 0(s0)
	bne t0, t1, label22
	li a3, 1
	li a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label443
label17:
	li a0, 118
	jal _sysy_stoptime
pcrel511:
	auipc a1, %pcrel_hi(output)
	addi s0, a1, %pcrel_lo(pcrel511)
	ble s4, zero, label20
	mv s1, zero
label18:
	sh2add a1, s1, s0
	lw a0, 0(a1)
	jal putch
	addiw s1, s1, 1
	ble s4, s1, label20
	j label18
label22:
	li t1, 60
	bne t0, t1, label23
	addiw a3, a3, -1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label472
label166:
	li t0, 1
	ble t0, zero, label45
	addiw a5, a5, 1
	addiw t3, t0, -1
	li t4, 93
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label309
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label45
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label309
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label45
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label309
	j label397
label309:
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t2, t1
	ble t0, zero, label45
	addiw a5, a5, 1
	addiw t3, t0, -1
	li t4, 93
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label309
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label45
	addiw a5, a5, 1
	addiw t3, t0, -1
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label309
label397:
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label45
	j label428
label441:
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
label472:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	j label441
label45:
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label410
label428:
	addiw a5, a5, 1
	addiw t3, t0, -1
	li t4, 93
	sh2add t2, a5, s0
	lw t1, 0(t2)
	mv t2, t3
	beq t1, t4, label309
	mv t2, t0
	xori t3, t1, 91
	sltiu t1, t3, 1
	addw t0, t0, t1
	ble t0, zero, label45
	j label428
label41:
	sh2add t2, a2, s1
	sh2add t1, a3, a1
	addiw a2, a2, 1
	lw t0, 0(t2)
	sw t0, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label443
label34:
	li t1, 93
	bne t0, t1, label38
	sh2add t0, a3, a1
	lw t1, 0(t0)
	bne t1, zero, label36
	addiw a4, a4, -1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	j label441
label410:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	j label441
label443:
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	j label441
label38:
	li t1, 46
	bne t0, t1, label39
	sh2add t1, a3, a1
pcrel512:
	auipc t3, %pcrel_hi(output)
	lw t0, 0(t1)
	addi t1, t3, %pcrel_lo(pcrel512)
	sh2add t2, s4, t1
	addiw s4, s4, 1
	sw t0, 0(t2)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label472
label39:
	li t1, 44
	bne t0, t1, label45
	bgt s3, a2, label41
	sh2add t0, a3, a1
	sw zero, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	j label441
label36:
	addiw t0, a4, -1
	sh2add t1, t0, a0
	lw a5, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label443
label23:
	li t1, 43
	bne t0, t1, label25
	sh2add t0, a3, a1
	lw t2, 0(t0)
	addiw t1, t2, 1
	sw t1, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label472
label25:
	li t1, 45
	bne t0, t1, label27
	sh2add t0, a3, a1
	lw t1, 0(t0)
	addiw t2, t1, -1
	sw t2, 0(t0)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	j label472
label27:
	li t1, 91
	bne t0, t1, label34
	sh2add t0, a3, a1
	lw t1, 0(t0)
	beq t1, zero, label166
	sh2add t1, a4, a0
	addiw a4, a4, 1
	sw a5, 0(t1)
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	li t1, 62
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	sh2add t2, a5, s0
	lw t0, 0(t2)
	bne t0, t1, label22
	addiw a3, a3, 1
	addiw a5, a5, 1
	ble s2, a5, label17
	j label441
label20:
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s3, 16(sp)
	ld s2, 24(sp)
	ld s1, 32(sp)
	ld s0, 40(sp)
	addi sp, sp, 48
	ret
