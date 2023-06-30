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
pcrel740:
	auipc a0, %pcrel_hi(A)
	addi s3, a0, %pcrel_lo(pcrel740)
pcrel741:
	auipc a0, %pcrel_hi(B)
	addi s2, a0, %pcrel_lo(pcrel741)
pcrel742:
	auipc a0, %pcrel_hi(C)
	addi s1, a0, %pcrel_lo(pcrel742)
	mv s4, zero
	bge zero, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, zero, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label530
label9:
	ble s0, zero, label12
	mv s4, zero
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	j label628
label12:
	li a0, 59
	jal _sysy_starttime
	mv a0, zero
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label18
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label631
label94:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label34
	mv a3, zero
	bge zero, s0, label33
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, zero, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
label501:
	addiw a3, a3, 1
	bge a3, s0, label33
	j label549
label34:
	ble s0, zero, label161
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label48
	sh2add a2, zero, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label612
label161:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label43
	mv a3, zero
	bge zero, s0, label42
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label651
label43:
	addiw a0, a0, 1
	li a1, 50
	bge a0, a1, label44
	ble s0, zero, label94
	mv a2, zero
	addiw a1, zero, 4
	bge a1, s0, label18
	sh2add a2, zero, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label659
label44:
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
label612:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label660
label651:
	addiw a3, a3, 1
	bge a3, s0, label42
label557:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label605
label53:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	j label667
label225:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label43
	mv a3, zero
	bge zero, s0, label42
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	j label557
label605:
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label605
label41:
	sh2add t2, a3, s1
	sh2add a5, a1, s2
	lw t1, 0(a5)
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	j label605
label42:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label43
	mv a3, zero
	bge zero, s0, label42
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, zero, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label41
	addiw a3, a3, 1
	bge a3, s0, label42
	j label557
label126:
	mv a1, zero
	li a2, 8040
	mulw a2, zero, a2
	add a2, s3, a2
	bge zero, s0, label34
	mv a3, zero
	bge zero, s0, label33
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, zero, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	j label501
label549:
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	j label597
label33:
	addiw a1, a1, 1
	li a2, 8040
	mulw a2, a1, a2
	add a2, s3, a2
	bge a1, s0, label34
	mv a3, zero
	bge zero, s0, label33
	sh2add a4, zero, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, zero, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	j label549
label597:
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	j label597
label31:
	sh2add t2, a3, s2
	sh2add a5, a1, s1
	lw t1, 0(a5)
	lw t2, 0(t2)
	mulw a4, a4, t2
	addw a4, t1, a4
	sw a4, 0(a5)
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	addiw a3, a3, 1
	bge a3, s0, label33
	sh2add a4, a3, a2
	lw a4, 0(a4)
	bne a4, zero, label31
	j label597
label667:
	sh2add a2, a1, s2
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label225
	j label667
label640:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	j label640
label530:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
label626:
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label626
label5:
	addiw s4, s4, 1
	bge s4, s0, label9
	ble s0, zero, label5
	li a0, 8040
	mul a0, s4, a0
	add s5, s3, a0
	mv s6, zero
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	jal getint
	sh2add a1, s6, s5
	sw a0, 0(a1)
	addiw s6, s6, 1
	bge s6, s0, label5
	j label530
label48:
	addiw a1, a2, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	j label615
label208:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	j label666
label615:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
label663:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label208
	j label663
label660:
	sh2add a2, a2, s2
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label48
	j label660
label666:
	sh2add a1, a1, s2
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label53
	j label666
label631:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
label585:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label633
label659:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label585
label633:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label18
	j label633
label18:
	addiw a1, a2, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	j label636
label109:
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	j label637
label23:
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	sh2add a2, a1, s1
	sw zero, 0(a2)
	addiw a1, a1, 1
	bge a1, s0, label126
	j label640
label637:
	sh2add a1, a1, s1
	sw zero, 0(a1)
	sw zero, 4(a1)
	sw zero, 8(a1)
	sw zero, 12(a1)
	mv a1, a2
	addiw a2, a2, 4
	bge a2, s0, label23
	j label637
label636:
	sh2add a2, a2, s1
	sw zero, 0(a2)
	sw zero, 4(a2)
	sw zero, 8(a2)
	sw zero, 12(a2)
	mv a2, a1
	addiw a1, a1, 4
	bge a1, s0, label109
	j label636
label628:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
label630:
	jal getint
	sh2add a1, s4, s2
	sw a0, 0(a1)
	addiw s4, s4, 1
	bge s4, s0, label12
	j label630
