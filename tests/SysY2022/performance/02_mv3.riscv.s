.attribute arch, "rv64i2p1_m2p0_a2p1_f2p2_d2p2_c2p0_zicsr2p0_zifencei2p0_zba1p0_zbb1p0"
.data
.bss
.align 4
A:
	.zero	16160400
.align 4
B:
	.zero	8040
.align 4
C:
	.zero	8040
.text
.globl main
main:
	addi sp, sp, -64
	sd s0, 56(sp)
	sd s5, 48(sp)
	sd s3, 40(sp)
	sd s2, 32(sp)
	sd s1, 24(sp)
	sd s6, 16(sp)
	sd s4, 8(sp)
	sd ra, 0(sp)
	jal getint
	mv s0, a0
pcrel691:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel691)
pcrel692:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel692)
pcrel693:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel693)
	mv s4, zero
	ble s0, zero, label9
	ble s0, zero, label8
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label587
label9:
	ble s0, zero, label12
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	j label593
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label48
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	j label596
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label17
	mv a3, zero
	ble s0, zero, label41
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, zero, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
label531:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	j label574
label17:
	ble s0, zero, label103
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label30
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	j label565
label103:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label26
	mv a3, zero
	ble s0, zero, label25
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, zero, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	j label599
label565:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	j label608
label41:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label17
	mv a3, zero
	ble s0, zero, label41
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, zero, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	j label531
label52:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	j label626
label220:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label17
	mv a3, zero
	ble s0, zero, label41
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, zero, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	j label531
label515:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	j label558
label25:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	ble s0, a1, label26
	mv a3, zero
	ble s0, zero, label25
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, zero, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	j label515
label558:
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	j label558
label26:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label27
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	ble s0, a1, label48
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	j label607
label27:
	li a0, 67
	jal _sysy_stoptime
	mv a0, s0
	mv a1, s1
	jal putarray
	mv a0, zero
	ld ra, 0(sp)
	ld s4, 8(sp)
	ld s6, 16(sp)
	ld s1, 24(sp)
	ld s2, 32(sp)
	ld s3, 40(sp)
	ld s5, 48(sp)
	ld s0, 56(sp)
	addi sp, sp, 64
	ret
label30:
	addiw a1, a2, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	j label609
label145:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	j label610
label35:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	j label613
label162:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	ble s0, zero, label26
	mv a3, zero
	ble s0, zero, label25
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, zero, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	j label515
label599:
	addiw a3, a3, 1
	ble s0, a3, label25
	j label515
label574:
	addiw a3, a3, 1
	ble s0, a3, label41
	j label617
label43:
	sh2add t2, a3, s2
	sh2add a5, a1, s1
	lw t1, 0(a5)
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	addiw a3, a3, 1
	ble s0, a3, label41
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	j label574
label617:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label43
	j label574
label24:
	sh2add t1, a3, s1
	sh2add a5, a1, s2
	lw t2, 0(a5)
	lw t1, 0(t1)
	mulw a4, a4, t1
	addw a4, t2, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	addiw a3, a3, 1
	ble s0, a3, label25
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label24
	j label558
label613:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label162
	j label613
label626:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	ble s0, a1, label220
	j label626
label505:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label548
label8:
	addiw s4, s4, 1
	ble s0, s4, label9
	ble s0, zero, label8
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label505
label548:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
label591:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label591
label587:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	ble s0, s6, label8
	j label505
label609:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label145
	j label609
label608:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label30
	j label608
label610:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label35
	j label610
label607:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
label578:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
label621:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	j label621
label48:
	addiw a1, a2, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	j label624
label208:
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	j label625
label624:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label208
	j label624
label625:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	ble s0, a2, label52
	j label625
label596:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	ble s0, a1, label48
	j label578
label593:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
label595:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	ble s0, s4, label12
	j label595
